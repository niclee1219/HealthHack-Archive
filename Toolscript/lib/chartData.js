// Tip: assign your external references to variables instead of chaining off the curly brackets.

const selectedRowId = companiesTable.selectedRow.id

return {
    revenue: Array.from({
        length: 6
    }, () => (Math.random() * 300 - selectedRowId)),
    month: ["2022-12-01", "2022-11-01", "2022-10-01", "2022-09-01", "2022-08-01", "2022-07-01"]
}