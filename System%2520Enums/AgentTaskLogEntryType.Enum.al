// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------
namespace System.Agents;

/// <summary>
/// Defines types of log entries that can be recorded during agent task execution.
/// Provides classification for different agent activities including messages, operations, and interventions.
/// </summary>
/// <remarks>
/// Used for logging and tracking agent task execution flow and user interactions.
/// Essential for audit trails, debugging, and understanding agent behavior patterns.
/// Supports logging of agent lifecycle from input to completion.
/// </remarks>
enum 2000000009 "Agent Task Log Entry Type"
{
    Extensible = false;
    Caption = 'Agent Task Log Entry Type';

    /// <summary>
    /// An input message has been received.
    /// </summary>
    value(0; "Input Message")
    {
        Caption = 'Input Message';
    }

    /// <summary>
    /// An output message has been created and needs to be reviewed.
    /// </summary>
    value(1; "Output Message Draft")
    {
        Caption = 'Output Message Draft';
    }

    /// <summary>
    /// An output message is ready.
    /// </summary>
    value(2; "Output Message")
    {
        Caption = 'Output Message';
    }

    /// <summary>
    /// Any operation performed by the agent that involves interacting with the UI (setting field values, invoking actions, etc.).
    /// </summary>
    value(3; "Page Operation")
    {
        Caption = 'Page Operation';
    }

    /// <summary>
    /// User intervention is required to continue.
    /// This status is used when the agent needs to wait for user input before continuing.
    /// </summary>
    value(4; "User Intervention Request")
    {
        Caption = 'User Intervention Request';
    }

    /// <summary>
    /// A user has provided input based on the agent's request.
    /// </summary>
    value(5; "User Intervention")
    {
        Caption = 'User Intervention';
    }

    /// <summary>
    /// The task has been stopped either by a user or by the agent.
    /// </summary>
    value(6; "Stop")
    {
        Caption = 'Stop';
    }

    /// <summary>
    /// The task has been manually resumed by a user.
    /// </summary>
    value(7; "Resume")
    {
        Caption = 'Resume';
    }
}