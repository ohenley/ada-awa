-----------------------------------------------------------------------
--  AWA.Counters.Models -- AWA.Counters.Models
-----------------------------------------------------------------------
--  File generated by ada-gen DO NOT MODIFY
--  Template used: templates/model/package-spec.xhtml
--  Ada Generator: https://ada-gen.googlecode.com/svn/trunk Revision 1095
-----------------------------------------------------------------------
--  Copyright (C) 2016 Stephane Carrez
--  Written by Stephane Carrez (Stephane.Carrez@gmail.com)
--
--  Licensed under the Apache License, Version 2.0 (the "License");
--  you may not use this file except in compliance with the License.
--  You may obtain a copy of the License at
--
--      http://www.apache.org/licenses/LICENSE-2.0
--
--  Unless required by applicable law or agreed to in writing, software
--  distributed under the License is distributed on an "AS IS" BASIS,
--  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--  See the License for the specific language governing permissions and
--  limitations under the License.
-----------------------------------------------------------------------
pragma Warnings (Off);
with ADO.Sessions;
with ADO.Objects;
with ADO.Statements;
with ADO.SQL;
with ADO.Schemas;
with ADO.Queries;
with ADO.Queries.Loaders;
with Ada.Calendar;
with Ada.Containers.Vectors;
with Ada.Strings.Unbounded;
with Util.Beans.Objects;
with Util.Beans.Basic.Lists;
with Util.Beans.Methods;
pragma Warnings (On);
package AWA.Counters.Models is

   pragma Style_Checks ("-mr");

   type Counter_Ref is new ADO.Objects.Object_Ref with null record;

   type Counter_Definition_Ref is new ADO.Objects.Object_Ref with null record;

   --  Create an object key for Counter.
   function Counter_Key (Id : in ADO.Identifier) return ADO.Objects.Object_Key;
   --  Create an object key for Counter from a string.
   --  Raises Constraint_Error if the string cannot be converted into the object key.
   function Counter_Key (Id : in String) return ADO.Objects.Object_Key;

   Null_Counter : constant Counter_Ref;
   function "=" (Left, Right : Counter_Ref'Class) return Boolean;

   --  Set the object associated with the counter.
   procedure Set_Object_Id (Object : in out Counter_Ref;
                            Value  : in ADO.Identifier);

   --  Get the object associated with the counter.
   function Get_Object_Id (Object : in Counter_Ref)
                 return ADO.Identifier;

   --  Set the day associated with the counter.
   procedure Set_Date (Object : in out Counter_Ref;
                       Value  : in Ada.Calendar.Time);

   --  Get the day associated with the counter.
   function Get_Date (Object : in Counter_Ref)
                 return Ada.Calendar.Time;

   --  Set the counter value.
   procedure Set_Counter (Object : in out Counter_Ref;
                          Value  : in Integer);

   --  Get the counter value.
   function Get_Counter (Object : in Counter_Ref)
                 return Integer;

   --  Set the definition id.
   procedure Set_Definition_Id (Object : in out Counter_Ref;
                                Value  : in Integer);

   --  Get the definition id.
   function Get_Definition_Id (Object : in Counter_Ref)
                 return Integer;

   --  Load the entity identified by 'Id'.
   --  Raises the NOT_FOUND exception if it does not exist.
   procedure Load (Object  : in out Counter_Ref;
                   Session : in out ADO.Sessions.Session'Class;
                   Id      : in Integer);

   --  Load the entity identified by 'Id'.
   --  Returns True in <b>Found</b> if the object was found and False if it does not exist.
   procedure Load (Object  : in out Counter_Ref;
                   Session : in out ADO.Sessions.Session'Class;
                   Id      : in Integer;
                   Found   : out Boolean);

   --  Find and load the entity.
   overriding
   procedure Find (Object  : in out Counter_Ref;
                   Session : in out ADO.Sessions.Session'Class;
                   Query   : in ADO.SQL.Query'Class;
                   Found   : out Boolean);

   --  Save the entity.  If the entity does not have an identifier, an identifier is allocated
   --  and it is inserted in the table.  Otherwise, only data fields which have been changed
   --  are updated.
   overriding
   procedure Save (Object  : in out Counter_Ref;
                   Session : in out ADO.Sessions.Master_Session'Class);

   --  Delete the entity.
   overriding
   procedure Delete (Object  : in out Counter_Ref;
                     Session : in out ADO.Sessions.Master_Session'Class);

   overriding
   function Get_Value (From : in Counter_Ref;
                       Name : in String) return Util.Beans.Objects.Object;

   --  Table definition
   COUNTER_TABLE : constant ADO.Schemas.Class_Mapping_Access;

   --  Internal method to allocate the Object_Record instance
   overriding
   procedure Allocate (Object : in out Counter_Ref);

   --  Copy of the object.
   procedure Copy (Object : in Counter_Ref;
                   Into   : in out Counter_Ref);

   --  --------------------
   --  A counter definition defines what the counter represents. It uniquely identifies
   --  the counter for the Counter table. A counter may be associated with a database
   --  table. In that case, the counter definition has a relation to the corresponding Entity_Type.
   --  --------------------
   --  Create an object key for Counter_Definition.
   function Counter_Definition_Key (Id : in ADO.Identifier) return ADO.Objects.Object_Key;
   --  Create an object key for Counter_Definition from a string.
   --  Raises Constraint_Error if the string cannot be converted into the object key.
   function Counter_Definition_Key (Id : in String) return ADO.Objects.Object_Key;

   Null_Counter_Definition : constant Counter_Definition_Ref;
   function "=" (Left, Right : Counter_Definition_Ref'Class) return Boolean;

   --  Set the counter name.
   procedure Set_Name (Object : in out Counter_Definition_Ref;
                       Value  : in Ada.Strings.Unbounded.Unbounded_String);
   procedure Set_Name (Object : in out Counter_Definition_Ref;
                       Value : in String);

   --  Get the counter name.
   function Get_Name (Object : in Counter_Definition_Ref)
                 return Ada.Strings.Unbounded.Unbounded_String;
   function Get_Name (Object : in Counter_Definition_Ref)
                 return String;

   --  Set the counter unique id.
   procedure Set_Id (Object : in out Counter_Definition_Ref;
                     Value  : in ADO.Identifier);

   --  Get the counter unique id.
   function Get_Id (Object : in Counter_Definition_Ref)
                 return ADO.Identifier;

   --
   procedure Set_Entity_Type (Object : in out Counter_Definition_Ref;
                              Value  : in ADO.Nullable_Entity_Type);

   --
   function Get_Entity_Type (Object : in Counter_Definition_Ref)
                 return ADO.Nullable_Entity_Type;

   --  Load the entity identified by 'Id'.
   --  Raises the NOT_FOUND exception if it does not exist.
   procedure Load (Object  : in out Counter_Definition_Ref;
                   Session : in out ADO.Sessions.Session'Class;
                   Id      : in ADO.Identifier);

   --  Load the entity identified by 'Id'.
   --  Returns True in <b>Found</b> if the object was found and False if it does not exist.
   procedure Load (Object  : in out Counter_Definition_Ref;
                   Session : in out ADO.Sessions.Session'Class;
                   Id      : in ADO.Identifier;
                   Found   : out Boolean);

   --  Find and load the entity.
   overriding
   procedure Find (Object  : in out Counter_Definition_Ref;
                   Session : in out ADO.Sessions.Session'Class;
                   Query   : in ADO.SQL.Query'Class;
                   Found   : out Boolean);

   --  Save the entity.  If the entity does not have an identifier, an identifier is allocated
   --  and it is inserted in the table.  Otherwise, only data fields which have been changed
   --  are updated.
   overriding
   procedure Save (Object  : in out Counter_Definition_Ref;
                   Session : in out ADO.Sessions.Master_Session'Class);

   --  Delete the entity.
   overriding
   procedure Delete (Object  : in out Counter_Definition_Ref;
                     Session : in out ADO.Sessions.Master_Session'Class);

   overriding
   function Get_Value (From : in Counter_Definition_Ref;
                       Name : in String) return Util.Beans.Objects.Object;

   --  Table definition
   COUNTER_DEFINITION_TABLE : constant ADO.Schemas.Class_Mapping_Access;

   --  Internal method to allocate the Object_Record instance
   overriding
   procedure Allocate (Object : in out Counter_Definition_Ref);

   --  Copy of the object.
   procedure Copy (Object : in Counter_Definition_Ref;
                   Into   : in out Counter_Definition_Ref);


   --  --------------------
   --    The month statistics.
   --  --------------------
   type Stat_Info is
     new Util.Beans.Basic.Bean with  record

      --  the counter date.
      Date : Ada.Calendar.Time;

      --  the counter value.
      Count : Natural;
   end record;

   --  Get the bean attribute identified by the name.
   overriding
   function Get_Value (From : in Stat_Info;
                       Name : in String) return Util.Beans.Objects.Object;

   --  Set the bean attribute identified by the name.
   overriding
   procedure Set_Value (Item  : in out Stat_Info;
                        Name  : in String;
                        Value : in Util.Beans.Objects.Object);


   package Stat_Info_Beans is
      new Util.Beans.Basic.Lists (Element_Type => Stat_Info);
   package Stat_Info_Vectors renames Stat_Info_Beans.Vectors;
   subtype Stat_Info_List_Bean is Stat_Info_Beans.List_Bean;

   type Stat_Info_List_Bean_Access is access all Stat_Info_List_Bean;

   --  Run the query controlled by <b>Context</b> and append the list in <b>Object</b>.
   procedure List (Object  : in out Stat_Info_List_Bean'Class;
                   Session : in out ADO.Sessions.Session'Class;
                   Context : in out ADO.Queries.Context'Class);

   subtype Stat_Info_Vector is Stat_Info_Vectors.Vector;

   --  Run the query controlled by <b>Context</b> and append the list in <b>Object</b>.
   procedure List (Object  : in out Stat_Info_Vector;
                   Session : in out ADO.Sessions.Session'Class;
                   Context : in out ADO.Queries.Context'Class);

   Query_Counter_Update : constant ADO.Queries.Query_Definition_Access;

   Query_Counter_Update_Field : constant ADO.Queries.Query_Definition_Access;


   --  --------------------
   --    load the counters for the entity and the timeframe.The Stat_List_Bean is the bean that allows to retrieve the counter statistics
   --  for a given database entity and provide the values through a bean to the
   --  presentation layer.load the counters for the entity and the timeframe.
   --  --------------------
   type Stat_List_Bean is abstract limited
     new Util.Beans.Basic.Bean and Util.Beans.Methods.Method_Bean with  record

      --  the entity type name.
      Entity_Type : Ada.Strings.Unbounded.Unbounded_String;

      --  the first date.
      First_Date : Ada.Strings.Unbounded.Unbounded_String;

      --  the last date.
      Last_Date : Ada.Strings.Unbounded.Unbounded_String;

      --  the entity identifier.
      Entity_Id : ADO.Identifier;
      Counter_Name : Ada.Strings.Unbounded.Unbounded_String;
      Query_Name : Ada.Strings.Unbounded.Unbounded_String;
   end record;

   --  This bean provides some methods that can be used in a Method_Expression.
   overriding
   function Get_Method_Bindings (From : in Stat_List_Bean)
                                 return Util.Beans.Methods.Method_Binding_Array_Access;

   --  Get the bean attribute identified by the name.
   overriding
   function Get_Value (From : in Stat_List_Bean;
                       Name : in String) return Util.Beans.Objects.Object;

   --  Set the bean attribute identified by the name.
   overriding
   procedure Set_Value (Item  : in out Stat_List_Bean;
                        Name  : in String;
                        Value : in Util.Beans.Objects.Object);

   procedure Load (Bean : in out Stat_List_Bean;
                  Outcome : in out Ada.Strings.Unbounded.Unbounded_String) is abstract;


private
   COUNTER_NAME : aliased constant String := "awa_counter";
   COL_0_1_NAME : aliased constant String := "object_id";
   COL_1_1_NAME : aliased constant String := "date";
   COL_2_1_NAME : aliased constant String := "counter";
   COL_3_1_NAME : aliased constant String := "definition_id";

   COUNTER_DEF : aliased constant ADO.Schemas.Class_Mapping :=
     (Count => 4,
      Table => COUNTER_NAME'Access,
      Members => (
         1 => COL_0_1_NAME'Access,
         2 => COL_1_1_NAME'Access,
         3 => COL_2_1_NAME'Access,
         4 => COL_3_1_NAME'Access
)
     );
   COUNTER_TABLE : constant ADO.Schemas.Class_Mapping_Access
      := COUNTER_DEF'Access;

   Null_Counter : constant Counter_Ref
      := Counter_Ref'(ADO.Objects.Object_Ref with others => <>);

   type Counter_Impl is
      new ADO.Objects.Object_Record (Key_Type => ADO.Objects.KEY_STRING,
                                     Of_Class => COUNTER_DEF'Access)
   with record
       Object_Id : ADO.Identifier;
       Date : Ada.Calendar.Time;
       Counter : Integer;
   end record;

   type Counter_Access is access all Counter_Impl;

   overriding
   procedure Destroy (Object : access Counter_Impl);

   overriding
   procedure Find (Object  : in out Counter_Impl;
                   Session : in out ADO.Sessions.Session'Class;
                   Query   : in ADO.SQL.Query'Class;
                   Found   : out Boolean);

   overriding
   procedure Load (Object  : in out Counter_Impl;
                   Session : in out ADO.Sessions.Session'Class);
   procedure Load (Object  : in out Counter_Impl;
                   Stmt    : in out ADO.Statements.Query_Statement'Class;
                   Session : in out ADO.Sessions.Session'Class);

   overriding
   procedure Save (Object  : in out Counter_Impl;
                   Session : in out ADO.Sessions.Master_Session'Class);

   procedure Create (Object  : in out Counter_Impl;
                     Session : in out ADO.Sessions.Master_Session'Class);

   overriding
   procedure Delete (Object  : in out Counter_Impl;
                     Session : in out ADO.Sessions.Master_Session'Class);

   procedure Set_Field (Object : in out Counter_Ref'Class;
                        Impl   : out Counter_Access);
   COUNTER_DEFINITION_NAME : aliased constant String := "awa_counter_definition";
   COL_0_2_NAME : aliased constant String := "name";
   COL_1_2_NAME : aliased constant String := "id";
   COL_2_2_NAME : aliased constant String := "entity_type";

   COUNTER_DEFINITION_DEF : aliased constant ADO.Schemas.Class_Mapping :=
     (Count => 3,
      Table => COUNTER_DEFINITION_NAME'Access,
      Members => (
         1 => COL_0_2_NAME'Access,
         2 => COL_1_2_NAME'Access,
         3 => COL_2_2_NAME'Access
)
     );
   COUNTER_DEFINITION_TABLE : constant ADO.Schemas.Class_Mapping_Access
      := COUNTER_DEFINITION_DEF'Access;

   Null_Counter_Definition : constant Counter_Definition_Ref
      := Counter_Definition_Ref'(ADO.Objects.Object_Ref with others => <>);

   type Counter_Definition_Impl is
      new ADO.Objects.Object_Record (Key_Type => ADO.Objects.KEY_INTEGER,
                                     Of_Class => COUNTER_DEFINITION_DEF'Access)
   with record
       Name : Ada.Strings.Unbounded.Unbounded_String;
       Entity_Type : ADO.Nullable_Entity_Type;
   end record;

   type Counter_Definition_Access is access all Counter_Definition_Impl;

   overriding
   procedure Destroy (Object : access Counter_Definition_Impl);

   overriding
   procedure Find (Object  : in out Counter_Definition_Impl;
                   Session : in out ADO.Sessions.Session'Class;
                   Query   : in ADO.SQL.Query'Class;
                   Found   : out Boolean);

   overriding
   procedure Load (Object  : in out Counter_Definition_Impl;
                   Session : in out ADO.Sessions.Session'Class);
   procedure Load (Object  : in out Counter_Definition_Impl;
                   Stmt    : in out ADO.Statements.Query_Statement'Class;
                   Session : in out ADO.Sessions.Session'Class);

   overriding
   procedure Save (Object  : in out Counter_Definition_Impl;
                   Session : in out ADO.Sessions.Master_Session'Class);

   procedure Create (Object  : in out Counter_Definition_Impl;
                     Session : in out ADO.Sessions.Master_Session'Class);

   overriding
   procedure Delete (Object  : in out Counter_Definition_Impl;
                     Session : in out ADO.Sessions.Master_Session'Class);

   procedure Set_Field (Object : in out Counter_Definition_Ref'Class;
                        Impl   : out Counter_Definition_Access);

   package File_1 is
      new ADO.Queries.Loaders.File (Path => "counter-update.xml",
                                    Sha1 => "6C157006E7A28699E1FE0E2CB571BACA2706E58D");

   package Def_Statinfo_Counter_Update is
      new ADO.Queries.Loaders.Query (Name => "counter-update",
                                     File => File_1.File'Access);
   Query_Counter_Update : constant ADO.Queries.Query_Definition_Access
   := Def_Statinfo_Counter_Update.Query'Access;

   package Def_Statinfo_Counter_Update_Field is
      new ADO.Queries.Loaders.Query (Name => "counter-update-field",
                                     File => File_1.File'Access);
   Query_Counter_Update_Field : constant ADO.Queries.Query_Definition_Access
   := Def_Statinfo_Counter_Update_Field.Query'Access;
end AWA.Counters.Models;
