package com.android.billingclient.api;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.play_billing.zzaf;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public final class l {
    private final String zza;
    private final JSONObject zzb;
    private final String zzc;
    private final String zzd;
    private final String zze;
    private final String zzf;
    private final String zzg;
    private final String zzh;
    private final String zzi;
    private final String zzj;

    @Nullable
    private final String zzk;

    @Nullable
    private final List zzl;

    @Nullable
    private final List zzm;

    @NonNull
    public String b() {
        return this.zzc;
    }

    @NonNull
    public String c() {
        return this.zzd;
    }

    @Nullable
    public List<d> d() {
        return this.zzl;
    }

    final String f() {
        return this.zzh;
    }

    @Nullable
    public String g() {
        return this.zzk;
    }

    public static final class a {
        private final String zza;
        private final long zzb;
        private final String zzc;
        private final String zzd;
        private final String zze;
        private final zzaf zzf;

        @Nullable
        private final Long zzg;

        @Nullable
        private final b1 zzh;

        @Nullable
        private final e1 zzi;

        @Nullable
        private final c1 zzj;

        @Nullable
        private final d1 zzk;

        @NonNull
        public final String a() {
            return this.zzd;
        }

        a(JSONObject jSONObject) throws JSONException {
            Long lValueOf;
            b1 b1Var;
            e1 e1Var;
            c1 c1Var;
            this.zza = jSONObject.optString("formattedPrice");
            this.zzb = jSONObject.optLong("priceAmountMicros");
            this.zzc = jSONObject.optString("priceCurrencyCode");
            this.zzd = jSONObject.optString("offerIdToken");
            this.zze = jSONObject.optString("offerId");
            jSONObject.optInt("offerType");
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("offerTags");
            ArrayList arrayList = new ArrayList();
            if (jSONArrayOptJSONArray != null) {
                for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                    arrayList.add(jSONArrayOptJSONArray.getString(i10));
                }
            }
            this.zzf = zzaf.zzj(arrayList);
            if (jSONObject.has("fullPriceMicros")) {
                lValueOf = Long.valueOf(jSONObject.optLong("fullPriceMicros"));
            } else {
                lValueOf = null;
            }
            this.zzg = lValueOf;
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("discountDisplayInfo");
            if (jSONObjectOptJSONObject == null) {
                b1Var = null;
            } else {
                b1Var = new b1(jSONObjectOptJSONObject);
            }
            this.zzh = b1Var;
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("validTimeWindow");
            if (jSONObjectOptJSONObject2 == null) {
                e1Var = null;
            } else {
                e1Var = new e1(jSONObjectOptJSONObject2);
            }
            this.zzi = e1Var;
            JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("limitedQuantityInfo");
            if (jSONObjectOptJSONObject3 == null) {
                c1Var = null;
            } else {
                c1Var = new c1(jSONObjectOptJSONObject3);
            }
            this.zzj = c1Var;
            JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("preorderDetails");
            this.zzk = jSONObjectOptJSONObject4 != null ? new d1(jSONObjectOptJSONObject4) : null;
        }
    }

    public static final class b {
        private final String zza;
        private final long zzb;
        private final String zzc;
        private final String zzd;
        private final int zze;
        private final int zzf;

        public int a() {
            return this.zze;
        }

        @NonNull
        public String b() {
            return this.zzd;
        }

        @NonNull
        public String c() {
            return this.zza;
        }

        public long d() {
            return this.zzb;
        }

        @NonNull
        public String e() {
            return this.zzc;
        }

        public int f() {
            return this.zzf;
        }

        b(JSONObject jSONObject) {
            this.zzd = jSONObject.optString("billingPeriod");
            this.zzc = jSONObject.optString("priceCurrencyCode");
            this.zza = jSONObject.optString("formattedPrice");
            this.zzb = jSONObject.optLong("priceAmountMicros");
            this.zzf = jSONObject.optInt("recurrenceMode");
            this.zze = jSONObject.optInt("billingCycleCount");
        }
    }

    public static class c {
        private final List zza;

        @NonNull
        public List<b> a() {
            return this.zza;
        }

        c(JSONArray jSONArray) {
            ArrayList arrayList = new ArrayList();
            if (jSONArray != null) {
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i10);
                    if (jSONObjectOptJSONObject != null) {
                        arrayList.add(new b(jSONObjectOptJSONObject));
                    }
                }
            }
            this.zza = arrayList;
        }
    }

    public static final class d {
        private final String zza;

        @Nullable
        private final String zzb;
        private final String zzc;
        private final c zzd;
        private final List zze;

        @Nullable
        private final a1 zzf;

        @NonNull
        public String a() {
            return this.zzc;
        }

        @NonNull
        public c b() {
            return this.zzd;
        }

        d(JSONObject jSONObject) throws JSONException {
            this.zza = jSONObject.optString("basePlanId");
            String strOptString = jSONObject.optString("offerId");
            this.zzb = true == strOptString.isEmpty() ? null : strOptString;
            this.zzc = jSONObject.getString("offerIdToken");
            this.zzd = new c(jSONObject.getJSONArray("pricingPhases"));
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("installmentPlanDetails");
            this.zzf = jSONObjectOptJSONObject != null ? new a1(jSONObjectOptJSONObject) : null;
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("offerTags");
            if (jSONArrayOptJSONArray != null) {
                for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                    arrayList.add(jSONArrayOptJSONArray.getString(i10));
                }
            }
            this.zze = arrayList;
        }
    }

    @Nullable
    public a a() {
        List list = this.zzm;
        if (list == null || list.isEmpty()) {
            return null;
        }
        return (a) this.zzm.get(0);
    }

    @NonNull
    public final String e() {
        return this.zzb.optString("packageName");
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof l) {
            return TextUtils.equals(this.zza, ((l) obj).zza);
        }
        return false;
    }

    public int hashCode() {
        return this.zza.hashCode();
    }

    @NonNull
    public String toString() {
        List list = this.zzl;
        return "ProductDetails{jsonString='" + this.zza + "', parsedJson=" + this.zzb.toString() + ", productId='" + this.zzc + "', productType='" + this.zzd + "', title='" + this.zze + "', productDetailsToken='" + this.zzh + "', subscriptionOfferDetails=" + String.valueOf(list) + "}";
    }

    l(String str) throws JSONException {
        ArrayList arrayList;
        this.zza = str;
        JSONObject jSONObject = new JSONObject(str);
        this.zzb = jSONObject;
        String strOptString = jSONObject.optString("productId");
        this.zzc = strOptString;
        String strOptString2 = jSONObject.optString("type");
        this.zzd = strOptString2;
        if (!TextUtils.isEmpty(strOptString)) {
            if (!TextUtils.isEmpty(strOptString2)) {
                this.zze = jSONObject.optString("title");
                this.zzf = jSONObject.optString("name");
                this.zzg = jSONObject.optString("description");
                this.zzi = jSONObject.optString("packageDisplayName");
                this.zzj = jSONObject.optString("iconUrl");
                this.zzh = jSONObject.optString("skuDetailsToken");
                this.zzk = jSONObject.optString("serializedDocid");
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("subscriptionOfferDetails");
                if (jSONArrayOptJSONArray != null) {
                    ArrayList arrayList2 = new ArrayList();
                    for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                        arrayList2.add(new d(jSONArrayOptJSONArray.getJSONObject(i10)));
                    }
                    this.zzl = arrayList2;
                } else {
                    if (!strOptString2.equals("subs") && !strOptString2.equals("play_pass_subs")) {
                        arrayList = null;
                    } else {
                        arrayList = new ArrayList();
                    }
                    this.zzl = arrayList;
                }
                JSONObject jSONObjectOptJSONObject = this.zzb.optJSONObject("oneTimePurchaseOfferDetails");
                JSONArray jSONArrayOptJSONArray2 = this.zzb.optJSONArray("oneTimePurchaseOfferDetailsList");
                ArrayList arrayList3 = new ArrayList();
                if (jSONArrayOptJSONArray2 != null) {
                    for (int i11 = 0; i11 < jSONArrayOptJSONArray2.length(); i11++) {
                        arrayList3.add(new a(jSONArrayOptJSONArray2.getJSONObject(i11)));
                    }
                    this.zzm = arrayList3;
                    return;
                }
                if (jSONObjectOptJSONObject != null) {
                    arrayList3.add(new a(jSONObjectOptJSONObject));
                    this.zzm = arrayList3;
                    return;
                } else {
                    this.zzm = null;
                    return;
                }
            }
            throw new IllegalArgumentException("Product type cannot be empty.");
        }
        throw new IllegalArgumentException("Product id cannot be empty.");
    }
}
