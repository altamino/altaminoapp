package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.RewardItem;

@zzard
/* loaded from: classes2.dex */
public final class zzauh implements RewardItem {
    private final zzatq zzdqw;

    public zzauh(zzatq zzatqVar) {
        this.zzdqw = zzatqVar;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public final String getType() {
        zzatq zzatqVar = this.zzdqw;
        if (zzatqVar == null) {
            return null;
        }
        try {
            return zzatqVar.getType();
        } catch (RemoteException e) {
            zzbad.zzd("Could not forward getType to RewardItem", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public final int getAmount() {
        zzatq zzatqVar = this.zzdqw;
        if (zzatqVar == null) {
            return 0;
        }
        try {
            return zzatqVar.getAmount();
        } catch (RemoteException e) {
            zzbad.zzd("Could not forward getAmount to RewardItem", e);
            return 0;
        }
    }
}
