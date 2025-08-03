# learning-scripts

# Comprehensive Instructions: Logging into Jupyter Notebook in Codespaces

## 1. Install Jupyter and SQL Extension (if needed)
Open a terminal in your Codespace and run:
```sh
pip install notebook ipython-sql
```

## 2. Start Jupyter Notebook Server
In the terminal, start Jupyter Notebook with:
```sh
jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser
```
This will launch the server and display several URLs with tokens in the terminal output.

## 3. Find the Tokenized URL
Look for a line in the output like:
```
http://127.0.0.1:8888/?token=YOUR_TOKEN_HERE
```
or
```
http://localhost:8888/?token=YOUR_TOKEN_HERE
```
Copy the full URL including the token.

## 4. Open Jupyter Notebook in Your Browser
Open a **new terminal tab** (recommended for multitasking) and run:
```sh
$BROWSER http://localhost:8888/?token=YOUR_TOKEN_HERE
```
Replace `YOUR_TOKEN_HERE` with the actual token from your Jupyter output.

If `$BROWSER` does not work, manually copy and paste the URL into your browser’s address bar.

## 5. Log In Using the Token
If prompted for a password or token in the browser, paste the token value (the part after `?token=`) into the field.

## 6. (Optional) List Running Jupyter Servers
If you lose the token or need to check running servers, use:
```sh
jupyter server list
```
This will show the URLs and tokens for all running Jupyter servers.

## 7. Use Jupyter Notebook
You can now create notebooks and run SQL queries interactively.  
To use SQL in a notebook cell:
```python
%load_ext sql
%sql sqlite:///test.db
```
Then, in a cell:
```sql
%%sql
SELECT * FROM Employees;
```

---

**Summary:**  
- Start Jupyter Notebook in one terminal tab.
- Use the tokenized URL to log in via `$BROWSER` or your browser.
- Open a second terminal tab for other commands if needed.
- Use `jupyter server list` to recover the token if required.

You are now ready to use Jupyter Notebook for SQL and Python in your Codespace!