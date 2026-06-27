package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;

/* loaded from: classes2.dex */
final class zzcho implements zzban<zzcxu> {
    private final /* synthetic */ zzchl zzfwz;

    zzcho(zzchl zzchlVar) {
        this.zzfwz = zzchlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final void zzb(Throwable th) {
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcwt)).booleanValue()) {
            Matcher matcher = zzchl.zzfwx.matcher(th.getMessage());
            if (matcher.matches()) {
                this.zzfwz.zzfww.zzdo(Integer.parseInt(matcher.group(1)));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final /* synthetic */ void zzk(zzcxu zzcxuVar) {
        zzcxu zzcxuVar2 = zzcxuVar;
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcwt)).booleanValue()) {
            this.zzfwz.zzfww.zzdo(zzcxuVar2.zzgky.zzgku.responseCode);
            this.zzfwz.zzfww.zzeu(zzcxuVar2.zzgky.zzgku.zzfyb);
        }
    }
}
