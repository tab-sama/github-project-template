# GitHub Project Template

A comprehensive GitHub repository template that provides the essential files
and structure needed for any project, regardless of programming language. This
template includes standard community health files, GitHub issue templates, and
pull request templates to help you get started quickly with best practices for
open source projects.

## 🚀 Features

- **Language Agnostic**: Works for any programming language or project type
- **Community Health Files**: Includes standard files for project governance
- **GitHub Integration**: Pre-configured issue and pull request templates
- **Development Tools**: Pre-configured development workflow tools including lefthook, moon, moon proto, and cocogitto
- **Customizable**: Easy to adapt to your specific project needs

## 📋 Included Files

### Root Directory

- **README.md**: This file - provides information about the project and how to use it
- **LICENSE**: Apache License 2.0 - defines the terms under which the project can be used
- **CODE_OF_CONDUCT.md**: Defines standards for how to engage in the project community
- **SECURITY.md**: Outlines security procedures and how to report vulnerabilities
- **.lefthook.yml**: Configuration for lefthook Git hooks manager
- **.prototools**: Configuration for proto tool version manager and plugin definitions

### Development Tools (.moon directory)

- **.moon/workspace.yml**: Moon monorepo build system configuration
- **.moon/plugins/cog.yml**: Proto plugin configuration for cocogitto installation

### GitHub Integration (.github directory)

- **Issue Templates**:
    - `bug_report.yml`: Structured template for reporting bugs
    - `feature_request.yml`: Structured template for suggesting new features
    - `documentation_improvement.yml`: Structured template for documentation improvements
    - `ISSUE_TEMPLATE.md`: General issue template for other types of issues
- **Pull Request Template**:
    - `PULL_REQUEST_TEMPLATE.md`: Template for submitting changes to the project

## 🔧 Development Tools

This template includes several pre-configured development tools to improve code quality and streamline workflows:

### Proto (Moon Proto)
- **Purpose**: Tool version manager that ensures consistent tool versions across different environments
- **Configuration**: `.prototools` file specifies versions for moon, cocogitto, and lefthook
- **Benefits**: Eliminates "works on my machine" issues by pinning exact tool versions

### Moon
- **Purpose**: Build system and monorepo management tool designed for modern development workflows
- **Configuration**: `.moon/workspace.yml` configures the workspace to manage projects in `apps/*` and `libs/*` directories
- **Benefits**: Provides efficient task running, dependency management, and project organization for monorepos

### Lefthook
- **Purpose**: Git hooks manager that runs commands automatically during Git operations
- **Configuration**: `.lefthook.yml` sets up hooks to run cocogitto verification on commit messages and checks before pushing
- **Benefits**: Enforces code quality standards and conventional commit formats automatically

### Cocogitto
- **Purpose**: Conventional commits tool that enforces commit message standards and generates changelogs
- **Configuration**: Installed via proto plugin (`.moon/plugins/cog.yml`) and integrated with lefthook hooks
- **Benefits**: Ensures consistent commit history and enables automated semantic versioning and changelog generation

These tools work together to create a robust development environment with automated quality checks, consistent tooling, and standardized commit practices.

## ⚡ Installation

This template includes development tools that can be installed to enhance your development workflow. You have two options for installation:

### Automated Installation

The easiest way to set up all development tools is to use the provided installation script:

```bash
./scripts/install.sh
```

This script will:
1. Install [proto](https://moonrepo.dev/proto) (Moon's tool version manager)
2. Install all configured tools (moon, cocogitto, lefthook) using `proto use`
3. Set up Git hooks with lefthook

### Manual Installation

If you prefer to install tools manually or need more control over the process:

1. **Install proto**:
   ```bash
   bash -c "$(curl -fsSL https://moonrepo.dev/install/proto.sh)"
   ```

2. **Install configured tools**:
   ```bash
   proto use
   ```

3. **Set up Git hooks**:
   ```bash
   lefthook install
   ```

## 🛠️ How to Use This Template

1. **Create a New Repository**:
    - Click the "Use this template" button at the top of the repository
    - Or clone/download this repository and initialize a new Git repository

2. **Customize the Files**:
    - Update this README.md with information about your project
    - Modify the LICENSE file if you want to use a different license
    - Update the CODE_OF_CONDUCT.md and SECURITY.md with your contact information
    - Adjust the issue and pull request templates to match your project's needs

3. **Add Your Project Files**:
    - Add your source code, documentation, and other project-specific files
    - Create additional directories as needed for your project structure

4. **Publish Your Repository**:
    - Push your changes to GitHub
    - Enable GitHub Pages if you want to create a project website

## ✏️ Customization Guide

### README.md

- Replace this content with information about your project
- Include sections such as:
    - Project description and purpose
    - Installation instructions
    - Usage examples
    - API documentation
    - Contributing guidelines
    - License information

### LICENSE

- The template includes the Apache License 2.0
- To use a different license, replace this file with your preferred license
- Update the copyright notice with your name/organization and year

### CODE_OF_CONDUCT.md

- Update the contact information in the "Enforcement" section
- Customize any specific rules or expectations for your community

### SECURITY.md

- Update the "Reporting a Vulnerability" section with your contact information
- Modify the "Supported Versions" table to match your project's version policy
- Update the "Security Contacts" section with your contact details

### Issue Templates

- Modify the fields, labels, and descriptions to match your project's needs
- Add or remove templates based on the types of contributions you expect

### Pull Request Template

- Templates follow the [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) format
- Adjust the checklist items to match your project's requirements
- Modify the types of changes to reflect your project's structure

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes using [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) format:
   - For new features: `git commit -m 'feat: add some amazing feature'`
   - For bug fixes: `git commit -m 'fix: resolve issue with login process'`
   - For documentation: `git commit -m 'docs: update installation instructions'`
   - For other changes: See the Conventional Commits specification for more types
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request using the provided templates

Please read the [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) for details on our code of conduct and the process for
submitting pull requests.

## 📄 License

This template is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.

## 🔒 Security

For information about reporting security vulnerabilities, please read our [Security Policy](SECURITY.md).

---

**Note**: This template is designed to be a starting point. Feel free to modify it to better suit your project's
specific needs.
