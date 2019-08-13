# Autonomous Control Systems Module will utilize python programming (numpy, scipy, matplotlib) as well as a student problem packet.

###KEY:
# INTRODUCTION describes a black-board example and discussion of a new concept using the provided problem-packet
# EXAMPLE describes a written-out black-board problem started by instructor, finished by students, followed by a small-group practice problem
# CASE-STUDY is small team programming assignment lead by instructor, finished by students, followed by small-group practice problem
###

# Course Material will be broken up into:
#1) Distributed practice-problem-packet (w/ copies of instructor solutions for TAs), for Linear Algebra and Systems practice
#2) Jupyter Notebook of Case Study Examples (team-programming assignments) with relevent declarations and python imports to kick-off


### ------------- Control Theory BootCamp Outline ------------- ###
# Intro and Pump Up: A history of control systems and applications
#https://www.youtube.com/watch?v=oBc_BHxw78s Brian Douglas
#https://www.youtube.com/watch?v=KlxYtk4Fiuw History of Control 1400BC - 1900
#https://www.youtube.com/watch?v=v6ihVeEoUdo&t=1s NASA James Web Space Telescope 

# Course Overview of Control Systems for the Two Day Module
#i) Pt1: Background and Familiarization with Linear Algebra and Systems of Equations: Problem Packet, Case-studies in Numpy and Scipy
# ii) Pt2: Applications to Control Theory and Course Project Assignment: Problem Packet, Case-studies in Numpy and Scipy

# Divide into teams of 3 -> Case-Study and Practice Problem Partners

# Day 1
#1/6
# Introduction to solving linear equations by hand 
# Example: 2-equation-case, graph lines, find intersection point
# Introduction to forming y = A*x -> Nomenclature and procedure of forming linear equations
# Example: previous 2-equation-case formed into y = A*x
# Case study: Introduction to linear equations using Linear Algebra, in numpy -> form y = A*x using python
# Case study: Solving y = A*x w/ Linear Algebra, ie) solve x = A.I*y using numpy

#2/6
# Introduction to forming vectors and matrices from a system of linear equations -> formally defining y, A, x
# Examples: Lin Algebra Addition, subtraction, multiplication (2-D Cases)
# Case study: Lin Algebra Addition, subtraction, multiplication (w/ numpy)
# Introduction to Matrix Inverse, and when an inverse doesn't exist (w/ numpy) 
# Example: cases of y = A*x w/ non-full rank A matrix


#3/6
# Introduction to Concepts of Matrix Rank and Null Space
# Case Study: How to find a matrices rank with numpy
# Case Study: How to find a matrices nullspace rank with numpy -> square matrix A
# Case Study: Fundamental Theorum of Linear Algebra -> square matrix A

#4/6
# (Light) Introduction to physics and its dependence upon calculus: (Video: Fun Physics Video)
# Example: A car's position is governed by the equation p(t) = t^2, t = time
# Example: Graphing position, velocity, and acceleration of car's motion
# Introduction to sketching slope lines of pos, vel, acc
# Kinematic derivations and initial conditions, ie) a = constant -> d = 1/2*a*t^2 + v0*t + x0
# BIG IDEA: Graphing sequential derivatives of pos, vel, acc
# Conclude with application of linear-algebra in programming a real-time system: Demo x-box controlled NESL Robotic Car in front of class

#5/6
# Introduction to Vector Spaces and Basis Vectors:
# Example: Graphing vectors on 2D plane
# Introduction to Vectors for a 3d space
# Example: Graphing vectors on 3D plane
# Example: Visually Graph spaces that a non-full rank matrix A can reach, and those which it cannot reach (3-D example)
# BIG IDEA to touch: Basis Vectors are a set of independent vectors which span a vector-space of interest: RANGE SPACE vs NULL-SPACE
# Examples. Can we form [1,2,3].T w/ three basis (and a scaling coeffienct alpha) as follows?
# i) {[1,0,0],[0,1,0],[0,0,1]}
# ii) {[1,0,0],[0,1,0],[0,0,0]}

#6/6
# Introduction to Visualizing Orthogonality:
# Orthogonal vectors -> graphing example, how to tell when two vectors are orthog -> dot product test
# Dependent vectors -> graphing example, how to tell when two vectors are dependent -> dot product test
# Case Study: Independent vs Dependent vs Orthogonal vs Orthonormal
# Example Problems w/ multiple choice answers of different set combinations


#Day 2
# Recap of Day 1 lesson plan
# Videos about autonomous vehicle control (Tesla, UPenn, OpenSource Projects)

#1/5
# Introduction to State Space Systems: replace y = A*x with x_dot = A*x
# Intro to definitions of state space nomenclature. Procedure for modifying differential equations into state-space form
# Example: Writing x_dot = A*x + B*u
# Example: 1/2D model of car (rigid body) in state space
# Example: Put spring-mass, mass-damper, spring-mass-damper into state space form
# Case Study: Forming your state-space systems with python and scipy
# Case Study: Plotting impulse, step and initial responses of your system with scipy and matplotlib

#2/5
# Introduction to Feedback Systems (Comparing Open Loop Systems to Closed Loop Systems)
# Introduction to why we need sensors for a feedback loop: (Video: NASA Apollo 11 Mission) 
# Introduction to successful applications of feedback control: (Demo Vid: Tesla Self Landing Rocket)
# Example: Closing an open loop system with full state feedback by hand
# Case Study: Closing an open loop system with full state feedback in numpy / scipy (feedback term given-> A_cls = (A-BK))

#3/5
# Introduction to Optimal Solutions using Linear Algebra:
# Example: Least Squares Method of Optimal Linear Regression (Tall A Matrices)
# Example: Least Norm Method of Optimal Linear Regression (Fat A Matrices)
# Case Study: Least Square Estimation for y = A*x
# Case Study: Least Norm Estimation for y = A*x

#4/5
# Introduction to Linear Optimal Control 
# Introduction to Cost (error) Criterion: Why do we produce an 'optimal' controller?
# Why use State Space Methods for Control? (Video: NASA First Lunar Landing)
# Case Study: rigid body. Easily solving the Linear Optimal Control Problem with 1 line of code using scipy!
# Case Study: mass-spring-damper. Easily solving the Linear Optimal Control Problem with 1 line of code using scipy!
# Infinite Time-Horizon Assumptions (Video: Missle Interception (Target/Pursuer) Control) -> Application of a NASA Finite Time-Horizon Stochastic Optimal Controller
# Introduction to how scipy mathematically solves the optimal control problem -> Basic Idea

#5/5
# Introduction to the Linear Optimal Control "Z-Transform" technique for optimally tracking positions, velocities, and accelerations.
# Video: Inverted Pendulum Control
# Video: Boston Dynamics Cheetah
# Final Project: Given 2D car model, use z-transform method for Lin-Op-Control to produce optimal-cruise-controller. 
# Goal is to write out optimal solution mathematically, solve using scipy/numpy, plot final position and speed of car using matplot
# (Final Problem Written, Solution Created)

















