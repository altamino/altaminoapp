package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.Objects;

@zzard
/* loaded from: classes2.dex */
public final class zzasp extends zzass {
    private final String type;
    private final int zzdqm;

    public zzasp(String str, int i) {
        this.type = str;
        this.zzdqm = i;
    }

    @Override // com.google.android.gms.internal.ads.zzasr
    public final String getType() {
        return this.type;
    }

    @Override // com.google.android.gms.internal.ads.zzasr
    public final int getAmount() {
        return this.zzdqm;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof zzasp)) {
            zzasp zzaspVar = (zzasp) obj;
            if (Objects.equal(this.type, zzaspVar.type) && Objects.equal(Integer.valueOf(this.zzdqm), Integer.valueOf(zzaspVar.zzdqm))) {
                return true;
            }
        }
        return false;
    }
}
