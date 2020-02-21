import warnings
# warnings.filterwarnings("ignore", category=FutureWarning)
# warnings.filterwarnings("ignore", category=UserWarning)

import numpy as np
from sklearn.externals import joblib


# vectorizer = joblib.load(pkg_resources.resource_filename('profanity_check', 'data/vectorizer.joblib'))
# model = joblib.load(pkg_resources.resource_filename('profanity_check', 'data/model.joblib'))

vectorizer = joblib.load('./model/vectorizer.joblib')
model = joblib.load('./model/model.joblib')

def _get_profane_prob(prob):
  return prob[1]

def predict(texts):
  return model.predict(vectorizer.transform(texts))

# def predict_prob(texts):
#   return np.apply_along_axis(_get_profane_prob, 1, model.predict_proba(vectorizer.transform(texts)))


if __name__ == "__main__":
	texts = [
		'Hello there, how are you',
		'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
		'!!!! Click this now!!! -> https://example.com',
		'fuck you',
		'fUcK u',
		'GO TO hElL, you dirty scum']
	probs = predict(texts)
	print(probs)


