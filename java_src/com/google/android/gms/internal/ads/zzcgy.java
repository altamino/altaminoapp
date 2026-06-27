package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzcgy implements zzdti<zzbbh<zzarx>> {
    private final zzdtu<zzaxb> zzerj;
    private final zzdtu<zzbai> zzfgp;
    private final zzdtu<zzczt> zzfhv;
    private final zzdtu<String> zzftu;
    private final zzdtu<zzbbh<Bundle>> zzfwh;
    private final zzdtu<ApplicationInfo> zzfwi;
    private final zzdtu<List<String>> zzfwj;
    private final zzdtu<PackageInfo> zzfwk;
    private final zzdtu<zzbbh<String>> zzfwl;
    private final zzdtu<String> zzfwm;

    private zzcgy(zzdtu<zzczt> zzdtuVar, zzdtu<zzbbh<Bundle>> zzdtuVar2, zzdtu<zzbai> zzdtuVar3, zzdtu<ApplicationInfo> zzdtuVar4, zzdtu<String> zzdtuVar5, zzdtu<List<String>> zzdtuVar6, zzdtu<PackageInfo> zzdtuVar7, zzdtu<zzbbh<String>> zzdtuVar8, zzdtu<zzaxb> zzdtuVar9, zzdtu<String> zzdtuVar10) {
        this.zzfhv = zzdtuVar;
        this.zzfwh = zzdtuVar2;
        this.zzfgp = zzdtuVar3;
        this.zzfwi = zzdtuVar4;
        this.zzftu = zzdtuVar5;
        this.zzfwj = zzdtuVar6;
        this.zzfwk = zzdtuVar7;
        this.zzfwl = zzdtuVar8;
        this.zzerj = zzdtuVar9;
        this.zzfwm = zzdtuVar10;
    }

    public static zzcgy zza(zzdtu<zzczt> zzdtuVar, zzdtu<zzbbh<Bundle>> zzdtuVar2, zzdtu<zzbai> zzdtuVar3, zzdtu<ApplicationInfo> zzdtuVar4, zzdtu<String> zzdtuVar5, zzdtu<List<String>> zzdtuVar6, zzdtu<PackageInfo> zzdtuVar7, zzdtu<zzbbh<String>> zzdtuVar8, zzdtu<zzaxb> zzdtuVar9, zzdtu<String> zzdtuVar10) {
        return new zzcgy(zzdtuVar, zzdtuVar2, zzdtuVar3, zzdtuVar4, zzdtuVar5, zzdtuVar6, zzdtuVar7, zzdtuVar8, zzdtuVar9, zzdtuVar10);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        zzczt zzcztVar = this.zzfhv.get();
        final zzbbh<Bundle> zzbbhVar = this.zzfwh.get();
        final zzbai zzbaiVar = this.zzfgp.get();
        final ApplicationInfo applicationInfo = this.zzfwi.get();
        final String str = this.zzftu.get();
        final List<String> list = this.zzfwj.get();
        final PackageInfo packageInfo = this.zzfwk.get();
        final zzbbh<String> zzbbhVar2 = this.zzfwl.get();
        final zzaxb zzaxbVar = this.zzerj.get();
        final String str2 = this.zzfwm.get();
        return (zzbbh) zzdto.zza(zzcztVar.zza((zzczt) zzczs.REQUEST_PARCEL, zzbbhVar, zzbbhVar2).zzc(new Callable(zzbbhVar, zzbaiVar, applicationInfo, str, list, packageInfo, zzbbhVar2, zzaxbVar, str2) { // from class: com.google.android.gms.internal.ads.zzcgx
            private final zzbbh zzdzo;
            private final zzbai zzfhl;
            private final String zzftt;
            private final ApplicationInfo zzfwb;
            private final List zzfwc;
            private final PackageInfo zzfwd;
            private final zzbbh zzfwe;
            private final zzaxb zzfwf;
            private final String zzfwg;

            {
                this.zzdzo = zzbbhVar;
                this.zzfhl = zzbaiVar;
                this.zzfwb = applicationInfo;
                this.zzftt = str;
                this.zzfwc = list;
                this.zzfwd = packageInfo;
                this.zzfwe = zzbbhVar2;
                this.zzfwf = zzaxbVar;
                this.zzfwg = str2;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzbbh zzbbhVar3 = this.zzdzo;
                zzbai zzbaiVar2 = this.zzfhl;
                ApplicationInfo applicationInfo2 = this.zzfwb;
                String str3 = this.zzftt;
                List list2 = this.zzfwc;
                PackageInfo packageInfo2 = this.zzfwd;
                zzbbh zzbbhVar4 = this.zzfwe;
                zzaxb zzaxbVar2 = this.zzfwf;
                return new zzarx((Bundle) zzbbhVar3.get(), zzbaiVar2, applicationInfo2, str3, list2, packageInfo2, (String) zzbbhVar4.get(), zzaxbVar2.zzvp(), this.zzfwg);
            }
        }).zzane(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
