package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaFormat;
import android.os.Parcel;
import android.os.Parcelable;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import tv.danmaku.ijk.media.player.IjkMediaMeta;
import tv.danmaku.ijk.media.player.misc.IMediaFormat;

/* loaded from: classes2.dex */
public final class zzlh implements Parcelable {
    public static final Parcelable.Creator<zzlh> CREATOR = new zzli();
    public final int height;
    public final int width;
    public final int zzafs;
    public final float zzaft;
    public final int zzafu;
    public final int zzafv;
    public final List<byte[]> zzafw;
    private int zzafx;
    private final String zzatl;
    public final int zzatm;
    public final String zzatn;
    private final zzpo zzato;
    private final String zzatp;
    public final String zzatq;
    public final zzne zzatr;
    public final float zzats;
    public final int zzatt;
    private final int zzatu;
    private final byte[] zzatv;
    private final zztb zzatw;
    public final int zzatx;
    private final int zzaty;
    private final int zzatz;
    public final long zzaua;
    public final int zzaub;
    public final String zzauc;
    private final int zzaud;

    public static zzlh zza(String str, String str2, String str3, int i, int i2, int i3, int i4, float f, List<byte[]> list, int i5, float f2, byte[] bArr, int i6, zztb zztbVar, zzne zzneVar) {
        return new zzlh(str, null, str2, null, -1, i2, i3, i4, -1.0f, i5, f2, bArr, i6, zztbVar, -1, -1, -1, -1, -1, 0, null, -1, Long.MAX_VALUE, list, zzneVar, null);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public static zzlh zza(String str, String str2, String str3, int i, int i2, int i3, int i4, List<byte[]> list, zzne zzneVar, int i5, String str4) {
        return zza(str, str2, null, -1, -1, i3, i4, -1, null, zzneVar, 0, str4);
    }

    public static zzlh zza(String str, String str2, String str3, int i, int i2, int i3, int i4, int i5, List<byte[]> list, zzne zzneVar, int i6, String str4) {
        return new zzlh(str, null, str2, null, -1, i2, -1, -1, -1.0f, -1, -1.0f, null, -1, null, i3, i4, i5, -1, -1, i6, str4, -1, Long.MAX_VALUE, list, zzneVar, null);
    }

    public static zzlh zza(String str, String str2, String str3, int i, int i2, String str4, zzne zzneVar) {
        return zza(str, str2, null, -1, i2, str4, -1, zzneVar, Long.MAX_VALUE, Collections.emptyList());
    }

    public static zzlh zza(String str, String str2, String str3, int i, int i2, String str4, int i3, zzne zzneVar, long j, List<byte[]> list) {
        return new zzlh(str, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, i2, str4, -1, j, list, zzneVar, null);
    }

    public static zzlh zza(String str, String str2, String str3, int i, List<byte[]> list, String str4, zzne zzneVar) {
        return new zzlh(str, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, 0, str4, -1, Long.MAX_VALUE, list, zzneVar, null);
    }

    public static zzlh zza(String str, String str2, String str3, int i, zzne zzneVar) {
        return new zzlh(str, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, 0, null, -1, Long.MAX_VALUE, null, null, null);
    }

    private zzlh(String str, String str2, String str3, String str4, int i, int i2, int i3, int i4, float f, int i5, float f2, byte[] bArr, int i6, zztb zztbVar, int i7, int i8, int i9, int i10, int i11, int i12, String str5, int i13, long j, List<byte[]> list, zzne zzneVar, zzpo zzpoVar) {
        this.zzatl = str;
        this.zzatp = str2;
        this.zzatq = str3;
        this.zzatn = str4;
        this.zzatm = i;
        this.zzafs = i2;
        this.width = i3;
        this.height = i4;
        this.zzats = f;
        this.zzatt = i5;
        this.zzaft = f2;
        this.zzatv = bArr;
        this.zzatu = i6;
        this.zzatw = zztbVar;
        this.zzafu = i7;
        this.zzafv = i8;
        this.zzatx = i9;
        this.zzaty = i10;
        this.zzatz = i11;
        this.zzaub = i12;
        this.zzauc = str5;
        this.zzaud = i13;
        this.zzaua = j;
        this.zzafw = list == null ? Collections.emptyList() : list;
        this.zzatr = zzneVar;
        this.zzato = zzpoVar;
    }

    zzlh(Parcel parcel) {
        this.zzatl = parcel.readString();
        this.zzatp = parcel.readString();
        this.zzatq = parcel.readString();
        this.zzatn = parcel.readString();
        this.zzatm = parcel.readInt();
        this.zzafs = parcel.readInt();
        this.width = parcel.readInt();
        this.height = parcel.readInt();
        this.zzats = parcel.readFloat();
        this.zzatt = parcel.readInt();
        this.zzaft = parcel.readFloat();
        this.zzatv = parcel.readInt() != 0 ? parcel.createByteArray() : null;
        this.zzatu = parcel.readInt();
        this.zzatw = (zztb) parcel.readParcelable(zztb.class.getClassLoader());
        this.zzafu = parcel.readInt();
        this.zzafv = parcel.readInt();
        this.zzatx = parcel.readInt();
        this.zzaty = parcel.readInt();
        this.zzatz = parcel.readInt();
        this.zzaub = parcel.readInt();
        this.zzauc = parcel.readString();
        this.zzaud = parcel.readInt();
        this.zzaua = parcel.readLong();
        int i = parcel.readInt();
        this.zzafw = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            this.zzafw.add(parcel.createByteArray());
        }
        this.zzatr = (zzne) parcel.readParcelable(zzne.class.getClassLoader());
        this.zzato = (zzpo) parcel.readParcelable(zzpo.class.getClassLoader());
    }

