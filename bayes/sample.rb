# Note both of these are filler, empty files in the repository
spam = File.open('our_spam.txt').read
ham = File.open('our_comments.txt').read

require 'classifier'

classifier = Classifier::Bayes.new('Spam', 'Ham')

# single input example
classifier.train_spam 'BUY THIS SHIT'
classifier.train_ham 'that was an interesting and thought provoking piece'
classifier.classify "I enjoyed this article"
# => ham

# Train on a large set
spam.each_line { |s| classifier.train_spam s }
ham.each_line  { |h| classifier.train_ham h  }

# Classify Away!
