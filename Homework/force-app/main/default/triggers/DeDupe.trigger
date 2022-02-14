trigger DeDupe on ACCOUNT (after insert) {
    for (Account a : Trigger.new) {
        Case c = new Case();
        c.OwnerId = '0054H000007DdBlQAK';
        c.Subject = 'Need to Dedupe this Account';
        c.AccountId = a.Id;

        insert c;
    }

}