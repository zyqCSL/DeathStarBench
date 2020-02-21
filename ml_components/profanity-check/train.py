import pandas as pd
from sklearn.feature_extraction.text import CountVectorizer
# from sklearn.calibration import CalibratedClassifierCV
from sklearn.svm import LinearSVC
from sklearn.externals import joblib

# Read in data
data = pd.read_csv('./data/clean_data.csv')
texts = data['text'].astype(str)
y = data['is_offensive']

print y
print y.shape
print "\n\nx starts"
print texts
print texts.shape

# Vectorize the text
vectorizer = CountVectorizer(stop_words='english', min_df=0.0001)
X = vectorizer.fit_transform(texts)

# Train the model
# model = LinearSVC(class_weight="balanced", dual=False, tol=1e-2, max_iter=100000)
model = LinearSVC(dual=False, tol=1e-2)
# cclf = CalibratedClassifierCV(base_estimator=model)
# cclf.fit(X, y)
model.fit(X, y)

# # Save the model
joblib.dump(vectorizer, './model/vectorizer.joblib')
# joblib.dump(cclf, 'model.joblib')
joblib.dump(model, './model/model.joblib')