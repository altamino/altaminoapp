package com.narvii.onboarding;

import android.content.SharedPreferences;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;

/* loaded from: classes3.dex */
public class OnBoardingRecommendHelper {
    public static final String KEY_SHOWED_COUNT = "recommend_showed_count";
    int communityId;
    NVContext mNVContext;
    SharedPreferences prefs;

    public OnBoardingRecommendHelper(NVContext nVContext) {
        this.mNVContext = nVContext;
        AccountService accountService = (AccountService) nVContext.getService("account");
        this.communityId = ((ConfigService) nVContext.getService("config")).getCommunityId();
        this.prefs = accountService.getPrefs();
    }

    public boolean canShowNow() {
        SharedPreferences sharedPreferences = this.prefs;
        StringBuilder sb = new StringBuilder();
        sb.append("recommend_showed_count_");
        sb.append(this.communityId);
        return sharedPreferences.getInt(sb.toString(), 0) == 0;
    }

    public void showInNow() {
        int i = this.prefs.getInt("recommend_showed_count_" + this.communityId, 0);
        this.prefs.edit().putInt("recommend_showed_count_" + this.communityId, i + 1).apply();
    }
}
