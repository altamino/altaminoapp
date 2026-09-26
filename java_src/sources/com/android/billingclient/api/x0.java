package com.android.billingclient.api;

/* JADX INFO: loaded from: classes7.dex */
public final class x0 {
    private boolean zza;

    /* synthetic */ x0(w0 w0Var) {
    }

    public final x0 a() {
        this.zza = true;
        return this;
    }

    public final z0 b() {
        if (this.zza) {
            return new z0(true, false, null);
        }
        throw new IllegalArgumentException("Pending purchases for one-time products must be supported.");
    }
}
