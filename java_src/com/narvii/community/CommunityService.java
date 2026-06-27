package com.narvii.community;

import android.content.Intent;
import android.os.SystemClock;
import android.support.v4.content.LocalBroadcastManager;
import android.util.SparseArray;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.model.Community;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.CommunityResponse;
import com.narvii.util.Callback;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.WeakLruCache;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class CommunityService {
    public static final String ACTION_COMMUNITY_CHANGED = "com.narvii.action.COMMUNITY_CHANGED";
    private NVContext context;
    private File dir;
    private boolean ignoreContents;
    private LocalBroadcastManager lbm;
    private ScheduledFuture scheduledFuture;
    private final Runnable executeUpdate = new Runnable() { // from class: com.narvii.community.CommunityService.2
        @Override // java.lang.Runnable
        public void run() {
            synchronized (CommunityService.this.updates) {
                Iterator it = CommunityService.this.updates.values().iterator();
                while (it.hasNext()) {
                    ((UpdateStub) it.next()).save(CommunityService.this.dir);
                }
                CommunityService.this.updates.clear();
            }
        }
    };
    private final HashMap<Integer, UpdateStub> updates = new HashMap<>();
    private final WeakLruCache<Integer, Community> cache = new WeakLruCache<>(3);
    private final SparseArray<Community> liteCommunityCache = new SparseArray<>();
    private final HashMap<Integer, Long> timestampCache = new HashMap<>();
    private final ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);

    /* loaded from: classes2.dex */
    private static class UpdateStub {
        int cid;
        Community community;
        String communityStr;
        long timestamp;

        UpdateStub(int i) {
            this.cid = i;
        }

        void save(File file) {
            Community community;
            String strWriteAsString = this.communityStr;
            if (strWriteAsString == null && (community = this.community) != null) {
                strWriteAsString = JacksonUtils.writeAsString(community);
            }
            if (strWriteAsString != null) {
                if (!Utils.writeToFile(new File(file, "x" + this.cid + ".c"), strWriteAsString)) {
                    Log.w("fail to save community " + this.cid);
                    return;
                }
            }
            File file2 = new File(file, "x" + this.cid + ".t");
            long j = this.timestamp;
            if (j == 0) {
                file2.delete();
            } else {
                Utils.writeToFile(file2, String.valueOf(j));
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:44:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public CommunityService(com.narvii.app.NVContext r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.community.CommunityService.<init>(com.narvii.app.NVContext, boolean):void");
    }

    private UpdateStub safeGetUpdate(Integer num) {
        UpdateStub updateStub;
        synchronized (this.updates) {
            updateStub = this.updates.get(num);
        }
        return updateStub;
    }

    private Community getCommunity(int i, boolean z) {
        Community community;
        Community community2;
        Integer numValueOf = Integer.valueOf(i);
        UpdateStub updateStubSafeGetUpdate = safeGetUpdate(numValueOf);
        if (updateStubSafeGetUpdate != null && (community2 = updateStubSafeGetUpdate.community) != null) {
            if (!z) {
                this.cache.put(numValueOf, community2);
            }
            return updateStubSafeGetUpdate.community;
        }
        Community community3 = this.cache.get(numValueOf);
        if (community3 != null) {
            return community3;
        }
        File file = new File(this.dir, "x" + i + ".c");
        try {
            community = (Community) JacksonUtils.DEFAULT_MAPPER.readValue(file, Community.class);
        } catch (Exception unused) {
            file.delete();
            community = community3;
        }
        if (community != null && !z) {
            this.cache.put(numValueOf, community);
        }
        return community;
    }

    public Community getCommunity(int i) {
        return getCommunity(i, false);
    }

    public long getCommunityTimestamp(int i) throws NumberFormatException {
        Integer numValueOf = Integer.valueOf(i);
        UpdateStub updateStubSafeGetUpdate = safeGetUpdate(numValueOf);
        if (updateStubSafeGetUpdate != null) {
            return updateStubSafeGetUpdate.timestamp;
        }
        Long l = this.timestampCache.get(numValueOf);
        if (l != null) {
            return l.longValue();
        }
        File file = new File(this.dir, "x" + i + ".t");
        if (file.length() > 0) {
            try {
                this.timestampCache.put(numValueOf, Long.valueOf(Long.parseLong(Utils.readStringFromFile(file))));
            } catch (Exception unused) {
                file.delete();
            }
        }
        return 0L;
    }

    public void updateCommunity(Community community, boolean z, long j, boolean z2) {
        updateCommunity(community, z, j, z2, false);
    }

    public void updateCommunity(Community community, boolean z, long j, boolean z2, boolean z3) {
        ObjectNode objectNode;
        if (Utils.shouldUpdateTimestamp(j, getCommunityTimestamp(community.id))) {
            UpdateStub updateStub = new UpdateStub(community.id);
            Community community2 = getCommunity(community.id);
            updateStub.timestamp = j;
            Community community3 = (Community) community.m46clone();
            community3.launchPage = null;
            if (!z && ((objectNode = community3.configuration) == null || objectNode.size() == 0)) {
                community3.configuration = community2 == null ? null : community2.configuration;
            }
            if (!z) {
                community3.agent = community2 == null ? null : community2.agent;
                community3.communityHeadList = community2 == null ? null : community2.communityHeadList;
            }
            if (!z2) {
                community3.influencerList = community2 == null ? null : community2.influencerList;
            }
            if (!z3 && community3.userAddedTopicList == null) {
                community3.userAddedTopicList = community2 == null ? null : community2.userAddedTopicList;
            }
            if (community2 != null) {
                if (community3.tagline == null) {
                    community3.tagline = community2.tagline;
                }
                if (community3.membersCount == 0) {
                    community3.membersCount = community2.membersCount;
                }
            }
            if (this.ignoreContents) {
                community3.content = null;
                community3.mediaList = null;
                community3.communityHeat = 0.0f;
            } else if (!z && community2 != null) {
                community3.userAddedTopicList = community2.userAddedTopicList;
                community3.content = community2.content;
                community3.tagline = community2.tagline;
                community3.mediaList = community2.mediaList;
                community3.membersCount = community2.membersCount;
                community3.communityHeat = community2.communityHeat;
                community3.searchable = community2.searchable;
            }
            if (community.id == 0) {
                community3.configuration = community.configuration;
            }
            boolean z4 = community3.checkEqual(community2) != 2;
            updateStub.community = community3;
            String strWriteAsString = JacksonUtils.writeAsString(community3);
            updateStub.communityStr = strWriteAsString;
            this.cache.remove(Integer.valueOf(community.id));
            synchronized (this.updates) {
                this.updates.put(Integer.valueOf(community.id), updateStub);
                if (this.scheduledFuture != null) {
                    this.scheduledFuture.cancel(false);
                }
                this.scheduledFuture = this.scheduledThreadPoolExecutor.schedule(this.executeUpdate, 2L, TimeUnit.SECONDS);
            }
            if (!z4 || NVApplication.CLIENT_TYPE == 200) {
                Intent intent = new Intent(ACTION_COMMUNITY_CHANGED);
                intent.putExtra("id", community.id);
                intent.putExtra("community", strWriteAsString);
                this.lbm.sendBroadcast(intent);
                Log.w("x" + community.id() + " community info changed");
            }
        }
    }

    public void updateCommunity(Community community, boolean z, String str) {
        updateCommunity(community, z, DateTimeFormatter.parseISO8601(str).getTime());
    }

    public void updateCommunity(Community community, boolean z, long j) {
        updateCommunity(community, z, j, false);
    }

    public void updateLiteCommunity(Community community) {
        if (community == null) {
            return;
        }
        this.liteCommunityCache.put(community.id, community);
    }

    public Community getLiteCommunity(int i) {
        Community community = getCommunity(i);
        return community != null ? community : this.liteCommunityCache.get(i);
    }

    public void fetchLiteCommunity(int i, final Callback<Community> callback) {
        if (i <= 0) {
            return;
        }
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.path("community/min-info").global().scopeCommunityId(i);
        ((ApiService) this.context.getService("api")).exec(builder.build(), new ApiResponseListener<CommunityResponse>(CommunityResponse.class) { // from class: com.narvii.community.CommunityService.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, CommunityResponse communityResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) communityResponse);
                Community community = communityResponse.community;
                if (community == null || community.id == 0) {
                    return;
                }
                CommunityService.this.updateLiteCommunity(community);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(community);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i2, List list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i2, list, str, apiResponse, th);
            }
        });
    }

    public void batchUpdateCommunity(final List<Community> list, final long j) {
        if (list.size() > 0) {
            this.scheduledThreadPoolExecutor.schedule(new Runnable() { // from class: com.narvii.community.CommunityService.3
                @Override // java.lang.Runnable
                public void run() {
                    CommunityService.this.doBatchUpdate(list, j);
                }
            }, 2L, TimeUnit.SECONDS);
        }
    }

    void doBatchUpdate(List<Community> list, long j) {
        long jCurrentThreadTimeMillis = SystemClock.currentThreadTimeMillis();
        int i = 0;
        for (Community community : list) {
            int i2 = community.id;
            if (i2 != 0 && Utils.shouldUpdateTimestamp(j, getCommunityTimestamp(i2))) {
                UpdateStub updateStub = new UpdateStub(community.id);
                updateStub.timestamp = j;
                Community community2 = getCommunity(community.id, true);
                Community community3 = (Community) community.m46clone();
                String strWriteAsString = null;
                community3.launchPage = null;
                ObjectNode objectNode = community3.configuration;
                if (objectNode == null || objectNode.size() == 0) {
                    community3.configuration = community2 == null ? null : community2.configuration;
                }
                if (community2 != null) {
                    community3.agent = community2 == null ? null : community2.agent;
                    community3.communityHeadList = community2 == null ? null : community2.communityHeadList;
                    community3.influencerList = community2 == null ? null : community2.influencerList;
                }
                community3.userAddedTopicList = null;
                community3.content = null;
                community3.tagline = null;
                community3.mediaList = null;
                community3.communityHeat = 0.0f;
                community3.searchable = false;
                boolean z = community2 != null && community2.equals(community3);
                if (!z) {
                    updateStub.community = community3;
                    strWriteAsString = JacksonUtils.writeAsString(community3);
                    updateStub.communityStr = strWriteAsString;
                    this.cache.remove(Integer.valueOf(community.id));
                }
                updateStub.save(this.dir);
                if (!z) {
                    Intent intent = new Intent(ACTION_COMMUNITY_CHANGED);
                    intent.putExtra("id", community.id);
                    intent.putExtra("community", strWriteAsString);
                    this.lbm.sendBroadcast(intent);
                    i++;
                }
            }
        }
        if (i == 0) {
            Log.i("batch update, no community changed");
            return;
        }
        Log.w("batch update " + i + " changed community in " + (SystemClock.currentThreadTimeMillis() - jCurrentThreadTimeMillis) + "ms");
    }
}
