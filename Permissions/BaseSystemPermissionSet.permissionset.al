// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------

namespace System.Security.AccessControl;

using System.Agents;
using System.DateTime;
using System.Diagnostics;
using System.Environment;
using System.Environment.Configuration;
using System.Globalization;
using System.Integration;
using System.IO;
using System.MCP;
using System.Privacy;
using System.Reflection;
using System.PerformanceProfile;
using System.Security.Authentication;
using System.Text;
using System.Tooling;
using System.Upgrade;
using System.Utilities;

permissionset 2000000020 BaseSystemPermissionSet
{
    Assignable = false;
    Permissions = table * = X,
                  codeunit * = X,
                  page * = X,
                  query * = X,
                  report * = X,
                  xmlport * = X,
                  tabledata "Access Control" = RIMD,
                  tabledata "Active Session" = Rimd,
                  tabledata "Add-in" = Rimd,
                  tabledata "Aggregate Permission Set" = Rimd,
                  tabledata "Expanded Permission" = R,
                  tabledata AllObj = Rimd,
                  tabledata AllObjWithCaption = Rimd,
                  tabledata Chart = Rimd,
                  tabledata "Code Coverage" = Rimd,
                  tabledata "CodeUnit Metadata" = Rimd,
                  tabledata "Data Sensitivity" = RIMD,
                  tabledata "Database Locks" = R,
                  tabledata "Database Wait Statistics" = R,
                  tabledata Date = Rimd,
                  tabledata Device = Rimd,
                  tabledata "Document Service" = Rimd,
                  tabledata "Document Service Scenario" = Rimd,
                  tabledata Drive = Rimd,
                  tabledata Entitlement = Rimd,
                  tabledata "Entitlement Set" = Rimd,
                  tabledata "Entity Text" = RIMD,
                  tabledata "Event Subscription" = Rimd,
                  tabledata Field = Rimd,
                  tabledata File = Rimd,
                  tabledata Integer = Rimd,
                  tabledata "Intelligent Cloud Status" = Rimd,
                  tabledata "Intelligent Cloud" = Rimd,
                  tabledata Key = Rimd,
                  tabledata "License Information" = Rimd,
                  tabledata "License Permission" = Rimd,
                  tabledata Media = Rimd,
                  tabledata "Media Resources" = Rimd,
                  tabledata "Media Set" = Rimd,
                  tabledata "Membership Entitlement" = Rimd,
                  tabledata "MCP Configuration" = RIMD,
                  tabledata "MCP Configuration Tool" = RIMD,
                  tabledata "NAV App Setting" = RIMD,
                  tabledata Object = Rimd,
                  tabledata "Object Access Intent Override" = RIMD,
                  tabledata "Object Metadata" = Rimd,
                  tabledata "Object Options" = RIMD,
                  tabledata "OData Edm Type" = Rimd,
                  tabledata "Page Data Personalization" = RIMD,
                  tabledata "Page Documentation" = R,
                  tabledata "Page Metadata" = Rimd,
                  tabledata Permission = Rimd,
                  tabledata "Permission Range" = Rimd,
                  tabledata "Permission Set" = Rimd,
                  tabledata "Metadata Permission" = R,
                  tabledata "Metadata Permission Set" = R,
                  tabledata "Metadata Permission Set Rel." = R,
                  tabledata "Performance Profiles" = R,
                  tabledata "Performance Profile Scheduler" = Rimd,
                  tabledata "Power BI Blob" = R,
                  tabledata "Power BI Default Selection" = R,
                  tabledata "Privacy Notice" = RIMd,
                  tabledata "Privacy Notice Approval" = RIMD,
                  tabledata "Profile Metadata" = RIMD,
                  tabledata "Profile Page Metadata" = RIMD,
                  tabledata "Query Navigation" = RIMD,
                  tabledata "Record Link" = RIMD,
                  tabledata "Report Layout" = Rimd,
                  tabledata "Report Layout List" = RD,
                  tabledata "Report Metadata" = Rimd,
                  tabledata "Report Settings Override" = RIMD,
                  tabledata "Scheduled Task" = Rimd,
                  tabledata "Send-To Program" = RIMD,
                  tabledata "Server Instance" = Rimd,
                  tabledata Session = Rimd,
                  tabledata "Session Event" = Rimd,
                  tabledata "SID - Account ID" = Rimd,
                  tabledata "Signup Context" = R,
                  tabledata "Style Sheet" = RIMD,
                  tabledata "System Object" = Rimd,
                  tabledata "Table Information" = Rimd,
                  tabledata "Table Metadata" = Rimd,
                  tabledata "Table Synch. Setup" = Rimd,
                  tabledata "Tenant License State" = R,
                  tabledata "Tenant Media Set" = Rimd,
                  tabledata "Tenant Media Thumbnails" = Rimd,
                  tabledata "Tenant Media" = Rimd,
                  tabledata "Tenant Permission Set Rel." = RIMD,
                  tabledata "Tenant Permission Set" = RIMD,
                  tabledata "Tenant Permission" = RIMD,
                  tabledata "Tenant Report Layout" = RIMD,
                  tabledata "Tenant Report Layout Selection" = RIMD,
                  tabledata "Tenant Web Service" = RIMD,
                  tabledata "Time Zone" = Rimd,
                  tabledata "Token Cache" = Rimd,
                  tabledata "Upgrade Blob Storage" = Rimd,
                  tabledata User = RMD,
                  tabledata "User Personalization" = RIMD,
                  tabledata "User Property" = Rimd,
                  tabledata "Web Service" = RIMD,
                  tabledata "Webhook Subscription" = Rimd,
                  tabledata "Windows Language" = Rimd,
                  tabledata "Ext. Business Event Definition" = R,
                  tabledata "Agent" = RIMD,
                  tabledata "Agent Access Control" = RIMD,
                  tabledata "Agent Task" = RIMD,
                  tabledata "Agent Task Log Entry" = RIMD,
                  tabledata "Agent Task Memory Entry" = RIMD,
                  tabledata "Agent Task Message" = RIMD,
                  tabledata "Agent Task File" = RIMD,
                  tabledata "Agent Task Message Attachment" = RIMD,
                  tabledata "Agent Task Timeline Step" = RIMD,
                  tabledata "Agent Task Timeline Step Det." = RIMD,
                  tabledata "Agent Task Timeline" = RIMD;
}