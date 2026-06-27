package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@zzard
@SafeParcelable.Class(creator = "AdRequestInfoParcelCreator")
/* loaded from: classes2.dex */
public final class zzarg extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzarg> CREATOR = new zzarh();

    @SafeParcelable.Field(id = 6)
    private final ApplicationInfo applicationInfo;

    @SafeParcelable.Field(id = 1)
    private final int versionCode;

    @SafeParcelable.Field(id = 11)
    private final zzbai zzbtc;

    @SafeParcelable.Field(id = 20)
    private final float zzbtx;

    @SafeParcelable.Field(id = 5)
    private final String zzchk;

    @SafeParcelable.Field(id = 10)
    private final String zzcig;

    @SafeParcelable.Field(id = 42)
    private final boolean zzdfj;

    @SafeParcelable.Field(id = 29)
    private final zzady zzdgs;

    @SafeParcelable.Field(id = 14)
    private final List<String> zzdgt;

    @SafeParcelable.Field(id = 2)
    private final Bundle zzdlj;

    @SafeParcelable.Field(id = 3)
    private final zzxz zzdlk;

    @SafeParcelable.Field(id = 4)
    private final zzyd zzdll;

    @SafeParcelable.Field(id = 7)
    private final PackageInfo zzdlm;

    @SafeParcelable.Field(id = 8)
    private final String zzdln;

    @SafeParcelable.Field(id = 9)
    private final String zzdlo;

    @SafeParcelable.Field(id = 12)
    private final Bundle zzdlp;

    @SafeParcelable.Field(id = 13)
    private final int zzdlq;

    @SafeParcelable.Field(id = 15)
    private final Bundle zzdlr;

    @SafeParcelable.Field(id = 16)
    private final boolean zzdls;

    @SafeParcelable.Field(id = 18)
    private final int zzdlt;

    @SafeParcelable.Field(id = 19)
    private final int zzdlu;

    @SafeParcelable.Field(id = 21)
    private final String zzdlv;

    @SafeParcelable.Field(id = 25)
    private final long zzdlw;

    @SafeParcelable.Field(id = 26)
    private final String zzdlx;

    @SafeParcelable.Field(id = 27)
    private final List<String> zzdly;

    @SafeParcelable.Field(id = 28)
    private final String zzdlz;

    @SafeParcelable.Field(id = 30)
    private final List<String> zzdma;

    @SafeParcelable.Field(id = 31)
    private final long zzdmb;

    @SafeParcelable.Field(id = 33)
    private final String zzdmc;

    @SafeParcelable.Field(id = 34)
    private final float zzdmd;

    @SafeParcelable.Field(id = 35)
    private final int zzdme;

    @SafeParcelable.Field(id = 36)
    private final int zzdmf;

    @SafeParcelable.Field(id = 37)
    private final boolean zzdmg;

    @SafeParcelable.Field(id = 38)
    private final boolean zzdmh;

    @SafeParcelable.Field(id = 39)
    private final String zzdmi;

    @SafeParcelable.Field(id = 40)
    private final boolean zzdmj;

    @SafeParcelable.Field(id = 41)
    private final String zzdmk;

    @SafeParcelable.Field(id = 43)
    private final int zzdml;

    @SafeParcelable.Field(id = 44)
    private final Bundle zzdmm;

    @SafeParcelable.Field(id = 45)
    private final String zzdmn;

    @SafeParcelable.Field(id = 46)
    private final zzaax zzdmo;

    @SafeParcelable.Field(id = 47)
    private final boolean zzdmp;

    @SafeParcelable.Field(id = 48)
    private final Bundle zzdmq;

    @SafeParcelable.Field(id = 49)
    private final String zzdmr;

    @SafeParcelable.Field(id = 50)
    private final String zzdms;

    @SafeParcelable.Field(id = 51)
    private final String zzdmt;

    @SafeParcelable.Field(id = 52)
    private final boolean zzdmu;

    @SafeParcelable.Field(id = 53)
    private final List<Integer> zzdmv;

    @SafeParcelable.Field(id = 54)
    private final String zzdmw;

    @SafeParcelable.Field(id = 55)
    private final List<String> zzdmx;

    @SafeParcelable.Field(id = 56)
    private final int zzdmy;

    @SafeParcelable.Field(id = 57)
    private final boolean zzdmz;

    @SafeParcelable.Field(id = 58)
    private final boolean zzdna;

    @SafeParcelable.Field(id = 59)
    private final boolean zzdnb;

    @SafeParcelable.Field(id = 60)
    private final ArrayList<String> zzdnc;

    @SafeParcelable.Field(id = 61)
    private final String zzdnd;

    @SafeParcelable.Field(id = 63)
    private final zzaiy zzdne;

    @SafeParcelable.Field(id = 64)
    private final String zzdnf;

    @SafeParcelable.Field(id = 65)
    private final Bundle zzdng;

    @SafeParcelable.Constructor
    zzarg(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) Bundle bundle, @SafeParcelable.Param(id = 3) zzxz zzxzVar, @SafeParcelable.Param(id = 4) zzyd zzydVar, @SafeParcelable.Param(id = 5) String str, @SafeParcelable.Param(id = 6) ApplicationInfo applicationInfo, @SafeParcelable.Param(id = 7) PackageInfo packageInfo, @SafeParcelable.Param(id = 8) String str2, @SafeParcelable.Param(id = 9) String str3, @SafeParcelable.Param(id = 10) String str4, @SafeParcelable.Param(id = 11) zzbai zzbaiVar, @SafeParcelable.Param(id = 12) Bundle bundle2, @SafeParcelable.Param(id = 13) int i2, @SafeParcelable.Param(id = 14) List<String> list, @SafeParcelable.Param(id = 15) Bundle bundle3, @SafeParcelable.Param(id = 16) boolean z, @SafeParcelable.Param(id = 18) int i3, @SafeParcelable.Param(id = 19) int i4, @SafeParcelable.Param(id = 20) float f, @SafeParcelable.Param(id = 21) String str5, @SafeParcelable.Param(id = 25) long j, @SafeParcelable.Param(id = 26) String str6, @SafeParcelable.Param(id = 27) List<String> list2, @SafeParcelable.Param(id = 28) String str7, @SafeParcelable.Param(id = 29) zzady zzadyVar, @SafeParcelable.Param(id = 30) List<String> list3, @SafeParcelable.Param(id = 31) long j2, @SafeParcelable.Param(id = 33) String str8, @SafeParcelable.Param(id = 34) float f2, @SafeParcelable.Param(id = 40) boolean z2, @SafeParcelable.Param(id = 35) int i5, @SafeParcelable.Param(id = 36) int i6, @SafeParcelable.Param(id = 37) boolean z3, @SafeParcelable.Param(id = 38) boolean z4, @SafeParcelable.Param(id = 39) String str9, @SafeParcelable.Param(id = 41) String str10, @SafeParcelable.Param(id = 42) boolean z5, @SafeParcelable.Param(id = 43) int i7, @SafeParcelable.Param(id = 44) Bundle bundle4, @SafeParcelable.Param(id = 45) String str11, @SafeParcelable.Param(id = 46) zzaax zzaaxVar, @SafeParcelable.Param(id = 47) boolean z6, @SafeParcelable.Param(id = 48) Bundle bundle5, @SafeParcelable.Param(id = 49) String str12, @SafeParcelable.Param(id = 50) String str13, @SafeParcelable.Param(id = 51) String str14, @SafeParcelable.Param(id = 52) boolean z7, @SafeParcelable.Param(id = 53) List<Integer> list4, @SafeParcelable.Param(id = 54) String str15, @SafeParcelable.Param(id = 55) List<String> list5, @SafeParcelable.Param(id = 56) int i8, @SafeParcelable.Param(id = 57) boolean z8, @SafeParcelable.Param(id = 58) boolean z9, @SafeParcelable.Param(id = 59) boolean z10, @SafeParcelable.Param(id = 60) ArrayList<String> arrayList, @SafeParcelable.Param(id = 61) String str16, @SafeParcelable.Param(id = 63) zzaiy zzaiyVar, @SafeParcelable.Param(id = 64) String str17, @SafeParcelable.Param(id = 65) Bundle bundle6) {
        this.versionCode = i;
        this.zzdlj = bundle;
        this.zzdlk = zzxzVar;
        this.zzdll = zzydVar;
        this.zzchk = str;
        this.applicationInfo = applicationInfo;
        this.zzdlm = packageInfo;
        this.zzdln = str2;
        this.zzdlo = str3;
        this.zzcig = str4;
        this.zzbtc = zzbaiVar;
        this.zzdlp = bundle2;
        this.zzdlq = i2;
        this.zzdgt = list;
        this.zzdma = list3 == null ? Collections.emptyList() : Collections.unmodifiableList(list3);
        this.zzdlr = bundle3;
        this.zzdls = z;
        this.zzdlt = i3;
        this.zzdlu = i4;
        this.zzbtx = f;
        this.zzdlv = str5;
        this.zzdlw = j;
        this.zzdlx = str6;
        this.zzdly = list2 == null ? Collections.emptyList() : Collections.unmodifiableList(list2);
        this.zzdlz = str7;
        this.zzdgs = zzadyVar;
        this.zzdmb = j2;
        this.zzdmc = str8;
        this.zzdmd = f2;
        this.zzdmj = z2;
        this.zzdme = i5;
        this.zzdmf = i6;
        this.zzdmg = z3;
        this.zzdmh = z4;
        this.zzdmi = str9;
        this.zzdmk = str10;
        this.zzdfj = z5;
        this.zzdml = i7;
        this.zzdmm = bundle4;
        this.zzdmn = str11;
        this.zzdmo = zzaaxVar;
        this.zzdmp = z6;
        this.zzdmq = bundle5;
        this.zzdmr = str12;
        this.zzdms = str13;
        this.zzdmt = str14;
        this.zzdmu = z7;
        this.zzdmv = list4;
        this.zzdmw = str15;
        this.zzdmx = list5;
        this.zzdmy = i8;
        this.zzdmz = z8;
        this.zzdna = z9;
        this.zzdnb = z10;
        this.zzdnc = arrayList;
        this.zzdnd = str16;
        this.zzdne = zzaiyVar;
        this.zzdnf = str17;
        this.zzdng = bundle6;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.versionCode);
        SafeParcelWriter.writeBundle(parcel, 2, this.zzdlj, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zzdlk, i, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.zzdll, i, false);
        SafeParcelWriter.writeString(parcel, 5, this.zzchk, false);
        SafeParcelWriter.writeParcelable(parcel, 6, this.applicationInfo, i, false);
        SafeParcelWriter.writeParcelable(parcel, 7, this.zzdlm, i, false);
        SafeParcelWriter.writeString(parcel, 8, this.zzdln, false);
        SafeParcelWriter.writeString(parcel, 9, this.zzdlo, false);
        SafeParcelWriter.writeString(parcel, 10, this.zzcig, false);
        SafeParcelWriter.writeParcelable(parcel, 11, this.zzbtc, i, false);
        SafeParcelWriter.writeBundle(parcel, 12, this.zzdlp, false);
        SafeParcelWriter.writeInt(parcel, 13, this.zzdlq);
        SafeParcelWriter.writeStringList(parcel, 14, this.zzdgt, false);
        SafeParcelWriter.writeBundle(parcel, 15, this.zzdlr, false);
        SafeParcelWriter.writeBoolean(parcel, 16, this.zzdls);
        SafeParcelWriter.writeInt(parcel, 18, this.zzdlt);
        SafeParcelWriter.writeInt(parcel, 19, this.zzdlu);
        SafeParcelWriter.writeFloat(parcel, 20, this.zzbtx);
        SafeParcelWriter.writeString(parcel, 21, this.zzdlv, false);
        SafeParcelWriter.writeLong(parcel, 25, this.zzdlw);
        SafeParcelWriter.writeString(parcel, 26, this.zzdlx, false);
        SafeParcelWriter.writeStringList(parcel, 27, this.zzdly, false);
        SafeParcelWriter.writeString(parcel, 28, this.zzdlz, false);
        SafeParcelWriter.writeParcelable(parcel, 29, this.zzdgs, i, false);
        SafeParcelWriter.writeStringList(parcel, 30, this.zzdma, false);
        SafeParcelWriter.writeLong(parcel, 31, this.zzdmb);
        SafeParcelWriter.writeString(parcel, 33, this.zzdmc, false);
        SafeParcelWriter.writeFloat(parcel, 34, this.zzdmd);
        SafeParcelWriter.writeInt(parcel, 35, this.zzdme);
        SafeParcelWriter.writeInt(parcel, 36, this.zzdmf);
        SafeParcelWriter.writeBoolean(parcel, 37, this.zzdmg);
        SafeParcelWriter.writeBoolean(parcel, 38, this.zzdmh);
        SafeParcelWriter.writeString(parcel, 39, this.zzdmi, false);
        SafeParcelWriter.writeBoolean(parcel, 40, this.zzdmj);
        SafeParcelWriter.writeString(parcel, 41, this.zzdmk, false);
        SafeParcelWriter.writeBoolean(parcel, 42, this.zzdfj);
        SafeParcelWriter.writeInt(parcel, 43, this.zzdml);
        SafeParcelWriter.writeBundle(parcel, 44, this.zzdmm, false);
        SafeParcelWriter.writeString(parcel, 45, this.zzdmn, false);
        SafeParcelWriter.writeParcelable(parcel, 46, this.zzdmo, i, false);
        SafeParcelWriter.writeBoolean(parcel, 47, this.zzdmp);
        SafeParcelWriter.writeBundle(parcel, 48, this.zzdmq, false);
        SafeParcelWriter.writeString(parcel, 49, this.zzdmr, false);
        SafeParcelWriter.writeString(parcel, 50, this.zzdms, false);
        SafeParcelWriter.writeString(parcel, 51, this.zzdmt, false);
        SafeParcelWriter.writeBoolean(parcel, 52, this.zzdmu);
        SafeParcelWriter.writeIntegerList(parcel, 53, this.zzdmv, false);
        SafeParcelWriter.writeString(parcel, 54, this.zzdmw, false);
        SafeParcelWriter.writeStringList(parcel, 55, this.zzdmx, false);
        SafeParcelWriter.writeInt(parcel, 56, this.zzdmy);
        SafeParcelWriter.writeBoolean(parcel, 57, this.zzdmz);
        SafeParcelWriter.writeBoolean(parcel, 58, this.zzdna);
        SafeParcelWriter.writeBoolean(parcel, 59, this.zzdnb);
        SafeParcelWriter.writeStringList(parcel, 60, this.zzdnc, false);
        SafeParcelWriter.writeString(parcel, 61, this.zzdnd, false);
        SafeParcelWriter.writeParcelable(parcel, 63, this.zzdne, i, false);
        SafeParcelWriter.writeString(parcel, 64, this.zzdnf, false);
        SafeParcelWriter.writeBundle(parcel, 65, this.zzdng, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