    public final zzlh zzae(int i) {
        return new zzlh(this.zzatl, this.zzatp, this.zzatq, this.zzatn, this.zzatm, i, this.width, this.height, this.zzats, this.zzatt, this.zzaft, this.zzatv, this.zzatu, this.zzatw, this.zzafu, this.zzafv, this.zzatx, this.zzaty, this.zzatz, this.zzaub, this.zzauc, this.zzaud, this.zzaua, this.zzafw, this.zzatr, this.zzato);
    }

    public final zzlh zzed(long j) {
        return new zzlh(this.zzatl, this.zzatp, this.zzatq, this.zzatn, this.zzatm, this.zzafs, this.width, this.height, this.zzats, this.zzatt, this.zzaft, this.zzatv, this.zzatu, this.zzatw, this.zzafu, this.zzafv, this.zzatx, this.zzaty, this.zzatz, this.zzaub, this.zzauc, this.zzaud, j, this.zzafw, this.zzatr, this.zzato);
    }

    public final zzlh zzc(int i, int i2) {
        return new zzlh(this.zzatl, this.zzatp, this.zzatq, this.zzatn, this.zzatm, this.zzafs, this.width, this.height, this.zzats, this.zzatt, this.zzaft, this.zzatv, this.zzatu, this.zzatw, this.zzafu, this.zzafv, this.zzatx, i, i2, this.zzaub, this.zzauc, this.zzaud, this.zzaua, this.zzafw, this.zzatr, this.zzato);
    }

    public final zzlh zza(zzpo zzpoVar) {
        return new zzlh(this.zzatl, this.zzatp, this.zzatq, this.zzatn, this.zzatm, this.zzafs, this.width, this.height, this.zzats, this.zzatt, this.zzaft, this.zzatv, this.zzatu, this.zzatw, this.zzafu, this.zzafv, this.zzatx, this.zzaty, this.zzatz, this.zzaub, this.zzauc, this.zzaud, this.zzaua, this.zzafw, this.zzatr, zzpoVar);
    }

    public final int zzhc() {
        int i;
        int i2 = this.width;
        if (i2 == -1 || (i = this.height) == -1) {
            return -1;
        }
        return i2 * i;
    }

    @SuppressLint({"InlinedApi"})
    @TargetApi(16)
    public final MediaFormat zzen() {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString(IMediaFormat.KEY_MIME, this.zzatq);
        String str = this.zzauc;
        if (str != null) {
            mediaFormat.setString(IjkMediaMeta.IJKM_KEY_LANGUAGE, str);
        }
        zza(mediaFormat, "max-input-size", this.zzafs);
        zza(mediaFormat, "width", this.width);
        zza(mediaFormat, "height", this.height);
        float f = this.zzats;
        if (f != -1.0f) {
            mediaFormat.setFloat("frame-rate", f);
        }
        zza(mediaFormat, "rotation-degrees", this.zzatt);
        zza(mediaFormat, "channel-count", this.zzafu);
        zza(mediaFormat, "sample-rate", this.zzafv);
        zza(mediaFormat, "encoder-delay", this.zzaty);
        zza(mediaFormat, "encoder-padding", this.zzatz);
        for (int i = 0; i < this.zzafw.size(); i++) {
            StringBuilder sb = new StringBuilder(15);
            sb.append("csd-");
            sb.append(i);
            mediaFormat.setByteBuffer(sb.toString(), ByteBuffer.wrap(this.zzafw.get(i)));
        }
        zztb zztbVar = this.zzatw;
        if (zztbVar != null) {
            zza(mediaFormat, "color-transfer", zztbVar.zzbbp);
            zza(mediaFormat, "color-standard", zztbVar.zzbbo);
            zza(mediaFormat, "color-range", zztbVar.zzbbq);
            byte[] bArr = zztbVar.zzbnt;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
        return mediaFormat;
    }

    public final String toString() {
        String str = this.zzatl;
        String str2 = this.zzatp;
        String str3 = this.zzatq;
        int i = this.zzatm;
        String str4 = this.zzauc;
        int i2 = this.width;
        int i3 = this.height;
        float f = this.zzats;
        int i4 = this.zzafu;
        int i5 = this.zzafv;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 100 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length());
        sb.append("Format(");
        sb.append(str);
        sb.append(", ");
        sb.append(str2);
        sb.append(", ");
        sb.append(str3);
        sb.append(", ");
        sb.append(i);
        sb.append(", ");
        sb.append(str4);
        sb.append(", [");
        sb.append(i2);
        sb.append(", ");
        sb.append(i3);
        sb.append(", ");
        sb.append(f);
        sb.append("], [");
        sb.append(i4);
        sb.append(", ");
        sb.append(i5);
        sb.append("])");
        return sb.toString();
    }

