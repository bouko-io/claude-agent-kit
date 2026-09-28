---
name: quote-builder
description: Builds a professional quote (devis) or pro-forma invoice as a Word, PDF or Excel file from the user's own price list, with correct totals and taxes. Use when the user asks for a devis, quote, estimate, proposal price, pro-forma, facture proforma, or "dir lia devis".
---

# Quote builder

A wrong price sent to a client is a commitment. This skill only uses prices the user has confirmed, and checks every total.

Answer in the user's language; write the quote in the client's language.

## Step 1 — Price source

Use, in order: the price list in the Project files, an attached file, or prices the user gives now. **Never invent or estimate a price.** If an item has no price, put `[PRICE TO CONFIRM]` and list it.
If the price list has no date, ask whether it is current.

## Step 2 — Collect

Client name and details, items and quantities, discounts, delivery or execution time, validity of the quote (default 30 days — ask), payment terms, currency, tax rate. For Morocco the standard VAT rate is 20% but some goods and services use other rates — **ask the user which rate applies**, never assume.
Also ask once for the company details to print (name, address, ICE / tax ID, logo) and suggest saving them in the Project instructions.

## Step 3 — Build the file

A clean `.docx` or PDF (or `.xlsx` if asked) with: header with logo and company details, quote number and date, client block, table (item, description, qty, unit price, total), subtotal, discount, tax, **total incl. tax**, the total in words if the user wants it, validity, payment terms, signature area.

## Step 4 — Check

Recompute every line and the totals independently, and report: "Totals checked: subtotal X, tax Y at Z%, total T". List every `[TO CONFIRM]`.

## Rules

- Deliver as a **draft**. Sending the quote is the user's decision.
- Never change a price to "make it fit" without being asked.
