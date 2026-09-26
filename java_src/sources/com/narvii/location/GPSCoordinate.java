package com.narvii.location;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import java.text.DecimalFormat;
import java.util.Random;

/* JADX INFO: loaded from: classes9.dex */
public class GPSCoordinate implements Parcelable {
    private static final double RADIUS = 6371000.0d;
    private final int accuracy;
    private final double latitude;
    private final double longitude;
    private final String source;
    private final long timeOffset;
    private static final Random RND = new Random(System.currentTimeMillis());
    private static final DecimalFormat FMT = new DecimalFormat("0.#####");
    public static final GPSCoordinate NULL = new GPSCoordinate(Double.NaN, Double.NaN, 0, 0, "null");
    public static final Parcelable.Creator<GPSCoordinate> CREATOR = new Parcelable.Creator<GPSCoordinate>() { // from class: com.narvii.location.GPSCoordinate.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GPSCoordinate createFromParcel(Parcel parcel) {
            return new GPSCoordinate(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GPSCoordinate[] newArray(int i10) {
            return new GPSCoordinate[i10];
        }
    };

    public static String latToDegree(double d) {
        StringBuffer stringBuffer = new StringBuffer(12);
        toDegree(d, stringBuffer);
        stringBuffer.append(d < com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE ? 'S' : 'N');
        return stringBuffer.toString();
    }

    public static String lngToDegree(double d) {
        StringBuffer stringBuffer = new StringBuffer(12);
        toDegree(d, stringBuffer);
        stringBuffer.append(d < com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE ? 'W' : 'E');
        return stringBuffer.toString();
    }

    public int accuracy() {
        return this.accuracy;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean isFresh(long j6) {
        long j10 = this.timeOffset;
        return j10 <= 0 && j10 >= (-j6);
    }

    public boolean isValid() {
        if (this == NULL) {
            return false;
        }
        double d = this.latitude;
        if ((d != com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE || this.longitude != com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) && d >= -90.0d && d <= 90.0d) {
            double d2 = this.longitude;
            if (d2 >= -180.0d && d2 <= 180.0d) {
                return true;
            }
        }
        return false;
    }

    public double latitude() {
        return this.latitude;
    }

    public int latitudeE6() {
        return (int) (this.latitude * 1000000.0d);
    }

    public double latitudeSpan(int i10) {
        return (((double) i10) / 4.003017359204114E7d) * 360.0d;
    }

    public double longitude() {
        return this.longitude;
    }

    public int longitudeE6() {
        return (int) (this.longitude * 1000000.0d);
    }

    public String source() {
        return this.source;
    }

    public long timeOffset() {
        return this.timeOffset;
    }

    public GPSCoordinate(double d, double d2) {
        this(d, d2, 0, 0L, "");
    }

    public static GPSCoordinate create(int i10, int i11) {
        return new GPSCoordinate(((double) i10) / 1000000.0d, ((double) i11) / 1000000.0d);
    }

    private static void toDegree(double d, StringBuffer stringBuffer) {
        int i10 = d < com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE ? -1 : 1;
        double dRound = Math.round(d * 1000000.0d) / 1000000.0d;
        stringBuffer.append(((int) Math.floor(dRound)) * i10);
        stringBuffer.append("° ");
        stringBuffer.append((int) Math.floor((dRound - Math.floor(dRound)) * 60.0d));
        stringBuffer.append("' ");
        stringBuffer.append((((int) Math.floor((((dRound - Math.floor(dRound)) * 60.0d) - Math.floor((dRound - Math.floor(dRound)) * 60.0d)) * 100000.0d)) * 60) / 100000);
        stringBuffer.append("\"");
    }

    protected Object clone() {
        return new GPSCoordinate(this.latitude, this.longitude, this.accuracy, this.timeOffset, this.source);
    }

    public double distanceTo(GPSCoordinate gPSCoordinate) {
        if (gPSCoordinate == this) {
            return com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE;
        }
        double d = (this.latitude / 180.0d) * 3.141592653589793d;
        double d2 = (this.longitude / 180.0d) * 3.141592653589793d;
        double d6 = (gPSCoordinate.latitude / 180.0d) * 3.141592653589793d;
        double d7 = (d6 - d) / 2.0d;
        double d10 = (((gPSCoordinate.longitude / 180.0d) * 3.141592653589793d) - d2) / 2.0d;
        double dSin = (Math.sin(d7) * Math.sin(d7)) + (Math.cos(d) * Math.cos(d6) * Math.sin(d10) * Math.sin(d10));
        return Math.atan2(Math.sqrt(dSin), Math.sqrt(1.0d - dSin)) * 2.0d * RADIUS;
    }

    public String latitudeDegree() {
        return latToDegree(this.latitude);
    }

    public String latitudeString() {
        return FMT.format(this.latitude);
    }

    public String longitudeDegree() {
        return lngToDegree(this.longitude);
    }

    public String longitudeString() {
        return FMT.format(this.longitude);
    }

    public String toDegreeString() {
        return latitudeDegree() + ", " + longitudeDegree();
    }

    public String toString() {
        if (this == NULL) {
            return "(?,?) [null]";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        DecimalFormat decimalFormat = FMT;
        sb.append(decimalFormat.format(this.latitude));
        sb.append(",");
        sb.append(decimalFormat.format(this.longitude));
        sb.append(") [");
        sb.append(this.accuracy);
        sb.append(",");
        sb.append(this.source);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeDouble(this.latitude);
        parcel.writeDouble(this.longitude);
        parcel.writeInt(this.accuracy);
        parcel.writeLong(this.timeOffset);
        parcel.writeString(this.source);
    }

    public GPSCoordinate(double d, double d2, int i10, long j6, String str) {
        this.latitude = d;
        this.longitude = d2;
        this.accuracy = i10;
        this.timeOffset = j6;
        this.source = str;
    }

    public double longitudeSpan(int i10) {
        return latitudeSpan(i10);
    }

    public GPSCoordinate randomInRadius(int i10) {
        double dLatitudeSpan = latitudeSpan(i10);
        double dLongitudeSpan = longitudeSpan(i10);
        Random random = RND;
        return new GPSCoordinate(this.latitude + (dLatitudeSpan * (random.nextDouble() - 0.5d) * 2.0d), this.longitude + (dLongitudeSpan * (random.nextDouble() - 0.5d) * 2.0d), this.accuracy, this.timeOffset, this.source);
    }

    public GPSCoordinate(Location location) {
        this.latitude = location.getLatitude();
        this.longitude = location.getLongitude();
        this.accuracy = (int) location.getAccuracy();
        this.timeOffset = location.getTime() - System.currentTimeMillis();
        this.source = location.getProvider();
    }

    public static String latToDegree(int i10) {
        return latToDegree(((double) i10) / 1000000.0d);
    }

    public static String lngToDegree(int i10) {
        return lngToDegree(((double) i10) / 1000000.0d);
    }

    private GPSCoordinate(Parcel parcel) {
        this.latitude = parcel.readDouble();
        this.longitude = parcel.readDouble();
        this.accuracy = parcel.readInt();
        this.timeOffset = parcel.readLong();
        this.source = parcel.readString();
    }
}
