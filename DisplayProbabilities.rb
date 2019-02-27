module DisplayProbabilities
    def DisplayProbabilities.displayProbabilities(a, b)
        puts("------------------------------------------------------------")
        puts("\tX=10\tX=20\tX=30\tX=40\tX=50\tY law")

        results = []
        xLaw = []
        yLaw = []
        (10..50).step(10) do |y|
            print("Y=#{y}\t")
            lineResults = []
            (10..50).step(10) do |x|
                p = ((a - x) * (b - y)) / ((5.0 * a - 150.0) * (5.0 * b - 150.0))
                lineResults << p
                printf("%.3f\t", p)
            end
            yLaw << lineResults.inject(0, :+)
            printf("%.3f\n", yLaw[-1])
            results << lineResults
        end

        print("X law\t")
        for i in 0..4
            sum = 0.0
            for j in 0..4
                sum += results[j][i]
            end
            xLaw << sum
            printf("%.3f\t", sum)
        end
        puts("1")
        puts("------------------------------------------------------------")
        return results, xLaw, yLaw
    end
end
