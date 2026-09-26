package com.narvii.onboarding;

import android.content.SharedPreferences;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.model.Blog;
import com.narvii.model.Feed;
import com.narvii.model.User;
import com.narvii.util.JacksonUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class OnBoardingRecommendHelper {
    public static final String KEY_SHOWED_COUNT = "recommend_showed_count";
    public static final String ON_BOARDING_PREFS_FEEDS = "on_boarding_recommended_feeds";
    public static final String ON_BOARDING_PREFS_USERS = "on_boarding_recommended_users";
    int communityId;
    NVContext mNVContext;
    SharedPreferences prefs;

    public boolean canShowNow() {
        SharedPreferences sharedPreferences = this.prefs;
        StringBuilder sb = new StringBuilder();
        sb.append("recommend_showed_count_");
        sb.append(this.communityId);
        return sharedPreferences.getInt(sb.toString(), 0) == 0;
    }

    public ArrayList<Feed> getRecommendedFeeds() {
        return JacksonUtils.readListUsing(this.prefs.getString(ON_BOARDING_PREFS_FEEDS, null), new Feed.FeedDeserializer());
    }

    public ArrayList<User> getRecommendedUsers() {
        return JacksonUtils.readListAs(this.prefs.getString(ON_BOARDING_PREFS_USERS, null), User.class);
    }

    public void saveRecommendedFeeds(List<Blog> list) {
        this.prefs.edit().putString(ON_BOARDING_PREFS_FEEDS, JacksonUtils.writeAsString(list)).apply();
    }

    public void saveRecommendedUsers(List<User> list) {
        this.prefs.edit().putString(ON_BOARDING_PREFS_USERS, JacksonUtils.writeAsString(list)).apply();
    }

    public void showInNow() {
        int i10 = this.prefs.getInt("recommend_showed_count_" + this.communityId, 0);
        this.prefs.edit().putInt("recommend_showed_count_" + this.communityId, i10 + 1).apply();
    }

    public OnBoardingRecommendHelper(NVContext nVContext) {
        this.mNVContext = nVContext;
        AccountService accountService = (AccountService) nVContext.getService("account");
        this.communityId = ((ConfigService) nVContext.getService("config")).getCommunityId();
        this.prefs = accountService.getPrefs();
    }
}
