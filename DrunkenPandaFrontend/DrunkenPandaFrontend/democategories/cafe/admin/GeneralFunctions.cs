using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


namespace DrunkenPandaFrontend.democategories.cafe.Admin
{
    public class GeneralFunctions
    {
       General ObjGeneral = new General();
        public DataTable loadList(string sp)
        {

            SqlCommand cmd = null;
            SqlDataReader rdr = default(SqlDataReader);
            DataTable dt = new DataTable("TT");
            SqlConnection cn = null;

            try
            {
                //
                cmd = new SqlCommand();
                //
                cn = ObjGeneral.FunMyCon(ref cn);
                {
                    cmd.Connection = cn;
                    cmd.CommandText = sp;
                    
                    cmd.CommandType = CommandType.StoredProcedure;

                    rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);

                    dt.Load(rdr);

                    if (!rdr.IsClosed)
                        rdr.Close();

                    return dt;

                }
            }
            catch (SqlException ex)
            {
               // System.Windows.Forms.MessageBox.Show(ex.Message.ToString(), "General functions");
                return null;
                //
            }
            catch (Exception ex)
            {
                //System.Windows.Forms.MessageBox.Show(ex.Message.ToString(), "General functions");
                return null;
                //
            }
            finally
            {
                //
                cmd.Dispose();
                //
                if ((cn != null))
                {
                    cn.Close();
                }

            }
        }


        public string SaveData(string ProcedureName, string Mode, string Para1, string[] Paras)
        {
            //
            SqlConnection cn = null;
            SqlCommand cmd = null;

            try
            {
                //
                cmd = new SqlCommand();
                cn = ObjGeneral.FunMyCon(ref cn);

                {
                    cmd.Connection = cn;
                    cmd.CommandText = ProcedureName;
                    cmd.CommandType = CommandType.StoredProcedure;
                    
                    cmd.Parameters.AddWithValue("@Mode", Mode);
                    cmd.Parameters.AddWithValue("@Para1", Para1);
                    cmd.Parameters.Add(new SqlParameter("@Res", SqlDbType.NVarChar, 50));
                    cmd.Parameters["@Res"].Direction = ParameterDirection.Output;

                    for (int i = 0; i < Paras.Length; i++)
                    {
                        cmd.Parameters.AddWithValue("@Para" + (i + 2).ToString(), Paras[i].ToString());

                    }



                    cmd.ExecuteNonQuery();

                    return cmd.Parameters["@Res"].Value.ToString();
                }

            }
            catch (SqlException ex)
            {
               // System.Windows.Forms.MessageBox.Show(ex.Message.ToString(), "General functions");
                return ex.Message.ToString();

            }
            catch (Exception ex)
            {
                //System.Windows.Forms.MessageBox.Show(ex.Message.ToString(), "General functions");
                return ex.Message.ToString();

            }
            finally
            {

                cn.Close();
                cmd.Dispose();

            }

        }

        public string ImportData(string ProcedureName, string Mode, string Para1, string[] Paras)
        {
            //
            SqlConnection cn = null;
            SqlCommand cmd = null;

            try
            {
                //
                cmd = new SqlCommand();
                cn = ObjGeneral.FunMyCon(ref cn);

                {
                    cmd.Connection = cn;
                    cmd.CommandText = ProcedureName;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandTimeout = 10800; 
                    cmd.Parameters.AddWithValue("@Mode", Mode);
                    cmd.Parameters.AddWithValue("@Para1", Para1);
                    cmd.Parameters.Add(new SqlParameter("@Res", SqlDbType.NVarChar, 50));
                    cmd.Parameters["@Res"].Direction = ParameterDirection.Output;

                    for (int i = 0; i < Paras.Length; i++)
                    {
                        cmd.Parameters.AddWithValue("@Para" + (i + 2).ToString(), Paras[i].ToString());

                    }



                    cmd.ExecuteNonQuery();

                    return cmd.Parameters["@Res"].Value.ToString();
                }

            }
            catch (SqlException ex)
            {
              //  System.Windows.Forms.MessageBox.Show(ex.Message.ToString(), "General functions");
                return ex.Message.ToString();

            }
            catch (Exception ex)
            {
               // System.Windows.Forms.MessageBox.Show(ex.Message.ToString(), "General functions");
                return ex.Message.ToString();

            }
            finally
            {

                cn.Close();
                cmd.Dispose();

            }

        }

