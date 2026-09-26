package com.android.billingclient.api;

import androidx.annotation.NonNull;
import com.google.android.gms.internal.play_billing.zzaf;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public final class q {
    private final zzaf zza;

    public static class a {
        private zzaf zza;

        /* synthetic */ a(j1 j1Var) {
        }

        @NonNull
        public q a() {
            return new q(this, null);
        }

        @NonNull
        public a b(@NonNull List<b> list) {
            if (list == null || list.isEmpty()) {
                throw new IllegalArgumentException("Product list cannot be empty.");
            }
            HashSet hashSet = new HashSet();
            for (b bVar : list) {
                if (!"play_pass_subs".equals(bVar.c())) {
                    hashSet.add(bVar.c());
                }
            }
            if (hashSet.size() > 1) {
                throw new IllegalArgumentException("All products should be of the same product type.");
            }
            this.zza = zzaf.zzj(list);
            return this;
        }
    }

    public static class b {
        private final String zza;
        private final String zzb;

        public static class a {
            private String zza;
            private String zzb;

            /* synthetic */ a(k1 k1Var) {
            }

            @NonNull
            public a b(@NonNull String str) {
                this.zza = str;
                return this;
            }

            @NonNull
            public a c(@NonNull String str) {
                this.zzb = str;
                return this;
            }

            @NonNull
            public b a() {
                if ("first_party".equals(this.zzb)) {
                    throw new IllegalArgumentException("Serialized doc id must be provided for first party products.");
                }
                if (this.zza == null) {
                    throw new IllegalArgumentException("Product id must be provided.");
                }
                if (this.zzb != null) {
                    return new b(this, null);
                }
                throw new IllegalArgumentException("Product type must be provided.");
            }
        }

        /* synthetic */ b(a aVar, l1 l1Var) {
            this.zza = aVar.zza;
            this.zzb = aVar.zzb;
        }

        @NonNull
        public static a a() {
            return new a(null);
        }

        @NonNull
        public final String b() {
            return this.zza;
        }

        @NonNull
        public final String c() {
            return this.zzb;
        }
    }

    /* synthetic */ q(a aVar, m1 m1Var) {
        this.zza = aVar.zza;
    }

    @NonNull
    public static a a() {
        return new a(null);
    }

    public final zzaf b() {
        return this.zza;
    }

    @NonNull
    public final String c() {
        return ((b) this.zza.get(0)).c();
    }
}
