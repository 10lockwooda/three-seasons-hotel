import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Booking
{
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    
    int iBookingId;
    int iCustomerId;
    int iRoomId;
    Date dETA;
    Date dETD;
    boolean bPaid;
    
    public Booking()
    {
        reset();
        return;
    }
    
    public Booking(int BId, int CId, int RId, String ETA, String ETD, boolean p)
    {
        this();
        setBookingId(BId);
        setCustomerId(CId);
        setRoomId(RId);
        setETA(ETA);
        setETD(ETD);
        setIfPaid(p);
        return;
    }
    
    public void reset()
    {
        setBookingId(0);
        setCustomerId(0);
        setRoomId(0);
        setETA("1970-01-01");
        setETD("1970-01-01");
        setIfPaid(false);
    }
    
    public void setBookingId(int id)
    {
        iBookingId = id;
        return;
    }
    
    public void setCustomerId(int id)
    {
        iCustomerId = id;
        return;
    }
    
    public void setRoomId(int id)
    {
        iRoomId = id;
        return;
    }
    
    public void setETA(String date)
    {
        try 
        {
            dETA = sdf.parse(date);
        } 
        catch(Exception e) 
        {
            System.err.println(e);
        }
        return;
    }
    
    public void setETD(String date)
    {
        try
        {
            dETD = sdf.parse(date);
        }
        catch(Exception e)
        {
            System.err.println(e);
        }
        return;
    }
    
    public void setIfPaid(boolean p)
    {
        bPaid = p;
        return;
    }
    
    public int getBookingId()
    {
        return iBookingId;
    }
    
    public int getCustomerId()
    {
        return iCustomerId;
    }
    
    public int getRoomId()
    {
        return iBookingId;
    }
    
    public Date getETA()
    {
        return dETA;
    }
    
    public Date getETD()
    {
        return dETD;
    }
    
    public boolean bGetIfPaid()
    {
        return bPaid;
    }
    
    public static void main(String args[])
    {
        Booking yes = new Booking();
        yes.setETD("2016-07-15");
        System.out.println(yes.getETD().toString());
    }
    
    
}