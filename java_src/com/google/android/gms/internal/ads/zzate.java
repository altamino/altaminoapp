package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.reward.RewardItem;

@zzard
/* loaded from: classes2.dex */
public final class zzate implements RewardItem {
    private final zzasr zzdqp;

    public zzate(zzasr zzasrVar) {
        this.zzdqp = zzasrVar;
    }

    @Override // com.google.android.gms.ads.reward.RewardItem
    public final String getType() {
        zzasr zzasrVar = this.zzdqp;
        if (zzasrVar == null) {
            return null;
        }
        try {
            return zzasrVar.getType();
        } catch (RemoteException e) {
            zzbad.zzd("Could not forward getType to RewardItem", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardItem
    public final int getAmount() {
        zzasr zzasrVar = this.zzdqp;
        if (zzasrVar == null) {
            return 0;
        }
        try {
            return zzasrVar.getAmount();
        } catch (RemoteException e) {
            zzbad.zzd("Could not forward getAmount to RewardItem", e);
            return 0;
        }
    }
}
