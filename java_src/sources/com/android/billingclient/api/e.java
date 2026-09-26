package com.android.billingclient.api;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.AnyThread;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.play_billing.zzaf;
import com.google.android.gms.internal.play_billing.zzak;
import com.google.android.gms.internal.play_billing.zzb;
import com.google.android.gms.internal.play_billing.zzin;
import com.google.android.gms.internal.play_billing.zzio;
import com.google.android.gms.internal.play_billing.zzm;
import com.google.android.gms.internal.play_billing.zzx;
import com.safedk.android.analytics.brandsafety.BrandSafetyUtils;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;

/* JADX INFO: loaded from: classes8.dex */
class e extends BillingClient {
    private ExecutorService zzA;
    private volatile int zza;
    private final String zzb;
    private final Handler zzc;

    @Nullable
    private volatile t1 zzd;
    private Context zze;
    private n0 zzf;
    private volatile zzm zzg;
    private volatile e0 zzh;
    private boolean zzi;
    private boolean zzj;
    private int zzk;
    private boolean zzl;
    private boolean zzm;
    private boolean zzn;
    private boolean zzo;
    private boolean zzp;
    private boolean zzq;
    private boolean zzr;
    private boolean zzs;
    private boolean zzt;
    private boolean zzu;
    private boolean zzv;
    private boolean zzw;
    private boolean zzx;

    @Nullable
    private z0 zzy;
    private boolean zzz;

    @AnyThread
    e(@Nullable String str, Context context, @Nullable n0 n0Var, @Nullable ExecutorService executorService) {
        this.zza = 0;
        this.zzc = new Handler(Looper.getMainLooper());
        this.zzk = 0;
        String strI = I();
        this.zzb = strI;
        this.zze = context.getApplicationContext();
        zzin zzinVarZzv = zzio.zzv();
        zzinVarZzv.zzj(strI);
        zzinVarZzv.zzi(this.zze.getPackageName());
        this.zzf = new s0(this.zze, (zzio) zzinVarZzv.zzc());
        this.zze.getPackageName();
    }

    public static void safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(Activity p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        BrandSafetyUtils.detectAdClick(p1, "com.android.billingclient");
        p0.startActivity(p1);
    }

    @Override // com.android.billingclient.api.BillingClient
    public final boolean d() {
        return (this.zza != 2 || this.zzg == null || this.zzh == null) ? false : true;
    }

