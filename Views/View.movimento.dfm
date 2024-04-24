inherited ViewMovimento: TViewMovimento
  Caption = 'ViewMovimento'
  TextHeight = 15
  inherited pnlTopo: TPanel
    inherited pnlTitulo: TPanel
      inherited lblTitulo: TLabel
        Width = 111
        Height = 35
        Caption = 'Movimento'
        ExplicitWidth = 111
      end
    end
  end
  inherited pnlFooter: TPanel
    inherited btnNovo: TSpeedButton
      OnClick = btnNovoClick
    end
    inherited btnCancelar: TSpeedButton
      OnClick = btnCancelarClick
    end
  end
  inherited pnlFundo: TPanel
    inherited CardPanelLista: TCardPanel
      ActiveCard = CardCadastro
      inherited CardPesquisa: TCard
        inherited DBGrid1: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'MOVIMENTO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BOMBA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LITROS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPOSTO'
              Visible = True
            end>
        end
      end
      inherited CardCadastro: TCard
        object Label2: TLabel
          Left = 25
          Top = 115
          Width = 95
          Height = 15
          Caption = 'Selecionar Bomba'
        end
        object Label3: TLabel
          Left = 391
          Top = 127
          Width = 106
          Height = 32
          Caption = 'TIPO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -24
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 25
          Top = 351
          Width = 150
          Height = 32
          Caption = 'Total a pagar:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -24
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 821
          Height = 89
          Align = alTop
          BevelOuter = bvNone
          Color = 15395562
          ParentBackground = False
          TabOrder = 0
          ExplicitTop = 8
          object Label1: TLabel
            Left = 25
            Top = 29
            Width = 177
            Height = 25
            Caption = 'Cadastrar Movimento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowFrame
            Font.Height = -19
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
        end
        object cboxBomba: TDBLookupComboBox
          Left = 25
          Top = 136
          Width = 344
          Height = 23
          DataField = 'ID_BOMBA'
          DataSource = dsDados
          KeyField = 'ID_BOMBA'
          ListField = 'DESC_BOMBA'
          ListSource = dsBombas
          TabOrder = 1
        end
        object rgForma: TRadioGroup
          Left = 25
          Top = 184
          Width = 232
          Height = 105
          Caption = 'Forma: '
          ItemIndex = 0
          Items.Strings = (
            'Dinheiro'
            'Litro')
          TabOrder = 2
          OnClick = rgFormaClick
        end
        object edtDinheiro: TEdit
          Left = 120
          Top = 208
          Width = 121
          Height = 23
          TabOrder = 3
        end
        object edtLitro: TEdit
          Left = 120
          Top = 256
          Width = 121
          Height = 23
          TabOrder = 4
          Visible = False
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = DM.qryMovimentos
    Left = 745
    Top = 73
  end
  object dsBombas: TDataSource
    DataSet = DM.qryBombas
    Left = 681
    Top = 81
  end
end
