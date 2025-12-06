# fraud_email.cr
Web-API for [fraudemail.com](https://fraudemail.com) a free little tool that helps you find out whether an email address is valid or not, within a few seconds!

## Example
```cr
require "./fraud_email"

fraud_email = FraudEmail.new
email_info = fraud_email.check_email("example@gmail.com")
puts email_info
```
