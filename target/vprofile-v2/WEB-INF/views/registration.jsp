<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Sign Up - HKH Infotech</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="${contextPath}/resources/css/modern.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        .signup-container {
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 2rem;
            background: linear-gradient(135deg, #1a1a2e 0%, #16213e 100%);
            position: relative;
            overflow: hidden;
        }
        
        .signup-container::before {
            content: '';
            position: absolute;
            top: -50%;
            left: -25%;
            width: 50%;
            height: 100%;
            background: radial-gradient(circle, rgba(102, 126, 234, 0.15) 0%, transparent 70%);
            animation: float 15s ease-in-out infinite;
        }
        
        .signup-container::after {
            content: '';
            position: absolute;
            bottom: -50%;
            right: -25%;
            width: 50%;
            height: 100%;
            background: radial-gradient(circle, rgba(118, 75, 162, 0.15) 0%, transparent 70%);
            animation: float 20s ease-in-out infinite reverse;
        }
        
        .signup-box {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 255, 255, 0.2);
            border-radius: 2rem;
            padding: 3rem;
            width: 100%;
            max-width: 500px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3);
            position: relative;
            z-index: 1;
            animation: fadeInUp 0.8s ease;
        }
        
        .signup-header {
            text-align: center;
            margin-bottom: 2rem;
        }
        
        .signup-title {
            font-family: 'Poppins', sans-serif;
            font-size: 2.5rem;
            font-weight: 700;
            background: linear-gradient(135deg, #ffffff 0%, #a8b8ff 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            margin-bottom: 0.5rem;
        }
        
        .signup-subtitle {
            color: rgba(255, 255, 255, 0.7);
            font-size: 1rem;
        }
        
        .brand-link {
            position: absolute;
            top: 2rem;
            left: 2rem;
            font-family: 'Poppins', sans-serif;
            font-size: 1.5rem;
            font-weight: 700;
            background: linear-gradient(135deg, #fff 0%, #a8b8ff 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            text-decoration: none;
            z-index: 10;
            transition: all 0.3s ease;
        }
        
        .brand-link:hover {
            transform: translateY(-2px);
            filter: brightness(1.2);
        }
        
        .error-message {
            color: #fca5a5;
            font-size: 0.875rem;
            margin-top: 0.25rem;
            display: block;
        }
        
        .login-link {
            text-align: center;
            margin-top: 1.5rem;
            padding-top: 1.5rem;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
        }
        
        .login-link span {
            color: rgba(255, 255, 255, 0.7);
            margin-right: 0.5rem;
        }
        
        .login-link a {
            color: #4facfe;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s ease;
        }
        
        .login-link a:hover {
            color: #00f2fe;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <a href="${contextPath}/index" class="brand-link">
        <i class="fas fa-rocket"></i> HKH Infotech
    </a>

    <div class="signup-container">
        <div class="signup-box">
            <div class="signup-header">
                <h1 class="signup-title">Create Account</h1>
                <p class="signup-subtitle">Join us and start your journey</p>
            </div>

            <form:form modelAttribute="userForm" method="post" class="modern-form">
                <!-- Email field -->
                <div class="form-group">
                    <label class="form-label">
                        <i class="fas fa-envelope"></i> Email Address
                    </label>
                    <form:input path="userEmail" class="form-input" placeholder="your.email@example.com"/>
                    <form:errors path="userEmail" cssClass="error-message"/>
                </div>

                <!-- Username field -->
                <div class="form-group">
                    <label class="form-label">
                        <i class="fas fa-user"></i> Username
                    </label>
                    <form:input path="username" class="form-input" placeholder="Choose a username"/>
                    <form:errors path="username" cssClass="error-message"/>
                </div>

                <!-- Password field -->
                <div class="form-group">
                    <label class="form-label">
                        <i class="fas fa-lock"></i> Password
                    </label>
                    <form:password path="password" class="form-input" placeholder="Create a strong password"/>
                    <form:errors path="password" cssClass="error-message"/>
                </div>

                <!-- Confirm Password field -->
                <div class="form-group">
                    <label class="form-label">
                        <i class="fas fa-lock"></i> Confirm Password
                    </label>
                    <form:password path="passwordConfirm" class="form-input" placeholder="Confirm your password"/>
                    <form:errors path="passwordConfirm" cssClass="error-message"/>
                </div>

                <!-- Sign Up button -->
                <button class="btn-modern btn-primary" type="submit" style="width: 100%; margin-top: 1.5rem;">
                    <i class="fas fa-user-plus"></i> Create Account
                </button>

                <!-- Login link -->
                <div class="login-link">
                    <span>Already have an account?</span>
                    <a href="${contextPath}">
                        <i class="fas fa-sign-in-alt"></i> Sign In
                    </a>
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>
