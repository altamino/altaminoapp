package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public final class zzdtd {
    public static final zzdtd zzhuc = new zzdtd(1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    private static final zzdtd zzhud = new zzdtd(0.0d, 1.0d, -1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    private static final zzdtd zzhue = new zzdtd(-1.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    private static final zzdtd zzhuf = new zzdtd(0.0d, -1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    private final double a;
    private final double b;
    private final double c;
    private final double d;
    private final double w;
    private final double zzhty;
    private final double zzhtz;
    private final double zzhua;
    private final double zzhub;

    private zzdtd(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        this.zzhty = d5;
        this.zzhtz = d6;
        this.w = d7;
        this.a = d;
        this.b = d2;
        this.c = d3;
        this.d = d4;
        this.zzhua = d8;
        this.zzhub = d9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzdtd.class != obj.getClass()) {
            return false;
        }
        zzdtd zzdtdVar = (zzdtd) obj;
        return Double.compare(zzdtdVar.a, this.a) == 0 && Double.compare(zzdtdVar.b, this.b) == 0 && Double.compare(zzdtdVar.c, this.c) == 0 && Double.compare(zzdtdVar.d, this.d) == 0 && Double.compare(zzdtdVar.zzhua, this.zzhua) == 0 && Double.compare(zzdtdVar.zzhub, this.zzhub) == 0 && Double.compare(zzdtdVar.zzhty, this.zzhty) == 0 && Double.compare(zzdtdVar.zzhtz, this.zzhtz) == 0 && Double.compare(zzdtdVar.w, this.w) == 0;
    }

    public final int hashCode() {
        long jDoubleToLongBits = Double.doubleToLongBits(this.zzhty);
        long jDoubleToLongBits2 = Double.doubleToLongBits(this.zzhtz);
        int i = (((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32))) * 31) + ((int) (jDoubleToLongBits2 ^ (jDoubleToLongBits2 >>> 32)));
        long jDoubleToLongBits3 = Double.doubleToLongBits(this.w);
        int i2 = (i * 31) + ((int) (jDoubleToLongBits3 ^ (jDoubleToLongBits3 >>> 32)));
        long jDoubleToLongBits4 = Double.doubleToLongBits(this.a);
        int i3 = (i2 * 31) + ((int) (jDoubleToLongBits4 ^ (jDoubleToLongBits4 >>> 32)));
        long jDoubleToLongBits5 = Double.doubleToLongBits(this.b);
        int i4 = (i3 * 31) + ((int) (jDoubleToLongBits5 ^ (jDoubleToLongBits5 >>> 32)));
        long jDoubleToLongBits6 = Double.doubleToLongBits(this.c);
        int i5 = (i4 * 31) + ((int) (jDoubleToLongBits6 ^ (jDoubleToLongBits6 >>> 32)));
        long jDoubleToLongBits7 = Double.doubleToLongBits(this.d);
        int i6 = (i5 * 31) + ((int) (jDoubleToLongBits7 ^ (jDoubleToLongBits7 >>> 32)));
        long jDoubleToLongBits8 = Double.doubleToLongBits(this.zzhua);
        int i7 = (i6 * 31) + ((int) (jDoubleToLongBits8 ^ (jDoubleToLongBits8 >>> 32)));
        long jDoubleToLongBits9 = Double.doubleToLongBits(this.zzhub);
        return (i7 * 31) + ((int) (jDoubleToLongBits9 ^ (jDoubleToLongBits9 >>> 32)));
    }

    public final String toString() {
        if (equals(zzhuc)) {
            return "Rotate 0°";
        }
        if (equals(zzhud)) {
            return "Rotate 90°";
        }
        if (equals(zzhue)) {
            return "Rotate 180°";
        }
        if (equals(zzhuf)) {
            return "Rotate 270°";
        }
        double d = this.zzhty;
        double d2 = this.zzhtz;
        double d3 = this.w;
        double d4 = this.a;
        double d5 = this.b;
        double d6 = this.c;
        double d7 = this.d;
        double d8 = this.zzhua;
        double d9 = this.zzhub;
        StringBuilder sb = new StringBuilder(260);
        sb.append("Matrix{u=");
        sb.append(d);
        sb.append(", v=");
        sb.append(d2);
        sb.append(", w=");
        sb.append(d3);
        sb.append(", a=");
        sb.append(d4);
        sb.append(", b=");
        sb.append(d5);
        sb.append(", c=");
        sb.append(d6);
        sb.append(", d=");
        sb.append(d7);
        sb.append(", tx=");
        sb.append(d8);
        sb.append(", ty=");
        sb.append(d9);
        sb.append("}");
        return sb.toString();
    }

    public static zzdtd zzp(ByteBuffer byteBuffer) {
        double dZzd = zzbc.zzd(byteBuffer);
        double dZzd2 = zzbc.zzd(byteBuffer);
        double dZze = zzbc.zze(byteBuffer);
        return new zzdtd(dZzd, dZzd2, zzbc.zzd(byteBuffer), zzbc.zzd(byteBuffer), dZze, zzbc.zze(byteBuffer), zzbc.zze(byteBuffer), zzbc.zzd(byteBuffer), zzbc.zzd(byteBuffer));
    }
}
