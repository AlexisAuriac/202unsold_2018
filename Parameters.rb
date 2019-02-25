def usage()
    puts("USAGE")
    puts("\t./202unsold a b")
    puts("DESCRIPTION")
    puts("\ta\tconstant computed from the past results")
    puts("\tb\tconstant computed from the past results")
end

module Parameters
    def Parameters.parseParameters(argv)
        if argv.length == 1 and argv[0] == "-h"
            usage()
        elsif argv.length != 2
            STDERR.puts("Invalid number of arguments")
            exit(84)
        elsif not /^[1-9]\d*$/ =~ argv[0] or
            not /^[1-9]\d*$/ =~ argv[1]
            STDERR.puts("Invalid arguments: a and b must be positive integers")
            exit(84)
        elsif argv[0].to_i <= 50 or
            argv[1].to_i <= 50
            STDERR.puts("Invalid arguments: a and b must be superior to 50")
            exit(84)
        end

        return argv[0].to_i, argv[1].to_i
    end
end
