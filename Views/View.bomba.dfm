inherited ViewBomba: TViewBomba
  Caption = 'ViewBomba'
  TextHeight = 15
  inherited pnlTopo: TPanel
    ExplicitWidth = 823
    inherited pnlTitulo: TPanel
      ExplicitWidth = 823
      inherited lblTitulo: TLabel
        Width = 69
        Height = 35
        Caption = 'Bomba'
        ExplicitWidth = 69
      end
      inherited pnlBtSair: TPanel
        ExplicitLeft = 736
      end
    end
  end
  inherited pnlFooter: TPanel
    ExplicitTop = 479
    ExplicitWidth = 823
  end
  inherited pnlFundo: TPanel
    ExplicitTop = 41
    ExplicitWidth = 823
    ExplicitHeight = 438
    inherited CardPanelLista: TCardPanel
      ExplicitLeft = 1
      ExplicitTop = 0
      ExplicitWidth = 821
      ExplicitHeight = 438
      inherited CardPesquisa: TCard
        ExplicitTop = 0
        inherited DBGrid1: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'ID_BOMBA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESC_BOMBA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_TANQUE'
              Visible = True
            end>
        end
      end
      inherited CardCadastro: TCard
        ExplicitWidth = 821
        ExplicitHeight = 438
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = DM.FDQuery1
    Left = 689
    Top = 281
  end
end