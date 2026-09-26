package com.android.billingclient.api;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes8.dex */
public final class i {
    private String zza;

    public static final class a {
        private String zza;

        /* synthetic */ a(q0 q0Var) {
        }

        @NonNull
        public a b(@NonNull String str) {
            this.zza = str;
            return this;
        }

        @NonNull
        public i a() {
            String str = this.zza;
            if (str == null) {
                throw new IllegalArgumentException("Purchase token must be set");
            }
            i iVar = new i(null);
            iVar.zza = str;
            return iVar;
        }
    }

    /* synthetic */ i(r0 r0Var) {
    }

    @NonNull
    public static a b() {
        return new a(null);
    }

    @NonNull
    public String a() {
        return this.zza;
    }
}
