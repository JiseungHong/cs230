make[1]: Entering directory `/afs/cs.cmu.edu/project/ics/im/labs/shlab/src'
./sdriver.pl -t trace01.txt -s ./tsh -a "-p"
#
# trace01.txt - Properly terminate on EOF.
#
./sdriver.pl -t trace02.txt -s ./tsh -a "-p"
#
# trace02.txt - Process builtin quit command.
#
./sdriver.pl -t trace03.txt -s ./tsh -a "-p"
#
# trace03.txt - Run a foreground job.
#
tsh> quit
./sdriver.pl -t trace04.txt -s ./tsh -a "-p"
#
# trace04.txt - Run a background job.
#
tsh> ./myspin 1 &
[1] (26252) ./myspin 1 &
./sdriver.pl -t trace05.txt -s ./tsh -a "-p"
#
# trace05.txt - Process jobs builtin command.
#
tsh> ./myspin 2 &
[1] (26256) ./myspin 2 &
tsh> ./myspin 3 &
[2] (26258) ./myspin 3 &
tsh> jobs
[1] (26256) Running ./myspin 2 &
[2] (26258) Running ./myspin 3 &
./sdriver.pl -t trace06.txt -s ./tsh -a "-p"
#
# trace06.txt - Forward SIGINT to foreground job.
#
tsh> ./myspin 4
Job [1] (26263) terminated by signal 2
./sdriver.pl -t trace07.txt -s ./tsh -a "-p"
#
# trace07.txt - Forward SIGINT only to foreground job.
#
tsh> ./myspin 4 &
[1] (26267) ./myspin 4 &
tsh> ./myspin 5
Job [2] (26269) terminated by signal 2
tsh> jobs
[1] (26267) Running ./myspin 4 &
./sdriver.pl -t trace08.txt -s ./tsh -a "-p"
#
# trace08.txt - Forward SIGTSTP only to foreground job.
#
tsh> ./myspin 4 &
[1] (26274) ./myspin 4 &
tsh> ./myspin 5
Job [2] (26276) stopped by signal 20
tsh> jobs
[1] (26274) Running ./myspin 4 &
[2] (26276) Stopped ./myspin 5 
./sdriver.pl -t trace09.txt -s ./tsh -a "-p"
#
# trace09.txt - Process bg builtin command
#
tsh> ./myspin 4 &
[1] (26281) ./myspin 4 &
tsh> ./myspin 5
Job [2] (26283) stopped by signal 20
tsh> jobs
[1] (26281) Running ./myspin 4 &
[2] (26283) Stopped ./myspin 5 
tsh> bg %2
[2] (26283) ./myspin 5 
tsh> jobs
[1] (26281) Running ./myspin 4 &
[2] (26283) Running ./myspin 5 
./sdriver.pl -t trace10.txt -s ./tsh -a "-p"
#
# trace10.txt - Process fg builtin command. 
#
tsh> ./myspin 4 &
[1] (26290) ./myspin 4 &
tsh> fg %1
Job [1] (26290) stopped by signal 20
tsh> jobs
[1] (26290) Stopped ./myspin 4 &
tsh> fg %1
tsh> jobs
./sdriver.pl -t trace11.txt -s ./tsh -a "-p"
#
# trace11.txt - Forward SIGINT to every process in foreground process group
#
tsh> ./mysplit 4
Job [1] (26298) terminated by signal 2
tsh> /bin/ps a
  PID TTY      STAT   TIME COMMAND
25181 pts/3    S      0:00 -usr/local/bin/tcsh -i
26239 pts/3    S      0:00 make tshrefout
26240 pts/3    S      0:00 /bin/sh -c make tests > tshref.out 2>&1
26241 pts/3    S      0:00 make tests
26295 pts/3    S      0:00 perl ./sdriver.pl -t trace11.txt -s ./tsh -a -p
26296 pts/3    S      0:00 ./tsh -p
26301 pts/3    R      0:00 /bin/ps a
./sdriver.pl -t trace12.txt -s ./tsh -a "-p"
#
# trace12.txt - Forward SIGTSTP to every process in foreground process group
#
tsh> ./mysplit 4
Job [1] (26305) stopped by signal 20
tsh> jobs
[1] (26305) Stopped ./mysplit 4 
tsh> /bin/ps a
  PID TTY      STAT   TIME COMMAND
25181 pts/3    S      0:00 -usr/local/bin/tcsh -i
26239 pts/3    S      0:00 make tshrefout
26240 pts/3    S      0:00 /bin/sh -c make tests > tshref.out 2>&1
26241 pts/3    S      0:00 make tests
26302 pts/3    S      0:00 perl ./sdriver.pl -t trace12.txt -s ./tsh -a -p
26303 pts/3    S      0:00 ./tsh -p
26305 pts/3    T      0:00 ./mysplit 4
26306 pts/3    T      0:00 ./mysplit 4
26309 pts/3    R      0:00 /bin/ps a
./sdriver.pl -t trace13.txt -s ./tsh -a "-p"
#
# trace13.txt - Restart every stopped process in process group
#
tsh> ./mysplit 4
Job [1] (26313) stopped by signal 20
tsh> jobs
[1] (26313) Stopped ./mysplit 4 
tsh> /bin/ps a
  PID TTY      STAT   TIME COMMAND
25181 pts/3    S      0:00 -usr/local/bin/tcsh -i
26239 pts/3    S      0:00 make tshrefout
26240 pts/3    S      0:00 /bin/sh -c make tests > tshref.out 2>&1
26241 pts/3    S      0:00 make tests
26310 pts/3    S      0:00 perl ./sdriver.pl -t trace13.txt -s ./tsh -a -p
26311 pts/3    S      0:00 ./tsh -p
26313 pts/3    T      0:00 ./mysplit 4
26314 pts/3    T      0:00 ./mysplit 4
26317 pts/3    R      0:00 /bin/ps a
tsh> fg %1
tsh> /bin/ps a
  PID TTY      STAT   TIME COMMAND
25181 pts/3    S      0:00 -usr/local/bin/tcsh -i
26239 pts/3    S      0:00 make tshrefout
26240 pts/3    S      0:00 /bin/sh -c make tests > tshref.out 2>&1
26241 pts/3    S      0:00 make tests
26310 pts/3    S      0:00 perl ./sdriver.pl -t trace13.txt -s ./tsh -a -p
26311 pts/3    S      0:00 ./tsh -p
26320 pts/3    R      0:00 /bin/ps a
./sdriver.pl -t trace14.txt -s ./tsh -a "-p"
#
# trace14.txt - Simple error handling
#
tsh> ./bogus
./bogus: Command not found
tsh> ./myspin 4 &
[1] (26326) ./myspin 4 &
tsh> fg
fg command requires PID or %jobid argument
tsh> bg
bg command requires PID or %jobid argument
tsh> fg a
fg: argument must be a PID or %jobid
tsh> bg a
bg: argument must be a PID or %jobid
tsh> fg 9999999
(9999999): No such process
tsh> bg 9999999
(9999999): No such process
tsh> fg %2
%2: No such job
tsh> fg %1
Job [1] (26326) stopped by signal 20
tsh> bg %2
%2: No such job
tsh> bg %1
[1] (26326) ./myspin 4 &
tsh> jobs
[1] (26326) Running ./myspin 4 &
./sdriver.pl -t trace15.txt -s ./tsh -a "-p"
#
# trace15.txt - Putting it all together
#
tsh> ./bogus
./bogus: Command not found
tsh> ./myspin 10
Job [1] (26343) terminated by signal 2
tsh> ./myspin 3 &
[1] (26345) ./myspin 3 &
tsh> ./myspin 4 &
[2] (26347) ./myspin 4 &
tsh> jobs
[1] (26345) Running ./myspin 3 &
[2] (26347) Running ./myspin 4 &
tsh> fg %1
Job [1] (26345) stopped by signal 20
tsh> jobs
[1] (26345) Stopped ./myspin 3 &
[2] (26347) Running ./myspin 4 &
tsh> bg %3
%3: No such job
tsh> bg %1
[1] (26345) ./myspin 3 &
tsh> jobs
[1] (26345) Running ./myspin 3 &
[2] (26347) Running ./myspin 4 &
tsh> fg %1
tsh> quit
./sdriver.pl -t trace16.txt -s ./tsh -a "-p"
#
# trace16.txt - Tests whether the shell can handle SIGTSTP and SIGINT
#     signals that come from other processes instead of the terminal.
#
tsh> ./mystop 2
Job [1] (26359) stopped by signal 20
tsh> jobs
[1] (26359) Stopped ./mystop 2
tsh> ./myint 2
Job [2] (26362) terminated by signal 2
make[1]: Leaving directory `/afs/cs.cmu.edu/project/ics/im/labs/shlab/src'