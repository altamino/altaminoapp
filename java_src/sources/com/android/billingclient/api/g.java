package com.android.billingclient.api;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.play_billing.zzaf;
import com.google.android.gms.internal.play_billing.zzx;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class g {

    @NonNull
    public static final String EXTRA_PARAM_KEY_ACCOUNT_ID = "accountId";
    private boolean zza;
    private String zzb;
    private String zzc;
    private c zzd;
    private zzaf zze;
    private ArrayList zzf;
    private boolean zzg;

    public static class a {
        private String zza;
        private String zzb;
        private List zzc;
        private ArrayList zzd;
        private boolean zze;
        private c.a zzf;

        @NonNull
        public a b(@NonNull String str) {
            this.zza = str;
            return this;
        }

        @NonNull
        public g a() {
            ArrayList arrayList = this.zzd;
            boolean z6 = true;
            boolean z10 = (arrayList == null || arrayList.isEmpty()) ? false : true;
            List list = this.zzc;
            boolean z11 = (list == null || list.isEmpty()) ? false : true;
            if (!z10 && !z11) {
                throw new IllegalArgumentException("Details of the products must be provided.");
            }
            if (z10 && z11) {
                throw new IllegalArgumentException("Set SkuDetails or ProductDetailsParams, not both.");
            }
            l0 l0Var = null;
            if (!z10) {
                b bVar = (b) this.zzc.get(0);
                for (int i10 = 0; i10 < this.zzc.size(); i10++) {
                    b bVar2 = (b) this.zzc.get(i10);
                    if (bVar2 == null) {
                        throw new IllegalArgumentException("ProductDetailsParams cannot be null.");
                    }
                    if (i10 != 0 && !bVar2.b().c().equals(bVar.b().c()) && !bVar2.b().c().equals("play_pass_subs")) {
                        throw new IllegalArgumentException("All products should have same ProductType.");
                    }
                }
                String strE = bVar.b().e();
                for (b bVar3 : this.zzc) {
                    if (!bVar.b().c().equals("play_pass_subs") && !bVar3.b().c().equals("play_pass_subs") && !strE.equals(bVar3.b().e())) {
                        throw new IllegalArgumentException("All products must have the same package name.");
                    }
                }
            } else {
                if (this.zzd.contains(null)) {
                    throw new IllegalArgumentException("SKU cannot be null.");
                }
                if (this.zzd.size() > 1) {
                    SkuDetails skuDetails = (SkuDetails) this.zzd.get(0);
                    String strC = skuDetails.c();
                    ArrayList arrayList2 = this.zzd;
                    int size = arrayList2.size();
                    for (int i11 = 0; i11 < size; i11++) {
                        SkuDetails skuDetails2 = (SkuDetails) arrayList2.get(i11);
                        if (!strC.equals("play_pass_subs") && !skuDetails2.c().equals("play_pass_subs") && !strC.equals(skuDetails2.c())) {
                            throw new IllegalArgumentException("SKUs should have the same type.");
                        }
                    }
                    String strG = skuDetails.g();
                    ArrayList arrayList3 = this.zzd;
                    int size2 = arrayList3.size();
                    for (int i12 = 0; i12 < size2; i12++) {
                        SkuDetails skuDetails3 = (SkuDetails) arrayList3.get(i12);
                        if (!strC.equals("play_pass_subs") && !skuDetails3.c().equals("play_pass_subs") && !strG.equals(skuDetails3.g())) {
                            throw new IllegalArgumentException("All SKUs must have the same package name.");
                        }
                    }
                }
            }
            g gVar = new g(l0Var);
            if ((!z10 || ((SkuDetails) this.zzd.get(0)).g().isEmpty()) && (!z11 || ((b) this.zzc.get(0)).b().e().isEmpty())) {
                z6 = false;
            }
            gVar.zza = z6;
            gVar.zzb = this.zza;
            gVar.zzc = this.zzb;
            gVar.zzd = this.zzf.a();
            ArrayList arrayList4 = this.zzd;
            gVar.zzf = arrayList4 != null ? new ArrayList(arrayList4) : new ArrayList();
            gVar.zzg = this.zze;
            List list2 = this.zzc;
            gVar.zze = list2 != null ? zzaf.zzj(list2) : zzaf.zzk();
            return gVar;
        }

        @NonNull
        public a c(@NonNull List<b> list) {
            this.zzc = new ArrayList(list);
            return this;
        }

        @NonNull
        @Deprecated
        public a d(@NonNull SkuDetails skuDetails) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(skuDetails);
            this.zzd = arrayList;
            return this;
        }

        /* synthetic */ a(g0 g0Var) {
            c.a aVarA = c.a();
            c.a.b(aVarA);
            this.zzf = aVarA;
        }
    }

    public static final class b {
        private final l zza;
        private final String zzb;

        public static class a {
            private l zza;
            private String zzb;

            /* synthetic */ a(h0 h0Var) {
            }

            @NonNull
            public a b(@NonNull String str) {
                this.zzb = str;
                return this;
            }

            @NonNull
            public b a() {
                zzx.zzc(this.zza, "ProductDetails is required for constructing ProductDetailsParams.");
                zzx.zzc(this.zzb, "offerToken is required for constructing ProductDetailsParams.");
                return new b(this, null);
            }

            @NonNull
            public a c(@NonNull l lVar) {
                this.zza = lVar;
                if (lVar.a() != null) {
                    lVar.a().getClass();
                    this.zzb = lVar.a().a();
                }
                return this;
            }
        }

        /* synthetic */ b(a aVar, i0 i0Var) {
            this.zza = aVar.zza;
            this.zzb = aVar.zzb;
        }

        @NonNull
        public static a a() {
            return new a(null);
        }

        @NonNull
        public final l b() {
            return this.zza;
        }

        @NonNull
        public final String c() {
            return this.zzb;
        }
    }

    public static class c {
        private String zza;
        private String zzb;
        private int zzc = 0;
        private int zzd = 0;

        public static class a {
            private String zza;
            private String zzb;
            private boolean zzc;
            private int zzd = 0;
            private int zze = 0;

            /* synthetic */ a(j0 j0Var) {
            }

            static /* synthetic */ a b(a aVar) {
                aVar.zzc = true;
                return aVar;
            }

            @NonNull
            public c a() {
                k0 k0Var = null;
                boolean z6 = (TextUtils.isEmpty(this.zza) && TextUtils.isEmpty(null)) ? false : true;
                boolean zIsEmpty = true ^ TextUtils.isEmpty(this.zzb);
                if (z6 && zIsEmpty) {
                    throw new IllegalArgumentException("Please provide Old SKU purchase information(token/id) or original external transaction id, not both.");
                }
                if (!this.zzc && !z6 && !zIsEmpty) {
                    throw new IllegalArgumentException("Old SKU purchase information(token/id) or original external transaction id must be provided.");
                }
                c cVar = new c(k0Var);
                cVar.zza = this.zza;
                cVar.zzc = this.zzd;
                cVar.zzd = this.zze;
                cVar.zzb = this.zzb;
                return cVar;
            }
        }

        /* synthetic */ c(k0 k0Var) {
        }

        @NonNull
        public static a a() {
            return new a(null);
        }

        @Deprecated
        final int b() {
            return this.zzc;
        }

        final int c() {
            return this.zzd;
        }

        final String d() {
            return this.zza;
        }

        final String e() {
            return this.zzb;
        }
    }

    /* synthetic */ g(l0 l0Var) {
    }

    @Nullable
    public final String d() {
        return this.zzb;
    }

    @Nullable
    public final String e() {
        return this.zzc;
    }

    @NonNull
    public final List i() {
        return this.zze;
    }

    public final boolean q() {
        return this.zzg;
    }

    @NonNull
    public static a a() {
        return new a(null);
    }

    @Deprecated
    public final int b() {
        return this.zzd.b();
    }

    public final int c() {
        return this.zzd.c();
    }

    @Nullable
    public final String f() {
        return this.zzd.d();
    }

    @Nullable
    public final String g() {
        return this.zzd.e();
    }

    @NonNull
    public final ArrayList h() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.zzf);
        return arrayList;
    }

    final boolean r() {
        return (this.zzb == null && this.zzc == null && this.zzd.e() == null && this.zzd.b() == 0 && this.zzd.c() == 0 && !this.zza && !this.zzg) ? false : true;
    }
}
