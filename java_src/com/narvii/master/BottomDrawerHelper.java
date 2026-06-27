package com.narvii.master;

import android.content.SharedPreferences;
import android.os.SystemClock;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.account.AccountService;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.community.MyCommunityListResponse;
import com.narvii.config.ConfigService;
import com.narvii.language.ContentLanguageService;
import com.narvii.model.Blog;
import com.narvii.model.Community;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.BlogListResponse;
import com.narvii.util.LanguageHelper;
import com.narvii.util.Log;
import com.narvii.util.PreferencesHelper;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.Date;
import java.util.List;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes3.dex */
public class BottomDrawerHelper {
    public static final int ANNOUNCEMENT_CREATE_TIME_WITHIN = 7;
    public static final long ANNOUNCEMENT_REQUEST_INTERVAL = 600000;
    private static final int FORCE_SHOW = 0;
    public static final int GLOBAL_INTERVAL_BETWEEN_PRE_WORK = 5000;
    private static final int GLOBAL_SHOW_TIME_INTERVAL = 30;
    public static final String KEY_LAST_ANNOUNCEMENT_ID = "bottom_drawer_last_an_id";
    public static final String KEY_LAST_ANNOUNCEMENT_SHOW_TIME = "bottom_drawer_an_showtime";
    public static final String KEY_LAST_SHOW_TIME = "bottom_drawer_last_showtime";
    public static final String KEY_LAST_SUGGEST_SHOW_TIME = "bottom_drawer_last_sg_showtime";
    public static final String KEY_PRE_SHOW_DONE = "bottom_drawer_pre_show_down";
    public static final int STATUS_ANNOUNCEMENT = 1;
    public static final int STATUS_FINISH = -1;
    public static final int STATUS_NO = 0;
    public static final int STATUS_SUGGEST_COMMUNITY = 2;
    public static final int SUGGESTCOMMUNITY_SHOW_INTERVAL = 1;
    public static final long SUGGEST_REQUEST_INTERVAL = 600000;
    private static final String TAG = "bottom_drawer_check";
    public static long lastAnnouncementPromptRequestTime;
    public static long lastSuggestPromptRequestTime;
    ConfigService configService;
    NVContext context;
    private int curStatus = 0;
    private boolean isRunning;
    private OnStatusChangeListener listener;
    SharedPreferences prefs;
    PreferencesHelper sharedPreferencesHelper;
    SharedPreferences versionPrefs;

    public interface OnStatusChangeListener {
        void onStatusChanged(int i, Object obj);
    }

    private boolean isAnnouncementStatusOk() {
        return true;
    }

    public BottomDrawerHelper(NVContext nVContext, OnStatusChangeListener onStatusChangeListener) {
        this.context = nVContext;
        this.prefs = (SharedPreferences) nVContext.getService("prefs");
        this.configService = (ConfigService) nVContext.getService("config");
        this.versionPrefs = (SharedPreferences) nVContext.getService("versionPrefs");
        this.listener = onStatusChangeListener;
        this.sharedPreferencesHelper = new PreferencesHelper(nVContext);
    }

    public void setStatusChangeListener(OnStatusChangeListener onStatusChangeListener) {
        this.listener = onStatusChangeListener;
    }

    public void checkAnnouncement() {
        if (isAnnouncementStatusOk()) {
            requestAnnouncement();
            return;
        }
        OnStatusChangeListener onStatusChangeListener = this.listener;
        if (onStatusChangeListener != null) {
            onStatusChangeListener.onStatusChanged(-1, null);
        }
    }

