package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes2.dex */
public final class zzcro implements zzcuz<Bundle> {
    private final String zzaap;
    private final float zzbtx;
    private final boolean zzchh;
    private final zzyd zzdll;
    private final int zzdlt;
    private final int zzdlu;
    private final String zzggf;
    private final String zzggg;

    public zzcro(zzyd zzydVar, String str, boolean z, String str2, float f, int i, int i2, String str3) {
        Preconditions.checkNotNull(zzydVar, "the adSize must not be null");
        this.zzdll = zzydVar;
        this.zzaap = str;
        this.zzchh = z;
        this.zzggf = str2;
        this.zzbtx = f;
        this.zzdlt = i;
        this.zzdlu = i2;
        this.zzggg = str3;
    }

    @Override // com.google.android.gms.internal.ads.zzcuz
    public final /* synthetic */ void zzt(Bundle bundle) {
        Bundle bundle2 = bundle;
        zzcxz.zza(bundle2, "smart_w", "full", this.zzdll.width == -1);
        zzcxz.zza(bundle2, "smart_h", "auto", this.zzdll.height == -2);
        zzcxz.zza(bundle2, "ene", (Boolean) true, this.zzdll.zzchi);
        zzcxz.zza(bundle2, IjkMediaMeta.IJKM_KEY_FORMAT, this.zzaap);
        zzcxz.zza(bundle2, "fluid", "height", this.zzchh);
        zzcxz.zza(bundle2, "sz", this.zzggf, !TextUtils.isEmpty(r0));
        bundle2.putFloat("u_sd", this.zzbtx);
        bundle2.putInt("sw", this.zzdlt);
        bundle2.putInt("sh", this.zzdlu);
        String str = this.zzggg;
        zzcxz.zza(bundle2, "sc", str, true ^ TextUtils.isEmpty(str));
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        zzyd[] zzydVarArr = this.zzdll.zzchg;
        if (zzydVarArr == null) {
            Bundle bundle3 = new Bundle();
            bundle3.putInt("height", this.zzdll.height);
            bundle3.putInt("width", this.zzdll.width);
            bundle3.putBoolean("is_fluid_height", this.zzdll.zzchh);
            arrayList.add(bundle3);
        } else {
            for (zzyd zzydVar : zzydVarArr) {
                Bundle bundle4 = new Bundle();
                bundle4.putBoolean("is_fluid_height", zzydVar.zzchh);
                bundle4.putInt("height", zzydVar.height);
                bundle4.putInt("width", zzydVar.width);
                arrayList.add(bundle4);
            }
        }
        bundle2.putParcelableArrayList("valid_ad_sizes", arrayList);
    }
}
