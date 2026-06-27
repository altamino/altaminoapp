package com.narvii.location;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import com.narvii.pushservice.PushNotificationService;
import java.text.DecimalFormat;
import java.util.Random;

/* loaded from: classes3.dex */
public class GPSCoordinate implements Parcelable {
    private static final double RADIUS = 6371000.0d;
    private final int accuracy;
    private final double latitude;
    private final double longitude;
    private final String source;
    private final long timeOffset;
    private static final Random RND = new Random(System.currentTimeMillis());
    private static final DecimalFormat FMT = new DecimalFormat("0.#####");
    public static final GPSCoordinate NULL = new GPSCoordinate(Double.NaN, Double.NaN, 0, 0, PushNotificationService.NO_GROUP);
    public static final Parcelable.Creator<GPSCoordinate> CREATOR = new Parcelable.Creator<GPSCoordinate>() { // from class: com.narvii.location.GPSCoordinate.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GPSCoordinate createFromParcel(Parcel parcel) {
            return new GPSCoordinate(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GPSCoordinate[] newArray(int i) {
            return new GPSCoordinate[i];
        }
    };

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public GPSCoordinate(double d, double d2) {
        this(d, d2, 0, 0L, "");
    }

    public GPSCoordinate(double d, double d2, int i, long j, String str) {
        this.latitude = d;
        this.longitude = d2;
        this.accuracy = i;
        this.timeOffset = j;
        this.source = str;
    }

    public GPSCoordinate(Location location) {
        this.latitude = location.getLatitude();
        this.longitude = location.getLongitude();
        this.accuracy = (int) location.getAccuracy();
        this.timeOffset = location.getTime() - System.currentTimeMillis();
        this.source = location.getProvider();
    }

    public static GPSCoordinate create(int i, int i2) {
        double d = i;
        Double.isNaN(d);
        double d2 = i2;
        Double.isNaN(d2);
        return new GPSCoordinate(d / 1000000.0d, d2 / 1000000.0d);
    }

    public double latitude() {
        return this.latitude;
    }

    public int latitudeE6() {
        return (int) (this.latitude * 1000000.0d);
    }

    public String latitudeString() {
        return FMT.format(this.latitude);
    }

    public String latitudeDegree() {
        return latToDegree(this.latitude);
    }

    public double longitude() {
        return this.longitude;
    }

    public int longitudeE6() {
        return (int) (this.longitude * 1000000.0d);
    }

    public String longitudeString() {
        return FMT.format(this.longitude);
    }

    public String longitudeDegree() {
        return lngToDegree(this.longitude);
    }

    public int accuracy() {
        return this.accuracy;
    }

    public long timeOffset() {
        return this.timeOffset;
    }

    public String source() {
        return this.source;
    }

    public boolean isValid() {
        if (this == NULL) {
            return false;
        }
        if (this.latitude == 0.0d && this.longitude == 0.0d) {
            return false;
        }
        double d = this.latitude;
        if (d >= -90.0d && d <= 90.0d) {
            double d2 = this.longitude;
            if (d2 >= -180.0d && d2 <= 180.0d) {
                return true;
            }
        }
        return false;
    }

    public boolean isFresh(long j) {
        long j2 = this.timeOffset;
        return j2 <= 0 && j2 >= (-j);
    }

    protected Object clone() {
        return new GPSCoordinate(this.latitude, this.longitude, this.accuracy, this.timeOffset, this.source);
    }

    public double distanceTo(GPSCoordinate gPSCoordinate) {
        if (gPSCoordinate == this) {
            return 0.0d;
        }
        double d = (this.latitude / 180.0d) * 3.141592653589793d;
        double d2 = (this.longitude / 180.0d) * 3.141592653589793d;
        double d3 = (gPSCoordinate.latitude / 180.0d) * 3.141592653589793d;
        double d4 = (d3 - d) / 2.0d;
        double d5 = (((gPSCoordinate.longitude / 180.0d) * 3.141592653589793d) - d2) / 2.0d;
        double dSin = (Math.sin(d4) * Math.sin(d4)) + (Math.cos(d) * Math.cos(d3) * Math.sin(d5) * Math.sin(d5));
        return Math.atan2(Math.sqrt(dSin), Math.sqrt(1.0d - dSin)) * 2.0d * RADIUS;
    }

    public double latitudeSpan(int i) {
        double d = i;
        Double.isNaN(d);
        return (d / 4.003017359204114E7d) * 360.0d;
    }

    public double longitudeSpan(int i) {
        return latitudeSpan(i);
    }

    public GPSCoordinate randomInRadius(int i) {
        double dLatitudeSpan = latitudeSpan(i);
        double dLongitudeSpan = longitudeSpan(i);
        return new GPSCoordinate(this.latitude + (dLatitudeSpan * (RND.nextDouble() - 0.5d) * 2.0d), this.longitude + (dLongitudeSpan * (RND.nextDouble() - 0.5d) * 2.0d), this.accuracy, this.timeOffset, this.source);
    }

    public String toString() {
        if (this == NULL) {
            return "(?,?) [null]";
        }
        return "(" + FMT.format(this.latitude) + "," + FMT.format(this.longitude) + ") [" + this.accuracy + "," + this.source + "]";
    }

    public String toDegreeString() {
        return latitudeDegree() + ", " + longitudeDegree();
    }

    private static void toDegree(double d, StringBuffer stringBuffer) {
        int i = d < 0.0d ? -1 : 1;
        double dRound = Math.round(d * 1000000.0d);
        Double.isNaN(dRound);
        double d2 = dRound / 1000000.0d;
        stringBuffer.append(((int) Math.floor(d2)) * i);
        stringBuffer.append("° ");
        stringBuffer.append((int) Math.floor((d2 - Math.floor(d2)) * 60.0d));
        stringBuffer.append("' ");
        stringBuffer.append((((int) Math.floor((((d2 - Math.floor(d2)) * 60.0d) - Math.floor((d2 - Math.floor(d2)) * 60.0d)) * 100000.0d)) * 60) / 100000);
        stringBuffer.append("\"");
    }

    public static String latToDegree(double d) {
        StringBuffer stringBuffer = new StringBuffer(12);
        toDegree(d, stringBuffer);
        stringBuffer.append(d < 0.0d ? 'S' : 'N');
        return stringBuffer.toString();
    }

    public static String lngToDegree(double d) {
        StringBuffer stringBuffer = new StringBuffer(12);
        toDegree(d, stringBuffer);
        stringBuffer.append(d < 0.0d ? 'W' : 'E');
        return stringBuffer.toString();
    }

    public static String latToDegree(int i) {
        double d = i;
        Double.isNaN(d);
        return latToDegree(d / 1000000.0d);
    }

    public static String lngToDegree(int i) {
        double d = i;
        Double.isNaN(d);
        return lngToDegree(d / 1000000.0d);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeDouble(this.latitude);
        parcel.writeDouble(this.longitude);
        parcel.writeInt(this.accuracy);
        parcel.writeLong(this.timeOffset);
        parcel.writeString(this.source);
    }

    private GPSCoordinate(Parcel parcel) {
        this.latitude = parcel.readDouble();
        this.longitude = parcel.readDouble();
        this.accuracy = parcel.readInt();
        this.timeOffset = parcel.readLong();
        this.source = parcel.readString();
    }
}
