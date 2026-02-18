# Specification: Clear-Team Context-Based Extension (track-001)

## Overview
Instead of a tool-only extension, "Clear-Team" will be implemented as a **context-based extension**. This means it will provide a specialized expert persona, mental models, and a system instruction set that guides the Gemini agent's behavior whenever the extension is active.

The core of "Clear-Team" is the **Strategic Crucible Protocol**, which uses a multi-expert debate (Julian, Maya, and Serra) to arrive at the most "evolved" solution.

## Objectives
1.  **Define the Expert Personas**: Julian (Marketer), Maya (PM), and Serra (Engineer) with distinct evolutionary and strategic frameworks.
2.  **Develop the Strategic Crucible Protocol**: A three-stage debate process (Signal, Selection, Synthesis) to refine and validate strategic decisions.
3.  **Develop Mental Model Frameworks**: Structured instructions for how to process product features through signaling, metabolic efficiency, and structural resilience lenses.
4.  **Implement Extension Manifest & Instructions**: The `GEMINI.md` and `manifest.json` files that define the extension's behavior.

## Core Frameworks (Context)
- **Evolutionary Drivers Model**: Framework for identifying "Survival", "Status", and "Nurturance" cues in product value.
- **Strategic Game Theory Model**: Instructions for finding "Uninvadable Strategies" (ESS) by analyzing competitor messaging.
- **Lean Feedback & Metabolic Ecology**: Every feature is an experiment; focus on ROI and user retention loops.
- **Structural Resilience & Entropy**: Managing technical debt and ensuring operational fitness across the lifecycle.

## User Experience
- When the extension is activated, the user interacts with the "Clear-Team" (Julian, Maya, and Serra) who provide deep strategic insights through a multi-round debate.
- The agent proactively applies its specialized knowledge to every strategic, product, or engineering request.
