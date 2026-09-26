package com.narvii.prompt;

import ai.medialab.medialabads2.maliciousadblockers.RedirectBlockingFragmentActivity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.narvii.account.notice.AccountNotice;
import com.narvii.amino.PromptShowListener;
import com.narvii.amino.master.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.Blog;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.BlogListResponse;
import com.narvii.model.api.UserListResponse;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.onboarding.OnBoardingActivity;
import com.narvii.onboarding.OnBoardingRecommendHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.safedk.android.utils.Logger;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class OnBoardingPromptHelper extends PromptHelper {
    public CommunityConfigHelper communityConfigHelper;
    public Intent mOnBoardingIntent;
    public OnBoardingRecommendHelper onBoardingRecommendHelper;
    boolean recommendFeedsFinished;
    boolean recommendFollowFinished;
    public boolean showWelcome;

    public static void safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(RedirectBlockingFragmentActivity p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryStartOnBoarding() {
        if (this.recommendFollowFinished && this.recommendFeedsFinished) {
            if (this.mOnBoardingIntent.getIntExtra("flags", 0) != 0) {
                dispatchShowPromptRunnable(new Runnable() { // from class: com.narvii.prompt.OnBoardingPromptHelper.4
                    @Override // java.lang.Runnable
                    public void run() {
                        OnBoardingPromptHelper.this.startOnBoarding();
                    }
                });
            } else {
                whenNotBlocking();
            }
        }
    }

    @Override // com.narvii.prompt.PromptHelper
    protected void doTryShow() {
        this.communityConfigHelper = new CommunityConfigHelper(this.nvContext);
        this.mOnBoardingIntent = new Intent(this.nvContext.getContext(), (Class<?>) OnBoardingActivity.class);
        this.onBoardingRecommendHelper = new OnBoardingRecommendHelper(this.nvContext);
        boolean z6 = this.account.hasAccount() && this.communityConfigHelper.welcomeMessageEnabled() && !TextUtils.isEmpty(this.communityConfigHelper.getWelcomeMessageText());
        SharedPreferences sharedPreferences = this.prefs;
        StringBuilder sb = new StringBuilder();
        sb.append("welcomeShown_");
        sb.append(this.communityId);
        this.showWelcome = !sharedPreferences.getBoolean(sb.toString(), false) && z6;
        if (getUser() == null || !this.onBoardingRecommendHelper.canShowNow()) {
            if (this.showWelcome) {
                dispatchShowPromptRunnable(new Runnable() { // from class: com.narvii.prompt.OnBoardingPromptHelper.3
                    @Override // java.lang.Runnable
                    public void run() {
                        OnBoardingPromptHelper.this.startOnBoarding();
                    }
                });
                return;
            } else {
                whenNotBlocking();
                return;
            }
        }
        ApiRequest apiRequestBuild = ApiRequest.builder().path("/user-profile/recommended").build();
        ApiService apiService = (ApiService) this.nvContext.getService("api");
        apiService.exec(apiRequestBuild, new ApiResponseListener<UserListResponse>(UserListResponse.class) { // from class: com.narvii.prompt.OnBoardingPromptHelper.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, UserListResponse userListResponse) throws Exception {
                super.onFinish(apiRequest, userListResponse);
                OnBoardingPromptHelper.this.recommendFollowFinished = true;
                List<User> list = userListResponse.userList;
                if (list != null && list.size() != 0) {
                    Intent intent = OnBoardingPromptHelper.this.mOnBoardingIntent;
                    intent.putExtra("flags", intent.getIntExtra("flags", 0) | 4);
                    OnBoardingPromptHelper.this.onBoardingRecommendHelper.saveRecommendedUsers(userListResponse.userList);
                }
                OnBoardingPromptHelper.this.tryStartOnBoarding();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                OnBoardingPromptHelper onBoardingPromptHelper = OnBoardingPromptHelper.this;
                onBoardingPromptHelper.recommendFollowFinished = true;
                onBoardingPromptHelper.tryStartOnBoarding();
            }
        });
        apiService.exec(ApiRequest.builder().path("/feed/blog-recommended").build(), new ApiResponseListener<BlogListResponse>(BlogListResponse.class) { // from class: com.narvii.prompt.OnBoardingPromptHelper.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, BlogListResponse blogListResponse) throws Exception {
                super.onFinish(apiRequest, blogListResponse);
                OnBoardingPromptHelper.this.recommendFeedsFinished = true;
                List<Blog> list = blogListResponse.list();
                if (list != null && list.size() != 0) {
                    Intent intent = OnBoardingPromptHelper.this.mOnBoardingIntent;
                    intent.putExtra("flags", intent.getIntExtra("flags", 0) | 8);
                    OnBoardingPromptHelper.this.onBoardingRecommendHelper.saveRecommendedFeeds(list);
                }
                OnBoardingPromptHelper.this.tryStartOnBoarding();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                OnBoardingPromptHelper onBoardingPromptHelper = OnBoardingPromptHelper.this;
                onBoardingPromptHelper.recommendFeedsFinished = true;
                onBoardingPromptHelper.tryStartOnBoarding();
            }
        });
    }

    public OnBoardingPromptHelper(NVContext nVContext, PromptShowListener promptShowListener) {
        super(nVContext, promptShowListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startOnBoarding() {
        Community community = getCommunity();
        if (community == null) {
            whenNotBlocking();
            return;
        }
        SharedPreferences prefs = this.account.getPrefs();
        if (this.mOnBoardingIntent.getIntExtra("flags", 0) != 0) {
            new OnBoardingRecommendHelper(this.nvContext).showInNow();
        }
        if (this.showWelcome) {
            Intent intent = this.mOnBoardingIntent;
            intent.putExtra("flags", intent.getIntExtra("flags", 0) | 2);
            this.mOnBoardingIntent.putExtra(AccountNotice.LEVEL_MESSAGE, this.communityConfigHelper.getWelcomeMessageText());
            this.mOnBoardingIntent.putExtra(SearchPrefsHelper.PREFS_KEY_COMMUNITY, JacksonUtils.writeAsString(community));
        }
        if (this.mOnBoardingIntent.getIntExtra("flags", 0) != 0 && (this.nvContext.getContext() instanceof NVActivity)) {
            this.onBoardingRecommendHelper.showInNow();
            PromptShowListener promptShowListener = this.promptShowListener;
            if (promptShowListener != null) {
                promptShowListener.setPromptShown(8);
            }
            NVActivity nVActivity = (NVActivity) this.nvContext.getContext();
            safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(nVActivity, this.mOnBoardingIntent);
            nVActivity.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
            prefs.edit().putBoolean("welcomeShown_" + this.communityId, true).apply();
            whenNotBlocking();
            return;
        }
        whenNotBlocking();
    }
}
