
import Foundation
struct QuizBrain{
    let quiz = [
        Question(text: "Bir sümüğün kanı yeşildir", answer: "True"),
        Question(text: "Yaklaşık olarak insan kemiklerinin dörtte biri ayaklardadır.", answer: "True"),
        Question(text: "İki insan ciğerinin toplam yüzey alanı yaklaşık olarak 70 metrekareye kadardır.", answer: "True"),
        Question(text: "ABD'nin Batı Virginia eyaletinde aracınızla bir hayvana kaza yaparsanız, onu eve götürmek serbesttir.", answer: "True"),
        Question(text: "ILondra, İngiltere'de, Parlamento Binası'nda ölürseniz, binanın çok kutsal bir yer olarak kabul edilmesinden dolayı resmi bir cenaze törenine hak kazanırsınız, çünkü olay gerçekleştiği yer itibariyle.", answer: "False"),
        Question(text: "Portekiz'de, Okyanus'ta idrar yapmak yasaktır.", answer: "True"),
        Question(text: "Bir ineği merdivenlerden aşağı yönlendirebilirsiniz ama yukarı yönlendiremezsiniz.", answer: "False"),
        Question(text: "Google başlangıçta 'Sırt Ovmak' olarak adlandırıldı.", answer: "True"),
        Question(text: "Buzz Aldrin'in annesinin kızlık soyadı 'Ay'dı.", answer: "True"),
        Question(text: "Herhangi bir hayvan tarafından üretilen en yüksek ses 188 desibeldir. Bu hayvan Afrika filidir.", answer: "False"),
        Question(text: "Hiçbir kare kuru kağıt 7'den fazla katlanamaz.", answer: "False"),
        Question(text: "Çikolata bir köpeğin kalbini ve sinir sistemini etkiler; birkaç ons küçük bir köpeği öldürmek için yeterlidir.", answer: "True")
        
        
    ]
    var questionNumber = 0
    func checAnswerr(_ userAnswer: String)-> Bool {
        if userAnswer == quiz[questionNumber].answer{
            return true
        }else{
            return false
        }
    }
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
}
