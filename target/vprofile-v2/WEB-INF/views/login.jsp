<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login - HKH Infotech</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="${contextPath}/resources/css/modern.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        .login-container {
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 2rem;
            background: linear-gradient(135deg, #1a1a2e 0%, #16213e 100%);
            position: relative;
            overflow: hidden;
        }
        
        .login-container::before {
            content: '';
            position: absolute;
            top: -50%;
            right: -25%;
            width: 50%;
            height: 100%;
            background: radial-gradient(circle, rgba(102, 126, 234, 0.15) 0%, transparent 70%);
            animation: float 15s ease-in-out infinite;
        }
        
        .login-container::after {
            content: '';
            position: absolute;
            bottom: -50%;
            left: -25%;
            width: 50%;
            height: 100%;
            background: radial-gradient(circle, rgba(118, 75, 162, 0.15) 0%, transparent 70%);
            animation: float 20s ease-in-out infinite reverse;
        }
        
        .login-box {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 255, 255, 0.2);
            border-radius: 2rem;
            padding: 3rem;
            width: 100%;
            max-width: 450px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3);
            position: relative;
            z-index: 1;
            animation: fadeInUp 0.8s ease;
        }
        
        .login-header {
            text-align: center;
            margin-bottom: 2.5rem;
        }
        
        .login-title {
            font-family: 'Poppins', sans-serif;
            font-size: 2.5rem;
            font-weight: 700;
            background: linear-gradient(135deg, #ffffff 0%, #a8b8ff 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            margin-bottom: 0.5rem;
        }
        
        .login-subtitle {
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
        
        .alert {
            padding: 1rem;
            border-radius: 0.75rem;
            margin-bottom: 1.5rem;
            border: 1px solid;
            backdrop-filter: blur(10px);
        }
        
        .alert-danger {
            background: rgba(239, 68, 68, 0.1);
            border-color: rgba(239, 68, 68, 0.3);
            color: #fca5a5;
        }
        
        .forgot-password {
            text-align: right;
            margin-top: 0.75rem;
        }
        
        .forgot-password a {
            color: rgba(255, 255, 255, 0.7);
            text-decoration: none;
            font-size: 0.9rem;
            transition: color 0.3s ease;
        }
        
        .forgot-password a:hover {
            color: #4facfe;
        }
        
        .signup-link {
            text-align: center;
            margin-top: 2rem;
            padding-top: 2rem;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
        }
        
        .signup-link span {
            color: rgba(255, 255, 255, 0.7);
            margin-right: 0.5rem;
        }
        
        .signup-link a {
            color: #4facfe;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s ease;
        }
        
        .signup-link a:hover {
            color: #00f2fe;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <a href="${contextPath}/index" class="brand-link">
        <i class="fas fa-rocket"></i> HKH Infotech
    </a>

    <div class="login-container">
        <div class="login-box">
            <div class="login-header">
                <h1 class="login-title">Welcome Back</h1>
                <p class="login-subtitle">Sign in to your account</p>
            </div>

            <form method="POST" action="${contextPath}/login" class="modern-form">
                <!-- Display error message if any -->
                <c:if test="${not empty error}">
                    <div class="alert alert-danger">
                        <i class="fas fa-exclamation-circle"></i>
                        <c:out value="${error}"/>
                    </div>
                </c:if>

                <div class="form-group">
                    <label class="form-label">
                        <i class="fas fa-user"></i> Username
                    </label>
                    <input class="form-input" type="text" name="username" placeholder="Enter your username" required autofocus>
                </div>

                <div class="form-group">
                    <label class="form-label">
                        <i class="fas fa-lock"></i> Password
                    </label>
                    <input class="form-input" type="password" name="password" placeholder="Enter your password" required>
                </div>

                <div class="forgot-password">
                    <a href="#">
                        <i class="fas fa-key"></i> Forgot password?
                    </a>
                </div>

                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                <button class="btn-modern btn-primary" type="submit" style="width: 100%; margin-top: 1.5rem;">
                    <i class="fas fa-sign-in-alt"></i> Sign In
                </button>

                <div class="signup-link">
                    <span>Don't have an account?</span>
                    <a href="${contextPath}/registration">
                        <i class="fas fa-user-plus"></i> Create Account
                    </a>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
