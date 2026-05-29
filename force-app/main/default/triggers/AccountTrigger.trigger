trigger AccountTrigger on Account (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    // after an account is inserted, create a contact with the same name relate it to the newly created account
    if (Trigger.isAfter && Trigger.isInsert) {
        List<Contact> contactsToInsert = new List<Contact>();
        for (Account acc : Trigger.new) {
            contactsToInsert.add(
                new Contact(FirstName = acc.Name, LastName = acc.Name, AccountId = acc.Id)
            );
        }
        if (
            !contactsToInsert.isEmpty()
            && Schema.sObjectType.Contact.isCreateable()
            && Schema.sObjectType.Contact.fields.FirstName.isCreateable()
            && Schema.sObjectType.Contact.fields.LastName.isCreateable()
            && Schema.sObjectType.Contact.fields.AccountId.isCreateable()
        ) {
            insert contactsToInsert;
        }
    }
}