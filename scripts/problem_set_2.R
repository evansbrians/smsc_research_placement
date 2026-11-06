# Problem set 2

# 1 -----------------------------------------------------------------------

# Before opening the script, rename `problem_set_2.R` as
# "problem_set_2_[last name]_[first name].R" using snake case. For
# example, I would name my file `problem_set_2_evans_brian.R`.

# Open the renamed script in RStudio and attach the tidyverse
# metapackage to your current R session:




# Use a relative file path to read `coqui_counts.rds`, and globally
# assign the object to the name `coqui`:




# 2 -----------------------------------------------------------------------

# The same column can be subset as a one-column data frame or extracted
# as the vector stored inside it. Do not assign either result to a name.

# Pipe `coqui` into a function that subsets the data frame to the
# `coordinates` column, then pipe that result into `class()`:




# Pipe `coqui` into a function that extracts the `coordinates` column,
# then pipe that result into `class()`:




# In a comment, describe how the two operations and their resulting
# classes differ:




# 3 -----------------------------------------------------------------------

# The columns `coordinates` and `habitat_class` are each a problem of a
# different kind. A location has separate longitudinal and latitudinal
# variables, while `habitat_class` redundantly encodes the same
# attribute as `habitat`.

# In a single piped statement:
#
# * Split `coordinates` into `longitude` and `latitude`.
# * Convert both new columns to the numeric class in a single function
#   call.
# * Remove `habitat_class` from the data frame.
# * Globally assign the result to the name `coqui_no_class`.




# Then remove the name `coqui` from your global environment:




# Note: Changing the class of a column is a data cleaning step rather
# than a tidying step (see 2.6 Tidy data).

# 4 -----------------------------------------------------------------------

# Each count observation was made on a given date, at a given distance
# along a given transect. The three count columns spread the variable
# `distance_class` across column names and place three count
# observations in each row.

# In a single piped statement:
#
# * Pivot the count columns into the variables `distance_class` and
#   `count`. Remove the redundant `count_` prefix from the values of
#   `distance_class` as part of the pivot.
# * Add the logical column `detected`, which indicates whether `count`
#   is greater than zero.
# * Globally assign the result to `coqui_long`.




# Then remove the name `coqui_no_class` from your global environment:




# 5 -----------------------------------------------------------------------

# In a single piped statement:
#
# * Choose a grouping method and group `coqui_long` by `site` and
#   `distance_class`. In a comment, explain why that grouping method is
#   appropriate for the operations below.
# * Add `mean_count`, the mean count within each group, while retaining
#   every row.
# * While the grouping remains, subset to count observations that exceed
#   their group mean.
# * Remove the grouping, then subset the result to `site`,
#   `transect_id`, `date`, `distance_class`, `count`, and `mean_count`.

# Do not assign the result to a name.




# 6 -----------------------------------------------------------------------

# In a single piped statement:
#
# * Choose a grouping method and return the proportion of count
#   observations in which at least one coqui frog was detected and the
#   number of count observations within each combination of `habitat`
#   and `distance_class`. Name the summary columns `detection_rate` and
#   `observations_per_distance`. In a comment, explain why that grouping
#   method is appropriate for this analysis.
# * Pivot the summary wider so that the values of `distance_class` form
#   column names and `detection_rate` supplies their values. Retain
#   `observations_per_distance` as a column.

# Do not assign the result to a name.

# Hint: The mean of a logical vector is the proportion of its values
# that are `TRUE`.




# 7 -----------------------------------------------------------------------

# Plot the count observations through time:
#
# * Pipe `coqui_long` into `ggplot()`. Map `date` to the x-axis, `count`
#   to the y-axis, `habitat` to color, and `distance_class` to shape.
# * Add a point geometry.
# * Set the four habitat colors and three distance-class shapes
#   manually. Choose colors that remain distinguishable for a reader
#   with a color vision deficiency.
# * Label the x-axis `Date`, the y-axis `Coqui count`, and the plot
#   `Coqui counts through time`. Give both legends informative titles.
# * Create one facet for each site.
# * Apply `theme_bw()`.




# 8 -----------------------------------------------------------------------

# Return the observation with the largest count within each combination
# of site and distance class:
#
# * Use a ranked subsetting function with a per-operation grouping
#   argument. If the largest values are tied, return only one of the
#   tied rows.
# * Subset the result to `site`, `distance_class`, `transect_id`,
#   `date`, and `count`.

# Do not assign the result to a name.




# 9 -----------------------------------------------------------------------

# Explore the observational levels in `coqui_long`.

# Return the distinct combinations of `site`, `longitude`, and
# `latitude`:




# Return the distinct combinations of `transect_id`, `site`, and
# `habitat`:




# In a comment, name the tidy data rule that `coqui_long` violates.
# Identify the variables that uniquely identify a site, a transect, and
# a count observation, and explain how the two code blocks support your
# conclusion:




# 10 ----------------------------------------------------------------------

# Repair the violation that you identified above.

# Create a table with one row per site and globally assign it to the
# name `sites`:




# Create a table with one row per transect and globally assign it to the
# name `transects`:




# Create a table containing only the variables required to describe and
# identify each count observation, and globally assign it to the name
# `counts`. The derived variable `detected` does not need to be stored:




# Before running the final code, write a comment that predicts its
# number of rows:




# Then write one piped statement that joins `counts`, `transects`, and
# `sites` in that order:




# Confirm in a second comment whether the result agrees with your
# prediction:




# Note: A join that returns more rows than expected matched at least one
# key more than once (see 2.4 Reshaping data frames).
