require 'calabash-android/cucumber'

logcat_log = File.join(__dir__,'x.txt')
tee_logcat_pid = fork do
  `adb #{@device} logcat -c`
  `adb #{@device} logcat -v time 2>&1 | tee #{logcat_log}`
  exit
end

at_exit do
  Process.kill('HUP',tee_logcat_pid)
end
