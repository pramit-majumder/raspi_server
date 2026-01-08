# Project Setup Guide

This document explains how to configure email support and secure tunneling for this project.  
Follow the steps carefully and **in order** to avoid setup issues.

---

## Requirements

Before starting, make sure you have:

- A working Linux system  
- Internet access  
- ISP email credentials  
- An ngrok account with an auth token  

---

## Settings

### SMTP (Email) Settings

You need to prepare an SMTP configuration for **msmtp**.

This configuration should contain:

- Account information  
  - Account name  
  - Login username  
- Server information  
  - SMTP host  
- Email settings  
  - Sender email address  
  - Authentication enabled  

Example fields you will replace with your own values:

- account — isp  
- host — mail.isp.example  
- from — smithjoe@isp.example  
- auth — on  
- user — 12345  

Keep this configuration ready.  
It will be applied **after** msmtp is installed.

---

### Ngrok Settings

For ngrok, you only need one thing:

- Your personal **auth token** from the ngrok dashboard  

This token links your tunnels to your account and removes session limits.

You will add this token **after** completing the installation steps.

---

## Installation

### Step 1 — Prepare Configuration

- Create and save your SMTP configuration  
- Do not install msmtp yet  
- Do not add the ngrok token yet  

This step is only for preparation.

---

### Step 2 — Run the Requirements Script

- Run the setup script named **requirements.sh**  
- Let it install all required system dependencies  
- Make sure it finishes without errors  

This script prepares your system for everything that comes next.

---

### Step 3 — Install msmtp

After the requirements script completes:

- Install
