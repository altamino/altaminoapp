package com.narvii.services.incubator;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.SystemClock;
import android.support.v4.content.LocalBroadcastManager;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.community.ReminderCheckMapResponse;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.notice.ReminderFullCheckResponse;
import com.narvii.notice.ReminderFullCheckResult;
import com.narvii.services.incubator.IncubatorNoticeService;
import com.narvii.util.Callback;
import com.narvii.util.EventDispatcher;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.List;

/* loaded from: classes3.dex */
public class IncubatorNoticeService extends AccountService.ProfileListener {
    private final AccountService accountService;
    private boolean active;
    NVContext ctx;
    private ApiRequest globalNoticeRequest;
    boolean hasReminder;
    long lastCheckTime;
    private ApiRequest request;
    EventDispatcher<HasReminderChangeListener> dispatcher = new EventDispatcher<>();
    private final BroadcastReceiver receiver = new AnonymousClass1();

    public interface HasReminderChangeListener {
        void onHasReminderChanged(boolean z);
    }

    @Override // com.narvii.account.AccountService.ProfileListener
    public void onProfileChanged(int i, User user) {
    }

    /* renamed from: com.narvii.services.incubator.IncubatorNoticeService$1, reason: invalid class name */
    class AnonymousClass1 extends BroadcastReceiver {
        AnonymousClass1() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (AccountService.ACTION_ACCOUNT_CHANGED.equals(intent.getAction())) {
                IncubatorNoticeService incubatorNoticeService = IncubatorNoticeService.this;
                incubatorNoticeService.hasReminder = false;
                incubatorNoticeService.lastCheckTime = 0L;
                incubatorNoticeService.dispatcher.dispatch(new Callback() { // from class: com.narvii.services.incubator.-$$Lambda$IncubatorNoticeService$1$7aYMu4WX9CkHV3FEhqcMNp6n3qs
                    @Override // com.narvii.util.Callback
                    public final void call(Object obj) {
                        this.f$0.lambda$onReceive$0$IncubatorNoticeService$1((IncubatorNoticeService.HasReminderChangeListener) obj);
                    }
                });
                IncubatorNoticeService.this.refresh(true);
            }
        }

