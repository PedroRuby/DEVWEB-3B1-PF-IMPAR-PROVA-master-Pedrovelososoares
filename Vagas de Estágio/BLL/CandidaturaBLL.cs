using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Vagas_de_Estágio.BLL
{
    public class CandidaturaBLL
    {
    }
}

GridView myGridView = new GridView();
myGridView.AllowsColumnReorder = true;
myGridView.ColumnHeaderToolTip = "Employee Information";
GridViewColumn gvc1 = new GridViewColumn();
gvc1.DisplayMemberBinding = new Binding("primeiroNome"); ...
