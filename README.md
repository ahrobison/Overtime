# Overtime App

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models
X Post -> date:date rationale:text
X User -> Devise
X AdminUser -> STI
- AuditLog ->


## Features:
- Approval Workflow
- SMS Sending -> link to approval or overtime input
X Administrate admin dashboard
- Email summary to managers for approval
- Needs to be documented if employee did not log overtime
X Block non admin and guest users

## UI:
X Bootstrap -> formatting
X Icons from glyphicons
X Update the styles for forms

<!-- ## refactor todos:
X add full name method for users
X refactor user association integration test in post_spec
X refactor posts/_form for admin user with status
X Fix post_spec.rb:82 to use factories
X Fix post_spec.rb:52 to have correct user reference -->

<!-- ## TODOs
X Integrate validation for phone attr in User:
	# No spaces or dashes
	# exactly 10 characters
	# all characters have to be a number -->