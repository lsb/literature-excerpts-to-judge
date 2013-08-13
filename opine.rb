Sokal = %q{Western physical science has, since Galileo, been formulated in the language of mathematics.[100][101] But whose mathematics? The question is a fundamental one, for, as Aronowitz has observed, "neither logic nor mathematics escapes the 'contamination' of the social."[102] And as feminist thinkers have repeatedly pointed out, in the present culture this contamination is overwhelmingly capitalist, patriarchal and militaristic: "mathematics is portrayed as a woman whose nature desires to be the conquered Other."[103][104] Thus, a liberatory science cannot be complete without a profound revision of the canon of mathematics.[105] As yet no such emancipatory mathematics exists, and we can only speculate upon its eventual content. We can see hints of it in the multidimensional and nonlinear logic of fuzzy systems theory[106]; but this approach is still heavily marked by its origins in the crisis of late-capitalist production relations.[107] Catastrophe theory[108], with its dialectical emphases on smoothness/discontinuity and metamorphosis/unfolding, will indubitably play a major role in the future mathematics; but much theoretical work remains to be done before this approach can become a concrete tool of progressive political praxis.}

Feynman = %q{The head of a pin is a sixteenth of an inch across. If you magnify it by 25,000 diameters, the area of the head of the pin is then equal to the area of all the pages of the Encyclopaedia Britannica. Therefore, all it is necessary to do is to reduce in size all the writing in the Encyclopaedia by 25,000 times. Is that possible? The resolving power of the eye is about 1/120 of an inch - that is roughly the diameter of one of the little dots on the fine half-tone reproductions in the Encyclopaedia. This, when you demagnify it by 25,000 times, is still 80 angstroms in diameter - 32 atoms across, in an ordinary metal. In other words, one of those dots still would contain in its area 1,000 atoms. So, each dot can easily be adjusted in size as required by the photoengraving, and there is no question that there is enough room on the head of a pin to put all of the Encyclopaedia Britannica.}

QRadio = lambda {|q,cs| {'Radio' => {'questionText' => q, 'chooseOne' => cs}}}
QYesNo = lambda {|q| QRadio[q,['Yes','No']] }
QEmptyText = lambda {|q| {'Text' => {'questionText' => q, 'defaultText' => ''}} }

G1 = QRadio["What is the general field being discussed?", ['Botany / viticulture', 'Math / science / engineering', 'Culinary arts / molecular gastronomy']]
G2 = QYesNo["Do frequent spelling mistakes make the passage difficult to understand?"]
AnsweredQuestions = [{'question' => G1, 'answer' => 'Math / science / engineering'}, {'question' => G2, 'answer' => 'No'}]
KnownAnsweredQuestions = {'answeredQuestions' => AnsweredQuestions, 'percentCorrect' => 100}
Q1 = QYesNo['Did you feel like you understood the passage?']
Q2 = QEmptyText['What point is the author making in the passage?']
Q3 = QRadio["How well did you understand the author's point?", ["Very well", "Well", "Poorly", "It was incomprehensible"]]
Q4 = QRadio["Based on your assessment of what the author was saying, how plausible does it seem?", ["Quite plausible, seems well-considered", "Quite plausible, the author does not defend his argument", "Semi-plausible, I'd like examples", "Highly implausible, I'd need strong examples", "Pure nonsense"]]
Q5 = QEmptyText["For a second draft of the passage, what instructions would you recommend to the writer?"]