    static /* synthetic */ g1 D(e eVar, String str, int i10) {
        Bundle bundleZzi;
        zzb.zzj("BillingClient", "Querying owned items, item type: ".concat(String.valueOf(str)));
        ArrayList arrayList = new ArrayList();
        boolean z6 = true;
        int i11 = 0;
        Bundle bundleZzd = zzb.zzd(eVar.zzn, eVar.zzv, true, false, eVar.zzb);
        List list = null;
        String string = null;
        while (true) {
            try {
                if (eVar.zzn) {
                    bundleZzi = eVar.zzg.zzj(z6 != eVar.zzv ? 9 : 19, eVar.zze.getPackageName(), str, string, bundleZzd);
                } else {
                    bundleZzi = eVar.zzg.zzi(3, eVar.zze.getPackageName(), str, string);
                }
                h1 h1VarA = i1.a(bundleZzi, "BillingClient", "getPurchase()");
                h hVarA = h1VarA.a();
                if (hVarA != p0.zzl) {
                    eVar.zzf.a(m0.a(h1VarA.b(), 9, hVarA));
                    return new g1(hVarA, list);
                }
                ArrayList<String> stringArrayList = bundleZzi.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                ArrayList<String> stringArrayList2 = bundleZzi.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                ArrayList<String> stringArrayList3 = bundleZzi.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                int i12 = i11;
                int i13 = i12;
                while (i12 < stringArrayList2.size()) {
                    String str2 = stringArrayList2.get(i12);
                    String str3 = stringArrayList3.get(i12);
                    zzb.zzj("BillingClient", "Sku is owned: ".concat(String.valueOf(stringArrayList.get(i12))));
                    try {
                        Purchase purchase = new Purchase(str2, str3);
                        if (TextUtils.isEmpty(purchase.h())) {
                            zzb.zzk("BillingClient", "BUG: empty/null token!");
                            i13 = 1;
                        }
                        arrayList.add(purchase);
                        i12++;
                    } catch (JSONException e) {
                        zzb.zzl("BillingClient", "Got an exception trying to decode the purchase!", e);
                        n0 n0Var = eVar.zzf;
                        h hVar = p0.zzj;
                        n0Var.a(m0.a(51, 9, hVar));
                        return new g1(hVar, null);
                    }
                }
                if (i13 != 0) {
                    eVar.zzf.a(m0.a(26, 9, p0.zzj));
                }
                string = bundleZzi.getString("INAPP_CONTINUATION_TOKEN");
                zzb.zzj("BillingClient", "Continuation token: ".concat(String.valueOf(string)));
                if (TextUtils.isEmpty(string)) {
                    return new g1(p0.zzl, arrayList);
                }
                list = null;
                z6 = true;
                i11 = 0;
            } catch (Exception e2) {
                n0 n0Var2 = eVar.zzf;
                h hVar2 = p0.zzm;
                n0Var2.a(m0.a(52, 9, hVar2));
                zzb.zzl("BillingClient", "Got exception trying to get purchasesm try to reconnect", e2);
                return new g1(hVar2, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final h H() {
        return (this.zza == 0 || this.zza == 3) ? p0.zzm : p0.zzj;
    }

    @SuppressLint({"PrivateApi"})
    private static String I() {
        try {
            return (String) Class.forName("com.android.billingclient.ktx.BuildConfig").getField("VERSION_NAME").get(null);
        } catch (Exception unused) {
            return "6.1.0";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public final Future J(Callable callable, long j6, @Nullable final Runnable runnable, Handler handler) {
        if (this.zzA == null) {
            this.zzA = Executors.newFixedThreadPool(zzb.zza, new z(this));
        }
        try {
            final Future futureSubmit = this.zzA.submit(callable);
            handler.postDelayed(new Runnable() { // from class: com.android.billingclient.api.x1
                @Override // java.lang.Runnable
                public final void run() {
                    Future future = futureSubmit;
                    if (future.isDone() || future.isCancelled()) {
                        return;
                    }
                    Runnable runnable2 = runnable;
                    future.cancel(true);
                    zzb.zzk("BillingClient", "Async task is taking too long, cancel it!");
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                }
            }, (long) (j6 * 0.95d));
            return futureSubmit;
        } catch (Exception e) {
            zzb.zzl("BillingClient", "Async task throws exception!", e);
            return null;
        }
    }

    final /* synthetic */ void A(m mVar) {
        n0 n0Var = this.zzf;
        h hVar = p0.zzn;
        n0Var.a(m0.a(24, 7, hVar));
        mVar.a(hVar, new ArrayList());
    }

    final /* synthetic */ void B(o oVar) {
        n0 n0Var = this.zzf;
        h hVar = p0.zzn;
        n0Var.a(m0.a(24, 9, hVar));
        oVar.a(hVar, zzaf.zzk());
    }

    final /* synthetic */ void C(t tVar) {
        n0 n0Var = this.zzf;
        h hVar = p0.zzn;
        n0Var.a(m0.a(24, 8, hVar));
        tVar.a(hVar, null);
    }

    final /* synthetic */ Bundle M(int i10, String str, String str2, g gVar, Bundle bundle) throws Exception {
        return this.zzg.zzg(i10, this.zze.getPackageName(), str, str2, null, bundle);
    }

    final /* synthetic */ Bundle N(String str, String str2) throws Exception {
        return this.zzg.zzf(3, this.zze.getPackageName(), str, str2, null);
    }

    final /* synthetic */ Object T(b bVar, c cVar) throws Exception {
        try {
            zzm zzmVar = this.zzg;
            String packageName = this.zze.getPackageName();
            String strA = bVar.a();
            String str = this.zzb;
            Bundle bundle = new Bundle();
            bundle.putString("playBillingLibraryVersion", str);
            Bundle bundleZzd = zzmVar.zzd(9, packageName, strA, bundle);
            cVar.a(p0.a(zzb.zzb(bundleZzd, "BillingClient"), zzb.zzg(bundleZzd, "BillingClient")));
            return null;
        } catch (Exception e) {
            zzb.zzl("BillingClient", "Error acknowledge purchase!", e);
            n0 n0Var = this.zzf;
            h hVar = p0.zzm;
            n0Var.a(m0.a(28, 3, hVar));
            cVar.a(hVar);
            return null;
        }
    }

    final /* synthetic */ Object U(i iVar, j jVar) throws Exception {
        int iZza;
        String strZzg;
        String strA = iVar.a();
        try {
            zzb.zzj("BillingClient", "Consuming purchase with token: " + strA);
            if (this.zzn) {
                zzm zzmVar = this.zzg;
                String packageName = this.zze.getPackageName();
                boolean z6 = this.zzn;
                String str = this.zzb;
                Bundle bundle = new Bundle();
                if (z6) {
                    bundle.putString("playBillingLibraryVersion", str);
                }
                Bundle bundleZze = zzmVar.zze(9, packageName, strA, bundle);
                iZza = bundleZze.getInt("RESPONSE_CODE");
                strZzg = zzb.zzg(bundleZze, "BillingClient");
            } else {
                iZza = this.zzg.zza(3, this.zze.getPackageName(), strA);
                strZzg = "";
            }
            h hVarA = p0.a(iZza, strZzg);
            if (iZza == 0) {
                zzb.zzj("BillingClient", "Successfully consumed purchase.");
                jVar.a(hVarA, strA);
                return null;
            }
            zzb.zzk("BillingClient", "Error consuming purchase with token. Response code: " + iZza);
            this.zzf.a(m0.a(23, 4, hVarA));
            jVar.a(hVarA, strA);
            return null;
        } catch (Exception e) {
            zzb.zzl("BillingClient", "Error consuming purchase!", e);
            n0 n0Var = this.zzf;
            h hVar = p0.zzm;
            n0Var.a(m0.a(29, 4, hVar));
            jVar.a(hVar, strA);
            return null;
        }
    }

    final /* synthetic */ Object V(q qVar, m mVar) throws Exception {
        String strZzg;
        int iZzb;
        int i10;
        int i11;
        ArrayList arrayList = new ArrayList();
        String strC = qVar.c();
        zzaf zzafVarB = qVar.b();
        int size = zzafVarB.size();
        int i12 = 0;
        while (true) {
            if (i12 >= size) {
                strZzg = "";
                iZzb = 0;
                break;
            }
            int i13 = i12 + 20;
            ArrayList arrayList2 = new ArrayList(zzafVarB.subList(i12, i13 > size ? size : i13));
            ArrayList<String> arrayList3 = new ArrayList<>();
            int size2 = arrayList2.size();
            for (int i14 = 0; i14 < size2; i14++) {
                arrayList3.add(((q.b) arrayList2.get(i14)).b());
            }
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("ITEM_ID_LIST", arrayList3);
            bundle.putString("playBillingLibraryVersion", this.zzb);
            try {
                zzm zzmVar = this.zzg;
                int i15 = true != this.zzw ? 17 : 20;
                String packageName = this.zze.getPackageName();
                String str = this.zzb;
                if (TextUtils.isEmpty(null)) {
                    this.zze.getPackageName();
                }
                Bundle bundle2 = new Bundle();
                bundle2.putString("playBillingLibraryVersion", str);
                bundle2.putBoolean("enablePendingPurchases", true);
                bundle2.putString("SKU_DETAILS_RESPONSE_FORMAT", "PRODUCT_DETAILS");
                ArrayList<String> arrayList4 = new ArrayList<>();
                ArrayList<String> arrayList5 = new ArrayList<>();
                int size3 = arrayList2.size();
                zzaf zzafVar = zzafVarB;
                int i16 = 0;
                boolean z6 = false;
                boolean z10 = false;
                while (i16 < size3) {
                    q.b bVar = (q.b) arrayList2.get(i16);
                    ArrayList arrayList6 = arrayList2;
                    arrayList4.add(null);
                    z6 |= !TextUtils.isEmpty(null);
                    String strC2 = bVar.c();
                    int i17 = size3;
                    if (strC2.equals("first_party")) {
                        zzx.zzc(null, "Serialized DocId is required for constructing ExtraParams to query ProductDetails for all first party products.");
                        arrayList5.add(null);
                        z10 = true;
                    }
                    i16++;
                    size3 = i17;
                    arrayList2 = arrayList6;
                }
                if (z6) {
                    bundle2.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList4);
                }
                if (!arrayList5.isEmpty()) {
                    bundle2.putStringArrayList("SKU_SERIALIZED_DOCID_LIST", arrayList5);
                }
                if (z10 && !TextUtils.isEmpty(null)) {
                    bundle2.putString("accountName", null);
                }
                i11 = 7;
                try {
                    Bundle bundleZzl = zzmVar.zzl(i15, packageName, strC, bundle, bundle2);
                    strZzg = "Item is unavailable for purchase.";
                    if (bundleZzl == null) {
                        zzb.zzk("BillingClient", "queryProductDetailsAsync got empty product details response.");
                        this.zzf.a(m0.a(44, 7, p0.zzB));
                    } else {
                        if (!bundleZzl.containsKey("DETAILS_LIST")) {
                            iZzb = zzb.zzb(bundleZzl, "BillingClient");
                            strZzg = zzb.zzg(bundleZzl, "BillingClient");
                            if (iZzb == 0) {
                                zzb.zzk("BillingClient", "getSkuDetails() returned a bundle with neither an error nor a product detail list for queryProductDetailsAsync.");
                                this.zzf.a(m0.a(45, 7, p0.a(6, strZzg)));
                                iZzb = 6;
                                break;
                            }
                            zzb.zzk("BillingClient", "getSkuDetails() failed for queryProductDetailsAsync. Response code: " + iZzb);
                            this.zzf.a(m0.a(23, 7, p0.a(iZzb, strZzg)));
                            break;
                        }
                        ArrayList<String> stringArrayList = bundleZzl.getStringArrayList("DETAILS_LIST");
                        if (stringArrayList == null) {
                            zzb.zzk("BillingClient", "queryProductDetailsAsync got null response list");
                            this.zzf.a(m0.a(46, 7, p0.zzB));
                        } else {
                            for (int i18 = 0; i18 < stringArrayList.size(); i18++) {
                                try {
                                    l lVar = new l(stringArrayList.get(i18));
                                    zzb.zzj("BillingClient", "Got product details: ".concat(lVar.toString()));
                                    arrayList.add(lVar);
                                } catch (JSONException e) {
                                    zzb.zzl("BillingClient", "Got a JSON exception trying to decode ProductDetails. \n Exception: ", e);
                                    strZzg = "Error trying to decode SkuDetails.";
                                    i10 = 6;
                                    this.zzf.a(m0.a(47, 7, p0.a(6, "Error trying to decode SkuDetails.")));
                                    iZzb = i10;
                                    mVar.a(p0.a(iZzb, strZzg), arrayList);
                                    return null;
                                }
                            }
                            i12 = i13;
                            zzafVarB = zzafVar;
                        }
                    }
                    iZzb = 4;
                    break;
                } catch (Exception e2) {
                    e = e2;
                    i10 = 6;
                    zzb.zzl("BillingClient", "queryProductDetailsAsync got a remote exception (try to reconnect).", e);
                    this.zzf.a(m0.a(43, i11, p0.zzj));
                    strZzg = "An internal error occurred.";
                    iZzb = i10;
                    mVar.a(p0.a(iZzb, strZzg), arrayList);
                    return null;
                }
            } catch (Exception e6) {
                e = e6;
                i10 = 6;
                i11 = 7;
            }
        }
        mVar.a(p0.a(iZzb, strZzg), arrayList);
        return null;
    }

    final /* synthetic */ Object W(String str, List list, String str2, t tVar) throws Exception {
        String strZzg;
        int i10;
        Bundle bundleZzk;
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        int i11 = 0;
        while (true) {
            if (i11 >= size) {
                strZzg = "";
                i10 = 0;
                break;
            }
            int i12 = i11 + 20;
            ArrayList<String> arrayList2 = new ArrayList<>(list.subList(i11, i12 > size ? size : i12));
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("ITEM_ID_LIST", arrayList2);
            bundle.putString("playBillingLibraryVersion", this.zzb);
            try {
                if (this.zzo) {
                    zzm zzmVar = this.zzg;
                    String packageName = this.zze.getPackageName();
                    int i13 = this.zzk;
                    String str3 = this.zzb;
                    Bundle bundle2 = new Bundle();
                    if (i13 >= 9) {
                        bundle2.putString("playBillingLibraryVersion", str3);
                    }
                    if (i13 >= 9) {
                        bundle2.putBoolean("enablePendingPurchases", true);
                    }
                    bundleZzk = zzmVar.zzl(10, packageName, str, bundle, bundle2);
                } else {
                    bundleZzk = this.zzg.zzk(3, this.zze.getPackageName(), str, bundle);
                }
                strZzg = "Item is unavailable for purchase.";
                if (bundleZzk != null) {
                    if (bundleZzk.containsKey("DETAILS_LIST")) {
                        ArrayList<String> stringArrayList = bundleZzk.getStringArrayList("DETAILS_LIST");
                        if (stringArrayList == null) {
                            zzb.zzk("BillingClient", "querySkuDetailsAsync got null response list");
                            this.zzf.a(m0.a(46, 8, p0.zzB));
                        } else {
                            for (int i14 = 0; i14 < stringArrayList.size(); i14++) {
                                try {
                                    SkuDetails skuDetails = new SkuDetails(stringArrayList.get(i14));
                                    zzb.zzj("BillingClient", "Got sku details: ".concat(skuDetails.toString()));
                                    arrayList.add(skuDetails);
                                } catch (JSONException e) {
                                    zzb.zzl("BillingClient", "Got a JSON exception trying to decode SkuDetails.", e);
                                    strZzg = "Error trying to decode SkuDetails.";
                                    this.zzf.a(m0.a(47, 8, p0.a(6, "Error trying to decode SkuDetails.")));
                                    arrayList = null;
                                }
                            }
                            i11 = i12;
                        }
                    } else {
                        int iZzb = zzb.zzb(bundleZzk, "BillingClient");
                        strZzg = zzb.zzg(bundleZzk, "BillingClient");
                        if (iZzb != 0) {
                            zzb.zzk("BillingClient", "getSkuDetails() failed. Response code: " + iZzb);
                            this.zzf.a(m0.a(23, 8, p0.a(iZzb, strZzg)));
                            i10 = iZzb;
                            break;
                        }
                        zzb.zzk("BillingClient", "getSkuDetails() returned a bundle with neither an error nor a detail list.");
                        this.zzf.a(m0.a(45, 8, p0.a(6, strZzg)));
                    }
                    i10 = 6;
                    break;
                }
                zzb.zzk("BillingClient", "querySkuDetailsAsync got null sku details list");
                this.zzf.a(m0.a(44, 8, p0.zzB));
                arrayList = null;
                i10 = 4;
                break;
            } catch (Exception e2) {
                zzb.zzl("BillingClient", "querySkuDetailsAsync got a remote exception (try to reconnect).", e2);
                this.zzf.a(m0.a(43, 8, p0.zzm));
                strZzg = "Service connection is disconnected.";
                i10 = -1;
                arrayList = null;
            }
        }
        tVar.a(p0.a(i10, strZzg), arrayList);
        return null;
    }

    @Override // com.android.billingclient.api.BillingClient
    public final void c() {
        this.zzf.c(m0.b(12));
        try {
            try {
                if (this.zzd != null) {
                    this.zzd.e();
                }
                if (this.zzh != null) {
                    this.zzh.o();
                }
                if (this.zzh != null && this.zzg != null) {
                    zzb.zzj("BillingClient", "Unbinding from service.");
                    this.zze.unbindService(this.zzh);
                    this.zzh = null;
                }
                this.zzg = null;
                ExecutorService executorService = this.zzA;
                if (executorService != null) {
                    executorService.shutdownNow();
                    this.zzA = null;
                }
            } catch (Exception e) {
                zzb.zzl("BillingClient", "There was an exception while ending connection!", e);
            }
        } finally {
            this.zza = 3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:152:0x03e2  */
    /* JADX WARN: Code duplicated, block: B:155:0x03ed  */
    /* JADX WARN: Code duplicated, block: B:156:0x03f5  */
    /* JADX WARN: Code duplicated, block: B:158:0x0403  */
    /* JADX WARN: Code duplicated, block: B:171:0x0436  */
    /* JADX WARN: Code duplicated, block: B:173:0x043a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:175:0x043f  */
    /* JADX WARN: Code duplicated, block: B:177:0x0443  */
    /* JADX WARN: Code duplicated, block: B:178:0x0446  */
    @Override // com.android.billingclient.api.BillingClient
    public final h e(Activity activity, final g gVar) {
        final String strB;
        final String strC;
        String str;
        Future futureJ;
        int i10;
        boolean z6;
        String str2;
        SkuDetails skuDetails;
        g.b bVar;
        String str3;
        String str4;
        String str5;
        boolean z10;
        Intent intent;
        String str6;
        int i11;
        final int i12;
        final e eVar = this;
        if (eVar.zzd == null || eVar.zzd.d() == null) {
            n0 n0Var = eVar.zzf;
            h hVar = p0.zzE;
            n0Var.a(m0.a(12, 2, hVar));
            return hVar;
        }
        if (!d()) {
            n0 n0Var2 = eVar.zzf;
            h hVar2 = p0.zzm;
            n0Var2.a(m0.a(2, 2, hVar2));
            eVar.F(hVar2);
            return hVar2;
        }
        ArrayList<SkuDetails> arrayListH = gVar.h();
        List listI = gVar.i();
        SkuDetails skuDetails2 = (SkuDetails) zzak.zza(arrayListH, null);
        g.b bVar2 = (g.b) zzak.zza(listI, null);
        if (skuDetails2 != null) {
            strB = skuDetails2.b();
            strC = skuDetails2.c();
        } else {
            strB = bVar2.b().b();
            strC = bVar2.b().c();
        }
        if (strC.equals("subs") && !eVar.zzi) {
            zzb.zzk("BillingClient", "Current client doesn't support subscriptions.");
            n0 n0Var3 = eVar.zzf;
            h hVar3 = p0.zzo;
            n0Var3.a(m0.a(9, 2, hVar3));
            eVar.F(hVar3);
            return hVar3;
        }
        if (gVar.r() && !eVar.zzl) {
            zzb.zzk("BillingClient", "Current client doesn't support extra params for buy intent.");
            n0 n0Var4 = eVar.zzf;
            h hVar4 = p0.zzh;
            n0Var4.a(m0.a(18, 2, hVar4));
            eVar.F(hVar4);
            return hVar4;
        }
        if (arrayListH.size() > 1 && !eVar.zzs) {
            zzb.zzk("BillingClient", "Current client doesn't support multi-item purchases.");
            n0 n0Var5 = eVar.zzf;
            h hVar5 = p0.zzt;
            n0Var5.a(m0.a(19, 2, hVar5));
            eVar.F(hVar5);
            return hVar5;
        }
        if (!listI.isEmpty() && !eVar.zzt) {
            zzb.zzk("BillingClient", "Current client doesn't support purchases with ProductDetails.");
            n0 n0Var6 = eVar.zzf;
            h hVar6 = p0.zzv;
            n0Var6.a(m0.a(20, 2, hVar6));
            eVar.F(hVar6);
            return hVar6;
        }
        if (eVar.zzl) {
            boolean z11 = eVar.zzn;
            boolean z12 = eVar.zzz;
            String str7 = eVar.zzb;
            final Bundle bundle = new Bundle();
            bundle.putString("playBillingLibraryVersion", str7);
            if (gVar.c() != 0) {
                bundle.putInt("prorationMode", gVar.c());
            } else if (gVar.b() != 0) {
                bundle.putInt("prorationMode", gVar.b());
            }
            if (!TextUtils.isEmpty(gVar.d())) {
                bundle.putString(g.EXTRA_PARAM_KEY_ACCOUNT_ID, gVar.d());
            }
            if (!TextUtils.isEmpty(gVar.e())) {
                bundle.putString("obfuscatedProfileId", gVar.e());
            }
            if (gVar.q()) {
                bundle.putBoolean("isOfferPersonalizedByDeveloper", true);
            }
            if (!TextUtils.isEmpty(null)) {
                bundle.putStringArrayList("skusToReplace", new ArrayList<>(Arrays.asList(null)));
            }
            if (!TextUtils.isEmpty(gVar.f())) {
                bundle.putString("oldSkuPurchaseToken", gVar.f());
            }
            String str8 = null;
            if (!TextUtils.isEmpty(null)) {
                bundle.putString("oldSkuPurchaseId", null);
            }
            if (!TextUtils.isEmpty(gVar.g())) {
                bundle.putString("originalExternalTransactionId", gVar.g());
                str8 = null;
            }
            if (!TextUtils.isEmpty(str8)) {
                bundle.putString("paymentsPurchaseParams", str8);
            }
            if (z11) {
                z6 = true;
                bundle.putBoolean("enablePendingPurchases", true);
            } else {
                z6 = true;
            }
            if (z12) {
                bundle.putBoolean("enableAlternativeBilling", z6);
            }
            final String str9 = strC;
            if (arrayListH.isEmpty()) {
                str2 = "proxyPackageVersion";
                skuDetails = skuDetails2;
                bVar = bVar2;
                str3 = strB;
                str4 = "BillingClient";
                ArrayList<String> arrayList = new ArrayList<>(listI.size() - 1);
                ArrayList<String> arrayList2 = new ArrayList<>(listI.size() - 1);
                ArrayList<String> arrayList3 = new ArrayList<>();
                ArrayList<String> arrayList4 = new ArrayList<>();
                ArrayList<String> arrayList5 = new ArrayList<>();
                for (int i13 = 0; i13 < listI.size(); i13++) {
                    g.b bVar3 = (g.b) listI.get(i13);
                    l lVarB = bVar3.b();
                    if (!lVarB.f().isEmpty()) {
                        arrayList3.add(lVarB.f());
                    }
                    arrayList4.add(bVar3.c());
                    if (!TextUtils.isEmpty(lVarB.g())) {
                        arrayList5.add(lVarB.g());
                    }
                    if (i13 > 0) {
                        arrayList.add(((g.b) listI.get(i13)).b().b());
                        arrayList2.add(((g.b) listI.get(i13)).b().c());
                    }
                }
                bundle.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList4);
                if (!arrayList3.isEmpty()) {
                    bundle.putStringArrayList("skuDetailsTokens", arrayList3);
                }
                if (!arrayList5.isEmpty()) {
                    bundle.putStringArrayList("SKU_SERIALIZED_DOCID_LIST", arrayList5);
                }
                if (!arrayList.isEmpty()) {
                    bundle.putStringArrayList("additionalSkus", arrayList);
                    bundle.putStringArrayList("additionalSkuTypes", arrayList2);
                }
            } else {
                ArrayList<String> arrayList6 = new ArrayList<>();
                ArrayList<String> arrayList7 = new ArrayList<>();
                str3 = strB;
                ArrayList<String> arrayList8 = new ArrayList<>();
                str2 = "proxyPackageVersion";
                ArrayList<Integer> arrayList9 = new ArrayList<>();
                str4 = "BillingClient";
                ArrayList<String> arrayList10 = new ArrayList<>();
                boolean z13 = false;
                boolean z14 = false;
                boolean z15 = false;
                boolean z16 = false;
                for (SkuDetails skuDetails3 : arrayListH) {
                    if (!skuDetails3.i().isEmpty()) {
                        arrayList6.add(skuDetails3.i());
                    }
                    String strF = skuDetails3.f();
                    SkuDetails skuDetails4 = skuDetails2;
                    String strE = skuDetails3.e();
                    int iD = skuDetails3.d();
                    String strH = skuDetails3.h();
                    arrayList7.add(strF);
                    z13 |= !TextUtils.isEmpty(strF);
                    arrayList8.add(strE);
                    z14 |= !TextUtils.isEmpty(strE);
                    arrayList9.add(Integer.valueOf(iD));
                    z15 |= iD != 0;
                    z16 |= !TextUtils.isEmpty(strH);
                    arrayList10.add(strH);
                    bVar2 = bVar2;
                    skuDetails2 = skuDetails4;
                }
                skuDetails = skuDetails2;
                bVar = bVar2;
                if (!arrayList6.isEmpty()) {
                    bundle.putStringArrayList("skuDetailsTokens", arrayList6);
                }
                if (z13) {
                    bundle.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList7);
                }
                if (z14) {
                    bundle.putStringArrayList("SKU_OFFER_ID_LIST", arrayList8);
                }
                if (z15) {
                    bundle.putIntegerArrayList("SKU_OFFER_TYPE_LIST", arrayList9);
                }
                if (z16) {
                    bundle.putStringArrayList("SKU_SERIALIZED_DOCID_LIST", arrayList10);
                }
                if (arrayListH.size() > 1) {
                    ArrayList<String> arrayList11 = new ArrayList<>(arrayListH.size() - 1);
                    ArrayList<String> arrayList12 = new ArrayList<>(arrayListH.size() - 1);
                    for (int i14 = 1; i14 < arrayListH.size(); i14++) {
                        arrayList11.add(((SkuDetails) arrayListH.get(i14)).b());
                        arrayList12.add(((SkuDetails) arrayListH.get(i14)).c());
                    }
                    bundle.putStringArrayList("additionalSkus", arrayList11);
                    bundle.putStringArrayList("additionalSkuTypes", arrayList12);
                }
            }
            eVar = this;
            if (bundle.containsKey("SKU_OFFER_ID_TOKEN_LIST") && !eVar.zzq) {
                n0 n0Var7 = eVar.zzf;
                h hVar7 = p0.zzu;
                n0Var7.a(m0.a(21, 2, hVar7));
                eVar.F(hVar7);
                return hVar7;
            }
            if (skuDetails == null || TextUtils.isEmpty(skuDetails.g())) {
                if (bVar == null || TextUtils.isEmpty(bVar.b().e())) {
                    str5 = null;
                    z10 = false;
                } else {
                    bundle.putString("skuPackageName", bVar.b().e());
                }
                if (!TextUtils.isEmpty(str5)) {
                    bundle.putString("accountName", str5);
                }
                intent = activity.getIntent();
                if (intent == null) {
                    str = str4;
                    zzb.zzk(str, "Activity's intent is null.");
                } else {
                    str = str4;
                    if (!TextUtils.isEmpty(intent.getStringExtra("PROXY_PACKAGE"))) {
                        String stringExtra = intent.getStringExtra("PROXY_PACKAGE");
                        bundle.putString("proxyPackage", stringExtra);
                        try {
                            str6 = str2;
                            try {
                                bundle.putString(str6, eVar.zze.getPackageManager().getPackageInfo(stringExtra, 0).versionName);
                            } catch (PackageManager.NameNotFoundException unused) {
                                bundle.putString(str6, "package not found");
                            }
                        } catch (PackageManager.NameNotFoundException unused2) {
                            str6 = str2;
                        }
                    }
                }
                if (!eVar.zzt && !listI.isEmpty()) {
                    i11 = 17;
                } else if (eVar.zzr || !z10) {
                    if (eVar.zzn) {
                        i12 = 9;
                    } else {
                        i11 = 6;
                    }
                    final String str10 = str3;
                    futureJ = J(new Callable() { // from class: com.android.billingclient.api.w
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return this.zza.M(i12, str10, str9, gVar, bundle);
                        }
                    }, 5000L, null, eVar.zzc);
                    i10 = 78;
                } else {
                    i11 = 15;
                }
                i12 = i11;
                final String str11 = str3;
                futureJ = J(new Callable() { // from class: com.android.billingclient.api.w
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.zza.M(i12, str11, str9, gVar, bundle);
                    }
                }, 5000L, null, eVar.zzc);
                i10 = 78;
            } else {
                bundle.putString("skuPackageName", skuDetails.g());
            }
            str5 = null;
            z10 = true;
            if (!TextUtils.isEmpty(str5)) {
                bundle.putString("accountName", str5);
            }
            intent = activity.getIntent();
            if (intent == null) {
                str = str4;
                zzb.zzk(str, "Activity's intent is null.");
            } else {
                str = str4;
                if (!TextUtils.isEmpty(intent.getStringExtra("PROXY_PACKAGE"))) {
                    String stringExtra2 = intent.getStringExtra("PROXY_PACKAGE");
                    bundle.putString("proxyPackage", stringExtra2);
                    str6 = str2;
                    bundle.putString(str6, eVar.zze.getPackageManager().getPackageInfo(stringExtra2, 0).versionName);
                }
            }
            if (!eVar.zzt) {
                if (eVar.zzr) {
                    if (eVar.zzn) {
                        i12 = 9;
                    } else {
                        i11 = 6;
                        i12 = i11;
                    }
                } else if (eVar.zzn) {
                    i12 = 9;
                } else {
                    i11 = 6;
                    i12 = i11;
                }
            } else if (eVar.zzr) {
                if (eVar.zzn) {
                    i12 = 9;
                } else {
                    i11 = 6;
                    i12 = i11;
                }
            } else if (eVar.zzn) {
                i12 = 9;
            } else {
                i11 = 6;
                i12 = i11;
            }
            final String str12 = str3;
            futureJ = J(new Callable() { // from class: com.android.billingclient.api.w
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.zza.M(i12, str12, str9, gVar, bundle);
                }
            }, 5000L, null, eVar.zzc);
            i10 = 78;
        } else {
            str = "BillingClient";
            futureJ = J(new Callable() { // from class: com.android.billingclient.api.x
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.zza.N(strB, strC);
                }
            }, 5000L, null, eVar.zzc);
            i10 = 80;
        }
        try {
            if (futureJ == null) {
                n0 n0Var8 = eVar.zzf;
                h hVar8 = p0.zzm;
                n0Var8.a(m0.a(25, 2, hVar8));
                eVar.F(hVar8);
                return hVar8;
            }
            Bundle bundle2 = (Bundle) futureJ.get(5000L, TimeUnit.MILLISECONDS);
            int iZzb = zzb.zzb(bundle2, str);
            String strZzg = zzb.zzg(bundle2, str);
            if (iZzb == 0) {
                Intent intent2 = new Intent(activity, (Class<?>) ProxyBillingActivity.class);
                intent2.putExtra("BUY_INTENT", (PendingIntent) bundle2.getParcelable("BUY_INTENT"));
                safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(activity, intent2);
                return p0.zzl;
            }
            zzb.zzk(str, "Unable to buy item, Error response code: " + iZzb);
            h hVarA = p0.a(iZzb, strZzg);
            n0 n0Var9 = eVar.zzf;
            if (bundle2 != null) {
                i10 = 23;
            }
            n0Var9.a(m0.a(i10, 2, hVarA));
            eVar.F(hVarA);
            return hVarA;
        } catch (CancellationException e) {
            e = e;
            zzb.zzl(str, "Time out while launching billing flow. Try to reconnect", e);
            n0 n0Var10 = eVar.zzf;
            h hVar9 = p0.zzn;
            n0Var10.a(m0.a(4, 2, hVar9));
            eVar.F(hVar9);
            return hVar9;
        } catch (TimeoutException e2) {
            e = e2;
            zzb.zzl(str, "Time out while launching billing flow. Try to reconnect", e);
            n0 n0Var11 = eVar.zzf;
            h hVar10 = p0.zzn;
            n0Var11.a(m0.a(4, 2, hVar10));
            eVar.F(hVar10);
            return hVar10;
        } catch (Exception e6) {
            zzb.zzl(str, "Exception while launching billing flow. Try to reconnect", e6);
            n0 n0Var12 = eVar.zzf;
            h hVar11 = p0.zzm;
            n0Var12.a(m0.a(5, 2, hVar11));
            eVar.F(hVar11);
            return hVar11;
        }
    }

    final /* synthetic */ void x(c cVar) {
        n0 n0Var = this.zzf;
        h hVar = p0.zzn;
        n0Var.a(m0.a(24, 3, hVar));
        cVar.a(hVar);
    }

    final /* synthetic */ void y(h hVar) {
        if (this.zzd.d() != null) {
            this.zzd.d().a(hVar, null);
        } else {
            this.zzd.c();
            zzb.zzk("BillingClient", "No valid listener is set in BroadcastManager");
        }
    }

    final /* synthetic */ void z(j jVar, i iVar) {
        n0 n0Var = this.zzf;
        h hVar = p0.zzn;
        n0Var.a(m0.a(24, 4, hVar));
        jVar.a(hVar, iVar.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Handler E() {
        if (Looper.myLooper() == null) {
            return this.zzc;
        }
        return new Handler(Looper.myLooper());
    }

    private final h F(final h hVar) {
        if (Thread.interrupted()) {
            return hVar;
        }
        this.zzc.post(new Runnable() { // from class: com.android.billingclient.api.v1
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.y(hVar);
            }
        });
        return hVar;
    }

    private final void K(String str, final o oVar) {
        if (!d()) {
            n0 n0Var = this.zzf;
            h hVar = p0.zzm;
            n0Var.a(m0.a(2, 9, hVar));
            oVar.a(hVar, zzaf.zzk());
            return;
        }
        if (TextUtils.isEmpty(str)) {
            zzb.zzk("BillingClient", "Please provide a valid product type.");
            n0 n0Var2 = this.zzf;
            h hVar2 = p0.zzg;
            n0Var2.a(m0.a(50, 9, hVar2));
            oVar.a(hVar2, zzaf.zzk());
            return;
        }
        if (J(new a0(this, str, oVar), 30000L, new Runnable() { // from class: com.android.billingclient.api.a2
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.B(oVar);
            }
        }, E()) == null) {
            h hVarH = H();
            this.zzf.a(m0.a(25, 9, hVarH));
            oVar.a(hVarH, zzaf.zzk());
        }
    }

    private void k(Context context, p pVar, z0 z0Var, @Nullable d dVar, String str, @Nullable n0 n0Var) {
        boolean z6;
        this.zze = context.getApplicationContext();
        zzin zzinVarZzv = zzio.zzv();
        zzinVarZzv.zzj(str);
        zzinVarZzv.zzi(this.zze.getPackageName());
        if (n0Var != null) {
            this.zzf = n0Var;
        } else {
            this.zzf = new s0(this.zze, (zzio) zzinVarZzv.zzc());
        }
        if (pVar == null) {
            zzb.zzk("BillingClient", "Billing client should have a valid listener but the provided is null.");
        }
        this.zzd = new t1(this.zze, pVar, dVar, this.zzf);
        this.zzy = z0Var;
        if (dVar != null) {
            z6 = true;
        } else {
            z6 = false;
        }
        this.zzz = z6;
        this.zze.getPackageName();
    }

    @Override // com.android.billingclient.api.BillingClient
    public final void a(final b bVar, final c cVar) {
        if (!d()) {
            n0 n0Var = this.zzf;
            h hVar = p0.zzm;
            n0Var.a(m0.a(2, 3, hVar));
            cVar.a(hVar);
            return;
        }
        if (TextUtils.isEmpty(bVar.a())) {
            zzb.zzk("BillingClient", "Please provide a valid purchase token.");
            n0 n0Var2 = this.zzf;
            h hVar2 = p0.zzi;
            n0Var2.a(m0.a(26, 3, hVar2));
            cVar.a(hVar2);
            return;
        }
        if (!this.zzn) {
            n0 n0Var3 = this.zzf;
            h hVar3 = p0.zzb;
            n0Var3.a(m0.a(27, 3, hVar3));
            cVar.a(hVar3);
            return;
        }
        if (J(new Callable() { // from class: com.android.billingclient.api.y
            @Override // java.util.concurrent.Callable
            public final Object call() throws Exception {
                this.zza.T(bVar, cVar);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.w1
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.x(cVar);
            }
        }, E()) == null) {
            h hVarH = H();
            this.zzf.a(m0.a(25, 3, hVarH));
            cVar.a(hVarH);
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public final void b(final i iVar, final j jVar) {
        if (!d()) {
            n0 n0Var = this.zzf;
            h hVar = p0.zzm;
            n0Var.a(m0.a(2, 4, hVar));
            jVar.a(hVar, iVar.a());
            return;
        }
        if (J(new Callable() { // from class: com.android.billingclient.api.c2
            @Override // java.util.concurrent.Callable
            public final Object call() throws Exception {
                this.zza.U(iVar, jVar);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.d2
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.z(jVar, iVar);
            }
        }, E()) == null) {
            h hVarH = H();
            this.zzf.a(m0.a(25, 4, hVarH));
            jVar.a(hVarH, iVar.a());
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public final void g(final q qVar, final m mVar) {
        if (!d()) {
            n0 n0Var = this.zzf;
            h hVar = p0.zzm;
            n0Var.a(m0.a(2, 7, hVar));
            mVar.a(hVar, new ArrayList());
            return;
        }
        if (!this.zzt) {
            zzb.zzk("BillingClient", "Querying product details is not supported.");
            n0 n0Var2 = this.zzf;
            h hVar2 = p0.zzv;
            n0Var2.a(m0.a(20, 7, hVar2));
            mVar.a(hVar2, new ArrayList());
            return;
        }
        if (J(new Callable() { // from class: com.android.billingclient.api.b2
            @Override // java.util.concurrent.Callable
            public final Object call() throws Exception {
                this.zza.V(qVar, mVar);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.e2
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.A(mVar);
            }
        }, E()) == null) {
            h hVarH = H();
            this.zzf.a(m0.a(25, 7, hVarH));
            mVar.a(hVarH, new ArrayList());
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public final void h(r rVar, o oVar) {
        K(rVar.b(), oVar);
    }

    @Override // com.android.billingclient.api.BillingClient
    public final void i(s sVar, final t tVar) {
        if (!d()) {
            n0 n0Var = this.zzf;
            h hVar = p0.zzm;
            n0Var.a(m0.a(2, 8, hVar));
            tVar.a(hVar, null);
            return;
        }
        final String strA = sVar.a();
        final List<String> listB = sVar.b();
        if (TextUtils.isEmpty(strA)) {
            zzb.zzk("BillingClient", "Please fix the input params. SKU type can't be empty.");
            n0 n0Var2 = this.zzf;
            h hVar2 = p0.zzf;
            n0Var2.a(m0.a(49, 8, hVar2));
            tVar.a(hVar2, null);
            return;
        }
        if (listB == null) {
            zzb.zzk("BillingClient", "Please fix the input params. The list of SKUs can't be empty.");
            n0 n0Var3 = this.zzf;
            h hVar3 = p0.zze;
            n0Var3.a(m0.a(48, 8, hVar3));
            tVar.a(hVar3, null);
            return;
        }
        final String str = null;
        if (J(new Callable(strA, listB, str, tVar) { // from class: com.android.billingclient.api.y1
            public final /* synthetic */ String zzb;
            public final /* synthetic */ List zzc;
            public final /* synthetic */ t zzd;

            {
                this.zzd = tVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() throws Exception {
                this.zza.W(this.zzb, this.zzc, null, this.zzd);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.z1
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.C(tVar);
            }
        }, E()) == null) {
            h hVarH = H();
            this.zzf.a(m0.a(25, 8, hVarH));
            tVar.a(hVarH, null);
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public final void j(f fVar) {
        if (d()) {
            zzb.zzj("BillingClient", "Service connection is valid. No need to re-initialize.");
            this.zzf.c(m0.b(6));
            fVar.onBillingSetupFinished(p0.zzl);
            return;
        }
        int i10 = 1;
        if (this.zza == 1) {
            zzb.zzk("BillingClient", "Client is already in the process of connecting to billing service.");
            n0 n0Var = this.zzf;
            h hVar = p0.zzd;
            n0Var.a(m0.a(37, 6, hVar));
            fVar.onBillingSetupFinished(hVar);
            return;
        }
        if (this.zza == 3) {
            zzb.zzk("BillingClient", "Client was already closed and can't be reused. Please create another instance.");
            n0 n0Var2 = this.zzf;
            h hVar2 = p0.zzm;
            n0Var2.a(m0.a(38, 6, hVar2));
            fVar.onBillingSetupFinished(hVar2);
            return;
        }
        this.zza = 1;
        zzb.zzj("BillingClient", "Starting in-app billing setup.");
        this.zzh = new e0(this, fVar, null);
        Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
        intent.setPackage("com.android.vending");
        List<ResolveInfo> listQueryIntentServices = this.zze.getPackageManager().queryIntentServices(intent, 0);
        if (listQueryIntentServices != null && !listQueryIntentServices.isEmpty()) {
            ServiceInfo serviceInfo = listQueryIntentServices.get(0).serviceInfo;
            if (serviceInfo != null) {
                String str = serviceInfo.packageName;
                String str2 = serviceInfo.name;
                if ("com.android.vending".equals(str) && str2 != null) {
                    ComponentName componentName = new ComponentName(str, str2);
                    Intent intent2 = new Intent(intent);
                    intent2.setComponent(componentName);
                    intent2.putExtra("playBillingLibraryVersion", this.zzb);
                    if (this.zze.bindService(intent2, this.zzh, 1)) {
                        zzb.zzj("BillingClient", "Service was bonded successfully.");
                        return;
                    } else {
                        zzb.zzk("BillingClient", "Connection to Billing service is blocked.");
                        i10 = 39;
                    }
                } else {
                    zzb.zzk("BillingClient", "The device doesn't have valid Play Store.");
                    i10 = 40;
                }
            }
        } else {
            i10 = 41;
        }
        this.zza = 0;
        zzb.zzj("BillingClient", "Billing service unavailable on device.");
        n0 n0Var3 = this.zzf;
        h hVar3 = p0.zzc;
        n0Var3.a(m0.a(i10, 6, hVar3));
        fVar.onBillingSetupFinished(hVar3);
    }

    @AnyThread
    e(@Nullable String str, z0 z0Var, Context context, v0 v0Var, @Nullable n0 n0Var, @Nullable ExecutorService executorService) {
        this.zza = 0;
        this.zzc = new Handler(Looper.getMainLooper());
        this.zzk = 0;
        this.zzb = I();
        this.zze = context.getApplicationContext();
        zzin zzinVarZzv = zzio.zzv();
        zzinVarZzv.zzj(I());
        zzinVarZzv.zzi(this.zze.getPackageName());
        this.zzf = new s0(this.zze, (zzio) zzinVarZzv.zzc());
        zzb.zzk("BillingClient", "Billing client should have a valid listener but the provided is null.");
        this.zzd = new t1(this.zze, null, this.zzf);
        this.zzy = z0Var;
        this.zze.getPackageName();
    }

    @AnyThread
    e(@Nullable String str, z0 z0Var, Context context, p pVar, @Nullable d dVar, @Nullable n0 n0Var, @Nullable ExecutorService executorService) {
        String strI = I();
        this.zza = 0;
        this.zzc = new Handler(Looper.getMainLooper());
        this.zzk = 0;
        this.zzb = strI;
        k(context, pVar, z0Var, dVar, strI, null);
    }
}
