using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Ninja
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Python_Click(object sender, EventArgs e)
        {
            File.WriteAllText("C:\\temp\\pythonComp.py", Editor.Text);

            // Start the child process.
            Process p = new Process();
            // Redirect the output stream of the child process.
            p.StartInfo.UseShellExecute = false;
            p.StartInfo.RedirectStandardOutput = true;
            p.StartInfo.FileName = "py.bat";
            p.StartInfo.CreateNoWindow = false;
            p.Start();
            //Do not wait for the child process to exit before
            // reading to the end of its redirected stream.
            p.WaitForExit();
            // Read the output stream first and then wait.
            string output = p.StandardOutput.ReadToEnd();
            p.WaitForExit();

            Output.Text = output;
        }

        private void Cpp_Click(object sender, EventArgs e)
        {
            
        }
    }
}
