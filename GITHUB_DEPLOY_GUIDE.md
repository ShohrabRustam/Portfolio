# 🚀 GitHub Deployment Guide

Your clean portfolio is ready! Follow these steps to push to GitHub and deploy.

---

## ✅ WHAT'S READY

Your clean Portfolio folder contains:
- ✅ `index.html` - Your portfolio website
- ✅ `style.css` - All styling
- ✅ `script.js` - Interactive features
- ✅ `README.md` - Project documentation
- ✅ `.gitignore` - Git ignore rules
- ✅ Git initialized with first commit

**Location:** `/Users/shohrabrustam/Portfolio/`

---

## 📄 STEP 1: ADD YOUR RESUME PDF

Before pushing to GitHub, add your resume:

```bash
# Copy your resume to Portfolio folder
cp /path/to/your-resume.pdf /Users/shohrabrustam/Portfolio/resume.pdf
```

**Or manually:**
1. Find your resume PDF
2. Rename it to `resume.pdf`
3. Copy it to `/Users/shohrabrustam/Portfolio/` folder

**Then commit it:**
```bash
cd /Users/shohrabrustam/Portfolio
git add resume.pdf
git commit -m "Add resume PDF"
```

---

## 🐙 STEP 2: CREATE GITHUB REPOSITORY

### Option A: Using GitHub Website (Easier)

1. **Go to GitHub:**
   - Visit: https://github.com/new
   - Or: GitHub.com → Click "+" → "New repository"

2. **Repository Settings:**
   - **Repository name:** `Portfolio` or `shohrab-rustam-portfolio`
   - **Description:** "Professional portfolio showcasing backend engineering experience"
   - **Visibility:** Public ✅
   - **DO NOT** check "Add a README" (you already have one)
   - **DO NOT** add .gitignore (you already have one)
   - **DO NOT** choose a license yet

3. **Click "Create repository"**

4. **Copy the repository URL** shown on next page:
   ```
   https://github.com/YOUR_USERNAME/Portfolio.git
   ```

---

## 📤 STEP 3: PUSH TO GITHUB

After creating the repository on GitHub, run these commands:

```bash
# Navigate to Portfolio folder
cd /Users/shohrabrustam/Portfolio

# Add GitHub repository as remote
git remote add origin https://github.com/YOUR_USERNAME/Portfolio.git

# Verify remote was added
git remote -v

# Push to GitHub
git push -u origin main
```

**Replace `YOUR_USERNAME` with your actual GitHub username!**

---

## 🌐 STEP 4: ENABLE GITHUB PAGES

After pushing to GitHub:

1. **Go to your repository on GitHub:**
   - https://github.com/YOUR_USERNAME/Portfolio

2. **Click "Settings" tab** (top right)

3. **Scroll to "Pages" section** (left sidebar)

4. **Configure Pages:**
   - **Source:** Deploy from a branch
   - **Branch:** Select `main`
   - **Folder:** Select `/ (root)`
   - Click **"Save"**

5. **Wait 1-2 minutes** for deployment

6. **Get your live URL:**
   - Will be shown at top: `https://YOUR_USERNAME.github.io/Portfolio/`
   - Click "Visit site" to test

---

## ✅ VERIFICATION CHECKLIST

After deployment:

- [ ] Repository created on GitHub
- [ ] Code pushed successfully
- [ ] GitHub Pages enabled
- [ ] Live site accessible at URL
- [ ] All sections load correctly
- [ ] Resume PDF downloads
- [ ] Contact form works
- [ ] Mobile responsive (test on phone)
- [ ] No broken links
- [ ] Photo loads (if you added one)

---

## 🔄 UPDATING YOUR PORTFOLIO

When you make changes:

```bash
cd /Users/shohrabrustam/Portfolio

# Make your changes to files

# Stage changes
git add .

# Commit with message
git commit -m "Update: describe your changes"

# Push to GitHub
git push

# Wait 1-2 minutes for GitHub Pages to update
```

---

## 📋 COMPLETE DEPLOYMENT COMMANDS

Here's everything in one place:

```bash
# 1. Add resume (if you haven't already)
cp /path/to/resume.pdf /Users/shohrabrustam/Portfolio/resume.pdf
cd /Users/shohrabrustam/Portfolio
git add resume.pdf
git commit -m "Add resume PDF"

# 2. Add GitHub remote (replace YOUR_USERNAME)
git remote add origin https://github.com/YOUR_USERNAME/Portfolio.git

# 3. Push to GitHub
git push -u origin main

# Done! Now enable GitHub Pages in repository settings
```

---

## 🎯 YOUR LIVE URLs

After deployment, your portfolio will be available at:

**GitHub Pages:**
```
https://YOUR_USERNAME.github.io/Portfolio/
```

