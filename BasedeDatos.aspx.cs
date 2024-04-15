using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.EnterpriseServices.CompensatingResourceManager;
using System.EnterpriseServices.Internal;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BDatos
{
    public partial class BasedeDatos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             
        }

        private DataTable ObtenerDatosDesdeBaseDeDatos()
        {
          
            return new DataTable();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            string connectionString = "Data Source=DESKTOP-UCD53BE;Initial Catalog=BASEDATOS;Integrated Security=True";
            string query = "DELETE FROM Informacion";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }

            // eliminar los datos, actualizar el GridView para ver los cambios
            ActualizarGridView();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=DESKTOP-UCD53BE;Initial Catalog=BASEDATOS;Integrated Security=True";
            string query = "INSERT INTO Informacion (Nombre, Apellido, Nacionalidad, ECivil, Correo, Edad, Programa, Semestre, Cead) VALUES (@Nombre, @Apellido, @Nacionalidad, @ECivil, @Correo, @Edad, @Programa, @Semestre, @Cead)";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Nombre", TxtNombre.Text);
                    command.Parameters.AddWithValue("@Apellido", TxtApellido.Text);
                    command.Parameters.AddWithValue("@Nacionalidad", TxtNacionalidad.Text);
                    command.Parameters.AddWithValue("@ECivil", TxtECivil.Text);
                    command.Parameters.AddWithValue("@Correo", TxtCorreo.Text);
                    command.Parameters.AddWithValue("@Edad", Convert.ToInt32(TxtEdad.Text));
                    command.Parameters.AddWithValue("@Programa", TxtPrograma.Text);
                    command.Parameters.AddWithValue("@Semestre", TxtSemestre.Text);
                    command.Parameters.AddWithValue("@Cead", TxtCead.Text);

                    connection.Open();
                    command.ExecuteNonQuery();

                    ActualizarGridView();
                }
            }
        }
        private void ActualizarGridView()
        {
            string connectionString = "Data Source=DESKTOP-UCD53BE;Initial Catalog=BASEDATOS;Integrated Security=True";
            string query = "SELECT Nombre, Apellido, Nacionalidad, ECivil, Correo, Edad, Programa, Semestre, Cead FROM Informacion";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();

                    // Datos al GridView
                    GridView1.DataSource = reader;
                    GridView1.DataBind();

                    reader.Close();
                }
            }

        }
    }
}

     

 
 
       
 