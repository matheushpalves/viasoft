object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Centro de Custo'
  ClientHeight = 635
  ClientWidth = 841
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 264
    Width = 841
    Height = 371
    Align = alBottom
    DataSource = DM1Principal.dsListaRegistros
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 841
    Height = 264
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 636
    object lblTipo: TLabel
      Left = 12
      Top = 210
      Width = 55
      Height = 13
      Caption = 'Pesquisar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 12
      Top = 0
      Width = 821
      Height = 73
      Caption = 'Centro de Custo Pai'
      TabOrder = 0
      object Label1: TLabel
        Left = 7
        Top = 21
        Width = 38
        Height = 13
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 125
        Top = 20
        Width = 55
        Height = 13
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtCodPai: TEdit
        Left = 7
        Top = 39
        Width = 114
        Height = 21
        Enabled = False
        TabOrder = 0
      end
      object edtDescPai: TEdit
        Left = 127
        Top = 39
        Width = 674
        Height = 21
        Enabled = False
        TabOrder = 1
      end
    end
    object GroupBox2: TGroupBox
      Left = 12
      Top = 79
      Width = 821
      Height = 74
      Caption = 'Centro de Custo Filho'
      TabOrder = 1
      object Label4: TLabel
        Left = 9
        Top = 19
        Width = 38
        Height = 13
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 104
        Top = 20
        Width = 91
        Height = 13
        Caption = 'Descri'#231#227'o Gasto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 642
        Top = 18
        Width = 101
        Height = 13
        Caption = 'Valor Gasto Gasto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtCodFilho: TEdit
        Left = 9
        Top = 37
        Width = 90
        Height = 21
        Enabled = False
        TabOrder = 0
      end
      object edtDescFilho: TEdit
        Left = 107
        Top = 37
        Width = 529
        Height = 21
        Enabled = False
        TabOrder = 1
      end
      object edtValor: TCurrencyEdit
        Left = 642
        Top = 37
        Width = 159
        Height = 21
        Enabled = False
        TabOrder = 2
      end
    end
    object RGPESQUISA: TRadioGroup
      Left = 311
      Top = 190
      Width = 280
      Height = 60
      Caption = 'Pesquisar por'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'C'#243'digo Pai'
        'Descri'#231#227'o Pai'
        'C'#243'digo Filho'
        'Descri'#231#227'o Filho'
        'Valor')
      TabOrder = 2
    end
    object edtPesquisa: TEdit
      Left = 12
      Top = 229
      Width = 293
      Height = 21
      TabOrder = 3
      OnChange = edtPesquisaChange
    end
    object btnGravar: TButton
      Left = 647
      Top = 159
      Width = 90
      Height = 25
      Caption = 'Gravar'
      Enabled = False
      TabOrder = 4
      OnClick = btnGravarClick
    end
    object btnInserir: TButton
      Left = 551
      Top = 159
      Width = 90
      Height = 25
      Caption = 'Inserir'
      TabOrder = 5
      OnClick = btnInserirClick
    end
    object btnCancelar: TButton
      Left = 743
      Top = 159
      Width = 90
      Height = 25
      Caption = 'Cancelar'
      Enabled = False
      TabOrder = 6
      OnClick = btnCancelarClick
    end
    object gb: TGroupBox
      Left = 597
      Top = 190
      Width = 236
      Height = 60
      Caption = 'Total Lan'#231'ado'
      TabOrder = 7
      object lblValor: TLabel
        Left = 55
        Top = 21
        Width = 114
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
  end
end
