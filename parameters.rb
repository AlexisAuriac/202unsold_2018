def usage()
    puts("USAGE")
    puts(" ./202unsold a b")
    puts("DESCRIPTION")
    puts(" a")
    puts("constant computed from the past results")
    puts(" b")
    puts("constant computed from the past results")
end

module Parameters
    def Parameters.parse_parameters(argv)
        if argv.length == 1 and argv[0] == "-h"
            usage()
        elsif argv.length != 2
            STDERR.puts("Invalid number of arguments")
            exit(84)
        elsif not /^[1-9]\d*$/ =~ argv[0] or
            not /^[1-9]\d*$/ =~ argv[1]
            STDERR.puts("Invalid arguments: must be integers")
            exit(84)
        end

        return argv[0].to_i, argv[1].to_i
    end
end
