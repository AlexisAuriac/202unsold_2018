module DisplayLaws
    def DisplayLaws.displayLaws(a, b)
        puts("––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––")
        puts("\tX=10\tX=20\tX=30\tX=40\tX=50\tY law")

        results = []
        (10..50).step(10) do |y|
            print("Y=#{y}\t")
            lineResults = []
            (10..50).step(10) do |x|
                p = ((a - x) * (b - y)) / ((5.0 * a - 150.0) * (5.0 * b - 150.0))
                lineResults << p
                printf("%.3f\t", p)
            end
            printf("%.3f\n", lineResults.inject(0, :+))
            results << lineResults
        end

        print("X law\t")
        for i in 0..4
            sum = 0.0
            for j in 0..4
                sum += results[j][i]
            end
            printf("%.3f\t", sum)
        end
        puts("1")
        puts("––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––")
        return results
    end
end
