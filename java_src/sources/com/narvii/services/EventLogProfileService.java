package com.narvii.services;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.SystemClock;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.language.ContentLanguageService;
import com.narvii.logging.EventLogProfileResponse;
import com.narvii.logging.ParticipatedExperiments;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.Callback;
import com.narvii.util.DateUtils;
import com.narvii.util.EventDispatcher;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.PreferencesHelper;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.text.TextUtils;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class EventLogProfileService {
    public static final long EVENT_LOG_PROFILE_RATE_CONTROL = 900000;
    private AccountService accountService;
    private ApiRequest apiRequest;
    String error;
    long lastProfileRequestTime;
    EventDispatcher<EventLogProfileListener> listeners = new EventDispatcher<>();
    private boolean needsBirthDateUpdate = false;
    public boolean needsCompleteSignupBirthday = false;
    NVContext nvContext;
    private PreferencesHelper prefsHelper;
    private final BroadcastReceiver receiver;
    EventLogProfileResponse response;
    private Boolean showMyCommunityTab;

    /* JADX INFO: renamed from: com.narvii.services.EventLogProfileService$1, reason: invalid class name */
    class AnonymousClass1 extends BroadcastReceiver {
        AnonymousClass1() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (AccountService.ACTION_ACCOUNT_CHANGED.equals(intent.getAction())) {
                EventLogProfileService eventLogProfileService = EventLogProfileService.this;
                eventLogProfileService.error = null;
                eventLogProfileService.response = null;
                eventLogProfileService.listeners.dispatch(new Callback() { // from class: com.narvii.services.b
                    @Override // com.narvii.util.Callback
                    public final void call(Object obj) {
                        ((EventLogProfileService.EventLogProfileListener) obj).clearResponseWhenAccountChange();
                    }
                });
                if (EventLogProfileService.this.apiRequest != null) {
                    ((ApiService) EventLogProfileService.this.nvContext.getService("api")).abort(EventLogProfileService.this.apiRequest);
                }
                EventLogProfileService.this.refresh(true, true);
            }
        }
    }

    /* JADX INFO: renamed from: com.narvii.services.EventLogProfileService$2, reason: invalid class name */
    class AnonymousClass2 extends ApiResponseListener<EventLogProfileResponse> {
        final /* synthetic */ boolean val$accountChange;
        final /* synthetic */ String val$curLanguage;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Class cls, String str, boolean z6) {
            super(cls);
            this.val$curLanguage = str;
            this.val$accountChange = z6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onFail$2(boolean z6, EventLogProfileListener eventLogProfileListener) {
            eventLogProfileListener.onRequestFailed(EventLogProfileService.this.error, z6);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onFinish$0(boolean z6, EventLogProfileListener eventLogProfileListener) {
            eventLogProfileListener.onProfileChanged(EventLogProfileService.this.response, z6);
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, EventLogProfileResponse eventLogProfileResponse) throws Exception {
            super.onFinish(apiRequest, eventLogProfileResponse);
            EventLogProfileService.this.apiRequest = null;
            EventLogProfileService eventLogProfileService = EventLogProfileService.this;
            eventLogProfileService.response = eventLogProfileResponse;
            eventLogProfileService.showMyCommunityTab = null;
            EventLogProfileService.this.accountService.getPrefs().edit().putString("eventLogProfile", JacksonUtils.writeAsString(eventLogProfileResponse)).apply();
            if (eventLogProfileResponse.participatedExperiments != null) {
                EventLogProfileService.this.prefsHelper.saveCommunityTabExp(eventLogProfileResponse.participatedExperiments.communityTabExp);
            }
            if (eventLogProfileResponse.contentLanguage == null) {
                eventLogProfileResponse.contentLanguage = this.val$curLanguage;
            }
            Log.i("interestPicker__", "refresh profile, account change: " + this.val$accountChange);
            EventDispatcher<EventLogProfileListener> eventDispatcher = EventLogProfileService.this.listeners;
            final boolean z6 = this.val$accountChange;
            eventDispatcher.dispatch(new Callback() { // from class: com.narvii.services.c
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    this.f2725a.lambda$onFinish$0(z6, (EventLogProfileService.EventLogProfileListener) obj);
                }
            });
            EventLogProfileService eventLogProfileService2 = EventLogProfileService.this;
            if (eventLogProfileService2.needsCompleteSignupBirthday) {
                return;
            }
            eventLogProfileService2.needsBirthDateUpdate = eventLogProfileResponse.needsBirthDateUpdate;
            if (EventLogProfileService.this.accountService.hasAccount() && EventLogProfileService.this.needsBirthDateUpdate && EventLogProfileService.this.needsShowBirthDateUpdate()) {
                EventLogProfileService.this.updateBirthdateForceFreq();
                EventLogProfileService.this.listeners.dispatch(new Callback() { // from class: com.narvii.services.d
                    @Override // com.narvii.util.Callback
                    public final void call(Object obj) {
                        ((EventLogProfileService.EventLogProfileListener) obj).shouldShowDialog();
                    }
                });
            }
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            super.onFail(apiRequest, i10, list, str, apiResponse, th);
            EventLogProfileService eventLogProfileService = EventLogProfileService.this;
            eventLogProfileService.error = str;
            eventLogProfileService.apiRequest = null;
            EventDispatcher<EventLogProfileListener> eventDispatcher = EventLogProfileService.this.listeners;
            final boolean z6 = this.val$accountChange;
            eventDispatcher.dispatch(new Callback() { // from class: com.narvii.services.e
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    this.f2727a.lambda$onFail$2(z6, (EventLogProfileService.EventLogProfileListener) obj);
                }
            });
        }
    }

    public interface EventLogProfileListener {
        void clearResponseWhenAccountChange();

        void onProfileChanged(EventLogProfileResponse eventLogProfileResponse, boolean z6);

        void onRequestFailed(String str, boolean z6);

        void shouldShowDialog();
    }

    public String getError() {
        return this.error;
    }

    public boolean getNeedsBirthDateUpdate() {
        return this.needsBirthDateUpdate;
    }

    public EventLogProfileResponse getResponse() {
        return this.response;
    }

    public boolean isLoading() {
        return this.apiRequest != null;
    }

    public void resetShowCommunityTab() {
        this.showMyCommunityTab = null;
    }

    public void resume() {
        refresh(false, false);
    }

    public void addListener(EventLogProfileListener eventLogProfileListener) {
        this.listeners.addListener(eventLogProfileListener);
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

    public void refresh(boolean z6, boolean z10) {
        if (z6 || SystemClock.elapsedRealtime() - this.lastProfileRequestTime >= 900000) {
            this.lastProfileRequestTime = SystemClock.elapsedRealtime();
            ApiService apiService = (ApiService) this.nvContext.getService("api");
            this.error = null;
            String requestPrefLanguageWithLocalAsDefault = ((ContentLanguageService) this.nvContext.getService("content_language")).getRequestPrefLanguageWithLocalAsDefault();
            ApiRequest apiRequestBuild = new ApiRequest.Builder().path("/eventlog/profile").param("language", requestPrefLanguageWithLocalAsDefault).build();
            this.apiRequest = apiRequestBuild;
            apiService.exec(apiRequestBuild, new AnonymousClass2(EventLogProfileResponse.class, requestPrefLanguageWithLocalAsDefault, z10));
        }
    }

    public void refreshIfIdle() {
        if (this.response == null && this.error == null && !isLoading()) {
            refresh(true, false);
        }
    }

    public void removeListener(EventLogProfileListener eventLogProfileListener) {
        this.listeners.removeListener(eventLogProfileListener);
    }

    public void updateBirthdateForceFreq() {
        this.prefsHelper.updateBirthdateForceFreq(this.accountService.getUserId());
        this.prefsHelper.setBirthdateForceTimestamp(this.accountService.getUserId());
    }

    public EventLogProfileService(NVContext nVContext) {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        this.receiver = anonymousClass1;
        this.nvContext = nVContext;
        LocalBroadcastManager.b(nVContext.getContext()).c(anonymousClass1, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        this.accountService = (AccountService) nVContext.getService("account");
        this.prefsHelper = new PreferencesHelper(nVContext);
    }

    private boolean isSameDay(Date date, Date date2) {
        return DateUtils.isSameDay(date, date2);
    }

    public boolean alreadyShownBirthdayFlowThreeTimes() {
        Calendar calendar = Calendar.getInstance();
        Date date = new Date(this.prefsHelper.getBirthdateForceTimestamp(this.accountService.getUserId()));
        if (this.prefsHelper.getBirthdateForceFreq(this.accountService.getUserId()) >= 3 && !isSameDay(calendar.getTime(), date)) {
            return true;
        }
        return false;
    }

    public boolean needsShowBirthDateUpdate() {
        Calendar calendar = Calendar.getInstance();
        Date date = new Date(this.prefsHelper.getBirthdateForceTimestamp(this.accountService.getUserId()));
        if (this.prefsHelper.getBirthdateForceFreq(this.accountService.getUserId()) < 3 && !isSameDay(calendar.getTime(), date)) {
            return true;
        }
        return false;
    }
}
