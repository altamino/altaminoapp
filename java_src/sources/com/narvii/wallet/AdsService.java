package com.narvii.wallet;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.JacksonUtils;
import com.narvii.util.PackageUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiJsonResponseListener;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public class AdsService implements Runnable {
    static final long EXPIRE = 3600000;
    AccountService account;
    NVContext context;

    public String offerWallVendor() {
        return null;
    }

    @Override // java.lang.Runnable
    public void run() {
    }

    public void start() {
    }

    public void stop() {
    }

    public void pause() {
        Utils.handler.removeCallbacks(this);
    }

    public void resume() {
        Utils.postDelayed(this, 3000L);
    }

    public boolean update() {
        SharedPreferences prefs = this.account.getPrefs();
        long j6 = prefs.getLong("ads_time", 0L);
        String string = prefs.getString("ads_version", null);
        final String versionName = new PackageUtils(this.context.getContext()).getVersionName();
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (j6 > jCurrentTimeMillis - 3600000 && j6 < jCurrentTimeMillis && versionName.equals(string)) {
            return false;
        }
        Locale locale = Locale.getDefault();
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        ArrayNode arrayNodeCreateArrayNode2 = JacksonUtils.createArrayNode();
        ApiRequest.Builder builderPath = ApiRequest.builder().global().post().path("/wallet/ads");
        String language = locale.getLanguage();
        Locale locale2 = Locale.US;
        ((ApiService) this.context.getService("api")).exec(builderPath.param("language", language.toLowerCase(locale2)).param("country", locale.getCountry().toLowerCase(locale2)).param("availableOfferWall", arrayNodeCreateArrayNode).param("availableRewardVideo", arrayNodeCreateArrayNode2).build(), new ApiJsonResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.wallet.AdsService.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                SharedPreferences.Editor editorEdit = AdsService.this.account.getPrefs().edit();
                String strNodeString = JacksonUtils.nodeString(json(), "selectedOfferWall");
                if (!TextUtils.isEmpty(strNodeString)) {
                    editorEdit.putString("ads_offerWallVendor", strNodeString);
                }
                String strNodeString2 = JacksonUtils.nodeString(json(), "selectedRewardVideo");
                if (!TextUtils.isEmpty(strNodeString2)) {
                    editorEdit.putString("ads_rewardVideoVendor", strNodeString2);
                }
                editorEdit.putLong("ads_time", System.currentTimeMillis());
                editorEdit.putString("ads_version", versionName);
                editorEdit.apply();
            }
        });
        return false;
    }

    public AdsService(NVContext nVContext) {
        this.context = nVContext;
        this.account = (AccountService) nVContext.getService("account");
    }
}
