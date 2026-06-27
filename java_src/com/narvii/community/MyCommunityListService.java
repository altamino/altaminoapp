package com.narvii.community;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.SystemClock;
import android.support.v4.content.LocalBroadcastManager;
import android.view.View;
import android.view.ViewGroup;
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
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes.dex */
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
    long requestTime;
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
        public void onNotificationCountChanged(int i, int i2) {
            MyCommunityListService.this.updateCommunityReminder(i, i2, -1);
        }

        @Override // com.narvii.account.AccountService.CommunityReminderChangeInGlobalListener
        public void onNoticeCountChanged(int i, int i2) {
            MyCommunityListService.this.updateCommunityReminder(i, -1, i2);
        }
    };
    AccountService.ProfileListener profileListener = new AccountService.ProfileListener() { // from class: com.narvii.community.MyCommunityListService.2
        @Override // com.narvii.account.AccountService.ProfileListener
        public void onProfileChanged(int i, User user) {
        }

        @Override // com.narvii.account.AccountService.ProfileListener
        public void onNotificationCountChanged(int i) {
            super.onNotificationCountChanged(i);
            MyCommunityListService myCommunityListService = MyCommunityListService.this;
            if (myCommunityListService.globalReminderCheck == null) {
                myCommunityListService.globalReminderCheck = new ReminderCheck();
            }
            MyCommunityListService myCommunityListService2 = MyCommunityListService.this;
            myCommunityListService2.globalReminderCheck.notificationsCount = i;
            myCommunityListService2.updateNoticeService();
        }

        @Override // com.narvii.account.AccountService.ProfileListener
        public void onNoticeCountChanged(int i) {
            super.onNoticeCountChanged(i);
            MyCommunityListService myCommunityListService = MyCommunityListService.this;
            if (myCommunityListService.globalReminderCheck == null) {
                myCommunityListService.globalReminderCheck = new ReminderCheck();
            }
            MyCommunityListService myCommunityListService2 = MyCommunityListService.this;
            myCommunityListService2.globalReminderCheck.noticesCount = i;
            myCommunityListService2.updateNoticeService();
        }
    };
    final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.community.MyCommunityListService.6
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (AccountService.ACTION_ACCOUNT_CHANGED.equals(intent.getAction())) {
                MyCommunityListService.this.resetList();
                MyCommunityListService.this.refreshSuggestCommunityRequest();
                MyCommunityListService.this.globalReminderCheck = null;
            }
        }
    };
    final ApiResponseListener<CommunityListResponse> suggestCommunityListener = new ApiResponseListener<CommunityListResponse>(CommunityListResponse.class) { // from class: com.narvii.community.MyCommunityListService.8
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

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i, List list, String str, ApiResponse apiResponse, Throwable th) {
            MyCommunityListService myCommunityListService = MyCommunityListService.this;
            if (myCommunityListService.suggestRequest == apiRequest) {
                myCommunityListService.suggestRequest = null;
            }
            MyCommunityListService myCommunityListService2 = MyCommunityListService.this;
            myCommunityListService2.suggestError = str;
            myCommunityListService2.suggestRequestTime = 0L;
            myCommunityListService2.dispatchSuggestListChanged(null);
        }
    };
    final LinkedList<Integer> reminderRequestQueue = new LinkedList<>();
    final Runnable reminderSendQueue = new Runnable() { // from class: com.narvii.community.MyCommunityListService.9
        @Override // java.lang.Runnable
        public void run() {
            MyCommunityListService myCommunityListService = MyCommunityListService.this;
            myCommunityListService.sendReminderRequest(myCommunityListService.reminderRequestQueue);
            MyCommunityListService.this.reminderRequestQueue.clear();
        }
    };
    final ApiResponseListener<ReminderCheckMapResponse> reminderCheckListener = new ApiResponseListener<ReminderCheckMapResponse>(ReminderCheckMapResponse.class) { // from class: com.narvii.community.MyCommunityListService.10
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
        public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            for (Integer num : (List) apiRequest.tag()) {
                MyCommunityListService.this.reminderRequests.remove(num);
                MyCommunityListService.this.invalidateNotificationRequests.remove(num);
                MyCommunityListService.this.invalidateNoticeRequests.remove(num);
                MyCommunityListService.this.reminderRequestTimes.remove(num);
            }
        }
    };
    private final PushService.PushListener pushListener = new PushService.PushListener() { // from class: com.narvii.community.MyCommunityListService.11
        @Override // com.narvii.pushservice.PushService.PushListener
        public boolean onInterceptNotification(PushPayload pushPayload) {
            return false;
        }

        @Override // com.narvii.pushservice.PushService.PushListener
        public void onPushPayload(PushPayload pushPayload) {
            PushAPS pushAPS;
            int i;
            MyCommunityListService myCommunityListService = MyCommunityListService.this;
            if (myCommunityListService.adapter == null || (pushAPS = pushPayload.aps) == null || (i = pushPayload.ndcId) == 0 || pushAPS.badge <= 0) {
                return;
            }
            ReminderCheck reminderCheck = myCommunityListService.reminders.get(Integer.valueOf(i));
            if ((reminderCheck != null && reminderCheck.notificationsCount + MyCommunityListService.this.chatService.getUnreadChatCountInCurCommunity(pushPayload.ndcId) + reminderCheck.noticesCount != 0) || pushPayload.isChat() || pushPayload.isMarketing()) {
                return;
            }
            MyCommunityListService.this.resetRequestTime(pushPayload.ndcId);
            MyCommunityListService.this.dispatchReminderChanged();
        }
    };

    public interface MyCommunityListObserver {
        void onListChanged(MyCommunityListService myCommunityListService, MyCommunityListResponse myCommunityListResponse, Integer num);

        void onReminderChanged(MyCommunityListService myCommunityListService);

        void onSuggestListChanged(MyCommunityListService myCommunityListService, CommunityListResponse communityListResponse);
    }

    public MyCommunityListService(NVContext nVContext) {
        this.context = nVContext;
        this.filterHelper = new FilterHelper(this.context);
        this.api = (ApiService) nVContext.getService("api");
        LocalBroadcastManager.getInstance(nVContext.getContext()).registerReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        ((PushService) nVContext.getService("push")).addPushListener(this.pushListener);
        AccountService accountService = (AccountService) nVContext.getService("account");
        accountService.addCommunityReminderChangeListener(this.communityReminderChangeInGlobalListener);
        accountService.addProfileListener(this.profileListener);
        this.adapter = new MyCommunityListAdapter(nVContext);
        this.adapter.onAttach();
        ((NotificationCenter) nVContext.getService("notification")).registerListener(this.adapter);
        this.affiliationsService = (AffiliationsService) nVContext.getService("affiliations");
        this.chatService = (ChatService) nVContext.getService("chat");
    }

    public void addObserver(MyCommunityListObserver myCommunityListObserver) {
        this.observers.addListener(myCommunityListObserver);
    }

    public void removeObserver(MyCommunityListObserver myCommunityListObserver) {
        this.observers.removeListener(myCommunityListObserver);
    }

    void dispatchSuggestListChanged(final CommunityListResponse communityListResponse) {
        this.observers.safeDispatch(new Callback<MyCommunityListObserver>() { // from class: com.narvii.community.MyCommunityListService.3
            @Override // com.narvii.util.Callback
            public void call(MyCommunityListObserver myCommunityListObserver) {
                myCommunityListObserver.onSuggestListChanged(MyCommunityListService.this, communityListResponse);
            }
        });
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

    /* JADX INFO: Access modifiers changed from: private */
    public void updateNoticeService() {
        if (NVApplication.CLIENT_TYPE == 100) {
            boolean z = this.hasUnreadAlert;
            this.hasUnreadAlert = hasLocalUnreadAlert();
            if (this.hasUnreadAlert != z) {
                IncubatorNoticeService incubatorNoticeService = (IncubatorNoticeService) this.context.getService("_notice");
                if (incubatorNoticeService.hasReminder() != this.hasUnreadAlert) {
                    if (incubatorNoticeService.isActive()) {
                        if (incubatorNoticeService.isFullCheckRequesting() && this.hasUnreadAlert) {
                            return;
                        }
                        incubatorNoticeService.refresh(true);
                        return;
                    }
                    incubatorNoticeService.invalidate();
                }
            }
        }
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

    public void refreshSuggestCommunityRequest() {
        refreshSuggestCommunityRequest(null);
    }

    public void refreshSuggestCommunityRequest(final Callback callback) {
        boolean z = this.suggestError != null;
        ApiRequest apiRequest = this.suggestRequest;
        if (apiRequest != null) {
            this.api.abort(apiRequest, this.suggestCommunityListener);
        }
        ApiRequest apiRequestBuild = ApiRequest.builder().global().path("/community/suggested").param(IjkMediaMeta.IJKM_KEY_LANGUAGE, LanguageHelper.getUserSelectedLanguageCode(this.context)).build();
        this.api.exec(apiRequestBuild, new ApiResponseListener<CommunityListResponse>(CommunityListResponse.class) { // from class: com.narvii.community.MyCommunityListService.7
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest2, CommunityListResponse communityListResponse) throws Exception {
                super.onFinish(apiRequest2, (ApiRequest) communityListResponse);
                MyCommunityListService.this.suggestedRequestSent = true;
                MyCommunityListService.this.suggestCommunityListener.onFinish(apiRequest2, communityListResponse);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(null);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest2, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest2, i, list, str, apiResponse, th);
                MyCommunityListService.this.suggestCommunityListener.onFail(apiRequest2, i, list, str, apiResponse, th);
                MyCommunityListService.this.suggestedRequestSent = true;
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(null);
                }
            }
        });
        this.suggestRequest = apiRequestBuild;
        this.suggestRequestTime = SystemClock.elapsedRealtime();
        if (z) {
            this.suggestError = null;
            dispatchSuggestListChanged(null);
        }
    }

    public List<Community> suggestList() {
        return this.suggestList;
    }

    public String suggestErrorMessage() {
        return this.suggestError;
    }

    public String suggestTags() {
        return this.suggestTags;
    }

    public boolean isSuggestedRequestSent() {
        return this.suggestedRequestSent;
    }

    public long getSuggestRequestTime() {
        return this.suggestRequestTime;
    }

    public void logSuggestSeen(int i) {
        if (this.suggestSeenLogs.contains(Integer.valueOf(i))) {
            return;
        }
        this.suggestSeenLogs.add(Integer.valueOf(i));
        ((LoggingService) this.context.getService("logging")).lambda$logEvent$0$LoggingServiceImpl("SuggestAminoSeen", "eventOrigin", "Suggest", "referralObjectId", Integer.valueOf(i));
    }

    public List<Community> list() {
        List<Community> list = this.filterList;
        return list == null ? Collections.emptyList() : list;
    }

    public List<Community> rawList() {
        List listRawList = this.adapter.rawList();
        return listRawList == null ? Collections.emptyList() : listRawList;
    }

    public boolean isEnd() {
        return this.adapter.isEnd();
    }

    public String errorMessage() {
        return this.adapter.errorMessage();
    }

    public User getUserProfile(int i) {
        return this.userProfiles.get(Integer.valueOf(i));
    }

    public long getCommunityRequestTime() {
        return this.requestTime;
    }

    public String getCommunityTimestamp(int i) {
        return this.timestamps.get(Integer.valueOf(i));
    }

    public String getUserInfoTimestamp(int i) {
        return this.userTimestamps.get(Integer.valueOf(i));
    }

    public void loadNextPage(boolean z) {
        this.adapter.loadNextPage(z);
    }

    public void retryRetry() {
        this.adapter.onErrorRetry();
    }

    public void resetList() {
        this.timestamps.clear();
        this.userProfiles.clear();
        this.userTimestamps.clear();
        this.adapter.resetList();
        resetReminders();
    }

    public boolean updateUserProfile(int i, User user, String str, boolean z) {
        if (this.userProfiles.get(Integer.valueOf(i)) == null) {
            return false;
        }
        if (str == null) {
            this.userTimestamps.remove(Integer.valueOf(i));
            this.userProfiles.put(Integer.valueOf(i), user);
            if (z) {
                dispatchListChanged(null, null);
            }
            return true;
        }
        if (DateTimeFormatter.parseISO8601(this.userTimestamps.get(Integer.valueOf(i))).getTime() >= DateTimeFormatter.parseISO8601(str).getTime()) {
            return false;
        }
        this.userTimestamps.put(Integer.valueOf(i), str);
        this.userProfiles.put(Integer.valueOf(i), user);
        if (z) {
            dispatchListChanged(null, null);
        }
        return true;
    }

    public void reorder(List<Community> list) {
        this.adapter.reorder(list);
    }

    public void refresh(int i, Callback<Integer> callback) {
        if ((i & 1) != 0) {
            invalidReminders();
        }
        this.adapter.refresh(i, callback);
    }

    /* loaded from: classes2.dex */
    class MyCommunityListAdapter extends NVPagedAdapter<Community, MyCommunityListResponse> implements NotificationListener {
        boolean attaching;
        boolean suspendObserver;

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

        @Override // com.narvii.list.NVPagedAdapter
        protected int pageSize() {
            return 50;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected boolean resetWhenEmpty() {
            return false;
        }

        public MyCommunityListAdapter(NVContext nVContext) {
            super(nVContext);
            this._list = new ArrayList<>();
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            this.attaching = true;
            super.onAttach();
            this.attaching = false;
        }

        @Override // com.narvii.list.NVPagedAdapter
        public void loadNextPage(boolean z) {
            if (this.attaching) {
                return;
            }
            super.loadNextPage(z);
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            if (!((AccountService) getService("account")).hasAccount() && callback != null) {
                callback.call(0);
            }
            super.refresh(i, callback);
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            MyCommunityListService myCommunityListService = MyCommunityListService.this;
            myCommunityListService.filterList = myCommunityListService.filterHelper.filter(this._list);
            if (this.suspendObserver) {
                return;
            }
            MyCommunityListService.this.dispatchListChanged(null, null);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected List<Community> filterResponseList(List<Community> list, int i) {
            return new FilterHelper(this).filterDeleted().filter(list);
        }

        public void reorder(List<Community> list) {
            if (!Utils.isListLenientEqual(this._list, list, true)) {
                resetList();
                return;
            }
            this._list.clear();
            this._list.addAll(list);
            notifyDataSetChanged();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<Community> dataType() {
            return Community.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends MyCommunityListResponse> responseType() {
            return MyCommunityListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            if (((AccountService) getService("account")).hasAccount()) {
                if (isEnd() && getCount() == 0) {
                    resetEmptyList();
                    MyCommunityListService.this.dispatchListChanged(null, null);
                }
                ApiRequest.Builder builder = ApiRequest.builder();
                builder.global().path("/community/joined").param("v", 1);
                if (z) {
                    builder.tag("start0");
                }
                return builder.build();
            }
            if (this._list.size() > 0 || !this._isEnd) {
                resetEmptyList();
                MyCommunityListService.this.dispatchListChanged(null, null);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, MyCommunityListResponse myCommunityListResponse, int i) {
            this.suspendObserver = true;
            super.onPageResponse(apiRequest, (ApiRequest) myCommunityListResponse, i);
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
            MyCommunityListService.this.dispatchListChanged(myCommunityListResponse, i == 2 ? Integer.valueOf(this.refreshFlag) : null);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected void onFailResponse(ApiRequest apiRequest, String str, ApiResponse apiResponse, int i) {
            ArrayList<T> arrayList;
            if ("start0".equals(apiRequest.tag()) && ((arrayList = this._list) == 0 || arrayList.isEmpty())) {
                MyCommunityListService.this.requestTime = 0L;
            }
            super.onFailResponse(apiRequest, str, apiResponse, i);
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
    }

    public ReminderCheck getReminder(int i) {
        return this.reminders.get(Integer.valueOf(i));
    }

    public String getReminderTimestamp(int i) {
        return this.reminderTimestamps.get(Integer.valueOf(i));
    }

    public long getReminderRequestTime(int i) {
        Long l = this.reminderRequestTimes.get(Integer.valueOf(i));
        if (l == null) {
            return 0L;
        }
        return l.longValue();
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
                sb.append(',');
            }
            sb.append(num2);
        }
        ApiRequest apiRequestBuild = ApiRequest.builder().global().path("/reminder/check").param("ndcIds", sb.toString()).param("ignoreUnreadChatThreadsCount", true).param("timezone", Integer.valueOf(Utils.getTimeZoneInMin())).tag(arrayList).build();
        this.api.exec(apiRequestBuild, this.reminderCheckListener);
        for (Integer num3 : arrayList) {
            this.reminderRequests.put(num3, apiRequestBuild);
            this.reminderRequestTimes.put(num3, Long.valueOf(SystemClock.elapsedRealtime()));
        }
    }

    public void addReminderRequestQueue(int i) {
        addReminderRequestQueue(i, false);
    }

    public void addReminderRequestQueue(int i, boolean z) {
        ApiRequest apiRequest = this.reminderRequests.get(Integer.valueOf(i));
        if (apiRequest != null) {
            if (!z) {
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
        this.reminderRequestQueue.remove(Integer.valueOf(i));
        this.reminderRequestQueue.add(Integer.valueOf(i));
        while (this.reminderRequestQueue.size() > 15) {
            this.reminderRequestQueue.removeFirst();
        }
        Utils.handler.removeCallbacks(this.reminderSendQueue);
        Utils.handler.postDelayed(this.reminderSendQueue, 400L);
    }

    public void invalidReminders() {
        this.reminderRequestTimes.clear();
        dispatchReminderChanged();
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

    public boolean setReminder(int i, ReminderCheck reminderCheck, boolean z) {
        ReminderCheck reminderCheck2 = this.reminders.get(Integer.valueOf(i));
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
        this.reminders.put(Integer.valueOf(i), reminderCheck);
        this.reminderTimestamps.remove(Integer.valueOf(i));
        if (z) {
            this.reminderRequestTimes.remove(Integer.valueOf(i));
        }
        dispatchReminderChanged();
        return true;
    }

    public void resetRequestTime(int i) {
        this.reminderRequestTimes.remove(Integer.valueOf(i));
    }

    public HashSet<Integer> getNdcIds() {
        return this.ndcIds;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCommunityReminder(int i, int i2, int i3) {
        if (((AccountService) this.context.getService("account")).hasAccount()) {
            ReminderCheck reminderCheck = this.reminders.get(Integer.valueOf(i));
            if (reminderCheck != null) {
                ReminderCheck reminderCheck2 = new ReminderCheck();
                if (i3 == -1) {
                    reminderCheck2.notificationsCount = i2;
                    reminderCheck2.noticesCount = reminderCheck.noticesCount;
                } else if (i2 == -1) {
                    reminderCheck2.notificationsCount = reminderCheck.notificationsCount;
                    reminderCheck2.noticesCount = i3;
                }
                setReminder(i, reminderCheck2, false);
            }
            if (i3 == -1 && i2 > -1 && this.reminderRequests.get(Integer.valueOf(i)) != null) {
                this.invalidateNotificationRequests.add(Integer.valueOf(i));
            }
            if (i2 != -1 || i3 <= -1 || this.reminderRequests.get(Integer.valueOf(i)) == null) {
                return;
            }
            this.invalidateNoticeRequests.add(Integer.valueOf(i));
        }
    }
}
