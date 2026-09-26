package com.android.billingclient.api;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes3.dex */
public final class b {
    private String zza;

    public static final class a {
        private String zza;

        /* synthetic */ a(v vVar) {
        }

        @NonNull
        public a b(@NonNull String str) {
            this.zza = str;
            return this;
        }

        @NonNull
        public b a() {
            String str = this.zza;
            if (str == null) {
                throw new IllegalArgumentException("Purchase token must be set");
            }
            b bVar = new b(null);
            bVar.zza = str;
            return bVar;
        }
    }

    /* synthetic */ b(f0 f0Var) {
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
