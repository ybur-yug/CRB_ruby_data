# Note both of these are filler, empty files in the repository
spam = File.open('our_spam.txt').read
good_comments = File.open('our_comments.txt').read

require 'classifier'

classifier = Classifier::Bayes.new('Spam', 'Ham')

# single input example
classifier.train_spam 'BUY THIS SHIT'
classifier.train_ham 'that was an interesting and thought provoking piece'
classifier.classify "I enjoyed this article"
# => ham

# Train on a large set
spam.each_line { |spam| classifier.train_spam spam }
ham.each_line  { |ham|  classifier.train_ham ham   }

# Classify Away!