        public /* synthetic */ void lambda$onReceive$0$IncubatorNoticeService$1(HasReminderChangeListener hasReminderChangeListener) {
            hasReminderChangeListener.onHasReminderChanged(IncubatorNoticeService.this.hasReminder);
        }
    }

    public void setActive(boolean z) {
        this.active = z;
    }

    public boolean isActive() {
        return this.active;
    }

    @Override // com.narvii.account.AccountService.ProfileListener
    public void onNotificationCountChanged(int i) {
        super.onNotificationCountChanged(i);
        if (i == 0) {
            invalidateNotificationResult();
        }
    }

    @Override // com.narvii.account.AccountService.ProfileListener
    public void onNoticeCountChanged(int i) {
        super.onNoticeCountChanged(i);
        invalidateNoticeResult();
    }

    public boolean hasReminder() {
        return this.hasReminder;
    }

    public IncubatorNoticeService(NVContext nVContext) {
        this.ctx = nVContext;
        this.accountService = (AccountService) nVContext.getService("account");
        this.accountService.addProfileListener(this);
        LocalBroadcastManager.getInstance(nVContext.getContext()).registerReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
    }

    public void addReminderChangeListener(HasReminderChangeListener hasReminderChangeListener) {
        this.dispatcher.addListener(hasReminderChangeListener);
    }

    public void removeReminderChangeListener(HasReminderChangeListener hasReminderChangeListener) {
        this.dispatcher.removeListener(hasReminderChangeListener);
    }

    public void invalidate() {
        this.lastCheckTime = 0L;
    }

    public boolean isFullCheckRequesting() {
        return this.request != null;
    }

    public void refresh(boolean z) {
        if (this.accountService.hasAccount()) {
            if (z || SystemClock.elapsedRealtime() - this.lastCheckTime >= LiveLayerService.REFRESH_INTERVAL) {
                ApiService apiService = (ApiService) this.ctx.getService("api");
                ApiRequest apiRequest = this.request;
                if (apiRequest != null) {
                    apiService.abort(apiRequest);
                    this.request = null;
                }
                this.request = ApiRequest.builder().global().path("/reminder/full-check").param("ignoreUnreadChatThreadsCount", true).build();
                apiService.exec(this.request, new AnonymousClass2(ReminderFullCheckResponse.class));
                this.lastCheckTime = SystemClock.elapsedRealtime();
            }
        }
    }

    /* renamed from: com.narvii.services.incubator.IncubatorNoticeService$2, reason: invalid class name */
    class AnonymousClass2 extends ApiResponseListener<ReminderFullCheckResponse> {
        AnonymousClass2(Class cls) {
            super(cls);
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, ReminderFullCheckResponse reminderFullCheckResponse) throws Exception {
            IncubatorNoticeService.this.request = null;
            IncubatorNoticeService incubatorNoticeService = IncubatorNoticeService.this;
            boolean z = incubatorNoticeService.hasReminder;
            ReminderFullCheckResult reminderFullCheckResult = reminderFullCheckResponse.reminderFullCheckResult;
            if (reminderFullCheckResult != null) {
                incubatorNoticeService.hasReminder = reminderFullCheckResult.hasReminder;
            }
            IncubatorNoticeService incubatorNoticeService2 = IncubatorNoticeService.this;
            if (z != incubatorNoticeService2.hasReminder) {
                incubatorNoticeService2.dispatcher.dispatch(new Callback() { // from class: com.narvii.services.incubator.-$$Lambda$IncubatorNoticeService$2$hpVPPOmYLjo0Ztd4dvADThGbkSY
                    @Override // com.narvii.util.Callback
                    public final void call(Object obj) {
                        this.f$0.lambda$onFinish$0$IncubatorNoticeService$2((IncubatorNoticeService.HasReminderChangeListener) obj);
                    }
                });
            }
        }

        public /* synthetic */ void lambda$onFinish$0$IncubatorNoticeService$2(HasReminderChangeListener hasReminderChangeListener) {
            hasReminderChangeListener.onHasReminderChanged(IncubatorNoticeService.this.hasReminder);
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            super.onFail(apiRequest, i, list, str, apiResponse, th);
            IncubatorNoticeService.this.request = null;
        }
    }

    public void sendGlobalNoticeRequest() {
        ApiService apiService = (ApiService) this.ctx.getService("api");
        ApiRequest apiRequest = this.globalNoticeRequest;
        if (apiRequest != null) {
            apiService.abort(apiRequest);
            this.globalNoticeRequest = null;
        }
        this.globalNoticeRequest = ApiRequest.builder().global().path("/reminder/check").param("ignoreUnreadChatThreadsCount", true).param("timezone", Integer.valueOf(Utils.getTimeZoneInMin())).build();
        apiService.exec(this.globalNoticeRequest, new ApiResponseListener<ReminderCheckMapResponse>(ReminderCheckMapResponse.class) { // from class: com.narvii.services.incubator.IncubatorNoticeService.3
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest2, ReminderCheckMapResponse reminderCheckMapResponse) throws Exception {
                super.onFinish(apiRequest2, (ApiRequest) reminderCheckMapResponse);
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
            public void onFail(ApiRequest apiRequest2, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest2, i, list, str, apiResponse, th);
                IncubatorNoticeService.this.globalNoticeRequest = null;
            }
        });
    }

    private void invalidateNotificationResult() {
        ApiRequest apiRequest = this.globalNoticeRequest;
        if (apiRequest != null) {
            apiRequest.tag("_invalidateNotification", true);
        }
    }

    private void invalidateNoticeResult() {
        ApiRequest apiRequest = this.globalNoticeRequest;
        if (apiRequest != null) {
            apiRequest.tag("_invalidateNoticeResult", true);
        }
    }
}
