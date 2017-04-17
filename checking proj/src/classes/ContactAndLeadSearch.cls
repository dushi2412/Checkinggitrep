public class ContactAndLeadSearch {
Public static List<List<sObject>> searchContactsAndLeads(String srchword)
        {
            String searchQuery = 'FIND \'' + srchword + '\' IN ALL FIELDS RETURNING Lead(Name,FirstName,LastName ), Contact(FirstName,LastName )';
            List<List<sObject>> searchConLead = search.query(searchQuery);
            return searchConLead;
        }

}