package com.narvii.livelayer;

import android.os.SystemClock;
import com.narvii.app.NVContext;
import com.narvii.community.AffiliationsService;
import com.narvii.config.ConfigService;
import com.narvii.livelayer.ws.LiveLayerEventListener;
import com.narvii.livelayer.ws.LiveLayerWsService;
import com.narvii.model.api.UserListResponse;
import com.narvii.onlinestatus.OnlineHelper;
import com.narvii.util.Callback;
import com.narvii.util.Utils;
import com.narvii.util.statistics.TmpValue;
import com.narvii.util.ws.WsService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class LiveLayerService implements AffiliationsService.AffiliationChangeListener {
    public static String ACTION_BROWSING = "Browsing";
    public static String ACTION_CHATTING = "Chatting";
    public static String ACTION_COMMENTING = "Commenting";
    public static String ACTION_PLAYING = "Playing";
    public static String ACTION_POLLING = "Polling";
    public static String ACTION_RECORDING = "Recording";
    public static String ACTION_TYPING = "Typing";
    public static String ACTION_VOTING = "Voting";
    public static final TmpValue<Integer> GLOBAL_ENTER = new TmpValue<>();
    public static boolean OPEN = true;
    public static final long REFRESH_INTERVAL = 180000;
    AffiliationsService affiliationsService;
    public final int cid;
    LiveLayerDataSource dataSource;
    private LiveLayerHelper liveLayerHelper;
    LiveLayerMainData liveLayerMainData;
    long mainDataCacheTime;
    NVContext nvContext;
    OnlineHelper onlineHelper;
    private LiveLayerPreloadHelper userIconsPreloadHelper;
    LiveLayerWsService wsService;
    Runnable requestRunnable = new Runnable() { // from class: com.narvii.livelayer.LiveLayerService.1
        @Override // java.lang.Runnable
        public void run() {
            LiveLayerService liveLayerService = LiveLayerService.this;
            if (liveLayerService.cid == 0) {
                return;
            }
            liveLayerService.requestOnlineMembers();
            Utils.handler.postDelayed(this, LiveLayerService.REFRESH_INTERVAL);
        }
    };
    long lastRefreshTime = 0;
    String topic = "online-members";

    public void onStart() {
    }

    public LiveLayerService(NVContext nVContext) {
        this.nvContext = nVContext;
        this.wsService = (LiveLayerWsService) nVContext.getService("liveLayerWS");
        this.cid = ((ConfigService) nVContext.getService("config")).getCommunityId();
        this.affiliationsService = (AffiliationsService) nVContext.getService("affiliations");
        this.dataSource = new LiveLayerDataSource(nVContext, true);
        this.liveLayerHelper = new LiveLayerHelper(nVContext, this.cid);
    }

    public void subscribe(String str, LiveLayerEventListener liveLayerEventListener) {
        if (OPEN && str != null) {
            this.wsService.subscribe(this.cid, assembleTopic(str), liveLayerEventListener);
        }
    }

    public void unsubscribe(String str, LiveLayerEventListener liveLayerEventListener) {
        if (OPEN && str != null) {
            this.wsService.unsubscribe(this.cid, assembleTopic(str), liveLayerEventListener);
        }
    }

    public void reportActive(List<String> list, String str, HashMap<String, Object> map) {
        this.wsService.reportActive(this.cid, list, assembleTarget(str), map);
    }

    public void reportActive(String str, String str2, HashMap<String, Object> map) {
        if (str == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        reportActive(arrayList, str2, map);
    }

    public void reportInactive(List<String> list, String str, HashMap<String, Object> map) {
        this.wsService.reportInactive(this.cid, list, assembleTarget(str), map);
    }

    public void reportInactive(String str, String str2, HashMap<String, Object> map) {
        if (str == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        reportInactive(arrayList, str2, map);
    }

    public void onStop() {
        this.mainDataCacheTime = 0L;
        this.liveLayerMainData = null;
    }

    public void onResume() {
        if (!this.affiliationsService.contains(this.cid)) {
            this.affiliationsService.addAffiliationChangeListener(this);
        }
        boolean zCompareAndRemove = GLOBAL_ENTER.compareAndRemove(Integer.valueOf(this.cid));
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (zCompareAndRemove) {
            long j = this.lastRefreshTime;
            if (j == 0 || jElapsedRealtime < j || jElapsedRealtime > j + REFRESH_INTERVAL) {
                this.requestRunnable.run();
                return;
            } else {
                Utils.handler.postDelayed(this.requestRunnable, (j + REFRESH_INTERVAL) - jElapsedRealtime);
                return;
            }
        }
        this.requestRunnable.run();
    }

    public void onPause() {
        this.affiliationsService.removeAffiliationChangeListener(this);
        unsubscribe(this.topic, this.dataSource.liveLayerEventListener);
        Utils.handler.removeCallbacks(this.requestRunnable);
    }

    public LiveLayerDataSource getDataSource() {
        return this.dataSource;
    }

    public void refreshOnlineMembers() {
        Utils.handler.removeCallbacks(this.requestRunnable);
        this.requestRunnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestOnlineMembers() {
        this.liveLayerHelper.requestOnlineMembers(this.topic, 10, true, true, new Callback<UserListResponse>() { // from class: com.narvii.livelayer.LiveLayerService.2
            @Override // com.narvii.util.Callback
            public void call(UserListResponse userListResponse) {
                if (userListResponse.userList == null) {
                    userListResponse.userList = new ArrayList();
                }
                LiveLayerService.this.dataSource.dispatchData(new LinkedList<>(userListResponse.userList), userListResponse.userProfileCount);
                LiveLayerService liveLayerService = LiveLayerService.this;
                liveLayerService.subscribe(liveLayerService.topic, liveLayerService.dataSource.liveLayerEventListener);
            }
        });
        this.lastRefreshTime = SystemClock.elapsedRealtime();
    }

    public void requestOnlineMembers(String str, int i, boolean z, Callback<UserListResponse> callback) {
        this.liveLayerHelper.requestOnlineMembers(str, i, z, false, callback);
    }

    private String assembleTarget(String str) {
        return assembleTarget(this.cid, str);
    }

    public static String assembleTarget(int i, String str) {
        if (str == null) {
            return null;
        }
        if (i == 0) {
            return "ndc://g/" + str;
        }
        return "ndc://x" + i + "/" + str;
    }

    public String getNdtopic(String str) {
        return this.liveLayerHelper.getNdtopic(str);
    }

    private String assembleTopic(String str) {
        return getNdtopic(str);
    }

    public void registerWsListener(WsService.WsListener wsListener) {
        this.wsService.registerWsListener(wsListener);
    }

    public void unregisterWsListener(WsService.WsListener wsListener) {
        this.wsService.unregisterWsListener(wsListener);
    }

    public void reportBrowsing(String str, boolean z) {
        if (z) {
            reportActive(ACTION_BROWSING, str, (HashMap<String, Object>) null);
        } else {
            reportInactive(ACTION_BROWSING, str, (HashMap<String, Object>) null);
        }
    }

    public void cacheLiveLayerMainData(LiveLayerMainData liveLayerMainData) {
        this.liveLayerMainData = liveLayerMainData;
        this.mainDataCacheTime = SystemClock.elapsedRealtime();
    }

    public LiveLayerMainData getCachedLiveLayerMainData() {
        if (SystemClock.elapsedRealtime() - this.mainDataCacheTime > 300000) {
            this.liveLayerMainData = null;
        }
        return this.liveLayerMainData;
    }

    @Override // com.narvii.community.AffiliationsService.AffiliationChangeListener
    public void onAffiliationChanged() {
        if (this.affiliationsService.contains(this.cid)) {
            reportActive(ACTION_BROWSING, "", (HashMap<String, Object>) null);
            refreshOnlineMembers();
            this.affiliationsService.removeAffiliationChangeListener(this);
        }
    }
}
