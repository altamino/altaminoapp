package com.narvii.community;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.narvii.account.AccountService;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.chat.core.ChatService;
import com.narvii.list.NVPagedAdapter;
import com.narvii.master.CommunityListResponse;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.notification.NotificationListener;
import com.narvii.pushservice.PushAPS;
import com.narvii.pushservice.PushPayload;
import com.narvii.pushservice.PushService;
import com.narvii.services.incubator.IncubatorNoticeService;
import com.narvii.util.Callback;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.EventDispatcher;
import com.narvii.util.FilterHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.LanguageHelper;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingService;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class MyCommunityListService {
    final MyCommunityListAdapter adapter;
    AffiliationsService affiliationsService;
    ApiService api;
    ChatService chatService;
    NVContext context;
    FilterHelper filterHelper;
    List<Community> filterList;
    ReminderCheck globalReminderCheck;
    boolean hasUnreadAlert;
    private final PushService.PushListener pushListener;
    final BroadcastReceiver receiver;
    final ApiResponseListener<ReminderCheckMapResponse> reminderCheckListener;
    final LinkedList<Integer> reminderRequestQueue;
    final Runnable reminderSendQueue;
    long requestTime;
    final ApiResponseListener<CommunityListResponse> suggestCommunityListener;
    String suggestError;
    List<Community> suggestList;
    ApiRequest suggestRequest;
    long suggestRequestTime;
    Integer suggestT3_oldCount;
    String suggestTags;
    private boolean suggestedRequestSent;
    final HashMap<Integer, String> timestamps = new HashMap<>();
    final HashMap<Integer, User> userProfiles = new HashMap<>();
    final HashMap<Integer, String> userTimestamps = new HashMap<>();
    final HashMap<Integer, ReminderCheck> reminders = new HashMap<>();
    final HashMap<Integer, String> reminderTimestamps = new HashMap<>();
    final HashMap<Integer, Long> reminderRequestTimes = new HashMap<>();
    final HashMap<Integer, ApiRequest> reminderRequests = new HashMap<>();
    final HashSet<Integer> invalidateNotificationRequests = new HashSet<>();
    final HashSet<Integer> invalidateNoticeRequests = new HashSet<>();
    final HashSet<Integer> suggestSeenLogs = new HashSet<>();
    final EventDispatcher<MyCommunityListObserver> observers = new EventDispatcher<>();
    private HashSet<Integer> ndcIds = new HashSet<>();
    AccountService.CommunityReminderChangeInGlobalListener communityReminderChangeInGlobalListener = new AccountService.CommunityReminderChangeInGlobalListener() { // from class: com.narvii.community.MyCommunityListService.1
        @Override // com.narvii.account.AccountService.CommunityReminderChangeInGlobalListener
        public void onNoticeCountChanged(int i10, int i11) {
            MyCommunityListService.this.updateCommunityReminder(i10, -1, i11);
        }

        @Override // com.narvii.account.AccountService.CommunityReminderChangeInGlobalListener
        public void onNotificationCountChanged(int i10, int i11) {
            MyCommunityListService.this.updateCommunityReminder(i10, i11, -1);
        }
    };
    AccountService.ProfileListener profileListener = new AccountService.ProfileListener() { // from class: com.narvii.community.MyCommunityListService.2
        @Override // com.narvii.account.AccountService.ProfileListener
        public void onProfileChanged(int i10, User user) {
        }

        @Override // com.narvii.account.AccountService.ProfileListener
        public void onNoticeCountChanged(int i10) {
            super.onNoticeCountChanged(i10);
            MyCommunityListService myCommunityListService = MyCommunityListService.this;
            if (myCommunityListService.globalReminderCheck == null) {
                myCommunityListService.globalReminderCheck = new ReminderCheck();
            }
            MyCommunityListService myCommunityListService2 = MyCommunityListService.this;
            myCommunityListService2.globalReminderCheck.noticesCount = i10;
            myCommunityListService2.updateNoticeService();
        }

        @Override // com.narvii.account.AccountService.ProfileListener
        public void onNotificationCountChanged(int i10) {
            super.onNotificationCountChanged(i10);
            MyCommunityListService myCommunityListService = MyCommunityListService.this;
            if (myCommunityListService.globalReminderCheck == null) {
                myCommunityListService.globalReminderCheck = new ReminderCheck();
            }
            MyCommunityListService myCommunityListService2 = MyCommunityListService.this;
            myCommunityListService2.globalReminderCheck.notificationsCount = i10;
            myCommunityListService2.updateNoticeService();
        }
    };

    class MyCommunityListAdapter extends NVPagedAdapter<Community, MyCommunityListResponse> implements NotificationListener {
        boolean attaching;
        boolean suspendObserver;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<Community> dataType() {
            return Community.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            return null;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            this.attaching = true;
            super.onAttach();
            this.attaching = false;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int pageSize() {
            return 50;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected boolean resetWhenEmpty() {
            return false;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends MyCommunityListResponse> responseType() {
            return MyCommunityListResponse.class;
        }

        public MyCommunityListAdapter(NVContext nVContext) {
            super(nVContext);
            this._list = new ArrayList<>();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            if (!((AccountService) getService("account")).hasAccount()) {
                if (this._list.size() > 0 || !this._isEnd) {
                    resetEmptyList();
                    MyCommunityListService.this.dispatchListChanged(null, null);
                }
                return null;
            }
            if (isEnd() && getCount() == 0) {
                resetEmptyList();
                MyCommunityListService.this.dispatchListChanged(null, null);
            }
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.global().path("/community/joined").param("v", 1);
            if (z6) {
                builder.tag("start0");
            }
            return builder.build();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected List<Community> filterResponseList(List<Community> list, int i10) {
            return new FilterHelper(this).filterDeleted().filter(list);
        }

        @Override // com.narvii.list.NVPagedAdapter
        public void loadNextPage(boolean z6) {
            if (this.attaching) {
                return;
            }
            super.loadNextPage(z6);
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            Object obj = notification.obj;
            if (obj instanceof Community) {
                if (notification.action == "new") {
                    Community community = (Community) obj;
                    AccountService accountService = (AccountService) NVApplication.instance().getService(community.id, "account");
                    User userProfile = accountService.getUserProfile();
                    if (userProfile != null) {
                        MyCommunityListService.this.userProfiles.put(Integer.valueOf(community.id), userProfile);
                        MyCommunityListService.this.userTimestamps.put(Integer.valueOf(community.id), DateTimeFormatter.formatISO8601(new Date(accountService.getUserProfileTimestamp())));
                    }
                    MyCommunityListService.this.refresh(0, null);
                }
                editList(notification, false);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, MyCommunityListResponse myCommunityListResponse, int i10) {
            this.suspendObserver = true;
            super.onPageResponse(apiRequest, myCommunityListResponse, i10);
            this._isEnd = myCommunityListResponse.communityList.size() < pageSize();
            List<Community> list = myCommunityListResponse.communityList;
            if (list != null) {
                for (Community community : list) {
                    MyCommunityListService.this.timestamps.put(Integer.valueOf(community.id), myCommunityListResponse.timestamp);
                    MyCommunityListService.this.ndcIds.add(Integer.valueOf(community.id));
                    if (!MyCommunityListService.this.affiliationsService.contains(community.id)) {
                        MyCommunityListService.this.affiliationsService.opAdd(community.id);
                    }
                }
            }
            Map<Integer, CommunityUserInfo> map = myCommunityListResponse.userInfoInCommunities;
            if (map != null) {
                for (Map.Entry<Integer, CommunityUserInfo> entry : map.entrySet()) {
                    MyCommunityListService.this.userProfiles.put(entry.getKey(), entry.getValue().userProfile);
                    MyCommunityListService.this.userTimestamps.put(entry.getKey(), myCommunityListResponse.timestamp);
                }
            }
            if ("start0".equals(apiRequest.tag())) {
                MyCommunityListService.this.requestTime = SystemClock.elapsedRealtime();
            }
            this.suspendObserver = false;
            MyCommunityListService.this.dispatchListChanged(myCommunityListResponse, i10 == 2 ? Integer.valueOf(this.refreshFlag) : null);
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void refresh(int i10, Callback<Integer> callback) {
            if (!((AccountService) getService("account")).hasAccount() && callback != null) {
                callback.call(0);
            }
            super.refresh(i10, callback);
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public void reorder(List<Community> list) {
            if (!Utils.isListLenientEqual(this._list, list, true)) {
                resetList();
                return;
            }
            this._list.clear();
            this._list.addAll(list);
            notifyDataSetChanged();
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            MyCommunityListService myCommunityListService = MyCommunityListService.this;
            myCommunityListService.filterList = myCommunityListService.filterHelper.filter(this._list);
            if (!this.suspendObserver) {
                MyCommunityListService.this.dispatchListChanged(null, null);
            }
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected void onFailResponse(ApiRequest apiRequest, String str, ApiResponse apiResponse, int i10) {
            ArrayList<T> arrayList;
            if ("start0".equals(apiRequest.tag()) && ((arrayList = this._list) == 0 || arrayList.isEmpty())) {
                MyCommunityListService.this.requestTime = 0L;
            }
            super.onFailResponse(apiRequest, str, apiResponse, i10);
        }
    }

    public interface MyCommunityListObserver {
        void onListChanged(MyCommunityListService myCommunityListService, MyCommunityListResponse myCommunityListResponse, Integer num);

        void onReminderChanged(MyCommunityListService myCommunityListService);

        void onSuggestListChanged(MyCommunityListService myCommunityListService, CommunityListResponse communityListResponse);
    }

    public void addReminderRequestQueue(int i10) {
        addReminderRequestQueue(i10, false);
    }

    public long getCommunityRequestTime() {
        return this.requestTime;
    }

    public HashSet<Integer> getNdcIds() {
        return this.ndcIds;
    }

    public long getSuggestRequestTime() {
        return this.suggestRequestTime;
    }

    public boolean isSuggestedRequestSent() {
        return this.suggestedRequestSent;
    }

    public void refreshSuggestCommunityRequest() {
        refreshSuggestCommunityRequest(null);
    }

    public String suggestErrorMessage() {
        return this.suggestError;
    }

    public List<Community> suggestList() {
        return this.suggestList;
    }

    public String suggestTags() {
        return this.suggestTags;
    }

    private boolean hasLocalUnreadAlert() {
        if (!((AccountService) this.context.getService("account")).hasAccount()) {
            return false;
        }
        Iterator<Community> it = list().iterator();
        while (it.hasNext()) {
            ReminderCheck reminderCheck = this.reminders.get(Integer.valueOf(it.next().id));
            if (reminderCheck != null && reminderCheck.noticesCount + reminderCheck.notificationsCount > 0) {
                return true;
            }
        }
        ReminderCheck reminderCheck2 = this.globalReminderCheck;
        return reminderCheck2 != null && reminderCheck2.noticesCount + reminderCheck2.notificationsCount > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCommunityReminder(int i10, int i11, int i12) {
        if (((AccountService) this.context.getService("account")).hasAccount()) {
            ReminderCheck reminderCheck = this.reminders.get(Integer.valueOf(i10));
            if (reminderCheck != null) {
                ReminderCheck reminderCheck2 = new ReminderCheck();
                if (i12 == -1) {
                    reminderCheck2.notificationsCount = i11;
                    reminderCheck2.noticesCount = reminderCheck.noticesCount;
                } else if (i11 == -1) {
                    reminderCheck2.notificationsCount = reminderCheck.notificationsCount;
                    reminderCheck2.noticesCount = i12;
                }
                setReminder(i10, reminderCheck2, false);
            }
            if (i12 == -1 && i11 > -1 && this.reminderRequests.get(Integer.valueOf(i10)) != null) {
                this.invalidateNotificationRequests.add(Integer.valueOf(i10));
            }
            if (i11 != -1 || i12 <= -1 || this.reminderRequests.get(Integer.valueOf(i10)) == null) {
                return;
            }
            this.invalidateNoticeRequests.add(Integer.valueOf(i10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateNoticeService() {
        if (NVApplication.CLIENT_TYPE == 100) {
            boolean z6 = this.hasUnreadAlert;
            boolean zHasLocalUnreadAlert = hasLocalUnreadAlert();
            this.hasUnreadAlert = zHasLocalUnreadAlert;
            if (zHasLocalUnreadAlert != z6) {
                IncubatorNoticeService incubatorNoticeService = (IncubatorNoticeService) this.context.getService("_notice");
                if (incubatorNoticeService.hasReminder() != this.hasUnreadAlert) {
                    if (!incubatorNoticeService.isActive()) {
                        incubatorNoticeService.invalidate();
                    } else {
                        if (incubatorNoticeService.isFullCheckRequesting() && this.hasUnreadAlert) {
                            return;
                        }
                        incubatorNoticeService.refresh(true);
                    }
                }
            }
        }
    }

    public void addObserver(MyCommunityListObserver myCommunityListObserver) {
        this.observers.addListener(myCommunityListObserver);
    }

    public void addReminderRequestQueue(int i10, boolean z6) {
        ApiRequest apiRequest = this.reminderRequests.get(Integer.valueOf(i10));
        if (apiRequest != null) {
            if (!z6) {
                return;
            }
            this.api.abort(apiRequest, this.reminderCheckListener);
            for (Integer num : (List) apiRequest.tag()) {
                this.reminderRequests.remove(num);
                this.invalidateNotificationRequests.remove(num);
                this.invalidateNoticeRequests.remove(num);
                this.reminderRequestTimes.remove(num);
            }
        }
        this.reminderRequestQueue.remove(Integer.valueOf(i10));
        this.reminderRequestQueue.add(Integer.valueOf(i10));
        while (this.reminderRequestQueue.size() > 15) {
            this.reminderRequestQueue.removeFirst();
        }
        Handler handler = Utils.handler;
        handler.removeCallbacks(this.reminderSendQueue);
        handler.postDelayed(this.reminderSendQueue, 400L);
    }

    void dispatchListChanged(final MyCommunityListResponse myCommunityListResponse, final Integer num) {
        this.observers.safeDispatch(new Callback<MyCommunityListObserver>() { // from class: com.narvii.community.MyCommunityListService.4
            @Override // com.narvii.util.Callback
            public void call(MyCommunityListObserver myCommunityListObserver) {
                myCommunityListObserver.onListChanged(MyCommunityListService.this, myCommunityListResponse, num);
            }
        });
        Integer num2 = this.suggestT3_oldCount;
        if (num2 == null || num2.intValue() > 3 || ((RecentCommunityHelper) this.context.getService("recentCommunities")).getRecentIdList(6).size() <= this.suggestT3_oldCount.intValue()) {
            return;
        }
        refreshSuggestCommunityRequest();
    }

    void dispatchReminderChanged() {
        this.observers.safeDispatch(new Callback<MyCommunityListObserver>() { // from class: com.narvii.community.MyCommunityListService.5
            @Override // com.narvii.util.Callback
            public void call(MyCommunityListObserver myCommunityListObserver) {
                myCommunityListObserver.onReminderChanged(MyCommunityListService.this);
            }
        });
        updateNoticeService();
    }

    void dispatchSuggestListChanged(final CommunityListResponse communityListResponse) {
        this.observers.safeDispatch(new Callback<MyCommunityListObserver>() { // from class: com.narvii.community.MyCommunityListService.3
            @Override // com.narvii.util.Callback
            public void call(MyCommunityListObserver myCommunityListObserver) {
                myCommunityListObserver.onSuggestListChanged(MyCommunityListService.this, communityListResponse);
            }
        });
    }

    public String errorMessage() {
        return this.adapter.errorMessage();
    }

    public String getCommunityTimestamp(int i10) {
        return this.timestamps.get(Integer.valueOf(i10));
    }

    public ReminderCheck getReminder(int i10) {
        return this.reminders.get(Integer.valueOf(i10));
    }

    public long getReminderRequestTime(int i10) {
        Long l = this.reminderRequestTimes.get(Integer.valueOf(i10));
        if (l == null) {
            return 0L;
        }
        return l.longValue();
    }

    public String getReminderTimestamp(int i10) {
        return this.reminderTimestamps.get(Integer.valueOf(i10));
    }

    public String getUserInfoTimestamp(int i10) {
        return this.userTimestamps.get(Integer.valueOf(i10));
    }

    public User getUserProfile(int i10) {
        return this.userProfiles.get(Integer.valueOf(i10));
    }

    public void invalidReminders() {
        this.reminderRequestTimes.clear();
        dispatchReminderChanged();
    }

    public boolean isEnd() {
        return this.adapter.isEnd();
    }

    public List<Community> list() {
        List<Community> list = this.filterList;
        return list == null ? Collections.emptyList() : list;
    }

    public void loadNextPage(boolean z6) {
        this.adapter.loadNextPage(z6);
    }

    public void logSuggestSeen(int i10) {
        if (this.suggestSeenLogs.contains(Integer.valueOf(i10))) {
            return;
        }
        this.suggestSeenLogs.add(Integer.valueOf(i10));
        ((LoggingService) this.context.getService("logging")).logEvent("SuggestAminoSeen", "eventOrigin", "Suggest", "referralObjectId", Integer.valueOf(i10));
    }

    public List<Community> rawList() {
        List listRawList = this.adapter.rawList();
        return listRawList == null ? Collections.emptyList() : listRawList;
    }

    public void refresh(int i10, Callback<Integer> callback) {
        if ((i10 & 1) != 0) {
            invalidReminders();
        }
        this.adapter.refresh(i10, callback);
    }

    public void refreshSuggestCommunityRequest(final Callback callback) {
        boolean z6 = this.suggestError != null;
        ApiRequest apiRequest = this.suggestRequest;
        if (apiRequest != null) {
            this.api.abort(apiRequest, this.suggestCommunityListener);
        }
        ApiRequest apiRequestBuild = ApiRequest.builder().global().path("/community/suggested").param("language", LanguageHelper.getUserSelectedLanguageCode(this.context)).build();
        this.api.exec(apiRequestBuild, new ApiResponseListener<CommunityListResponse>(CommunityListResponse.class) { // from class: com.narvii.community.MyCommunityListService.7
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest2, CommunityListResponse communityListResponse) throws Exception {
                super.onFinish(apiRequest2, communityListResponse);
                MyCommunityListService.this.suggestedRequestSent = true;
                MyCommunityListService.this.suggestCommunityListener.onFinish(apiRequest2, communityListResponse);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(null);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest2, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest2, i10, list, str, apiResponse, th);
                MyCommunityListService.this.suggestCommunityListener.onFail(apiRequest2, i10, list, str, apiResponse, th);
                MyCommunityListService.this.suggestedRequestSent = true;
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(null);
                }
            }
        });
        this.suggestRequest = apiRequestBuild;
        this.suggestRequestTime = SystemClock.elapsedRealtime();
        if (z6) {
            this.suggestError = null;
            dispatchSuggestListChanged(null);
        }
    }

    public void removeObserver(MyCommunityListObserver myCommunityListObserver) {
        this.observers.removeListener(myCommunityListObserver);
    }

    public void reorder(List<Community> list) {
        this.adapter.reorder(list);
    }

    public void resetList() {
        this.timestamps.clear();
        this.userProfiles.clear();
        this.userTimestamps.clear();
        this.adapter.resetList();
        resetReminders();
    }

    public void resetReminders() {
        this.reminders.clear();
        this.reminderTimestamps.clear();
        this.reminderRequestTimes.clear();
        Iterator<ApiRequest> it = this.reminderRequests.values().iterator();
        while (it.hasNext()) {
            this.api.abort(it.next(), this.reminderCheckListener);
        }
        this.invalidateNotificationRequests.clear();
        this.invalidateNoticeRequests.clear();
        this.reminderRequests.clear();
        this.reminderRequestQueue.clear();
        Utils.handler.removeCallbacks(this.reminderSendQueue);
        dispatchReminderChanged();
    }

    public void resetRequestTime(int i10) {
        this.reminderRequestTimes.remove(Integer.valueOf(i10));
    }

    public void retryRetry() {
        this.adapter.onErrorRetry();
    }

    public void sendReminderRequest(List<Integer> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        ArrayList<Integer> arrayList = new ArrayList(list.size());
        for (Integer num : list) {
            if (this.reminderRequests.get(num) == null) {
                arrayList.add(num);
            }
        }
        if (arrayList.size() == 0) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        for (Integer num2 : arrayList) {
            if (sb.length() > 0) {
                sb.append(kotlinx.serialization.json.internal.b.COMMA);
            }
            sb.append(num2);
        }
        ApiRequest apiRequestBuild = ApiRequest.builder().global().path("/reminder/check").param("ndcIds", sb.toString()).param("ignoreUnreadChatThreadsCount", Boolean.TRUE).param("timezone", Integer.valueOf(Utils.getTimeZoneInMin())).tag(arrayList).build();
        this.api.exec(apiRequestBuild, this.reminderCheckListener);
        for (Integer num3 : arrayList) {
            this.reminderRequests.put(num3, apiRequestBuild);
            this.reminderRequestTimes.put(num3, Long.valueOf(SystemClock.elapsedRealtime()));
        }
    }

    public boolean setReminder(int i10, ReminderCheck reminderCheck, boolean z6) {
        ReminderCheck reminderCheck2 = this.reminders.get(Integer.valueOf(i10));
        if (reminderCheck2 != null) {
            if (reminderCheck.hasCheckInToday == null && reminderCheck.consecutiveCheckInDays == null && reminderCheck.checkInHistory == null) {
                reminderCheck.hasCheckInToday = reminderCheck2.hasCheckInToday;
                reminderCheck.consecutiveCheckInDays = reminderCheck2.consecutiveCheckInDays;
                reminderCheck.checkInHistory = reminderCheck2.checkInHistory;
            }
            if (reminderCheck.notificationsCount == reminderCheck2.notificationsCount && reminderCheck.noticesCount == reminderCheck2.noticesCount && Utils.isEquals(reminderCheck.hasCheckInToday, reminderCheck2.hasCheckInToday) && Utils.isEquals(reminderCheck.consecutiveCheckInDays, reminderCheck2.consecutiveCheckInDays) && Utils.isStringEquals(JacksonUtils.writeAsString(reminderCheck.checkInHistory), JacksonUtils.writeAsString(reminderCheck2.checkInHistory))) {
                return false;
            }
        }
        this.reminders.put(Integer.valueOf(i10), reminderCheck);
        this.reminderTimestamps.remove(Integer.valueOf(i10));
        if (z6) {
            this.reminderRequestTimes.remove(Integer.valueOf(i10));
        }
        dispatchReminderChanged();
        return true;
    }

    public boolean updateUserProfile(int i10, User user, String str, boolean z6) {
        if (this.userProfiles.get(Integer.valueOf(i10)) == null) {
            return false;
        }
        if (str == null) {
            this.userTimestamps.remove(Integer.valueOf(i10));
            this.userProfiles.put(Integer.valueOf(i10), user);
            if (z6) {
                dispatchListChanged(null, null);
            }
            return true;
        }
        if (DateTimeFormatter.parseISO8601(this.userTimestamps.get(Integer.valueOf(i10))).getTime() >= DateTimeFormatter.parseISO8601(str).getTime()) {
            return false;
        }
        this.userTimestamps.put(Integer.valueOf(i10), str);
        this.userProfiles.put(Integer.valueOf(i10), user);
        if (z6) {
            dispatchListChanged(null, null);
        }
        return true;
    }

    public MyCommunityListService(NVContext nVContext) {
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.narvii.community.MyCommunityListService.6
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (AccountService.ACTION_ACCOUNT_CHANGED.equals(intent.getAction())) {
                    MyCommunityListService.this.resetList();
                    MyCommunityListService.this.refreshSuggestCommunityRequest();
                    MyCommunityListService.this.globalReminderCheck = null;
                }
            }
        };
        this.receiver = broadcastReceiver;
        this.suggestCommunityListener = new ApiResponseListener<CommunityListResponse>(CommunityListResponse.class) { // from class: com.narvii.community.MyCommunityListService.8
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List list, String str, ApiResponse apiResponse, Throwable th) {
                MyCommunityListService myCommunityListService = MyCommunityListService.this;
                if (myCommunityListService.suggestRequest == apiRequest) {
                    myCommunityListService.suggestRequest = null;
                }
                myCommunityListService.suggestError = str;
                myCommunityListService.suggestRequestTime = 0L;
                myCommunityListService.dispatchSuggestListChanged(null);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, CommunityListResponse communityListResponse) throws Exception {
                MyCommunityListService myCommunityListService = MyCommunityListService.this;
                if (myCommunityListService.suggestRequest == apiRequest) {
                    myCommunityListService.suggestRequest = null;
                }
                communityListResponse.communityList.size();
                MyCommunityListService myCommunityListService2 = MyCommunityListService.this;
                myCommunityListService2.suggestTags = communityListResponse.tags;
                myCommunityListService2.suggestList = communityListResponse.communityList;
                myCommunityListService2.suggestError = null;
                myCommunityListService2.dispatchSuggestListChanged(communityListResponse);
            }
        };
        this.reminderRequestQueue = new LinkedList<>();
        this.reminderSendQueue = new Runnable() { // from class: com.narvii.community.MyCommunityListService.9
            @Override // java.lang.Runnable
            public void run() {
                MyCommunityListService myCommunityListService = MyCommunityListService.this;
                myCommunityListService.sendReminderRequest(myCommunityListService.reminderRequestQueue);
                MyCommunityListService.this.reminderRequestQueue.clear();
            }
        };
        this.reminderCheckListener = new ApiResponseListener<ReminderCheckMapResponse>(ReminderCheckMapResponse.class) { // from class: com.narvii.community.MyCommunityListService.10
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ReminderCheckMapResponse reminderCheckMapResponse) throws Exception {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                for (Integer num : reminderCheckMapResponse.reminderCheckResultInCommunities.keySet()) {
                    ReminderCheck reminderCheck = MyCommunityListService.this.reminders.get(num);
                    ReminderCheck reminderCheck2 = reminderCheckMapResponse.reminderCheckResultInCommunities.get(num);
                    if (reminderCheck != null && reminderCheck2 != null) {
                        if (MyCommunityListService.this.invalidateNotificationRequests.contains(num)) {
                            reminderCheck2.notificationsCount = reminderCheck.notificationsCount;
                        }
                        if (MyCommunityListService.this.invalidateNoticeRequests.contains(num)) {
                            reminderCheck2.noticesCount = reminderCheck.noticesCount;
                        }
                    }
                    MyCommunityListService.this.reminders.put(num, reminderCheckMapResponse.reminderCheckResultInCommunities.get(num));
                    MyCommunityListService.this.reminderTimestamps.put(num, reminderCheckMapResponse.timestamp);
                    MyCommunityListService.this.reminderRequestTimes.put(num, Long.valueOf(jElapsedRealtime));
                }
                for (Integer num2 : (List) apiRequest.tag()) {
                    MyCommunityListService.this.reminderRequests.remove(num2);
                    MyCommunityListService.this.invalidateNotificationRequests.remove(num2);
                    MyCommunityListService.this.invalidateNoticeRequests.remove(num2);
                }
                MyCommunityListService.this.dispatchReminderChanged();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                for (Integer num : (List) apiRequest.tag()) {
                    MyCommunityListService.this.reminderRequests.remove(num);
                    MyCommunityListService.this.invalidateNotificationRequests.remove(num);
                    MyCommunityListService.this.invalidateNoticeRequests.remove(num);
                    MyCommunityListService.this.reminderRequestTimes.remove(num);
                }
            }
        };
        PushService.PushListener pushListener = new PushService.PushListener() { // from class: com.narvii.community.MyCommunityListService.11
            @Override // com.narvii.pushservice.PushService.PushListener
            public boolean onInterceptNotification(PushPayload pushPayload) {
                return false;
            }

            @Override // com.narvii.pushservice.PushService.PushListener
            public void onPushPayload(PushPayload pushPayload) {
                PushAPS pushAPS;
                int i10;
                MyCommunityListService myCommunityListService = MyCommunityListService.this;
                if (myCommunityListService.adapter == null || (pushAPS = pushPayload.aps) == null || (i10 = pushPayload.ndcId) == 0 || pushAPS.badge <= 0) {
                    return;
                }
                ReminderCheck reminderCheck = myCommunityListService.reminders.get(Integer.valueOf(i10));
                if ((reminderCheck != null && reminderCheck.notificationsCount + MyCommunityListService.this.chatService.getUnreadChatCountInCurCommunity(pushPayload.ndcId) + reminderCheck.noticesCount != 0) || pushPayload.isChat() || pushPayload.isMarketing()) {
                    return;
                }
                MyCommunityListService.this.resetRequestTime(pushPayload.ndcId);
                MyCommunityListService.this.dispatchReminderChanged();
            }
        };
        this.pushListener = pushListener;
        this.context = nVContext;
        this.filterHelper = new FilterHelper(nVContext);
        this.api = (ApiService) nVContext.getService("api");
        LocalBroadcastManager.b(nVContext.getContext()).c(broadcastReceiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        ((PushService) nVContext.getService("push")).addPushListener(pushListener);
        AccountService accountService = (AccountService) nVContext.getService("account");
        accountService.addCommunityReminderChangeListener(this.communityReminderChangeInGlobalListener);
        accountService.addProfileListener(this.profileListener);
        MyCommunityListAdapter myCommunityListAdapter = new MyCommunityListAdapter(nVContext);
        this.adapter = myCommunityListAdapter;
        myCommunityListAdapter.onAttach();
        ((NotificationCenter) nVContext.getService("notification")).registerListener(myCommunityListAdapter);
        this.affiliationsService = (AffiliationsService) nVContext.getService("affiliations");
        this.chatService = (ChatService) nVContext.getService("chat");
    }
}
