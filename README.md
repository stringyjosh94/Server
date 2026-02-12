<div align="center">
    <h1>Lost City</h1>
</div>

> [!NOTE]
> Learn about our history and ethos on our forum: https://lostcity.rs/t/faq-what-is-lost-city/16

This is a higher-level repository that links our other projects. You'll notice it's like home-rolled submodules (without commit references).  
Github won't include submodules in web downloads, and we have a lot of users who end up clicking download zip.

Note:
This is a private fork of the original Lost City RS server, modified to run easily on Termux (Android).
Other users cannot clone this repository, but they can read the README and use it as a reference to set up their own single-player server.

Modifications in this fork include:

Forking individual directories and linking them under this repository.

Updating references to this fork.

Editing start.ts to match this fork.

Copying .env.example to .env and configuring the admin username and offline play settings.

Setting up admin commands using :::help.

This makes setup on Termux easier, avoiding complex SSH or file manager steps.

## Getting Started

> [!IMPORTANT]
> If you run into issues, please see our [common issues](#common-issues).

1. Download and extract this repo somewhere on your computer.
2. Install our [dependencies](#dependencies).
3. Open the folder you downloaded: **Run the start script and follow the on-screen prompts.** You may disregard any severity warnings you see.

Once your setup process has completed, wait for it to tell you the world has started before trying to play at: http://localhost/rs2.cgi

You can press `ctrl + c` to cancel/quit out of a terminal process.

## Dependencies

- Git CLI - Windows users: [git-scm](https://git-scm.com/)
- [NodeJS 22+](https://nodejs.org/)
- [Java 17+](https://adoptium.net/)

> [!TIP]
> If you're using VS Code (recommended), [we have an extension to install on the marketplace.](https://marketplace.visualstudio.com/items?itemName=2004scape.runescriptlanguage)

## Workflow

**Use the start script provided** - it handles a lot of common use cases. We're trying to reduce the barrier to entry by providing an all-inclusive script.

## License
This project is licensed under the [MIT License](https://opensource.org/licenses/MIT). See the [LICENSE](LICENSE) file for details.
