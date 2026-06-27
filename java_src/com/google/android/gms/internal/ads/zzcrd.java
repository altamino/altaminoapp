package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzcrd implements zzcuz<Bundle> {
    private final zzyd zzdll;
    private final List<Parcelable> zzgfy;
    private final Context zzlj;

    public zzcrd(Context context, zzyd zzydVar, List<Parcelable> list) {
        this.zzlj = context;
        this.zzdll = zzydVar;
        this.zzgfy = list;
    }

    @Override // com.google.android.gms.internal.ads.zzcuz
    public final /* synthetic */ void zzt(Bundle bundle) {
        Bundle bundle2 = bundle;
        com.google.android.gms.ads.internal.zzk.zzlg();
        bundle2.putString("activity", zzaxi.zzap(this.zzlj));
        Bundle bundle3 = new Bundle();
        bundle3.putInt("width", this.zzdll.width);
        bundle3.putInt("height", this.zzdll.height);
        bundle2.putBundle("size", bundle3);
        if (this.zzgfy.size() > 0) {
            List<Parcelable> list = this.zzgfy;
            bundle2.putParcelableArray("parents", (Parcelable[]) list.toArray(new Parcelable[list.size()]));
        }
    }
}