    private void requestAnnouncement() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j = lastAnnouncementPromptRequestTime;
        if (j != 0 && jElapsedRealtime - j < 600000) {
            OnStatusChangeListener onStatusChangeListener = this.listener;
            if (onStatusChangeListener != null) {
                onStatusChangeListener.onStatusChanged(-1, null);
                return;
            }
            return;
        }
        ((ApiService) this.context.getService("api")).exec(ApiRequest.builder().path("/announcement").global().param(IjkMediaMeta.IJKM_KEY_LANGUAGE, LanguageHelper.getUserSelectedLanguageCode(this.context)).param(TtmlNode.START, 0).param("size", 20).build(), new ApiResponseListener<BlogListResponse>(BlogListResponse.class) { // from class: com.narvii.master.BottomDrawerHelper.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, BlogListResponse blogListResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) blogListResponse);
                BottomDrawerHelper.lastAnnouncementPromptRequestTime = SystemClock.elapsedRealtime();
                if (blogListResponse == null || blogListResponse.list() == null || blogListResponse.list().size() == 0) {
                    if (BottomDrawerHelper.this.sharedPreferencesHelper.getLastAnnouncementToastTime() == 0) {
                        BottomDrawerHelper.this.sharedPreferencesHelper.saveLastAnnouncementToastTime(1L);
                    }
                    if (BottomDrawerHelper.this.listener != null) {
                        BottomDrawerHelper.this.listener.onStatusChanged(-1, null);
                    }
                    Log.d(BottomDrawerHelper.TAG, "no data fetched in an");
                    return;
                }
                Blog blog = blogListResponse.list().get(0);
                if (blog == null || BottomDrawerHelper.this.sharedPreferencesHelper.getLastAnnouncementToastTime() != 0) {
                    if (BottomDrawerHelper.this.listener != null) {
                        BottomDrawerHelper.this.listener.onStatusChanged(1, blog);
                    }
                } else {
                    BottomDrawerHelper.this.sharedPreferencesHelper.saveLastAnnouncementShownId(blog.blogId);
                    BottomDrawerHelper.this.sharedPreferencesHelper.saveLastAnnouncementToastTime(blog.createdTime.getTime());
                    if (BottomDrawerHelper.this.listener != null) {
                        BottomDrawerHelper.this.listener.onStatusChanged(-1, null);
                    }
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                BottomDrawerHelper.lastAnnouncementPromptRequestTime = SystemClock.elapsedRealtime();
                Log.d(BottomDrawerHelper.TAG, "fail to fetched an data");
                if (BottomDrawerHelper.this.listener != null) {
                    BottomDrawerHelper.this.listener.onStatusChanged(-1, null);
                }
            }
        });
    }

    public boolean shouldShowAnnouncement(Blog blog) {
        if (blog == null) {
            return false;
        }
        boolean z = Utils.isEqualsNotNull(blog.blogId, this.sharedPreferencesHelper.getLastAnnouncementId()) || this.sharedPreferencesHelper.getLastAnnouncementToastTime() >= blog.createdTime.getTime();
        StringBuilder sb = new StringBuilder();
        sb.append("an showcase #2: ");
        sb.append(!z);
        Log.d(TAG, sb.toString());
        boolean z2 = this.sharedPreferencesHelper.getAnnouncementLastReadTime() < blog.createdTime.getTime();
        Log.d(TAG, "an showcase #3: " + z2);
        return !z && z2;
    }

    public void beginToCheckSuggestCommunity() {
        Log.d(TAG, "begin to check suggest community");
        if (isSuggestCommunityStatusOk()) {
            requestSuggestCommunity();
            return;
        }
        this.isRunning = false;
        OnStatusChangeListener onStatusChangeListener = this.listener;
        if (onStatusChangeListener != null) {
            onStatusChangeListener.onStatusChanged(-1, null);
        }
        Log.d(TAG, "sg factor fail");
    }

    private boolean isSuggestCommunityStatusOk() {
        if (isOverDate(this.sharedPreferencesHelper.getLastSuggestCommunityShowTime(), 1)) {
            AccountService accountService = (AccountService) this.context.getService("account");
            if (accountService.hasAccount()) {
                if (accountService.getUserProfile() == null || !accountService.getUserProfile().isCurator()) {
                    return true;
                }
                Log.d(TAG, "sg: do not show sg, as is a curator");
                return false;
            }
            if (NVApplication.CLIENT_TYPE == 101) {
                return true;
            }
            Log.d(TAG, "sg : no user for master");
        }
        return false;
    }

    private void requestSuggestCommunity() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j = lastSuggestPromptRequestTime;
        if (j != 0 && jElapsedRealtime - j < 600000) {
            OnStatusChangeListener onStatusChangeListener = this.listener;
            if (onStatusChangeListener != null) {
                onStatusChangeListener.onStatusChanged(-1, null);
                return;
            }
            return;
        }
        lastSuggestPromptRequestTime = jElapsedRealtime;
        ((ApiService) this.context.getService("api")).exec(ApiRequest.builder().global().path("/community/suggested").param(IjkMediaMeta.IJKM_KEY_LANGUAGE, ((ContentLanguageService) this.context.getService("content_language")).getRequestPrefLanguageWithLocalAsDefault()).build(), new ApiResponseListener<MyCommunityListResponse>(MyCommunityListResponse.class) { // from class: com.narvii.master.BottomDrawerHelper.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, MyCommunityListResponse myCommunityListResponse) throws Exception {
                List<Community> list;
                if (myCommunityListResponse == null || (list = myCommunityListResponse.communityList) == null || list.size() <= 2) {
                    BottomDrawerHelper.this.isRunning = false;
                    if (BottomDrawerHelper.this.listener != null) {
                        BottomDrawerHelper.this.listener.onStatusChanged(-1, null);
                    }
                    Log.d(BottomDrawerHelper.TAG, "fetched sg data, but not satisfied");
                    return;
                }
                if (BottomDrawerHelper.this.listener != null) {
                    Log.d(BottomDrawerHelper.TAG, "begin to show sg");
                    BottomDrawerHelper.this.isRunning = false;
                    BottomDrawerHelper.this.listener.onStatusChanged(2, myCommunityListResponse);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                BottomDrawerHelper.this.isRunning = false;
                if (BottomDrawerHelper.this.listener != null) {
                    BottomDrawerHelper.this.listener.onStatusChanged(-1, null);
                }
            }
        });
    }

    private boolean isGlobalStatusOk() {
        return enoughIntervalFromLast();
    }

    private boolean enoughIntervalFromLast() {
        return isOverMins(lastShowTime(), 30);
    }

    private long lastShowTime() {
        return this.prefs.getLong("bottom_drawer_last_showtime", 0L);
    }

    private boolean isOverMins(long j, int i) {
        return new Date().getTime() - j >= ((long) ((i * 60) * 1000));
    }

    private boolean isOverDate(long j, int i) {
        return new Date().getTime() - j >= ((long) ((((i * 24) * 60) * 60) * 1000));
    }
}