        public DataTable loadList(string Mode, string sp)
        {

            SqlCommand cmd = null;
            SqlDataReader rdr = default(SqlDataReader);
            DataTable dt = new DataTable("TT");
            SqlConnection cn = null;

            try
            {
                //
                cmd = new SqlCommand();
                //
                cn = ObjGeneral.FunMyCon(ref cn);

                {
                    cmd.Connection = cn;
                    cmd.CommandText = sp;
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@Mode", Mode);
                    cmd.Parameters.Add(new SqlParameter("@Res", SqlDbType.NVarChar, 50));
                    cmd.Parameters["@Res"].Direction = ParameterDirection.Output;

                    rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);

                    dt.Load(rdr);

                    if (!rdr.IsClosed)
                        rdr.Close();

                    return dt;

                }
            }
            catch (SqlException ex)
            {
               // System.Windows.Forms.MessageBox.Show(ex.Message.ToString(), "General functions");
                //MessageBox.Show("Source: " & MyExp.Source & ControlChars.Cr & ControlChars.Cr & "State: " & MyExp.State.ToString() & ControlChars.Cr & "Class: " & MyExp.Class.ToString() & ControlChars.Cr & "Server: " & MyExp.Server & ControlChars.Cr & "Message: " & MyExp.Message.ToString() & ControlChars.Cr & "Line: " & MyExp.LineNumber.ToString())
                return null;
                //
            }
            catch (Exception ex)
            {
             //   System.Windows.Forms.MessageBox.Show(ex.Message.ToString(), "General functions");
                //MessageBox.Show("Message : " & Exp.Message)
                return null;
                //
            }
            finally
            {
                //
                cmd.Dispose();
                if ((cn != null))
                {
                    cn.Close();
                }
            }
        }

        public DataTable loadList(string Mode, string sp, string Para1, string[] Paras)
        {

            SqlCommand cmd = null;
            SqlDataReader rdr = default(SqlDataReader);
            DataTable dt = new DataTable("TT");
            SqlConnection cn = null;

            try
            {
                //
                cmd = new SqlCommand();
                //
                cn = ObjGeneral.FunMyCon(ref cn);

                {
                    cmd.Connection = cn;
                    cmd.CommandText = sp;
                    cmd.CommandTimeout = 3000;
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@Mode", Mode);
                    cmd.Parameters.AddWithValue("@Para1", Para1);
                    cmd.Parameters.Add(new SqlParameter("@Res", SqlDbType.NVarChar, 50));
                    cmd.Parameters["@Res"].Direction = ParameterDirection.Output;

                    for (int i = 0; i < Paras.Length; i++)
                    {
                        cmd.Parameters.AddWithValue("@Para" + (i + 2).ToString(), Paras[i].ToString());

                    }

                    rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);

                    dt.Load(rdr);

                    if (!rdr.IsClosed)
                        rdr.Close();

                    return dt;

                }
            }
            catch (SqlException ex)
            {
               // System.Windows.Forms.MessageBox.Show(ex.Message.ToString(), "General functions");
                //MessageBox.Show("Source: " & MyExp.Source & ControlChars.Cr & ControlChars.Cr & "State: " & MyExp.State.ToString() & ControlChars.Cr & "Class: " & MyExp.Class.ToString() & ControlChars.Cr & "Server: " & MyExp.Server & ControlChars.Cr & "Message: " & MyExp.Message.ToString() & ControlChars.Cr & "Line: " & MyExp.LineNumber.ToString())
                return null;
                //
            }
            catch (Exception ex)
            {
               // System.Windows.Forms.MessageBox.Show(ex.Message.ToString(), "General functions");
                //MessageBox.Show("Message : " & Exp.Message)
                return null;
                //
            }
            finally
            {
                //
                cmd.Dispose();
                if ((cn != null))
                {
                    cn.Close();
                }
                //
            }
        }

        public DataTable loadList(string Mode, string sp, string Where)
        {

            SqlCommand cmd = null;
            SqlDataReader rdr = default(SqlDataReader);
            DataTable dt = new DataTable("TT");
            SqlConnection cn = null;

            try
            {
                //
                cmd = new SqlCommand();
                //
                cn = ObjGeneral.FunMyCon(ref cn);

                {
                    cmd.Connection = cn;
                    cmd.CommandText = sp;
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@Mode", Mode);
                    cmd.Parameters.AddWithValue("@Para2", Where);
                    cmd.Parameters.Add(new SqlParameter("@Res", SqlDbType.NVarChar, 50));
                    cmd.Parameters["@Res"].Direction = ParameterDirection.Output;

                    rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);

                    dt.Load(rdr);

                    if (!rdr.IsClosed)
                        rdr.Close();

                    return dt;

                }
            }
            catch (SqlException ex)
            {
            //    System.Windows.Forms.MessageBox.Show(ex.Message.ToString(), "General functions");
                //MessageBox.Show("Source: " & MyExp.Source & ControlChars.Cr & ControlChars.Cr & "State: " & MyExp.State.ToString() & ControlChars.Cr & "Class: " & MyExp.Class.ToString() & ControlChars.Cr & "Server: " & MyExp.Server & ControlChars.Cr & "Message: " & MyExp.Message.ToString() & ControlChars.Cr & "Line: " & MyExp.LineNumber.ToString())
                return null;
                //
            }
            catch (Exception ex)
            {
               // System.Windows.Forms.MessageBox.Show(ex.Message.ToString(), "General functions");
                //MessageBox.Show("Message : " & Exp.Message)
                return null;
                //
            }
            finally
            {
                //
                cmd.Dispose();
                if ((cn != null))
                {
                    cn.Close();
                }
                //
            }
        }


        public DataSet loadList(string Mode, string sp, string Para1, string[] Paras, Boolean isDataSet)
        {

            SqlCommand cmd = null;
            SqlConnection cn = null;

            try
            {
                //
                cmd = new SqlCommand();
                //
                cn = ObjGeneral.FunMyCon(ref cn);

                {
                    cmd.Connection = cn;
                    cmd.CommandText = sp;
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@Mode", Mode);
                    cmd.Parameters.AddWithValue("@Para1", Para1);
                    cmd.Parameters.Add(new SqlParameter("@Res", SqlDbType.NVarChar, 50));
                    cmd.Parameters["@Res"].Direction = ParameterDirection.Output;

                    for (int i = 0; i < Paras.Length; i++)
                    {
                        cmd.Parameters.AddWithValue("@Para" + (i + 2).ToString(), Paras[i].ToString());

                    }

                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);

                    DataSet ds = new DataSet();
                    adapter.Fill(ds);

                     
                    return ds;

                }
            }
            catch (SqlException ex)
            {
               // System.Windows.Forms.MessageBox.Show(ex.Message.ToString(), "General functions");
                //MessageBox.Show("Source: " & MyExp.Source & ControlChars.Cr & ControlChars.Cr & "State: " & MyExp.State.ToString() & ControlChars.Cr & "Class: " & MyExp.Class.ToString() & ControlChars.Cr & "Server: " & MyExp.Server & ControlChars.Cr & "Message: " & MyExp.Message.ToString() & ControlChars.Cr & "Line: " & MyExp.LineNumber.ToString())
               return null;
                //
            }
            catch (Exception ex)
            {
               // System.Windows.Forms.MessageBox.Show(ex.Message.ToString(), "General functions");
                //MessageBox.Show("Message : " & Exp.Message)
               return null;
                //
            }
            finally
            {
                //
                cmd.Dispose();
                if ((cn != null))
                {
                    cn.Close();
                }
                //
            }
        }

        public void LogMessageToFile(string LOG_FILENAME, string funct, string msg)
        {
            msg = string.Format("{0:G}: {1} :- {2}{3}", DateTime.Now, funct, msg, Environment.NewLine);

            File.AppendAllText(LOG_FILENAME, msg);

        }

        public static DataTable loadList_Static(string Mode, string sp, string Where)
        {

            SqlCommand cmd = null;
            SqlDataReader rdr = default(SqlDataReader);
            DataTable dt = new DataTable("TT");
            SqlConnection cn = null;

            try
            {
                //
                cmd = new SqlCommand();
                //
                cn = General.FunMyCon_Static(ref cn);

                {
                    cmd.Connection = cn;
                    cmd.CommandText = sp;
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@Mode", Mode);
                    cmd.Parameters.AddWithValue("@Para2", Where);
                    cmd.Parameters.Add(new SqlParameter("@Res", SqlDbType.NVarChar, 50));
                    cmd.Parameters["@Res"].Direction = ParameterDirection.Output;

                    rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);

                    dt.Load(rdr);

                    if (!rdr.IsClosed)
                        rdr.Close();

                    return dt;

                }
            }
            catch (SqlException ex)
            {
                //System.Windows.Forms.MessageBox.Show(ex.Message.ToString(), "General functions");
                //MessageBox.Show("Source: " & MyExp.Source & ControlChars.Cr & ControlChars.Cr & "State: " & MyExp.State.ToString() & ControlChars.Cr & "Class: " & MyExp.Class.ToString() & ControlChars.Cr & "Server: " & MyExp.Server & ControlChars.Cr & "Message: " & MyExp.Message.ToString() & ControlChars.Cr & "Line: " & MyExp.LineNumber.ToString())
                return null;
                //
            }
            catch (Exception ex)
            {
                //System.Windows.Forms.MessageBox.Show(ex.Message.ToString(), "General functions");
                //MessageBox.Show("Message : " & Exp.Message)
                return null;
                //
            }
            finally
            {
                //
                cmd.Dispose();
                if ((cn != null))
                {
                    cn.Close();
                }
                //
            }
        }

    }
}