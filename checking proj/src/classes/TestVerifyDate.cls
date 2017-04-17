@istest private class TestVerifyDate {
    @istest static void testcheckdates (){
        date date2 = VerifyDate.CheckDates(system.today(), system.today().addDays(10));
        system.assertEquals(system.today().addDays(10), date2);
    }
}