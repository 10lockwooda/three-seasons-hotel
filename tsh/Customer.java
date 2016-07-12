public class Customer
{
    int iCustomerId;
    String szTitle;
    String szFirst_Name;
    int iHouse_Number;
    String szStreet;
    int iApartment_Number;
    String szTown;
    String szPostcode;
    String szCounty;
    String szMobile_Number;
    String szLandline_Number;
    
    public Customer()
    {
        reset();
        return;
    }
    
    public Customer(int iCId, String szT, String szF, int iH, String szSt, String szTo, String szP, String szC, String szM, String szL)
    {
        
    }
    
    public void setCustomerId(int iCId)
    {
        iCustomerId = iCId;
        return;
    }
    
    public void setTitle(String szT)
    {
        szTitle = szT;
        return;
    }
    
    public void setFirstName(String szF)
    {
        szFirst_Name = szF;
        return;
    }
    
    public void setHouseNumber(int iH)
    {
        iHouse_Number = iH;
        return;
    }
    
    public void setStreet(String szSt)
    {
    	szStreet = szSt;
    	return;
    }
    
    public void setTown
}