def expectValue(values, probs)
    result = 0
    for i in 0..(values.length - 1)
        result += values[i] * probs[i]
    end
    return result
end

def variance(values, probs)
    expVal = expectValue(values, probs)
    mean = probs.inject(0, :+) / probs.length
    var = 0.0

    for i in 0..(values.length - 1)
        var += probs[i] * (values[i] - expVal) ** 2
    end
    return var
end

module DisplayResults
    def DisplayResults.displayResults(xLaw, yLaw, zLaw)
        puts("------------------------------------------------------------")
        printf("expected value of X:\t%.1f\n", expectValue([10, 20, 30, 40, 50], xLaw))
        printf("variance of X:\t\t%.1f\n", variance([10, 20, 30, 40, 50], xLaw))
        printf("expected value of Y:\t%.1f\n", expectValue([10, 20, 30, 40, 50], yLaw))
        printf("variance of Y:\t\t%.1f\n", variance([10, 20, 30, 40, 50], yLaw))
        printf("expected value of Z:\t%.1f\n", expectValue((20..100).step(10).to_a, zLaw))
        printf("variance of Z:\t\t%.1f\n", variance((20..100).step(10).to_a, zLaw))
        puts("------------------------------------------------------------")
    end
end
