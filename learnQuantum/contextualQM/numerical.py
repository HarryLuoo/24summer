import numpy as np
import matplotlib.pyplot as plt

def F_complex(theta, theta_0, phi):
    # Original complex expression for F_co
    t = theta + theta_0
    return ((1/4)*(1 + np.cos(t) + np.sin(t)*np.cos(phi)) * 
            ((np.sin(t) - np.cos(t)*np.cos(phi))**2 / 
             (1 + np.cos(t) + np.sin(t)*np.cos(phi))**2) +
            (1/4)*(1 + np.cos(t) - np.sin(t)*np.cos(phi)) * 
            ((np.sin(t) + np.cos(t)*np.cos(phi))**2 / 
             (1 + np.cos(t) - np.sin(t)*np.cos(phi))**2) +
            (1/4)*(1 - np.cos(t) + np.sin(t)*np.cos(phi)) * 
            ((np.sin(t) - np.cos(t)*np.cos(phi))**2 / 
             (1 - np.cos(t) + np.sin(t)*np.cos(phi))**2) +
            (1/4)*(1 - np.cos(t) - np.sin(t)*np.cos(phi)) * 
            ((np.sin(t) + np.cos(t)*np.cos(phi))**2 / 
             (1 - np.cos(t) - np.sin(t)*np.cos(phi))**2))

# Set parameters
theta_0 = 0.5 * np.pi
phi = 0.9* np.pi
#F_q = 1  # Quantum Fisher Information

# Create array of theta values
theta = np.linspace(0, 2*np.pi, 1000)

# Calculate F_co
F_co = F_complex(theta, theta_0, phi)

# Calculate the difference F_co - F_q
#difference = F_co - F_q

# Plot the results
plt.figure(figsize=(12, 6))
plt.plot(theta/np.pi, F_co, label='F_co (Contextual QFI)')
#plt.plot(theta/np.pi, np.ones_like(theta)*F_q, label='F_q (Standard QFI)', linestyle='--')
plt.title(f'F_co (θ_0 = {theta_0/np.pi:.2f}π, φ = {phi/np.pi:.2f}π)')
plt.xlabel('θ/π')
plt.ylabel('Fisher Information')
plt.legend()
plt.grid(True)  # Ensure y-axis starts from 0 for better comparison
plt.show()

# # Plot the difference
# plt.figure(figsize=(12, 6))
# plt.plot(theta/np.pi, difference, label='F_co - F_q')
# plt.title(f'Difference between F_co and F_q (θ_0 = {theta_0/np.pi:.2f}π, φ = {phi/np.pi:.2f}π)')
# plt.xlabel('θ/π')
# plt.ylabel('F_co - F_q')
# plt.axhline(y=0, color='r', linestyle='--', label='Zero difference')
# plt.legend()
# plt.grid(True)
# plt.show()

# # Print some statistics
# print(f"Maximum difference: {np.max(difference):.6f}")
# print(f"Minimum difference: {np.min(difference):.6f}")
# print(f"Average difference: {np.mean(difference):.6f}")