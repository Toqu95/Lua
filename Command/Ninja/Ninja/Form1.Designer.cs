
namespace Ninja
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.bunifuElipse1 = new ns1.BunifuElipse(this.components);
            this.TopBar = new System.Windows.Forms.Panel();
            this.Logo = new System.Windows.Forms.PictureBox();
            this.SideBar = new System.Windows.Forms.Panel();
            this.Python = new ns1.BunifuFlatButton();
            this.Cpp = new ns1.BunifuFlatButton();
            this.bunifuDragControl1 = new ns1.BunifuDragControl(this.components);
            this.bunifuDragControl2 = new ns1.BunifuDragControl(this.components);
            this.Editor = new FastColoredTextBoxNS.FastColoredTextBox();
            this.Output = new FastColoredTextBoxNS.FastColoredTextBox();
            this.TopBar.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.Logo)).BeginInit();
            this.SideBar.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.Editor)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Output)).BeginInit();
            this.SuspendLayout();
            // 
            // bunifuElipse1
            // 
            this.bunifuElipse1.ElipseRadius = 5;
            this.bunifuElipse1.TargetControl = this;
            // 
            // TopBar
            // 
            this.TopBar.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(60)))), ((int)(((byte)(60)))), ((int)(((byte)(80)))));
            this.TopBar.Controls.Add(this.Logo);
            this.TopBar.Dock = System.Windows.Forms.DockStyle.Top;
            this.TopBar.Location = new System.Drawing.Point(0, 0);
            this.TopBar.Name = "TopBar";
            this.TopBar.Size = new System.Drawing.Size(800, 32);
            this.TopBar.TabIndex = 0;
            // 
            // Logo
            // 
            this.Logo.Image = global::Ninja.Properties.Resources.Ninja;
            this.Logo.Location = new System.Drawing.Point(0, 0);
            this.Logo.Name = "Logo";
            this.Logo.Size = new System.Drawing.Size(32, 32);
            this.Logo.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.Logo.TabIndex = 0;
            this.Logo.TabStop = false;
            // 
            // SideBar
            // 
            this.SideBar.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(50)))));
            this.SideBar.Controls.Add(this.Python);
            this.SideBar.Controls.Add(this.Cpp);
            this.SideBar.Dock = System.Windows.Forms.DockStyle.Left;
            this.SideBar.Location = new System.Drawing.Point(0, 32);
            this.SideBar.Name = "SideBar";
            this.SideBar.Size = new System.Drawing.Size(130, 418);
            this.SideBar.TabIndex = 1;
            // 
            // Python
            // 
            this.Python.Activecolor = System.Drawing.Color.FromArgb(((int)(((byte)(50)))), ((int)(((byte)(50)))), ((int)(((byte)(80)))));
            this.Python.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(50)))), ((int)(((byte)(50)))), ((int)(((byte)(70)))));
            this.Python.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.Python.BorderRadius = 0;
            this.Python.ButtonText = "Python";
            this.Python.Cursor = System.Windows.Forms.Cursors.Hand;
            this.Python.DisabledColor = System.Drawing.Color.Gray;
            this.Python.Iconcolor = System.Drawing.Color.Transparent;
            this.Python.Iconimage = ((System.Drawing.Image)(resources.GetObject("Python.Iconimage")));
            this.Python.Iconimage_right = null;
            this.Python.Iconimage_right_Selected = null;
            this.Python.Iconimage_Selected = null;
            this.Python.IconMarginLeft = 0;
            this.Python.IconMarginRight = 0;
            this.Python.IconRightVisible = true;
            this.Python.IconRightZoom = 0D;
            this.Python.IconVisible = true;
            this.Python.IconZoom = 60D;
            this.Python.IsTab = false;
            this.Python.Location = new System.Drawing.Point(3, 36);
            this.Python.Name = "Python";
            this.Python.Normalcolor = System.Drawing.Color.FromArgb(((int)(((byte)(50)))), ((int)(((byte)(50)))), ((int)(((byte)(70)))));
            this.Python.OnHovercolor = System.Drawing.Color.FromArgb(((int)(((byte)(50)))), ((int)(((byte)(50)))), ((int)(((byte)(80)))));
            this.Python.OnHoverTextColor = System.Drawing.Color.White;
            this.Python.selected = false;
            this.Python.Size = new System.Drawing.Size(124, 30);
            this.Python.TabIndex = 1;
            this.Python.Text = "Python";
            this.Python.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.Python.Textcolor = System.Drawing.Color.White;
            this.Python.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Python.Click += new System.EventHandler(this.Python_Click);
            // 
            // Cpp
            // 
            this.Cpp.Activecolor = System.Drawing.Color.FromArgb(((int)(((byte)(50)))), ((int)(((byte)(50)))), ((int)(((byte)(80)))));
            this.Cpp.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(50)))), ((int)(((byte)(50)))), ((int)(((byte)(70)))));
            this.Cpp.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.Cpp.BorderRadius = 0;
            this.Cpp.ButtonText = "C++";
            this.Cpp.Cursor = System.Windows.Forms.Cursors.Hand;
            this.Cpp.DisabledColor = System.Drawing.Color.Gray;
            this.Cpp.Iconcolor = System.Drawing.Color.Transparent;
            this.Cpp.Iconimage = ((System.Drawing.Image)(resources.GetObject("Cpp.Iconimage")));
            this.Cpp.Iconimage_right = null;
            this.Cpp.Iconimage_right_Selected = null;
            this.Cpp.Iconimage_Selected = null;
            this.Cpp.IconMarginLeft = 0;
            this.Cpp.IconMarginRight = 0;
            this.Cpp.IconRightVisible = true;
            this.Cpp.IconRightZoom = 0D;
            this.Cpp.IconVisible = true;
            this.Cpp.IconZoom = 60D;
            this.Cpp.IsTab = false;
            this.Cpp.Location = new System.Drawing.Point(3, 4);
            this.Cpp.Name = "Cpp";
            this.Cpp.Normalcolor = System.Drawing.Color.FromArgb(((int)(((byte)(50)))), ((int)(((byte)(50)))), ((int)(((byte)(70)))));
            this.Cpp.OnHovercolor = System.Drawing.Color.FromArgb(((int)(((byte)(50)))), ((int)(((byte)(50)))), ((int)(((byte)(80)))));
            this.Cpp.OnHoverTextColor = System.Drawing.Color.White;
            this.Cpp.selected = false;
            this.Cpp.Size = new System.Drawing.Size(124, 30);
            this.Cpp.TabIndex = 0;
            this.Cpp.Text = "C++";
            this.Cpp.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.Cpp.Textcolor = System.Drawing.Color.White;
            this.Cpp.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Cpp.Click += new System.EventHandler(this.Cpp_Click);
            // 
            // bunifuDragControl1
            // 
            this.bunifuDragControl1.Fixed = true;
            this.bunifuDragControl1.Horizontal = true;
            this.bunifuDragControl1.TargetControl = this.TopBar;
            this.bunifuDragControl1.Vertical = true;
            // 
            // bunifuDragControl2
            // 
            this.bunifuDragControl2.Fixed = true;
            this.bunifuDragControl2.Horizontal = true;
            this.bunifuDragControl2.TargetControl = this.Logo;
            this.bunifuDragControl2.Vertical = true;
            // 
            // Editor
            // 
            this.Editor.AutoCompleteBracketsList = new char[] {
        '(',
        ')',
        '{',
        '}',
        '[',
        ']',
        '\"',
        '\"',
        '\'',
        '\''};
            this.Editor.AutoIndentCharsPatterns = "^\\s*[\\w\\.]+(\\s\\w+)?\\s*(?<range>=)\\s*(?<range>[^;=]+);\r\n^\\s*(case|default)\\s*[^:]*" +
    "(?<range>:)\\s*(?<range>[^;]+);";
            this.Editor.AutoScrollMinSize = new System.Drawing.Size(27, 14);
            this.Editor.BackBrush = null;
            this.Editor.CharHeight = 14;
            this.Editor.CharWidth = 8;
            this.Editor.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.Editor.DisabledColor = System.Drawing.Color.FromArgb(((int)(((byte)(100)))), ((int)(((byte)(180)))), ((int)(((byte)(180)))), ((int)(((byte)(180)))));
            this.Editor.IsReplaceMode = false;
            this.Editor.LineNumberColor = System.Drawing.Color.Black;
            this.Editor.Location = new System.Drawing.Point(136, 38);
            this.Editor.Name = "Editor";
            this.Editor.Paddings = new System.Windows.Forms.Padding(0);
            this.Editor.SelectionColor = System.Drawing.Color.FromArgb(((int)(((byte)(60)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(255)))));
            this.Editor.ServiceColors = ((FastColoredTextBoxNS.ServiceColors)(resources.GetObject("Editor.ServiceColors")));
            this.Editor.Size = new System.Drawing.Size(652, 238);
            this.Editor.TabIndex = 3;
            this.Editor.Zoom = 100;
            // 
            // Output
            // 
            this.Output.AutoCompleteBracketsList = new char[] {
        '(',
        ')',
        '{',
        '}',
        '[',
        ']',
        '\"',
        '\"',
        '\'',
        '\''};
            this.Output.AutoIndentCharsPatterns = "^\\s*[\\w\\.]+(\\s\\w+)?\\s*(?<range>=)\\s*(?<range>[^;=]+);\r\n^\\s*(case|default)\\s*[^:]*" +
    "(?<range>:)\\s*(?<range>[^;]+);";
            this.Output.AutoScrollMinSize = new System.Drawing.Size(27, 14);
            this.Output.BackBrush = null;
            this.Output.CharHeight = 14;
            this.Output.CharWidth = 8;
            this.Output.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.Output.DisabledColor = System.Drawing.Color.FromArgb(((int)(((byte)(100)))), ((int)(((byte)(180)))), ((int)(((byte)(180)))), ((int)(((byte)(180)))));
            this.Output.Font = new System.Drawing.Font("Courier New", 9.75F);
            this.Output.IsReplaceMode = false;
            this.Output.LineNumberColor = System.Drawing.Color.Black;
            this.Output.Location = new System.Drawing.Point(136, 282);
            this.Output.Name = "Output";
            this.Output.Paddings = new System.Windows.Forms.Padding(0);
            this.Output.SelectionColor = System.Drawing.Color.FromArgb(((int)(((byte)(60)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(255)))));
            this.Output.ServiceColors = ((FastColoredTextBoxNS.ServiceColors)(resources.GetObject("Output.ServiceColors")));
            this.Output.Size = new System.Drawing.Size(652, 162);
            this.Output.TabIndex = 4;
            this.Output.Zoom = 100;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(44)))), ((int)(((byte)(43)))), ((int)(((byte)(50)))));
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.Output);
            this.Controls.Add(this.Editor);
            this.Controls.Add(this.SideBar);
            this.Controls.Add(this.TopBar);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Form1";
            this.Text = "Ninja";
            this.TopBar.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.Logo)).EndInit();
            this.SideBar.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.Editor)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Output)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private ns1.BunifuElipse bunifuElipse1;
        private System.Windows.Forms.Panel TopBar;
        private System.Windows.Forms.PictureBox Logo;
        private System.Windows.Forms.Panel SideBar;
        private ns1.BunifuDragControl bunifuDragControl1;
        private ns1.BunifuDragControl bunifuDragControl2;
        private ns1.BunifuFlatButton Cpp;
        private ns1.BunifuFlatButton Python;
        private FastColoredTextBoxNS.FastColoredTextBox Output;
        private FastColoredTextBoxNS.FastColoredTextBox Editor;
    }
}

