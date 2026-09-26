package com.android.billingclient.api;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public class SkuDetails {
    private final String zza;
    private final JSONObject zzb;

    @NonNull
    public String toString() {
        return "SkuDetails: ".concat(String.valueOf(this.zza));
    }

    @NonNull
    public String a() {
        return this.zzb.optString("price");
    }

    @NonNull
    public String b() {
        return this.zzb.optString("productId");
    }

    @NonNull
    public String c() {
        return this.zzb.optString("type");
    }

    public int d() {
        return this.zzb.optInt("offer_type");
    }

    @NonNull
    public String e() {
        return this.zzb.optString("offer_id");
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SkuDetails) {
            return TextUtils.equals(this.zza, ((SkuDetails) obj).zza);
        }
        return false;
    }

    @NonNull
    public String f() {
        String strOptString = this.zzb.optString("offerIdToken");
        return strOptString.isEmpty() ? this.zzb.optString("offer_id_token") : strOptString;
    }

    @NonNull
    public final String g() {
        return this.zzb.optString("packageName");
    }

    @NonNull
    public String h() {
        return this.zzb.optString("serializedDocid");
    }

    public int hashCode() {
        return this.zza.hashCode();
    }

    final String i() {
        return this.zzb.optString("skuDetailsToken");
    }

    public SkuDetails(@NonNull String str) throws JSONException {
        this.zza = str;
        JSONObject jSONObject = new JSONObject(str);
        this.zzb = jSONObject;
        if (!TextUtils.isEmpty(jSONObject.optString("productId"))) {
            if (!TextUtils.isEmpty(jSONObject.optString("type"))) {
                return;
            } else {
                throw new IllegalArgumentException("SkuType cannot be empty.");
            }
        }
        throw new IllegalArgumentException("SKU cannot be empty.");
    }
}
