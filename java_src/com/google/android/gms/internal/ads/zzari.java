package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.List;

@zzard
@SafeParcelable.Class(creator = "AdResponseParcelCreator")
/* loaded from: classes2.dex */
public final class zzari extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzari> CREATOR = new zzarj();

    @SafeParcelable.Field(id = 5)
    private final int errorCode;

    @SafeParcelable.Field(id = 12)
    private final int orientation;

    @SafeParcelable.Field(id = 1)
    private final int versionCode;

    @SafeParcelable.Field(id = 37)
    private final zzark zzbqx;

    @SafeParcelable.Field(id = 49)
    private final boolean zzbrl;

    @SafeParcelable.Field(id = 53)
    private final boolean zzbrm;

    @SafeParcelable.Field(id = 23)
    private final boolean zzbsz;

    @SafeParcelable.Field(id = 30)
    private final String zzcep;

    @SafeParcelable.Field(id = 31)
    private final boolean zzchh;

    @SafeParcelable.Field(id = 32)
    private final boolean zzchi;

    @SafeParcelable.Field(id = 4)
    private final List<String> zzdfe;

    @SafeParcelable.Field(id = 6)
    private final List<String> zzdff;

    @SafeParcelable.Field(id = 52)
    private final List<String> zzdfg;

    @SafeParcelable.Field(id = 40)
    private final List<String> zzdfi;

    @SafeParcelable.Field(id = 42)
    private final boolean zzdfj;

    @SafeParcelable.Field(id = 11)
    private final long zzdfl;

    @SafeParcelable.Field(id = 2)
    private final String zzdkn;

    @SafeParcelable.Field(id = 24)
    private final boolean zzdls;

    @SafeParcelable.Field(id = 38)
    private final boolean zzdmh;

    @SafeParcelable.Field(id = 39)
    private String zzdmi;

    @SafeParcelable.Field(id = 47)
    private final boolean zzdmu;

    @SafeParcelable.Field(id = 3)
    private String zzdnh;

    @SafeParcelable.Field(id = 7)
    private final long zzdni;

    @SafeParcelable.Field(id = 8)
    private final boolean zzdnj;

    @SafeParcelable.Field(id = 9)
    private final long zzdnk;

    @SafeParcelable.Field(id = 10)
    private final List<String> zzdnl;

    @SafeParcelable.Field(id = 13)
    private final String zzdnm;

    @SafeParcelable.Field(id = 14)
    private final long zzdnn;

    @SafeParcelable.Field(id = 15)
    private final String zzdno;

    @SafeParcelable.Field(id = 18)
    private final boolean zzdnp;

    @SafeParcelable.Field(id = 19)
    private final String zzdnq;

    @SafeParcelable.Field(id = 21)
    private final String zzdnr;

    @SafeParcelable.Field(id = 22)
    private final boolean zzdns;

    @SafeParcelable.Field(id = 25)
    private final boolean zzdnt;

    @SafeParcelable.Field(id = 26)
    private final boolean zzdnu;

    @SafeParcelable.Field(id = 28)
    private zzaru zzdnv;

    @SafeParcelable.Field(id = 29)
    private String zzdnw;

    @SafeParcelable.Field(id = 33)
    private final zzato zzdnx;

    @SafeParcelable.Field(id = 34)
    private final List<String> zzdny;

    @SafeParcelable.Field(id = 35)
    private final List<String> zzdnz;

    @SafeParcelable.Field(id = 36)
    private final boolean zzdoa;

    @SafeParcelable.Field(id = 43)
    private final String zzdob;

    @SafeParcelable.Field(id = 44)
    private final zzauy zzdoc;

    @SafeParcelable.Field(id = 45)
    private final String zzdod;

    @SafeParcelable.Field(id = 46)
    private final boolean zzdoe;

    @SafeParcelable.Field(id = 48)
    private Bundle zzdof;

    @SafeParcelable.Field(id = 50)
    private final int zzdog;

    @SafeParcelable.Field(id = 51)
    private final boolean zzdoh;

    @SafeParcelable.Field(id = 54)
    private final String zzdoi;

    @SafeParcelable.Field(id = 55)
    private String zzdoj;

    @SafeParcelable.Field(id = 56)
    private boolean zzdok;

    @SafeParcelable.Field(id = 57)
    private boolean zzdol;

    @SafeParcelable.Constructor
    zzari(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) List<String> list, @SafeParcelable.Param(id = 5) int i2, @SafeParcelable.Param(id = 6) List<String> list2, @SafeParcelable.Param(id = 7) long j, @SafeParcelable.Param(id = 8) boolean z, @SafeParcelable.Param(id = 9) long j2, @SafeParcelable.Param(id = 10) List<String> list3, @SafeParcelable.Param(id = 11) long j3, @SafeParcelable.Param(id = 12) int i3, @SafeParcelable.Param(id = 13) String str3, @SafeParcelable.Param(id = 14) long j4, @SafeParcelable.Param(id = 15) String str4, @SafeParcelable.Param(id = 18) boolean z2, @SafeParcelable.Param(id = 19) String str5, @SafeParcelable.Param(id = 21) String str6, @SafeParcelable.Param(id = 22) boolean z3, @SafeParcelable.Param(id = 23) boolean z4, @SafeParcelable.Param(id = 24) boolean z5, @SafeParcelable.Param(id = 25) boolean z6, @SafeParcelable.Param(id = 26) boolean z7, @SafeParcelable.Param(id = 28) zzaru zzaruVar, @SafeParcelable.Param(id = 29) String str7, @SafeParcelable.Param(id = 30) String str8, @SafeParcelable.Param(id = 31) boolean z8, @SafeParcelable.Param(id = 32) boolean z9, @SafeParcelable.Param(id = 33) zzato zzatoVar, @SafeParcelable.Param(id = 34) List<String> list4, @SafeParcelable.Param(id = 35) List<String> list5, @SafeParcelable.Param(id = 36) boolean z10, @SafeParcelable.Param(id = 37) zzark zzarkVar, @SafeParcelable.Param(id = 38) boolean z11, @SafeParcelable.Param(id = 39) String str9, @SafeParcelable.Param(id = 40) List<String> list6, @SafeParcelable.Param(id = 42) boolean z12, @SafeParcelable.Param(id = 43) String str10, @SafeParcelable.Param(id = 44) zzauy zzauyVar, @SafeParcelable.Param(id = 45) String str11, @SafeParcelable.Param(id = 46) boolean z13, @SafeParcelable.Param(id = 47) boolean z14, @SafeParcelable.Param(id = 48) Bundle bundle, @SafeParcelable.Param(id = 49) boolean z15, @SafeParcelable.Param(id = 50) int i4, @SafeParcelable.Param(id = 51) boolean z16, @SafeParcelable.Param(id = 52) List<String> list7, @SafeParcelable.Param(id = 53) boolean z17, @SafeParcelable.Param(id = 54) String str12, @SafeParcelable.Param(id = 55) String str13, @SafeParcelable.Param(id = 56) boolean z18, @SafeParcelable.Param(id = 57) boolean z19) {
        zzaru zzaruVar2;
        zzarz zzarzVar;
        this.versionCode = i;
        this.zzdkn = str;
        this.zzdnh = str2;
        this.zzdfe = list != null ? Collections.unmodifiableList(list) : null;
        this.errorCode = i2;
        this.zzdff = list2 != null ? Collections.unmodifiableList(list2) : null;
        this.zzdni = j;
        this.zzdnj = z;
        this.zzdnk = j2;
        this.zzdnl = list3 != null ? Collections.unmodifiableList(list3) : null;
        this.zzdfl = j3;
        this.orientation = i3;
        this.zzdnm = str3;
        this.zzdnn = j4;
        this.zzdno = str4;
        this.zzdnp = z2;
        this.zzdnq = str5;
        this.zzdnr = str6;
        this.zzdns = z3;
        this.zzbsz = z4;
        this.zzdls = z5;
        this.zzdnt = z6;
        this.zzdoe = z13;
        this.zzdnu = z7;
        this.zzdnv = zzaruVar;
        this.zzdnw = str7;
        this.zzcep = str8;
        if (this.zzdnh == null && (zzaruVar2 = this.zzdnv) != null && (zzarzVar = (zzarz) zzaruVar2.zza(zzarz.CREATOR)) != null && !TextUtils.isEmpty(zzarzVar.zzdow)) {
            this.zzdnh = zzarzVar.zzdow;
        }
        this.zzchh = z8;
        this.zzchi = z9;
        this.zzdnx = zzatoVar;
        this.zzdny = list4;
        this.zzdnz = list5;
        this.zzdoa = z10;
        this.zzbqx = zzarkVar;
        this.zzdmh = z11;
        this.zzdmi = str9;
        this.zzdfi = list6;
        this.zzdfj = z12;
        this.zzdob = str10;
        this.zzdoc = zzauyVar;
        this.zzdod = str11;
        this.zzdmu = z14;
        this.zzdof = bundle;
        this.zzbrl = z15;
        this.zzdog = i4;
        this.zzdoh = z16;
        this.zzdfg = list7 != null ? Collections.unmodifiableList(list7) : null;
        this.zzbrm = z17;
        this.zzdoi = str12;
        this.zzdoj = str13;
        this.zzdok = z18;
        this.zzdol = z19;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.versionCode);
        SafeParcelWriter.writeString(parcel, 2, this.zzdkn, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzdnh, false);
        SafeParcelWriter.writeStringList(parcel, 4, this.zzdfe, false);
        SafeParcelWriter.writeInt(parcel, 5, this.errorCode);
        SafeParcelWriter.writeStringList(parcel, 6, this.zzdff, false);
        SafeParcelWriter.writeLong(parcel, 7, this.zzdni);
        SafeParcelWriter.writeBoolean(parcel, 8, this.zzdnj);
        SafeParcelWriter.writeLong(parcel, 9, this.zzdnk);
        SafeParcelWriter.writeStringList(parcel, 10, this.zzdnl, false);
        SafeParcelWriter.writeLong(parcel, 11, this.zzdfl);
        SafeParcelWriter.writeInt(parcel, 12, this.orientation);
        SafeParcelWriter.writeString(parcel, 13, this.zzdnm, false);
        SafeParcelWriter.writeLong(parcel, 14, this.zzdnn);
        SafeParcelWriter.writeString(parcel, 15, this.zzdno, false);
        SafeParcelWriter.writeBoolean(parcel, 18, this.zzdnp);
        SafeParcelWriter.writeString(parcel, 19, this.zzdnq, false);
        SafeParcelWriter.writeString(parcel, 21, this.zzdnr, false);
        SafeParcelWriter.writeBoolean(parcel, 22, this.zzdns);
        SafeParcelWriter.writeBoolean(parcel, 23, this.zzbsz);
        SafeParcelWriter.writeBoolean(parcel, 24, this.zzdls);
        SafeParcelWriter.writeBoolean(parcel, 25, this.zzdnt);
        SafeParcelWriter.writeBoolean(parcel, 26, this.zzdnu);
        SafeParcelWriter.writeParcelable(parcel, 28, this.zzdnv, i, false);
        SafeParcelWriter.writeString(parcel, 29, this.zzdnw, false);
        SafeParcelWriter.writeString(parcel, 30, this.zzcep, false);
        SafeParcelWriter.writeBoolean(parcel, 31, this.zzchh);
        SafeParcelWriter.writeBoolean(parcel, 32, this.zzchi);
        SafeParcelWriter.writeParcelable(parcel, 33, this.zzdnx, i, false);
        SafeParcelWriter.writeStringList(parcel, 34, this.zzdny, false);
        SafeParcelWriter.writeStringList(parcel, 35, this.zzdnz, false);
        SafeParcelWriter.writeBoolean(parcel, 36, this.zzdoa);
        SafeParcelWriter.writeParcelable(parcel, 37, this.zzbqx, i, false);
        SafeParcelWriter.writeBoolean(parcel, 38, this.zzdmh);
        SafeParcelWriter.writeString(parcel, 39, this.zzdmi, false);
        SafeParcelWriter.writeStringList(parcel, 40, this.zzdfi, false);
        SafeParcelWriter.writeBoolean(parcel, 42, this.zzdfj);
        SafeParcelWriter.writeString(parcel, 43, this.zzdob, false);
        SafeParcelWriter.writeParcelable(parcel, 44, this.zzdoc, i, false);
        SafeParcelWriter.writeString(parcel, 45, this.zzdod, false);
        SafeParcelWriter.writeBoolean(parcel, 46, this.zzdoe);
        SafeParcelWriter.writeBoolean(parcel, 47, this.zzdmu);
        SafeParcelWriter.writeBundle(parcel, 48, this.zzdof, false);
        SafeParcelWriter.writeBoolean(parcel, 49, this.zzbrl);
        SafeParcelWriter.writeInt(parcel, 50, this.zzdog);
        SafeParcelWriter.writeBoolean(parcel, 51, this.zzdoh);
        SafeParcelWriter.writeStringList(parcel, 52, this.zzdfg, false);
        SafeParcelWriter.writeBoolean(parcel, 53, this.zzbrm);
        SafeParcelWriter.writeString(parcel, 54, this.zzdoi, false);
        SafeParcelWriter.writeString(parcel, 55, this.zzdoj, false);
        SafeParcelWriter.writeBoolean(parcel, 56, this.zzdok);
        SafeParcelWriter.writeBoolean(parcel, 57, this.zzdol);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
