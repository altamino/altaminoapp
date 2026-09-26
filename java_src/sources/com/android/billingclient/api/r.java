package com.android.billingclient.api;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes8.dex */
public final class r {
    private final String zza;

    public static class a {
        private String zza;

        /* synthetic */ a(n1 n1Var) {
        }

        @NonNull
        public a b(@NonNull String str) {
            this.zza = str;
            return this;
        }

        @NonNull
        public r a() {
            if (this.zza != null) {
                return new r(this, null);
            }
            throw new IllegalArgumentException("Product type must be set");
        }
    }

    /* synthetic */ r(a aVar, o1 o1Var) {
        this.zza = aVar.zza;
    }

    @NonNull
    public static a a() {
        return new a(null);
    }

    @NonNull
    public final String b() {
        return this.zza;
    }
}