**Example:**
If your username is `shohrabrustam`, URL will be:
```
https://shohrabrustam.github.io/Portfolio/
```

---

## 📝 UPDATE YOUR RESUME WITH PORTFOLIO URL

After deployment, add this to your resume:

```
Portfolio: https://YOUR_USERNAME.github.io/Portfolio/
```

Or use a custom domain (see below).

---

## 🌟 OPTIONAL: CUSTOM DOMAIN

Want your own domain like `shohrabrustam.com`?

### Step 1: Buy Domain
- Namecheap: ~$10/year
- GoDaddy: ~$12/year
- Google Domains: ~$12/year

### Step 2: Configure GitHub Pages
1. In repository Settings → Pages
2. Click "Add a custom domain"
3. Enter your domain: `shohrabrustam.com`
4. Follow DNS configuration instructions

### Step 3: Update DNS
Add these DNS records at your domain provider:
```
Type: A
Host: @
Value: 185.199.108.153

Type: A
Host: @
Value: 185.199.109.153

Type: A
Host: @
Value: 185.199.110.153

Type: A  
Host: @
Value: 185.199.111.153

Type: CNAME
Host: www
Value: YOUR_USERNAME.github.io
```

---

## 🆘 TROUBLESHOOTING

### "Permission denied (publickey)"
→ You need to set up SSH keys or use HTTPS URL
→ Use HTTPS: `https://github.com/YOUR_USERNAME/Portfolio.git`
→ Or generate SSH key: https://docs.github.com/en/authentication/connecting-to-github-with-ssh

### "Repository not found"
→ Check repository name matches exactly
→ Check username is correct
→ Make sure repository is created on GitHub

### "GitHub Pages not working"
→ Wait 5-10 minutes for first deployment
→ Check Settings → Pages shows green checkmark
→ Verify branch is `main` not `master`
→ Check all files are in root directory

### "404 error on GitHub Pages"
→ Make sure `index.html` is in root directory (not in subfolder)
→ Check file is named exactly `index.html` (case-sensitive)
→ Wait a few minutes and try again

### "Resume PDF not downloading"
→ Make sure file is named exactly `resume.pdf`
→ Check file is committed to git: `git ls-files | grep resume`
→ Push changes: `git push`

---

## 📱 AFTER DEPLOYMENT ACTIONS

1. **Test Your Live Site:**
   - Open URL in multiple browsers
   - Test on mobile device
   - Check all links work
   - Download resume to verify

2. **Update Your Resume:**
   - Add portfolio URL to header
   - Add to email signature
   - Include in job applications

3. **Share Your Portfolio:**
   - Send to recruiters
   - Add to LinkedIn profile (if you create one)
   - Include in cover letters

4. **Monitor:**
   - Star your repository
   - Enable repository notifications
   - Track visitors (optional: add Google Analytics)

---

## 🎨 OPTIONAL ENHANCEMENTS

### Add Google Analytics (Track Visitors)
1. Create Google Analytics account
2. Get tracking code
3. Add to `index.html` before `</head>` tag

### Add Custom 404 Page
Create `404.html` in root directory for custom error page

### Add Favicon
1. Create `favicon.ico` (16x16 or 32x32)
2. Place in root directory
3. Reference in `<head>` of `index.html`

---

## 📊 DEPLOYMENT COMPARISON

| Platform | Setup Time | Cost | Custom Domain | Auto Deploy |
|----------|------------|------|---------------|-------------|
| **GitHub Pages** | 5 min | FREE | Yes (free) | Yes |
| Netlify | 2 min | FREE | Yes (free) | Yes |
| Vercel | 3 min | FREE | Yes (free) | Yes |

**GitHub Pages** is perfect for your portfolio!

---

## ✅ FINAL CHECKLIST

Before sharing with recruiters:

- [ ] Portfolio deployed to GitHub Pages
- [ ] Live URL works and loads quickly
- [ ] Resume PDF included and downloads
- [ ] Photo added (or using default avatar)
- [ ] All sections complete
- [ ] Contact information correct
- [ ] Mobile responsive tested
- [ ] No spelling/grammar errors
- [ ] Projects showcase real metrics
- [ ] Skills section complete
- [ ] Resume updated with portfolio URL
- [ ] Shared with friends for feedback

---

## 🎉 YOU'RE READY!

Your professional portfolio will be live at:
```
https://YOUR_USERNAME.github.io/Portfolio/
```

**Next Steps:**
1. Create GitHub repository
2. Push your code
3. Enable GitHub Pages
4. Add URL to resume
5. Start applying!

---

## 📧 Questions?

Check GitHub's documentation: https://docs.github.com/en/pages

---

**Good luck with your job search! 🚀💼**