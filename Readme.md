# Cover Letter template generator

Here's a reformatted version of the statement:

Are you tired of reinventing the wheel every time you apply for a new job by writing a cover letter from scratch? If so, we have a quick and dirty DevOps `yaml` solution with `Make` that could help streamline the process.

Prerequsits:

1. Install gomplate and pbcopy:
    If you haven't already, you'll need to install both `gomplate` and `pbcopy` apps on your system. Visit https://gomplate.ca/docs/ for installation instructions for gomplate, and ensure that pbcopy is installed on your macOS\Linux system.
1. Clone this repo
1. Create your template and configuration files:
    * Create a template file named `coverletter.txt` (or take inside repo) and a configuration file named `config.yaml`. Make sure that the configuration file includes a values for the `position` and `company` key, which is used in the template generation  
1. Run the render target:
    * Open a terminal window and navigate to your project directory. Then, run the following command to render your template and copy the output to the clipboard:

    ```go
    
    make render
    ```

Note: If your template or data file have different names or are located in a different directory, you'll need to update the makefile to reflect the correct paths.
