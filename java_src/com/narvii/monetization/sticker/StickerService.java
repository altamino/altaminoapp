package com.narvii.monetization.sticker;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.SystemClock;
import android.support.v4.content.LocalBroadcastManager;
import com.narvii.account.AccountService;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.community.AffiliationsService;
import com.narvii.config.ConfigService;
import com.narvii.model.Sticker;
import com.narvii.model.api.ApiResponse;
import com.narvii.monetization.sticker.model.MoodStickerCollection;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.monetization.sticker.model.StickerCollectionListResponse;
import com.narvii.monetization.sticker.picker.StickerListResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.notification.NotificationListener;
import com.narvii.util.Callback;
import com.narvii.util.CollectionUtils;
import com.narvii.util.EventDispatcher;
import com.narvii.util.FilterHelper;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class StickerService implements NotificationListener {
    public static final long REQUEST_INTERVAL = 300000;
    public static final long SHARED_REQUEST_INTERVAL = 120000;
    String error;
    long lastRequestTime;
    long lastSharedRequestTime;
    LocalBroadcastManager localBroadcastManager;
    private ApiRequest mActiveApiRequest;
    NVContext nvContext;
    private ApiRequest sharedApiRequest;
    String sharedError;
    boolean sharedRequesting;
    private List<StickerCollection> sharedStickerPackList;
    private List<StickerCollection> stickerCollectionList;
    private boolean stickerPackListRefreshedThisSession;
    String userId;
    final EventDispatcher<StickerCollectionListObserver> observers = new EventDispatcher<>();
    public int sharedStickerPackCount = -1;
    final EventDispatcher<StickerCollectionListObserver> sharedObservers = new EventDispatcher<>();
    final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.monetization.sticker.StickerService.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (AccountService.ACTION_ACCOUNT_CHANGED.equals(intent.getAction())) {
                StickerService.this.refreshStickerCollectionInfo(true);
                StickerService.this.clearSharedData();
            }
        }
    };

    /* loaded from: classes3.dex */
    public interface StickerCollectionListObserver {
        void onListChanged();

        void onRequestFailed();
    }

    public List getMoodStickerCollection() {
        return null;
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        List<StickerCollection> list = this.sharedStickerPackList;
        if (list == null || notification.action != "update") {
            return;
        }
        Object obj = notification.obj;
        if (obj instanceof StickerCollection) {
            StickerCollection stickerCollection = (StickerCollection) obj;
            int iIndexOfId = Utils.indexOfId(list, stickerCollection.id());
            if (iIndexOfId >= 0) {
                StickerCollection updatedStickerCollection = StickerCollection.getUpdatedStickerCollection(this.sharedStickerPackList.get(iIndexOfId), stickerCollection);
                if (!updatedStickerCollection.isAccessibleByUser(null)) {
                    this.sharedStickerPackList.remove(iIndexOfId);
                    this.sharedStickerPackCount--;
                } else {
                    this.sharedStickerPackList.set(iIndexOfId, updatedStickerCollection);
                }
                this.sharedObservers.dispatch(new Callback<StickerCollectionListObserver>() { // from class: com.narvii.monetization.sticker.StickerService.2
                    @Override // com.narvii.util.Callback
                    public void call(StickerCollectionListObserver stickerCollectionListObserver) {
                        stickerCollectionListObserver.onListChanged();
                    }
                });
            }
        }
    }

    public boolean isSharedRequesting() {
        return this.sharedRequesting;
    }

    private void clearData() {
        this.error = null;
        this.lastRequestTime = 0L;
        this.stickerPackListRefreshedThisSession = false;
        this.stickerCollectionList = null;
        this.userId = null;
        if (this.mActiveApiRequest != null) {
            ((ApiService) this.nvContext.getService("api")).abort(this.mActiveApiRequest);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearSharedData() {
        this.sharedError = null;
        this.lastSharedRequestTime = 0L;
        this.sharedStickerPackList = null;
        this.sharedStickerPackCount = 0;
        this.sharedRequesting = false;
        if (this.sharedApiRequest != null) {
            ((ApiService) this.nvContext.getService("api")).abort(this.sharedApiRequest);
        }
    }

    public void onResume() {
        this.stickerPackListRefreshedThisSession = false;
        this.localBroadcastManager.registerReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
    }

    public void onPause() {
        this.localBroadcastManager.unregisterReceiver(this.receiver);
    }

    public void onStart() {
        ((NotificationCenter) this.nvContext.getService("notification")).registerListener(this);
    }

    public void onStop() {
        ((NotificationCenter) this.nvContext.getService("notification")).unregisterListener(this);
    }

    public void addStickerCollectionListObserver(StickerCollectionListObserver stickerCollectionListObserver) {
        this.observers.addListener(stickerCollectionListObserver);
    }

    public void removeStickerCollectionListObserver(StickerCollectionListObserver stickerCollectionListObserver) {
        this.observers.removeListener(stickerCollectionListObserver);
    }

    public void addSharedStickerPackListObserver(StickerCollectionListObserver stickerCollectionListObserver) {
        this.sharedObservers.addListener(stickerCollectionListObserver);
    }

    public void removeSharedStickerPackObserver(StickerCollectionListObserver stickerCollectionListObserver) {
        this.sharedObservers.removeListener(stickerCollectionListObserver);
    }

    public List<StickerCollection> getStickerCollectionList() {
        return getStickerCollectionList(true);
    }

    public List<StickerCollection> getSharedStickerPackList() {
        List<StickerCollection> list = this.sharedStickerPackList;
        if (list == null) {
            return null;
        }
        return new ArrayList(list);
    }

    public List<StickerCollection> getStickerCollectionList(boolean z) {
        List<StickerCollection> list = this.stickerCollectionList;
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list);
        if (z) {
            arrayList.add(0, new MoodStickerCollection(this.nvContext.getContext()));
        }
        return arrayList;
    }

    public StickerService(NVContext nVContext) {
        this.nvContext = nVContext;
        this.localBroadcastManager = LocalBroadcastManager.getInstance(nVContext.getContext());
    }

    public String getError() {
        return this.error;
    }

    public String getSharedError() {
        return this.sharedError;
    }

    public boolean isStickerPackListRefreshedThisSession() {
        return this.stickerPackListRefreshedThisSession;
    }

    public void refreshStickerCollectionInfo(boolean z) {
        String userId = ((AccountService) this.nvContext.getService("account")).getUserId();
        if (!Utils.isEquals(userId, this.userId)) {
            clearData();
        }
        if (userId != null) {
            if (z || this.lastRequestTime == 0 || SystemClock.elapsedRealtime() - this.lastRequestTime >= 300000) {
                if (isCurrentUserInThisCommunity() || (this.nvContext instanceof NVApplication)) {
                    this.stickerPackListRefreshedThisSession = true;
                    this.userId = userId;
                    this.error = null;
                    ApiService apiService = (ApiService) this.nvContext.getService("api");
                    this.mActiveApiRequest = ApiRequest.builder().path("/sticker-collection").param("type", "my-active-collection").param("includeStickers", true).build();
                    this.lastRequestTime = SystemClock.elapsedRealtime();
                    apiService.exec(this.mActiveApiRequest, new ApiResponseListener<StickerCollectionListResponse>(StickerCollectionListResponse.class) { // from class: com.narvii.monetization.sticker.StickerService.3
                        @Override // com.narvii.util.http.ApiResponseListener
                        public void onFinish(ApiRequest apiRequest, StickerCollectionListResponse stickerCollectionListResponse) throws Exception {
                            super.onFinish(apiRequest, (ApiRequest) stickerCollectionListResponse);
                            StickerService.this.setStickerCollectionList(stickerCollectionListResponse.stickerCollectionList);
                        }

                        @Override // com.narvii.util.http.ApiResponseListener
                        public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                            super.onFail(apiRequest, i, list, str, apiResponse, th);
                            StickerService stickerService = StickerService.this;
                            stickerService.error = str;
                            stickerService.observers.dispatch(new Callback<StickerCollectionListObserver>() { // from class: com.narvii.monetization.sticker.StickerService.3.1
                                @Override // com.narvii.util.Callback
                                public void call(StickerCollectionListObserver stickerCollectionListObserver) {
                                    stickerCollectionListObserver.onRequestFailed();
                                }
                            });
                        }
                    });
                }
            }
        }
    }

    private boolean isCurrentUserInThisCommunity() {
        ConfigService configService = (ConfigService) this.nvContext.getService("config");
        return configService.getCommunityId() != 0 && ((AffiliationsService) this.nvContext.getService("affiliations")).contains(configService.getCommunityId());
    }

    public void refreshSharedStickerPackList(boolean z) {
        if ((this.sharedStickerPackList == null || z || this.lastSharedRequestTime == 0 || SystemClock.elapsedRealtime() - this.lastSharedRequestTime >= SHARED_REQUEST_INTERVAL) && isCurrentUserInThisCommunity()) {
            ApiService apiService = (ApiService) this.nvContext.getService("api");
            this.sharedApiRequest = ApiRequest.builder().path("/sticker-collection").param("type", "community-shared").build();
            this.lastSharedRequestTime = SystemClock.elapsedRealtime();
            this.sharedError = null;
            this.sharedRequesting = true;
            apiService.exec(this.sharedApiRequest, new ApiResponseListener<StickerCollectionListResponse>(StickerCollectionListResponse.class) { // from class: com.narvii.monetization.sticker.StickerService.4
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, StickerCollectionListResponse stickerCollectionListResponse) throws Exception {
                    super.onFinish(apiRequest, (ApiRequest) stickerCollectionListResponse);
                    StickerService stickerService = StickerService.this;
                    stickerService.sharedRequesting = false;
                    if (stickerCollectionListResponse.stickerCollectionList != null) {
                        FilterHelper filterHelper = new FilterHelper(stickerService.nvContext);
                        int size = stickerCollectionListResponse.stickerCollectionList.size();
                        List listFilter = filterHelper.filter(stickerCollectionListResponse.stickerCollectionList);
                        stickerCollectionListResponse.stickerCollectionCount -= size - (listFilter != null ? listFilter.size() : 0);
                        StickerService stickerService2 = StickerService.this;
                        stickerService2.sharedStickerPackCount = stickerCollectionListResponse.stickerCollectionCount;
                        stickerService2.setSharedStickerPackList(listFilter);
                        return;
                    }
                    stickerService.sharedStickerPackCount = 0;
                    stickerService.setSharedStickerPackList(null);
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i, list, str, apiResponse, th);
                    StickerService stickerService = StickerService.this;
                    stickerService.sharedRequesting = false;
                    stickerService.sharedError = str;
                    stickerService.sharedObservers.dispatch(new Callback<StickerCollectionListObserver>() { // from class: com.narvii.monetization.sticker.StickerService.4.1
                        @Override // com.narvii.util.Callback
                        public void call(StickerCollectionListObserver stickerCollectionListObserver) {
                            stickerCollectionListObserver.onRequestFailed();
                        }
                    });
                }
            });
        }
    }

    public void setStickerCollectionList(List<StickerCollection> list) {
        this.stickerCollectionList = list;
        if (this.stickerCollectionList == null) {
            this.stickerCollectionList = new ArrayList();
        }
        notifyListChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSharedStickerPackList(List<StickerCollection> list) {
        this.sharedStickerPackList = list;
        if (this.sharedStickerPackList == null) {
            this.sharedStickerPackList = new ArrayList();
        }
        this.sharedObservers.dispatch(new Callback<StickerCollectionListObserver>() { // from class: com.narvii.monetization.sticker.StickerService.5
            @Override // com.narvii.util.Callback
            public void call(StickerCollectionListObserver stickerCollectionListObserver) {
                stickerCollectionListObserver.onListChanged();
            }
        });
    }

    public void setStickerList(String str, ArrayList<Sticker> arrayList) {
        int iIndexOfId;
        List<StickerCollection> list = this.stickerCollectionList;
        if (list == null || (iIndexOfId = Utils.indexOfId(list, str)) == -1) {
            return;
        }
        StickerCollection stickerCollection = this.stickerCollectionList.get(iIndexOfId);
        if (arrayList != null) {
            arrayList = new ArrayList<>(arrayList);
        }
        stickerCollection.stickerList = arrayList;
        notifyListChanged();
    }

    public void addSticker(String str, Sticker sticker) {
        int iIndexOfId;
        List<StickerCollection> list = this.stickerCollectionList;
        if (list == null || (iIndexOfId = Utils.indexOfId(list, str)) == -1) {
            return;
        }
        StickerCollection stickerCollection = this.stickerCollectionList.get(iIndexOfId);
        if (stickerCollection.stickerList == null) {
            stickerCollection.stickerList = new ArrayList<>();
        }
        stickerCollection.stickerList.add(0, sticker);
        notifyListChanged();
    }

    public void refreshStickerCollection(final String str) {
        ((ApiService) this.nvContext.getService("api")).exec(ApiRequest.builder().path("sticker-collection/" + str + "/stickers").build(), new ApiResponseListener<StickerListResponse>(StickerListResponse.class) { // from class: com.narvii.monetization.sticker.StickerService.6
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, StickerListResponse stickerListResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) stickerListResponse);
                ArrayList<Sticker> arrayList = new ArrayList<>();
                List<Sticker> list = stickerListResponse.stickerList;
                if (list != null) {
                    arrayList.addAll(list);
                }
                StickerService.this.setStickerList(str, arrayList);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str2, apiResponse, th);
            }
        });
    }

    public void removeSticker(String str, Sticker sticker) {
        int iIndexOfId;
        ArrayList<Sticker> arrayList;
        List<StickerCollection> list = this.stickerCollectionList;
        if (list == null || (iIndexOfId = Utils.indexOfId(list, str)) == -1 || (arrayList = this.stickerCollectionList.get(iIndexOfId).stickerList) == null || Utils.removeId(arrayList, sticker.id()) <= 0) {
            return;
        }
        notifyListChanged();
    }

    public StickerCollection getCustomizedCollection() {
        if (this.stickerCollectionList == null) {
            return null;
        }
        for (int i = 0; i < this.stickerCollectionList.size(); i++) {
            StickerCollection stickerCollection = this.stickerCollectionList.get(i);
            if (stickerCollection.isPersonal()) {
                return stickerCollection;
            }
        }
        return null;
    }

    public boolean isCustomizedCollectionEmpty() {
        StickerCollection customizedCollection = getCustomizedCollection();
        if (customizedCollection == null) {
            return true;
        }
        return CollectionUtils.isEmpty(customizedCollection.stickerList);
    }

    private void notifyListChanged() {
        this.observers.dispatch(new Callback<StickerCollectionListObserver>() { // from class: com.narvii.monetization.sticker.StickerService.7
            @Override // com.narvii.util.Callback
            public void call(StickerCollectionListObserver stickerCollectionListObserver) {
                stickerCollectionListObserver.onListChanged();
            }
        });
    }

    public void removeStickerCollection(StickerCollection stickerCollection) {
        List<StickerCollection> list = this.stickerCollectionList;
        if (list == null) {
            return;
        }
        if (Utils.removeId(list, stickerCollection.id()) > 0) {
            notifyListChanged();
        }
    }

    public void addStickerCollection(StickerCollection stickerCollection) {
        List<StickerCollection> list = this.stickerCollectionList;
        if (list != null && list.size() >= 1) {
            this.stickerCollectionList.add(1, stickerCollection);
            notifyListChanged();
        }
    }
}
