module DisplayZ
    def DisplayZ.displayZ(laws)
        puts("z\t20\t30\t40\t50\t60\t70\t80\t90\t100\ttotal")
        print("p(Z=z)\t")

        results = []
        for line in 1..9
            start_col = [0, line - 5].max
            count = [line, (5 - start_col), 5].min

            sum = 0.0
            for j in 0..(count - 1)
                sum += laws[[5, line].min - j - 1][start_col + j]
            end
            results << sum
            printf("%.3f\t", sum)
        end
        puts("1")

        return results
    end
end
