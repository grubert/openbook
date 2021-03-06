#!/usr/bin/python

'''
wrapper to run lilypond.
run lilypond to produce the book
lilypond --ps --pdf --output=$(OUT_BASE) $(OUT_LY)
'''

from __future__ import print_function
import sys # for argv
import os # for chmod
import subprocess # for Popen
import os.path # for isfile
import versioncheck # for checkversion

# this function is here because we want to supress output until we know
# there is an error (and subprocess.check_output does not do this)
def system_check_output(args):
	pr=subprocess.Popen(args,stdout=subprocess.PIPE,stderr=subprocess.PIPE)
	(output,errout)=pr.communicate()
	status=pr.returncode
	if status or (stopOnOutput and (output!='' or errout!='')):
		print(output,end='')
		print(errout,end='')
		raise ValueError('error in executing',args)
	if showOutput:
		print(output,end='')
		print(errout,end='')

# parameters
stopOnOutput=False
showOutput=True
doPs=False
doPdf=True
debug=False

# first check that we are using the correct version of python
versioncheck.checkversion()

if len(sys.argv)!=5:
	raise ValueError('command line issue')

p_ps=sys.argv[1]
p_pdf=sys.argv[2]
p_out=sys.argv[3]
p_ly=sys.argv[4]

if debug:
	print('arguments are',sys.argv)

# remove the target files, do nothing if they are not there
def remove_output_if_exists():
	if doPs and os.path.isfile(p_ps):
		os.unlink(p_ps)
	if doPdf and os.path.isfile(p_pdf):
		os.unlink(p_pdf)

remove_output_if_exists()

# run the command
args=[]
args.append('lilypond')
args.append('--loglevel=WARN')
#args.append('--loglevel=ERROR')
if doPs:
	args.append('--ps')
if doPdf:
	args.append('--pdf')
args.append('--output='+p_out)
args.append(p_ly)
try:
	# to make sure that lilypond shuts up...
	#subprocess.check_output(args)
	system_check_output(args)
	# chmod the results
	if doPs:
		os.chmod(p_ps,0444)
	if doPdf:
		os.chmod(p_pdf,0444)
except Exception,e:
	remove_output_if_exists()
	raise e
