# Main logic for Harvest
'use strict'

time = require("./harvest").TimeTracking
config = require("./file").config()
aliases = require("./file").aliases()
file = require "./file"
logger = require "loggy"
colors = require "colors"
prompt = require "prompt"

prompt.message = "Select".cyan;
prompt.delimiter = " ";

# Show the logged time for a day, defaulting to today
module.exports = alias = (alias, search, type = "project") ->
    options = {}

    # Set the resource to search
    resource = switch type
        when 'c' then 'client'
        when 't' then 'task'
        when 'p' then 'project'
        else command

    aliases = file.read type + ".aliases"

    # Check existing aliases

    resources = file.read type

    # Perform a search
    if (typeof search != "int")
        # Check existing cache

        # Poll Harvest for update if not found in cache
            # Save new cache

        # Ask for input if multiple matches
        selected = 0
        prompt.start()
        prompt.get type, (err, result) ->
            selected = result[type] unless err

        # Should have an integer now

    # Set new alias

    time.daily options, (err, tasks) ->
        if (err)
            logger.error err if err
        else
            tasks.day_entries.forEach (task, index, array) ->
                sortTasks task

            for index, client of entries
                orderNodes client

            s = archy(structure)
            console.log s

