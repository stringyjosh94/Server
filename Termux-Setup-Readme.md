<h1>LostCityRS Server on Termux (Ubuntu via proot-distro)</h1>

<p><strong>Note:</strong> Sometimes during installation you may see a message suggesting <code>apt update --fix-missing</code>. If that happens, run that command, then re-run the previous command that failed.</p>

<p>This guide shows how to set up <strong>LostCityRS</strong> on <strong>Android using Termux and Ubuntu via proot-distro</strong>.<br>
The repository is private, so users can use these instructions as a reference to set up their own single-player server.</p>

<hr>

<h2>Steps Tested & Working</h2>

<h3>Step 1: Install Ubuntu via proot-distro</h3>
<pre><code>pkg install proot-distro
proot-distro install ubuntu
proot-distro login ubuntu
</code></pre>

<h3>Step 2: Update system</h3>
<pre><code>apt update && apt upgrade -y
</code></pre>

<h3>Step 3: Install essential tools</h3>
<pre><code>apt install -y wget git curl unzip build-essential
</code></pre>

<h3>Step 4: Install Java 17</h3>
<pre><code>apt install -y openjdk-17-jdk
</code></pre>

<h3>Step 5: Install Node.js 22+</h3>
<pre><code>curl -fsSL https://deb.nodesource.com/setup_22.x | bash -
apt install -y nodejs
</code></pre>

<h3>Step 6: Clone the server (private repo reference)</h3>
<pre><code>git clone https://github.com/yourusername/Server.git
cd Server
</code></pre>
<p><strong>Note:</strong> This repository is private. Use this as a reference for your own setup.</p>

<h3>Step 7: Install Bun</h3>
<pre><code>curl -fsSL https://bun.sh/install | bash
source ~/.bashrc
</code></pre>

<h3>Step 8: Start the server</h3>
<pre><code>./start.sh
</code></pre>

<p>Access the game at: <a href="http://localhost:8888/rs2.cgi">http://localhost:8888/rs2.cgi</a></p>

<hr>

<h2>Notes</h2>
<ul>
<li>- Make sure to update the Admin username in the .env file before signing in</li>
<li>Use <code>:::help</code> in-game for admin commands</li>
<li>Setup is designed to avoid complex SSH or file manager steps on Termux</li>
</ul>

<hr>

<h2>License</h2>
<p>MIT License (see <code>LICENSE</code> file)</p>
