unit PrintDBGrid;

interface

uses Vcl.Grids, Vcl.DBGrids, ComObj, variants, System.SysUtils, Excel_TLB;

procedure PrintGrid(grid: TDBGrid);

implementation

procedure PrintGrid(grid: TDBGrid);
var ExcelApp, Workbook, ArrayData, Cell1, Cell2, Range: Variant;
    i,j, pos:integer;
begin
ExcelApp := CreateOleObject('Excel.Application');
ExcelApp.Application.EnableEvents := False;
Workbook := ExcelApp.WorkBooks.Add;

//try

  ArrayData := VarArrayCreate([0,grid.DataSource.DataSet.RecordCount,0,grid.Columns.Count-1], varVariant);

  pos := 0;

  for j := 0 to grid.Columns.Count-1 do
  begin
    if grid.Columns[j].Visible then
    begin
      ArrayData[0,pos] := grid.Columns[j].Title.Caption;
      inc(pos);
    end;
  end;

  grid.DataSource.DataSet.First;

  for i := 1 to grid.DataSource.DataSet.RecordCount do
  begin
    pos := 0;
    for j := 0 to grid.Columns.Count-1 do
    begin
      if grid.Columns[j].Visible then
      begin
        ArrayData[i,pos] := VarToStr(grid.DataSource.DataSet[grid.Columns[j].FieldName]);
        inc(pos);
      end;
    end;
    grid.DataSource.DataSet.Next;
  end;

  grid.DataSource.DataSet.First;

  Cell1 := WorkBook.WorkSheets[1].Cells[1, 1];
  Cell2 := WorkBook.WorkSheets[1].Cells[grid.DataSource.DataSet.RecordCount+1, pos];

  Range := WorkBook.WorkSheets[1].Range[Cell1,Cell2];
  Range.Value := ArrayData;

  for j := 0 to grid.Columns.Count-1 do
  begin
    WorkBook.WorkSheets[1].Columns[j+1].AutoFit;
  end;

  WorkBook.WorkSheets[1].Rows[1].Font.Bold := True;

  Range.Borders[xlEdgeLeft].LineStyle := xlContinuous;
  Range.Borders[xlEdgeTop].LineStyle := xlContinuous;
  Range.Borders[xlEdgeBottom].LineStyle := xlContinuous;
  Range.Borders[xlEdgeRight].LineStyle := xlContinuous;
  Range.Borders[xlInsideVertical].LineStyle := xlContinuous;
  Range.Borders[xlInsideHorizontal].LineStyle := xlContinuous;

  ExcelApp.Visible := True;

//except
//  ExcelApp.Quit;
//end;


end;

end.
