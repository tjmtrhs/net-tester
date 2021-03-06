NetTester.log_dir = File.join(Aruba.config.working_directory, 'log')
NetTester.pid_dir = File.join(Aruba.config.working_directory, 'pids')
NetTester.socket_dir = File.join(Aruba.config.working_directory, 'sockets')
NetTester.process_dir = File.join(Aruba.config.working_directory, 'processes')
NetTester.testlet_dir = File.join(Aruba.config.working_directory, 'testlets')

NetTester.kill

FileUtils.rm_r(NetTester.log_dir)
FileUtils.rm_r(NetTester.pid_dir)
FileUtils.rm_r(NetTester.socket_dir)
FileUtils.rm_r(NetTester.process_dir)
FileUtils.rm_r(NetTester.testlet_dir)

system('sudo rm -rf /etc/netns/*')
system("kill -9 `ps aux | grep trema | grep -v grep | awk '{print $2}'` >/dev/null 2>&1")

FileUtils.mkdir_p(NetTester.log_dir)
FileUtils.mkdir_p(NetTester.pid_dir)
FileUtils.mkdir_p(NetTester.socket_dir)
FileUtils.mkdir_p(NetTester.process_dir)
FileUtils.mkdir_p(NetTester.testlet_dir)
