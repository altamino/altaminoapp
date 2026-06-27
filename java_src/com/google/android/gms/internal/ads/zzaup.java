package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.RewardItem;

/* loaded from: classes2.dex */
public final class zzaup extends zzatr {
    private final String type;
    private final int zzdqm;

    public zzaup(zzato zzatoVar) {
        this(zzatoVar != null ? zzatoVar.type : "", zzatoVar != null ? zzatoVar.zzdqm : 1);
    }

    public zzaup(RewardItem rewardItem) {
        this(rewardItem != null ? rewardItem.getType() : "", rewardItem != null ? rewardItem.getAmount() : 1);
    }

    public zzaup(String str, int i) {
        this.type = str;
        this.zzdqm = i;
    }

    @Override // com.google.android.gms.internal.ads.zzatq
    public final String getType() throws RemoteException {
        return this.type;
    }

    @Override // com.google.android.gms.internal.ads.zzatq
    public final int getAmount() throws RemoteException {
        return this.zzdqm;
    }
}
