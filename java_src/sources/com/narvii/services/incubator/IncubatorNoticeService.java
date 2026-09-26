package com.narvii.services.incubator;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.community.ReminderCheckMapResponse;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.notice.ReminderFullCheckResponse;
import com.narvii.notice.ReminderFullCheckResult;
import com.narvii.util.Callback;
import com.narvii.util.EventDispatcher;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class IncubatorNoticeService extends AccountService.ProfileListener {
    private final AccountService accountService;
    private boolean active;
    NVContext ctx;
    EventDispatcher<HasReminderChangeListener> dispatcher = new EventDispatcher<>();
    private ApiRequest globalNoticeRequest;
    boolean hasReminder;
    long lastCheckTime;
    private final BroadcastReceiver receiver;
    private ApiRequest request;

    /* JADX INFO: renamed from: com.narvii.services.incubator.IncubatorNoticeService$1, reason: invalid class name */
    class AnonymousClass1 extends BroadcastReceiver {
        AnonymousClass1() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onReceive$0(HasReminderChangeListener hasReminderChangeListener) {
            hasReminderChangeListener.onHasReminderChanged(IncubatorNoticeService.this.hasReminder);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (AccountService.ACTION_ACCOUNT_CHANGED.equals(intent.getAction())) {
                IncubatorNoticeService incubatorNoticeService = IncubatorNoticeService.this;
                incubatorNoticeService.hasReminder = false;
                incubatorNoticeService.lastCheckTime = 0L;
                incubatorNoticeService.dispatcher.dispatch(new Callback() { // from class: com.narvii.services.incubator.b
                    @Override // com.narvii.util.Callback
                    public final void call(Object obj) {
                        this.f2730a.lambda$onReceive$0((IncubatorNoticeService.HasReminderChangeListener) obj);
                    }
                });
                IncubatorNoticeService.this.refresh(true);
            }
        }
    }

    /* JADX INFO: renamed from: com.narvii.services.incubator.IncubatorNoticeService$2, reason: invalid class name */
    class AnonymousClass2 extends ApiResponseListener<ReminderFullCheckResponse> {
        AnonymousClass2(Class cls) {
            super(cls);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onFinish$0(HasReminderChangeListener hasReminderChangeListener) {
            hasReminderChangeListener.onHasReminderChanged(IncubatorNoticeService.this.hasReminder);
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, ReminderFullCheckResponse reminderFullCheckResponse) throws Exception {
            IncubatorNoticeService.this.request = null;
            IncubatorNoticeService incubatorNoticeService = IncubatorNoticeService.this;
            boolean z6 = incubatorNoticeService.hasReminder;
            ReminderFullCheckResult reminderFullCheckResult = reminderFullCheckResponse.reminderFullCheckResult;
            if (reminderFullCheckResult != null) {
                incubatorNoticeService.hasReminder = reminderFullCheckResult.hasReminder;
            }
            if (z6 != incubatorNoticeService.hasReminder) {
                incubatorNoticeService.dispatcher.dispatch(new Callback() { // from class: com.narvii.services.incubator.c
                    @Override // com.narvii.util.Callback
                    public final void call(Object obj) {
                        this.f2731a.lambda$onFinish$0((IncubatorNoticeService.HasReminderChangeListener) obj);
                    }
                });
            }
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, String str, @Nullable ApiResponse apiResponse, Throwable th) {
            super.onFail(apiRequest, i10, list, str, apiResponse, th);
            IncubatorNoticeService.this.request = null;
        }
    }

    public interface HasReminderChangeListener {
        void onHasReminderChanged(boolean z6);
    }

    public boolean hasReminder() {
        return this.hasReminder;
    }

    public void invalidate() {
        this.lastCheckTime = 0L;
    }

    public boolean isActive() {
        return this.active;
    }

    public boolean isFullCheckRequesting() {
        return this.request != null;
    }

    @Override // com.narvii.account.AccountService.ProfileListener
    public void onProfileChanged(int i10, User user) {
    }

    public void setActive(boolean z6) {
        this.active = z6;
    }

    private void invalidateNoticeResult() {
        ApiRequest apiRequest = this.globalNoticeRequest;
        if (apiRequest != null) {
            apiRequest.tag("_invalidateNoticeResult", Boolean.TRUE);
        }
    }

    private void invalidateNotificationResult() {
        ApiRequest apiRequest = this.globalNoticeRequest;
        if (apiRequest != null) {
            apiRequest.tag("_invalidateNotification", Boolean.TRUE);
        }
    }

    public void addReminderChangeListener(HasReminderChangeListener hasReminderChangeListener) {
        this.dispatcher.addListener(hasReminderChangeListener);
    }

    public void refresh(boolean z6) {
        if (this.accountService.hasAccount()) {
            if (z6 || SystemClock.elapsedRealtime() - this.lastCheckTime >= LiveLayerService.REFRESH_INTERVAL) {
                ApiService apiService = (ApiService) this.ctx.getService("api");
                ApiRequest apiRequest = this.request;
                if (apiRequest != null) {
                    apiService.abort(apiRequest);
                    this.request = null;
                }
                ApiRequest apiRequestBuild = ApiRequest.builder().global().path("/reminder/full-check").param("ignoreUnreadChatThreadsCount", Boolean.TRUE).build();
                this.request = apiRequestBuild;
                apiService.exec(apiRequestBuild, new AnonymousClass2(ReminderFullCheckResponse.class));
                this.lastCheckTime = SystemClock.elapsedRealtime();
            }
        }
    }

    public void removeReminderChangeListener(HasReminderChangeListener hasReminderChangeListener) {
        this.dispatcher.removeListener(hasReminderChangeListener);
    }

    public void sendGlobalNoticeRequest() {
        ApiService apiService = (ApiService) this.ctx.getService("api");
        ApiRequest apiRequest = this.globalNoticeRequest;
        if (apiRequest != null) {
            apiService.abort(apiRequest);
            this.globalNoticeRequest = null;
        }
        ApiRequest apiRequestBuild = ApiRequest.builder().global().path("/reminder/check").param("ignoreUnreadChatThreadsCount", Boolean.TRUE).param("timezone", Integer.valueOf(Utils.getTimeZoneInMin())).build();
        this.globalNoticeRequest = apiRequestBuild;
        apiService.exec(apiRequestBuild, new ApiResponseListener<ReminderCheckMapResponse>(ReminderCheckMapResponse.class) { // from class: com.narvii.services.incubator.IncubatorNoticeService.3
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest2, ReminderCheckMapResponse reminderCheckMapResponse) throws Exception {
                super.onFinish(apiRequest2, reminderCheckMapResponse);
                if (reminderCheckMapResponse.reminderCheckResult != null) {
                    AccountService accountService = (AccountService) IncubatorNoticeService.this.ctx.getService("account");
                    if (!apiRequest2.tagBoolean("_invalidateNoticeResult", false)) {
                        accountService.updateNoticeCount(reminderCheckMapResponse.reminderCheckResult.noticesCount, reminderCheckMapResponse.timestamp, true);
                    }
                    if (!apiRequest2.tagBoolean("_invalidateNotification", false)) {
                        accountService.updateNotificationCount(reminderCheckMapResponse.reminderCheckResult.notificationsCount, reminderCheckMapResponse.timestamp, true);
                    }
                }
                IncubatorNoticeService.this.globalNoticeRequest = null;
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest2, int i10, @Nullable List<NameValuePair> list, String str, @Nullable ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest2, i10, list, str, apiResponse, th);
                IncubatorNoticeService.this.globalNoticeRequest = null;
            }
        });
    }

    public IncubatorNoticeService(NVContext nVContext) {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        this.receiver = anonymousClass1;
        this.ctx = nVContext;
        AccountService accountService = (AccountService) nVContext.getService("account");
        this.accountService = accountService;
        accountService.addProfileListener(this);
        LocalBroadcastManager.b(nVContext.getContext()).c(anonymousClass1, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
    }

    @Override // com.narvii.account.AccountService.ProfileListener
    public void onNoticeCountChanged(int i10) {
        super.onNoticeCountChanged(i10);
        invalidateNoticeResult();
    }

    @Override // com.narvii.account.AccountService.ProfileListener
    public void onNotificationCountChanged(int i10) {
        super.onNotificationCountChanged(i10);
        if (i10 == 0) {
            invalidateNotificationResult();
        }
    }
}
