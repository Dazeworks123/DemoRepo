@isTest
private class DemoController1Tests {
    @isTest static void testConstructor() {
      Contact contact = new Contact(LastName='Smith');
      insert contact;

      Test.setCurrentPage(Page.DemoPage1);     
      ApexPages.currentPage().getParameters().put('lastName', 'Smith');

      DemoController1 demo = new DemoController1(new ApexPages.StandardController(contact));
      System.assertEquals(contact.Id, ApexPages.currentPage().getParameters().get('id'));
    }

    @isTest static void testGetAppVersion() {
        DemoController1 demo = new DemoController1();
        System.assertEquals(demo.getAppVersion(), '1.0.0');
    }
}