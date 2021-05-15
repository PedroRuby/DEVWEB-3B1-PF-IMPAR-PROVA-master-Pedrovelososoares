using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Vagas_de_Estágio.DAL
{
    public class MySqlDAL
    {
        private static string server = "localhost";
        private static string database = "workshop";
        private static string user = "root";
        private static string password = "";

        private string stringConexao = "SERVER=" + server + "; DATABASE=" + database + "; UID=" + user + "; PWD=" + password;

        public MySqlConnection conexao;

        // Metodo de abrir conexao

        public void Conectar()
        {
            try
            {
                conexao = new MySqlConnection(stringConexao);
                conexao.Open();
            }
            catch (Exception e)
            {

                throw new Exception("Não foi possível conectar ao banco de dados. Erro: " + e.Message);
            }

        }
        // Metodo sem retorno
        public void ExecutarSQL(string sql)
        {
            try
            {
                Conectar();
                MySqlCommand comando = new MySqlCommand(sql, conexao);
                comando.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                throw new Exception("Não foi possível executar a instrução no banco de dados. Erro: " + e.Message);
            }
            finally
            {
                conexao.Close();
            }
        }

        // Metodo com retorno
        public DataTable ExecutarConsulta(string sql)
        {
            try
            {
                Conectar();
                DataTable dt = new DataTable();
                MySqlDataAdapter dados = new MySqlDataAdapter(sql, conexao);
                dados.Fill(dt);
                return dt;
            }
            catch (Exception e)
            {
                throw new Exception("Não foi possível executar a consulta no banco de dados. Erro: " + e.Message);
            }
            finally
            {
                conexao.Close();

            }
        }
    }
}


///prof eu n consegui fazer eu fiz oq eu entendi 
///
/// 
/// 
/// 
/// 
/// 
/// 
/// 
/// 
///SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!40101 SET NAMES utf8mb4 */
;

--
--Banco de dados: `vagasti`
--

----------------------------------------------------------

--
--Estrutura da tabela `candidatura`
--

DROP TABLE IF EXISTS `candidatura`;
CREATE TABLE IF NOT EXISTS `candidatura` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `telefone` varchar(14) NOT NULL,
  `email` varchar(30) NOT NULL,
  `escola` varchar(30) NOT NULL,
  `curso` varchar(30) NOT NULL,
  `vaga` varchar(10) NOT NULL,
  `foto` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;