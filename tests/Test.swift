@main
struct TestRunner {
    static func main() {
        let signalcase_1 = Signal(demand: 55, capacity: 100, latency: 12, risk: 11, weight: 9)
        precondition(Policy.score(signalcase_1) == 175)
        precondition(Policy.classify(signalcase_1) == "review")
        let signalcase_2 = Signal(demand: 91, capacity: 93, latency: 13, risk: 10, weight: 13)
        precondition(Policy.score(signalcase_2) == 261)
        precondition(Policy.classify(signalcase_2) == "accept")
        let signalcase_3 = Signal(demand: 93, capacity: 82, latency: 11, risk: 21, weight: 10)
        precondition(Policy.score(signalcase_3) == 201)
        precondition(Policy.classify(signalcase_3) == "accept")
        let domainReview = DomainReview(signal: 65, slack: 29, drag: 13, confidence: 56)
        precondition(DomainReviewLens.score(domainReview) == 176)
        precondition(DomainReviewLens.lane(domainReview) == "ship")
    }
}
