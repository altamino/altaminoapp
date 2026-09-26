package com.android.billingclient.api;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public class s {
    private String zza;
    private List zzb;

    public static class a {
        private String zza;
        private List zzb;

        /* synthetic */ a(p1 p1Var) {
        }

        @NonNull
        public a c(@NonNull String str) {
            this.zza = str;
            return this;
        }

        @NonNull
        public s a() {
            String str = this.zza;
            if (str == null) {
                throw new IllegalArgumentException("SKU type must be set");
            }
            if (this.zzb == null) {
                throw new IllegalArgumentException("SKU list must be set");
            }
            s sVar = new s();
            sVar.zza = str;
            sVar.zzb = this.zzb;
            return sVar;
        }

        @NonNull
        public a b(@NonNull List<String> list) {
            this.zzb = new ArrayList(list);
            return this;
        }
    }

    @NonNull
    public static a c() {
        return new a(null);
    }

    @NonNull
    public String a() {
        return this.zza;
    }

    @NonNull
    public List<String> b() {
        return this.zzb;
    }
}
