module Daemons
  class Application
    # Overrides the default logdir/{app_name}.log with logdir/{app_name}.exceptions.log
    # logfile is used for exception handling in Daemons::Application#exception_log
    def logfile
      puts "Loading Enhanced Daemons logfile"
      if logdir && options[:log_file]
        File.join(logdir, @group.app_name + 'exception.log')
      else
        super
      end
    end

    def output_logfile
      puts "Loading Enhanced Daemons output_logfile"
      if options[:log_output] && options[:log_file] && logdir
        File.join(logdir, options[:log_file])
      else
        super
      end
    end
  end
end
