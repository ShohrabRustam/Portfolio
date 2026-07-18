# 🚀 Shohrab Rustam - Portfolio Website

A professional, responsive portfolio website showcasing backend engineering expertise, projects, and experience.

[![Live Demo](https://img.shields.io/badge/demo-live-success)](https://your-portfolio-url.netlify.app)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

## 📋 Table of Contents

- [Features](#features)
- [Project Structure](#project-structure)
- [Getting Started](#getting-started)
- [Deployment](#deployment)
- [Technologies Used](#technologies-used)
- [Customization](#customization)
- [Contact](#contact)

## ✨ Features

- 📱 **Fully Responsive** - Works seamlessly on desktop, tablet, and mobile
- ⚡ **Fast & Lightweight** - Optimized for performance
- 🎨 **Modern Design** - Clean, professional UI with smooth animations
- 📊 **Projects Showcase** - Display your work with metrics and technologies
- 💼 **Experience Timeline** - Professional work history
- 🛠️ **Skills Section** - Categorized technical skills
- 📧 **Contact Form** - Email integration for inquiries
- 📄 **Resume Download** - Direct PDF download
- 🔍 **SEO Optimized** - Meta tags for better search visibility

## 📁 Project Structure

```
portfolio/
├── index.html                 # Main HTML file
├── css/
│   └── style.css             # Styles and responsive design
├── js/
│   └── script.js             # JavaScript for interactivity
├── assets/
│   ├── images/
│   │   └── profile-photo.png # Professional photo
│   └── resume.pdf            # Downloadable resume
├── docs/                     # Documentation files
│   ├── DEPLOY.md            
│   ├── DEPLOYMENT_OPTIONS.md
│   └── other guides...
├── deploy-netlify.sh         # Netlify deployment script
├── deploy-github.sh          # GitHub Pages deployment script
└── README.md                 # This file
```

## 🚀 Getting Started

### Local Development

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/portfolio.git
   cd portfolio
   ```

2. **Open in browser**
   ```bash
   # Simply open index.html in your browser
   open index.html
   # Or use a local server
   python -m http.server 8000
   ```

3. **View locally**
   Navigate to `http://localhost:8000`

### Customize Your Portfolio

1. **Update Personal Information**
   - Edit `index.html` - Update name, bio, contact info
   - Replace `assets/images/profile-photo.png` with your photo
   - Replace `assets/resume.pdf` with your resume

2. **Modify Content**
   - Update experience section with your work history
   - Add/edit projects in the projects section
   - Update skills based on your expertise

3. **Styling**
   - Customize colors in `css/style.css` (CSS variables at top)
   - Adjust fonts, spacing, or layouts as needed

## 🌐 Deployment

### Option 1: Netlify Drop (Easiest - 2 minutes)

1. Visit [Netlify Drop](https://app.netlify.com/drop)
2. Drag the entire portfolio folder onto the page
3. Get your live URL instantly!

### Option 2: Netlify CLI (Automated)

```bash
# Install Netlify CLI (first time only)
npm install -g netlify-cli

# Deploy using the script
./deploy-netlify.sh
```

### Option 3: Vercel

```bash
# Install Vercel CLI (first time only)
npm install -g vercel

# Deploy
vercel
```

### Option 4: GitHub Pages

```bash
# Run the GitHub deployment script
./deploy-github.sh
```

For detailed deployment instructions, see [docs/DEPLOY.md](docs/DEPLOY.md)

## 🛠️ Technologies Used

- **HTML5** - Semantic markup
- **CSS3** - Modern styling with Flexbox & Grid
- **JavaScript (Vanilla)** - No frameworks needed
- **Font Awesome** - Icons
- **Google Fonts** - Typography

## 🎨 Customization

### Color Scheme

Edit the CSS variables in `css/style.css`:

```css
:root {
    --primary-color: #2563eb;
    --secondary-color: #1e40af;
    --accent-color: #3b82f6;
    /* ... more colors ... */
}
```

### Content Sections

All content is in `index.html`. Key sections:
- **Hero** - Introduction and stats
- **About** - Bio and highlights
- **Experience** - Work history timeline
- **Projects** - Key projects with metrics
- **Skills** - Technical skills by category
- **Contact** - Contact form and info

## 📊 Performance

- ⚡ Lighthouse Score: 95+
- 📱 Mobile Friendly: Yes
- 🔍 SEO Score: 100
- ⚙️ Best Practices: 100

## 📝 License

This project is open source and available under the [MIT License](LICENSE).

## 📧 Contact

**Shohrab Rustam**
- Email: mohdrustam001@gmail.com
- Phone: +91 7417 200 362
- Location: Bangalore, India

## 🙏 Acknowledgments

- Design inspired by modern portfolio best practices
- Icons from [Font Awesome](https://fontawesome.com)
- Hosted on [Netlify](https://netlify.com)

---

⭐ If you found this portfolio template helpful, feel free to star it!

**Built with ❤️ by Shohrab Rustam**
