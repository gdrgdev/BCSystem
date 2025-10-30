// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------
namespace System.Agents;

using System.Security.AccessControl;

/// <summary>
/// Virtual table that stores detailed information about specific events within agent task timeline steps.
/// </summary>
/// <remarks>
/// This table provides granular detail records for activities that occur within individual timeline steps,
/// capturing user interactions, context information, and specific events that contribute to step completion.
/// Essential for detailed audit trails, debugging complex agent workflows, and understanding the
/// micro-level activities within broader timeline steps. Used by the agent framework to maintain
/// execution logs and by monitoring tools for detailed analysis.
/// </remarks>
table 2000000277 "Agent Task Timeline Step Det."
{
    Caption = 'Agent Task Timeline Step Detail';
    DataPerCompany = false;
    ReplicateData = false;
    Scope = OnPrem;

    fields
    {
        /// <summary>
        /// The unique identifier of the agent task that this timeline step detail belongs to.
        /// </summary>
        field(1; "Task ID"; BigInteger)
        {
            Caption = 'Task ID';
            ToolTip = 'Specifies the unique identifier of the task the timeline step is a part of.';
            Editable = false;
            TableRelation = "Agent Task".ID;
        }
        /// <summary>
        /// The unique identifier of this timeline step detail entry.
        /// </summary>
        field(2; "ID"; Integer)
        {
            Caption = 'ID';
            ToolTip = 'Specifies the unique identifier for the timeline step detail entry.';
            Editable = false;
        }
        /// <summary>
        /// The identifier of the timeline step that this detail entry is associated with.
        /// </summary>
        field(3; "Timeline Step ID"; BigInteger)
        {
            Caption = 'Timeline Step ID';
            ToolTip = 'Specifies the ID of the timeline step this detail entry is a part of.';
        }
        /// <summary>
        /// The security ID of the user who was involved in the activity recorded in this detail entry.
        /// </summary>
        field(4; "User Security ID"; Guid)
        {
            Caption = 'User Security ID';
            ToolTip = 'Specifies the security ID of the user that was involved in performing the step.';
            Editable = false;
            TableRelation = User."User Security ID";
        }
        /// <summary>
        /// The type of log entry that categorizes this detail activity.
        /// </summary>
        field(5; "Type"; Enum "Agent Task Log Entry Type")
        {
            Caption = 'Type';
            ToolTip = 'Specifies the type of log entry associated with the detail entry.';
            Editable = false;
        }
        /// <summary>
        /// The client context information at the time this detail entry was created.
        /// </summary>
        field(6; "Client Context"; Blob)
        {
            Caption = 'Client Context';
            ToolTip = 'Specifies the client context.';
        }
    }

    keys
    {
        key(PK; "Task ID", "ID")
        {
            Clustered = true;
        }
        key(TimelineStepID; "Task ID", "Timeline Step ID")
        {
        }
    }
}