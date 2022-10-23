1. -React Hook Form- ReactHookFormFields/SelectBox.js

   a. -things I did-

       i.  Learned and created a proof of concept with dynamic library
           to create forms using react hook forms to replace Forminak

       ii. Figured out some unconventional ways to make form and
           components work the way the end user request (wanting submit
           for the form to be submitted by a button from a modal
           produced by a parent component, using materials controlled
           fields in the form designed for uncontrolled fields.

2. Material Table -assessmentresultstable.js

   a. Things I did

       i.  Created custom search function component using react hook
           forms

       ii. Created an async search and load function that prevented
           whole table from rerendering

   b. Difficulties

       i.  On table selection showing material ui chips with assessment
           names under table

       ii. Custom select all (select all will only select all
           assessments shown on designated table page, if you select to
           paginate over or select to show more rows in table, select
           all resets still keeping previous selections select , but if
           clicked again will select new records shown)

3. Dynamic Ellipsis Component -- ellipsismodifier.js

   a. Adds an ellipsis by text count or if text count is not set will
   create ellipsis when text overfills div, will dynamically add
   ellipsis if page is resized

4. Date Range Picker -- presetdaterangepicker.js

   a. Things I did

       i.  Found an existing react range picker, used it as a template
           to create a customized date range picker that worked with
           the advanced search form I created

   b. Difficulties

       i.  Finding an example of something using react close to what
           the designer wanted, example they showed was an old jquery
           data picker


1. Pulling images and pdfs from an s3 bucket to attach to an email --
   assesssmentresultservice.groovy and
   resultsharingdetalsservice.groovy

   a. Things I did

       i.  I needed to get images from s3 bucket and attach them to an
           email that was sending with post mark

   b. Difficulties

       i.  I needed to get the files while I still had access to the
           authorization token, but then send to jms que which was used
           to send emails

           1.  Save authorization and download url to map, attached as
               string to message being sent to que, when email service
               read message it downloads and saves file to temp
               directory, then encodes file as base64 to attach to
               email

2. Find way to test gorm where/ detached criteria and hibernate queries
   -- catalogdetailservicespec.groovy

   a. Dug through documentation for hibernate and how it works and
   came up with a way to mock and set hibernateDataStore and
   PlatformTransactionManager

3. Found and configured plugin to create multiple fully qualified
   domain objects at once

4. Integration with office 365 having scheduled assessments update both
   interviewer and interviewees outlook calendar

> -Things I enjoy-

1. Finding quirky unorthodox ways to use a language.

   a. Setting custom validity for a form field with javascript

       i.  e.target.setCustomValidity(\'invalid\');

   b. programmatically setting html in a string for react (although it
   is strongly discouraged)

       i.  dangerouslySetInnerHTML- set html in a string

```jsx
{__html: '<p>' + result?.themeSummary + '. <i>*Theme Of Significance.</i></p>'}
<Tooltip title={<div dangerouslySetInnerHTML={modifiedToolTip}/>} childrenDisplayStyle="inline">
```

c. enums , to check a key we were using a try/catch and if it failed
the key doesn't exist, I don't like making code purposefully fail ,
made a util to replace

    i.  Custom check enums

        1.  AssessmentPurpose.getEnumConstants().find{it.key.equalsIgnoreCase("extrn")}?.value

    ii. **[GET By value]{.underline}**

        1.  FitStatement.getEnumConstants().find{ (it.value ==
            member.result) }?.match ?: member.result

d.

> Dev Questions-
>
> What do you use to handle security?
>
> Anything for database migrations?
>
> What is your preferred environment?
>
> What up coming features or new technology are you excited about
> implementing.