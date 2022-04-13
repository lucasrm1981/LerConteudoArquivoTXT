using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web.SessionState;
using System.Web.UI.HtmlControls;
using System.IO;

namespace LerConteudoArquivoTXT
{
    public partial class LerConteudoArquivoTXT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private bool UploadArquivo()
        {

            FileUpload1.SaveAs((@"C:\Users\Public\Documents"
                    + FileUpload1.FileName));
            return true;
        }

        private void Ler()
        {
            List<string> lista = new List<string>();

            using (StreamReader sr = new StreamReader(@"C:\Users\Public\Documents"
            + FileUpload1.FileName))
            {
                string linha = sr.ReadToEnd();
                string[] array = linha.Split(';');

                txtData.Text = array[0];
                txtIdade.Text = array[1];
                txtValor.Text = array[2];


            }

        }
        protected void button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.PostedFile.ContentType == "text/plain")
            {
                try
                {
                    if (UploadArquivo())
                    {

                        Ler();


                    }
                    else
                    {
                        Statuslbl.Text = "Não foi possível realizar a importação do arquivo";
                    }
                }

                catch (Exception)
                {

                    throw;
                }
            }
            else
            {
                Statuslbl.Text = "Favor coloque um arquivo .txt";

            }
        }
    }
}