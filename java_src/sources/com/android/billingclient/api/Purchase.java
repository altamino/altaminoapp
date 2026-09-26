package com.android.billingclient.api;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class Purchase {
    private final String zza;
    private final String zzb;
    private final JSONObject zzc;

    @NonNull
    public String d() {
        return this.zza;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Purchase)) {
            return false;
        }
        Purchase purchase = (Purchase) obj;
        return TextUtils.equals(this.zza, purchase.d()) && TextUtils.equals(this.zzb, purchase.i());
    }

    @NonNull
    public String i() {
        return this.zzb;
    }

    @NonNull
    public String toString() {
        return "Purchase. Json: ".concat(String.valueOf(this.zza));
    }

    private final ArrayList l() {
        ArrayList arrayList = new ArrayList();
        if (this.zzc.has("productIds")) {
            JSONArray jSONArrayOptJSONArray = this.zzc.optJSONArray("productIds");
            if (jSONArrayOptJSONArray != null) {
                for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                    arrayList.add(jSONArrayOptJSONArray.optString(i10));
                }
            }
        } else if (this.zzc.has("productId")) {
            arrayList.add(this.zzc.optString("productId"));
        }
        return arrayList;
    }

    @Nullable
    public a a() {
        JSONObject jSONObject = this.zzc;
        String strOptString = jSONObject.optString("obfuscatedAccountId");
        String strOptString2 = jSONObject.optString("obfuscatedProfileId");
        if (strOptString == null && strOptString2 == null) {
            return null;
        }
        return new a(strOptString, strOptString2);
    }

    @NonNull
    public String b() {
        return this.zzc.optString("developerPayload");
    }

    @Nullable
    public String c() {
        String strOptString = this.zzc.optString("orderId");
        if (TextUtils.isEmpty(strOptString)) {
            return null;
        }
        return strOptString;
    }

    public int f() {
        return this.zzc.optInt("purchaseState", 1) != 4 ? 1 : 2;
    }

    public long g() {
        return this.zzc.optLong("purchaseTime");
    }

    @NonNull
    public String h() {
        JSONObject jSONObject = this.zzc;
        return jSONObject.optString(com.mixpanel.android.mpmetrics.e.KEY_TOKEN, jSONObject.optString("purchaseToken"));
    }

    public int hashCode() {
        return this.zza.hashCode();
    }

    public boolean k() {
        return this.zzc.optBoolean("acknowledged", true);
    }

    public Purchase(@NonNull String str, @NonNull String str2) throws JSONException {
        this.zza = str;
        this.zzb = str2;
        this.zzc = new JSONObject(str);
    }

    @NonNull
    public List<String> e() {
        return l();
    }

    @NonNull
    @Deprecated
    public ArrayList<String> j() {
        return l();
    }
}
