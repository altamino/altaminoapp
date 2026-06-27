package com.narvii.services;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.SystemClock;
import android.support.v4.content.LocalBroadcastManager;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.language.ContentLanguageService;
import com.narvii.logging.EventLogProfileResponse;
import com.narvii.logging.ParticipatedExperiments;
import com.narvii.model.api.ApiResponse;
import com.narvii.services.EventLogProfileService;
import com.narvii.util.Callback;
import com.narvii.util.EventDispatcher;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.PreferencesHelper;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.text.TextUtils;
import java.util.List;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes3.dex */
public class EventLogProfileService {
    public static final long EVENT_LOG_PROFILE_RATE_CONTROL = 900000;
    private AccountService accountService;
    private ApiRequest apiRequest;
    String error;
    long lastProfileRequestTime;
    NVContext nvContext;
    private PreferencesHelper prefsHelper;
    EventLogProfileResponse response;
    private Boolean showMyCommunityTab;
    EventDispatcher<EventLogProfileListener> listeners = new EventDispatcher<>();
    private final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.services.EventLogProfileService.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (AccountService.ACTION_ACCOUNT_CHANGED.equals(intent.getAction())) {
                EventLogProfileService eventLogProfileService = EventLogProfileService.this;
                eventLogProfileService.error = null;
                eventLogProfileService.response = null;
                eventLogProfileService.listeners.dispatch(new Callback<EventLogProfileListener>() { // from class: com.narvii.services.EventLogProfileService.1.1
                    @Override // com.narvii.util.Callback
                    public void call(EventLogProfileListener eventLogProfileListener) {
                        eventLogProfileListener.clearResponseWhenAccountChange();
                    }
                });
                if (EventLogProfileService.this.apiRequest != null) {
                    ((ApiService) EventLogProfileService.this.nvContext.getService("api")).abort(EventLogProfileService.this.apiRequest);
                }
                EventLogProfileService.this.refresh(true, true);
            }
        }
    };

    /* loaded from: classes.dex */
    public interface EventLogProfileListener {
        void clearResponseWhenAccountChange();

        void onProfileChanged(EventLogProfileResponse eventLogProfileResponse, boolean z);

        void onRequestFailed(String str, boolean z);
    }

    public EventLogProfileResponse getResponse() {
        return this.response;
    }

    public boolean isShowMyCommunityTab() {
        ParticipatedExperiments participatedExperiments;
        if (this.showMyCommunityTab == null) {
            int communityTabExp = this.prefsHelper.getCommunityTabExp();
            if (communityTabExp == -1 || communityTabExp == 0) {
                EventLogProfileResponse response = getResponse();
                if (response == null) {
                    response = getSavedResponse();
                }
                this.showMyCommunityTab = Boolean.valueOf(response == null || (participatedExperiments = response.participatedExperiments) == null || participatedExperiments.communityTabExp != 2);
            } else {
                this.showMyCommunityTab = Boolean.valueOf(communityTabExp != 2);
            }
        }
        return this.showMyCommunityTab.booleanValue();
    }

    public EventLogProfileResponse getSavedResponse() {
        EventLogProfileResponse eventLogProfileResponse = this.response;
        if (eventLogProfileResponse != null) {
            return eventLogProfileResponse;
        }
        String string = this.accountService.getPrefs().getString("eventLogProfile", "");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return (EventLogProfileResponse) JacksonUtils.readAs(string, EventLogProfileResponse.class);
    }

    public String getError() {
        return this.error;
    }

    public boolean isLoading() {
        return this.apiRequest != null;
    }

    public void addListener(EventLogProfileListener eventLogProfileListener) {
        this.listeners.addListener(eventLogProfileListener);
    }

    public void removeListener(EventLogProfileListener eventLogProfileListener) {
        this.listeners.removeListener(eventLogProfileListener);
    }

    public void resume() {
        refresh(false, false);
    }

    public EventLogProfileService(NVContext nVContext) {
        this.nvContext = nVContext;
        LocalBroadcastManager.getInstance(nVContext.getContext()).registerReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        this.accountService = (AccountService) nVContext.getService("account");
        this.prefsHelper = new PreferencesHelper(nVContext);
    }

    public void refresh(boolean z, boolean z2) {
        if (z || SystemClock.elapsedRealtime() - this.lastProfileRequestTime >= EVENT_LOG_PROFILE_RATE_CONTROL) {
            this.lastProfileRequestTime = SystemClock.elapsedRealtime();
            ApiService apiService = (ApiService) this.nvContext.getService("api");
            this.error = null;
            String requestPrefLanguageWithLocalAsDefault = ((ContentLanguageService) this.nvContext.getService("content_language")).getRequestPrefLanguageWithLocalAsDefault();
            this.apiRequest = new ApiRequest.Builder().path("/eventlog/profile").param(IjkMediaMeta.IJKM_KEY_LANGUAGE, requestPrefLanguageWithLocalAsDefault).build();
            apiService.exec(this.apiRequest, new AnonymousClass2(EventLogProfileResponse.class, requestPrefLanguageWithLocalAsDefault, z2));
        }
    }

    /* renamed from: com.narvii.services.EventLogProfileService$2, reason: invalid class name */
    class AnonymousClass2 extends ApiResponseListener<EventLogProfileResponse> {
        final /* synthetic */ boolean val$accountChange;
        final /* synthetic */ String val$curLanguage;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Class cls, String str, boolean z) {
            super(cls);
            this.val$curLanguage = str;
            this.val$accountChange = z;
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, EventLogProfileResponse eventLogProfileResponse) throws Exception {
            super.onFinish(apiRequest, (ApiRequest) eventLogProfileResponse);
            EventLogProfileService.this.apiRequest = null;
            EventLogProfileService eventLogProfileService = EventLogProfileService.this;
            eventLogProfileService.response = eventLogProfileResponse;
            eventLogProfileService.accountService.getPrefs().edit().putString("eventLogProfile", JacksonUtils.writeAsString(eventLogProfileResponse)).apply();
            if (eventLogProfileResponse.participatedExperiments != null) {
                EventLogProfileService.this.prefsHelper.saveCommunityTabExp(eventLogProfileResponse.participatedExperiments.communityTabExp);
            }
            if (eventLogProfileResponse.contentLanguage == null) {
                eventLogProfileResponse.contentLanguage = this.val$curLanguage;
            }
            Log.i("interestPicker__", "refresh profile, account change: " + this.val$accountChange);
            EventDispatcher<EventLogProfileListener> eventDispatcher = EventLogProfileService.this.listeners;
            final boolean z = this.val$accountChange;
            eventDispatcher.dispatch(new Callback() { // from class: com.narvii.services.-$$Lambda$EventLogProfileService$2$DQ8oxfCzTTKb-h_pQ_ATVEGX9OA
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    this.f$0.lambda$onFinish$0$EventLogProfileService$2(z, (EventLogProfileService.EventLogProfileListener) obj);
                }
            });
        }

        public /* synthetic */ void lambda$onFinish$0$EventLogProfileService$2(boolean z, EventLogProfileListener eventLogProfileListener) {
            eventLogProfileListener.onProfileChanged(EventLogProfileService.this.response, z);
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            super.onFail(apiRequest, i, list, str, apiResponse, th);
            EventLogProfileService eventLogProfileService = EventLogProfileService.this;
            eventLogProfileService.error = str;
            eventLogProfileService.apiRequest = null;
            EventDispatcher<EventLogProfileListener> eventDispatcher = EventLogProfileService.this.listeners;
            final boolean z = this.val$accountChange;
            eventDispatcher.dispatch(new Callback() { // from class: com.narvii.services.-$$Lambda$EventLogProfileService$2$uTsiBIO-IMtQtsSO0cq1YQ8WctQ
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    this.f$0.lambda$onFail$1$EventLogProfileService$2(z, (EventLogProfileService.EventLogProfileListener) obj);
                }
            });
        }

        public /* synthetic */ void lambda$onFail$1$EventLogProfileService$2(boolean z, EventLogProfileListener eventLogProfileListener) {
            eventLogProfileListener.onRequestFailed(EventLogProfileService.this.error, z);
        }
    }

    public void refreshIfIdle() {
        if (this.response == null && this.error == null && !isLoading()) {
            refresh(true, false);
        }
    }
}
