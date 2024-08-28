from flask import Flask, request, redirect, render_template

app = Flask(__name__)

# Dictionary to map passwords to Google Drive links
password_link_map = {
    'Jaison': 'https://drive.google.com/file/d/17k08FZpaXSbb8C7DMj-BNQVvgmnUTqeU/view?usp=drive_link',
    'securepass456': 'https://drive.google.com/your_unique_link_2',
    'secret789': 'https://drive.google.com/your_unique_link_3'
}

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/access', methods=['POST'])
def access_pdf():
    password = request.form['password']
    
    # Check if the password exists in the dictionary
    if password in password_link_map:
        # Redirect to the corresponding Google Drive link
        return redirect(password_link_map[password])
    else:
        return "Invalid password", 403

if __name__ == '__main__':
    app.run(debug=True)
