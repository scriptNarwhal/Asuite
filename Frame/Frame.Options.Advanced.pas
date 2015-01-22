{
Copyright (C) 2006-2015 Matteo Salvi

Website: http://www.salvadorsoftware.com/

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
}

unit Frame.Options.Advanced;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame.BaseEntity,
  Vcl.ComCtrls, DKLang;

type
  TfrmAdvancedOptionsPage = class(TfrmBaseEntityPage)
    DKLanguageController1: TDKLanguageController;
  private
    { Private declarations }
  strict protected
    function GetTitle: string; override;
    function GetImageIndex: Integer; override;
    function InternalLoadData: Boolean; override;
    function InternalSaveData: Boolean; override;
  public
    { Public declarations }
  end;

var
  frmAdvancedOptionsPage: TfrmAdvancedOptionsPage;

implementation

uses
  AppConfig.Main;

{$R *.dfm}

{ TfrmAdvancedOptionsPage }

function TfrmAdvancedOptionsPage.GetImageIndex: Integer;
begin
  Result := Config.IconsManager.GetLargeIconIndex('advanced');
end;

function TfrmAdvancedOptionsPage.GetTitle: string;
begin
  Result := DKLangConstW('msgAdvanced');
end;

function TfrmAdvancedOptionsPage.InternalLoadData: Boolean;
begin
  Result := inherited;
end;

function TfrmAdvancedOptionsPage.InternalSaveData: Boolean;
begin
  Result := inherited;
end;

end.
