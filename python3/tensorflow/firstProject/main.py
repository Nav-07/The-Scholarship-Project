# The Goal of the Program is simple
## Create a TensorFlow/Machine Learning Model that takes in celsius and farenheit data and predicts the value of farenheit when a celsius float is passed.

import tensorflow as tf
import numpy as np
import os

# Make Sure that Tensorflow only logs errors
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3'

# Declare our inputs here
celsius_data   = np.array([-40, -10,  0,  8, 15, 22,  38],  dtype=float)
farneheit_data = np.array([-40,  14, 32, 46, 59, 72, 100],  dtype=float)


# Create the Model
l0 = tf.keras.layers.Dense(units=1, input_shape=[1])
model = tf.keras.Sequential([l0])

# Compile the Model
model.compile(loss='mean_squared_error', optimizer=tf.keras.optimizers.Adam(0.1))

# Finally Train the Model
history = model.fit(celsius_data, farneheit_data, epochs=500, verbose=False)

# Test the Model
print(model.predict([100.0]))