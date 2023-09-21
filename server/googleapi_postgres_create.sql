-- PostgresSQL database dump

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;



-- function parse(data) {
--     const rows = data.sheets[0].data[0].rowData; -- [{value: [{celldata}, {}, ..]}, {second row}, {third row} ...]
--     rows.forEach(row => {
--         const eachRow = [];
--         row.values.forEach(cell => {
--             eachRow.push(cell.userEnteredValue.stringValue);
--             //console.log(cell.userEnteredValue.stringValue);

--         });
        

--     })

 
    -- var ss = SpreadsheetApp.openById(data.id);
    -- var sheet = ss.getSheets()[0];
    -- var rows = sheet.getDataRange().getValues();
    -- var result = [];
    -- for (var r = 1; r < rows.length; r++) {
    --     var row = rows[r];
    --     var record = {};
    --     for (var c = 0; c < row.length; c++) {
    --     record[rows[0][c]] = row[c];
    --     }
    --     result.push(record);
    -- }
    -- return result;
-- }


--Spreadsheets
{
  "spreadsheetId": string,
  "properties": {
    object (SpreadsheetProperties)
  },
  "sheets": [
    {
      object (Sheet)
    }
  ],
  "namedRanges": [
    {
      object (NamedRange)
    }
  ],
  "spreadsheetUrl": string,
  "developerMetadata": [
    {
      object (DeveloperMetadata)
    }
  ],
  "dataSources": [
    {
      object (DataSource)
    }
  ],
  "dataSourceSchedules": [
    {
      object (DataSourceRefreshSchedule)
    }
  ]
}


-- sheet
{
  "properties": {
    object (SheetProperties)
  },
  "data": [
    {
      object (GridData)
    }
  ],
  "merges": [
    {
      object (GridRange)
    }
  ],
  "conditionalFormats": [
    {
      object (ConditionalFormatRule)
    }
  ],
  "filterViews": [
    {
      object (FilterView)
    }
  ],
  "protectedRanges": [
    {
      object (ProtectedRange)
    }
  ],
  "basicFilter": {
    object (BasicFilter)
  },
  "charts": [
    {
      object (EmbeddedChart)
    }
  ],
  "bandedRanges": [
    {
      object (BandedRange)
    }
  ],
  "developerMetadata": [
    {
      object (DeveloperMetadata)
    }
  ],
  "rowGroups": [
    {
      object (DimensionGroup)
    }
  ],
  "columnGroups": [
    {
      object (DimensionGroup)
    }
  ],
  "slicers": [
    {
      object (Slicer)
    }
  ]
}

-- grid data
{
  "startRow": integer,
  "startColumn": integer,
  "rowData": [
    {
      object (RowData)
    }
  ],
  "rowMetadata": [
    {
      object (DimensionProperties)
    }
  ],
  "columnMetadata": [
    {
      object (DimensionProperties)
    }
  ]
}


CREATE TABLE public.people (
	"_id" serial NOT NULL,
	"name" varchar NOT NULL,
	"mass" varchar,
	"birth_year" varchar,
	"gender" varchar,
	"height" integer,
	CONSTRAINT "people_pk" PRIMARY KEY ("_id")
) WITH (
  OIDS=FALSE
);

ALTER TABLE public.people ADD CONSTRAINT "people_fk0" FOREIGN KEY ("species_id") REFERENCES  public.species("_id");
ALTER TABLE public.people ADD CONSTRAINT "people_fk1" FOREIGN KEY ("homeworld_id") REFERENCES  public.planets("_id");

INSERT INTO public.people VALUES  (1, 'Luke Skywalker', '77', 'blond', 'fair', 'blue', '19BBY', 'male', 1, 1, 172);
 INSERT INTO public.people VALUES (2, 'C-3PO', '75', 'n/a', 'gold', 'yellow', '112BBY', 'n/a',2, 1, 167);
 INSERT INTO public.people VALUES (3, 'R2-D2', '32', 'n/a', 'white, blue', 'red', '33BBY', 'n/a', 2, 8, 96);
 INSERT INTO public.people VALUES (4, 'Darth Vader', '136', 'none', 'white', 'yellow', '41.9BBY', 'male', 1, 1, 202);
 INSERT INTO public.people VALUES (5, 'Leia Organa', '49', 'brown', 'light', 'brown', '19BBY', 'female', 1, 2, 150);
 INSERT INTO public.people VALUES (6, 'Owen Lars', '120', 'brown, grey', 'light', 'blue', '52BBY', 'male', 1, 1, 178);
 INSERT INTO public.people VALUES (7, 'Beru Whitesun lars', '75', 'brown', 'light', 'blue', '47BBY', 'female', 1, 1, 165);