    public final int hashCode() {
        if (this.zzafx == 0) {
            String str = this.zzatl;
            int iHashCode = ((str == null ? 0 : str.hashCode()) + 527) * 31;
            String str2 = this.zzatp;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.zzatq;
            int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.zzatn;
            int iHashCode4 = (((((((((((iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31) + this.zzatm) * 31) + this.width) * 31) + this.height) * 31) + this.zzafu) * 31) + this.zzafv) * 31;
            String str5 = this.zzauc;
            int iHashCode5 = (((iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31) + this.zzaud) * 31;
            zzne zzneVar = this.zzatr;
            int iHashCode6 = (iHashCode5 + (zzneVar == null ? 0 : zzneVar.hashCode())) * 31;
            zzpo zzpoVar = this.zzato;
            this.zzafx = iHashCode6 + (zzpoVar != null ? zzpoVar.hashCode() : 0);
        }
        return this.zzafx;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzlh.class == obj.getClass()) {
            zzlh zzlhVar = (zzlh) obj;
            if (this.zzatm == zzlhVar.zzatm && this.zzafs == zzlhVar.zzafs && this.width == zzlhVar.width && this.height == zzlhVar.height && this.zzats == zzlhVar.zzats && this.zzatt == zzlhVar.zzatt && this.zzaft == zzlhVar.zzaft && this.zzatu == zzlhVar.zzatu && this.zzafu == zzlhVar.zzafu && this.zzafv == zzlhVar.zzafv && this.zzatx == zzlhVar.zzatx && this.zzaty == zzlhVar.zzaty && this.zzatz == zzlhVar.zzatz && this.zzaua == zzlhVar.zzaua && this.zzaub == zzlhVar.zzaub && zzsy.zza(this.zzatl, zzlhVar.zzatl) && zzsy.zza(this.zzauc, zzlhVar.zzauc) && this.zzaud == zzlhVar.zzaud && zzsy.zza(this.zzatp, zzlhVar.zzatp) && zzsy.zza(this.zzatq, zzlhVar.zzatq) && zzsy.zza(this.zzatn, zzlhVar.zzatn) && zzsy.zza(this.zzatr, zzlhVar.zzatr) && zzsy.zza(this.zzato, zzlhVar.zzato) && zzsy.zza(this.zzatw, zzlhVar.zzatw) && Arrays.equals(this.zzatv, zzlhVar.zzatv) && this.zzafw.size() == zzlhVar.zzafw.size()) {
                for (int i = 0; i < this.zzafw.size(); i++) {
                    if (!Arrays.equals(this.zzafw.get(i), zzlhVar.zzafw.get(i))) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    @TargetApi(16)
    private static void zza(MediaFormat mediaFormat, String str, int i) {
        if (i != -1) {
            mediaFormat.setInteger(str, i);
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zzatl);
        parcel.writeString(this.zzatp);
        parcel.writeString(this.zzatq);
        parcel.writeString(this.zzatn);
        parcel.writeInt(this.zzatm);
        parcel.writeInt(this.zzafs);
        parcel.writeInt(this.width);
        parcel.writeInt(this.height);
        parcel.writeFloat(this.zzats);
        parcel.writeInt(this.zzatt);
        parcel.writeFloat(this.zzaft);
        parcel.writeInt(this.zzatv != null ? 1 : 0);
        byte[] bArr = this.zzatv;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
        parcel.writeInt(this.zzatu);
        parcel.writeParcelable(this.zzatw, i);
        parcel.writeInt(this.zzafu);
        parcel.writeInt(this.zzafv);
        parcel.writeInt(this.zzatx);
        parcel.writeInt(this.zzaty);
        parcel.writeInt(this.zzatz);
        parcel.writeInt(this.zzaub);
        parcel.writeString(this.zzauc);
        parcel.writeInt(this.zzaud);
        parcel.writeLong(this.zzaua);
        int size = this.zzafw.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeByteArray(this.zzafw.get(i2));
        }
        parcel.writeParcelable(this.zzatr, 0);
        parcel.writeParcelable(this.zzato, 0);
    }
}
