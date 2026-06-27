package com.google.android.gms.internal.ads;

import android.content.Context;
import android.support.v4.util.SimpleArrayMap;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzccd extends zzaff {
    private final zzbyt zzfmq;
    private final zzbyn zzfpj;
    private final zzbzl zzfse;
    private final Context zzys;

    public zzccd(Context context, zzbyt zzbytVar, zzbzl zzbzlVar, zzbyn zzbynVar) {
        this.zzys = context;
        this.zzfmq = zzbytVar;
        this.zzfse = zzbzlVar;
        this.zzfpj = zzbynVar;
    }

    @Override // com.google.android.gms.internal.ads.zzafe
    public final IObjectWrapper zzrh() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzafe
    public final String zzcj(String str) {
        return this.zzfmq.zzaid().get(str);
    }

    @Override // com.google.android.gms.internal.ads.zzafe
    public final zzaei zzck(String str) {
        return this.zzfmq.zzaic().get(str);
    }

    @Override // com.google.android.gms.internal.ads.zzafe
    public final List<String> getAvailableAssetNames() {
        SimpleArrayMap<String, zzadw> simpleArrayMapZzaic = this.zzfmq.zzaic();
        SimpleArrayMap<String, String> simpleArrayMapZzaid = this.zzfmq.zzaid();
        String[] strArr = new String[simpleArrayMapZzaic.size() + simpleArrayMapZzaid.size()];
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i2 < simpleArrayMapZzaic.size()) {
            strArr[i3] = simpleArrayMapZzaic.keyAt(i2);
            i2++;
            i3++;
        }
        while (i < simpleArrayMapZzaid.size()) {
            strArr[i3] = simpleArrayMapZzaid.keyAt(i);
            i++;
            i3++;
        }
        return Arrays.asList(strArr);
    }

    @Override // com.google.android.gms.internal.ads.zzafe
    public final String getCustomTemplateId() {
        return this.zzfmq.getCustomTemplateId();
    }

    @Override // com.google.android.gms.internal.ads.zzafe
    public final void performClick(String str) {
        this.zzfpj.zzfi(str);
    }

    @Override // com.google.android.gms.internal.ads.zzafe
    public final void recordImpression() {
        this.zzfpj.zzahk();
    }

    @Override // com.google.android.gms.internal.ads.zzafe
    public final zzaar getVideoController() {
        return this.zzfmq.getVideoController();
    }

    @Override // com.google.android.gms.internal.ads.zzafe
    public final void destroy() {
        this.zzfpj.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzafe
    public final IObjectWrapper zzrm() {
        return ObjectWrapper.wrap(this.zzys);
    }

    @Override // com.google.android.gms.internal.ads.zzafe
    public final boolean zzp(IObjectWrapper iObjectWrapper) {
        Object objUnwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if (!(objUnwrap instanceof ViewGroup) || !this.zzfse.zza((ViewGroup) objUnwrap)) {
            return false;
        }
        this.zzfmq.zzahz().zza(new zzcce(this));
        return true;
    }
}
