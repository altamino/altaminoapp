package com.narvii.community;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.SystemClock;
import android.util.SparseArray;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.master.search.SearchPrefsHelper;
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
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
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
                try {
                    Iterator it = CommunityService.this.updates.values().iterator();
                    while (it.hasNext()) {
                        ((UpdateStub) it.next()).save(CommunityService.this.dir);
                    }
                    CommunityService.this.updates.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    };
    private final HashMap<Integer, UpdateStub> updates = new HashMap<>();
    private final WeakLruCache<Integer, Community> cache = new WeakLruCache<>(3);
    private final SparseArray<Community> liteCommunityCache = new SparseArray<>();
    private final HashMap<Integer, Long> timestampCache = new HashMap<>();
    private final ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);

    private static class UpdateStub {
        int cid;
        Community community;
        String communityStr;
        long timestamp;

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
            long j6 = this.timestamp;
            if (j6 == 0) {
                file2.delete();
            } else {
                Utils.writeToFile(file2, String.valueOf(j6));
            }
        }

        UpdateStub(int i10) {
            this.cid = i10;
        }
    }

    private Community getCommunity(int i10, boolean z6) {
        Community community;
        Integer numValueOf = Integer.valueOf(i10);
        UpdateStub updateStubSafeGetUpdate = safeGetUpdate(numValueOf);
        if (updateStubSafeGetUpdate != null && (community = updateStubSafeGetUpdate.community) != null) {
            if (!z6) {
                this.cache.put(numValueOf, community);
            }
            return updateStubSafeGetUpdate.community;
        }
        Community community2 = this.cache.get(numValueOf);
        if (community2 != null) {
            return community2;
        }
        File file = new File(this.dir, "x" + i10 + ".c");
        try {
            community2 = (Community) JacksonUtils.DEFAULT_MAPPER.readValue(file, Community.class);
        } catch (Exception unused) {
            file.delete();
        }
        if (community2 != null && !z6) {
            this.cache.put(numValueOf, community2);
        }
        return community2;
    }

    public void updateCommunity(Community community, boolean z6, long j6, boolean z10) {
        updateCommunity(community, z6, j6, z10, false);
    }

    public CommunityService(NVContext nVContext, boolean z6) {
        Throwable th;
        SharedPreferences sharedPreferences;
        this.context = nVContext;
        this.ignoreContents = z6;
        this.lbm = LocalBroadcastManager.b(nVContext.getContext());
        this.dir = new File(nVContext.getContext().getFilesDir(), SearchPrefsHelper.PREFS_KEY_COMMUNITY);
        if (this.dir.isDirectory()) {
            return;
        }
        this.dir.delete();
        this.dir.mkdir();
        try {
            sharedPreferences = nVContext.getContext().getSharedPreferences(SearchPrefsHelper.PREFS_KEY_COMMUNITY, 0);
            try {
                Map<String, ?> all = sharedPreferences.getAll();
                if (all.size() < 120) {
                    Pattern patternCompile = Pattern.compile("x(\\d+)");
                    HashSet<Integer> hashSet = new HashSet();
                    Iterator<String> it = all.keySet().iterator();
                    while (it.hasNext()) {
                        Matcher matcher = patternCompile.matcher(it.next());
                        if (matcher.matches()) {
                            hashSet.add(Integer.valueOf(Integer.parseInt(matcher.group(1))));
                        }
                    }
                    for (Integer num : hashSet) {
                        String string = sharedPreferences.getString("x" + num, null);
                        if (string != null) {
                            UpdateStub updateStub = new UpdateStub(num.intValue());
                            updateStub.communityStr = string;
                            updateStub.timestamp = sharedPreferences.getLong("x" + num + "_t", 0L);
                            updateStub.save(this.dir);
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                Log.e("fail to upgrade community", th);
            }
        } catch (Throwable th3) {
            th = th3;
            sharedPreferences = null;
        }
        if (sharedPreferences != null) {
            sharedPreferences.edit().clear().commit();
        }
    }

    private UpdateStub safeGetUpdate(Integer num) {
        UpdateStub updateStub;
        synchronized (this.updates) {
            updateStub = this.updates.get(num);
        }
        return updateStub;
    }

    public void fetchLiteCommunity(int i10, final Callback<Community> callback) {
        if (i10 <= 0) {
            return;
        }
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.path("community/min-info").global().scopeCommunityId(i10);
        ((ApiService) this.context.getService("api")).exec(builder.build(), new ApiResponseListener<CommunityResponse>(CommunityResponse.class) { // from class: com.narvii.community.CommunityService.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, CommunityResponse communityResponse) throws Exception {
                super.onFinish(apiRequest, communityResponse);
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
            public void onFail(ApiRequest apiRequest, int i11, List list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i11, list, str, apiResponse, th);
            }
        });
    }

    public void updateCommunity(Community community, boolean z6, long j6, boolean z10, boolean z11) {
        ObjectNode objectNode;
        if (Utils.shouldUpdateTimestamp(j6, getCommunityTimestamp(community.id))) {
            UpdateStub updateStub = new UpdateStub(community.id);
            Community community2 = getCommunity(community.id);
            updateStub.timestamp = j6;
            Community community3 = (Community) community.m1622clone();
            community3.launchPage = null;
            if (!z6 && ((objectNode = community3.configuration) == null || objectNode.size() == 0)) {
                community3.configuration = community2 == null ? null : community2.configuration;
            }
            if (!z6) {
                community3.agent = community2 == null ? null : community2.agent;
                community3.communityHeadList = community2 == null ? null : community2.communityHeadList;
            }
            if (!z10) {
                community3.influencerList = community2 == null ? null : community2.influencerList;
            }
            if (!z11 && community3.userAddedTopicList == null) {
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
            } else if (!z6 && community2 != null) {
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
            boolean z12 = community3.checkEqual(community2) != 2;
            updateStub.community = community3;
            String strWriteAsString = JacksonUtils.writeAsString(community3);
            updateStub.communityStr = strWriteAsString;
            this.cache.remove(Integer.valueOf(community.id));
            synchronized (this.updates) {
                try {
                    this.updates.put(Integer.valueOf(community.id), updateStub);
                    ScheduledFuture scheduledFuture = this.scheduledFuture;
                    if (scheduledFuture != null) {
                        scheduledFuture.cancel(false);
                    }
                    this.scheduledFuture = this.scheduledThreadPoolExecutor.schedule(this.executeUpdate, 2L, TimeUnit.SECONDS);
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (!z12 || NVApplication.CLIENT_TYPE == 200) {
                Intent intent = new Intent(ACTION_COMMUNITY_CHANGED);
                intent.putExtra("id", community.id);
                intent.putExtra(SearchPrefsHelper.PREFS_KEY_COMMUNITY, strWriteAsString);
                this.lbm.d(intent);
                Log.w("x" + community.id() + " community info changed");
            }
        }
    }

    public void updateLiteCommunity(Community community) {
        if (community == null) {
            return;
        }
        this.liteCommunityCache.put(community.id, community);
    }

    public void batchUpdateCommunity(final List<Community> list, final long j6) {
        if (list.size() > 0) {
            this.scheduledThreadPoolExecutor.schedule(new Runnable() { // from class: com.narvii.community.CommunityService.3
                @Override // java.lang.Runnable
                public void run() {
                    CommunityService.this.doBatchUpdate(list, j6);
                }
            }, 2L, TimeUnit.SECONDS);
        }
    }

    void doBatchUpdate(List<Community> list, long j6) {
        ObjectNode objectNode;
        long jCurrentThreadTimeMillis = SystemClock.currentThreadTimeMillis();
        int i10 = 0;
        for (Community community : list) {
            int i11 = community.id;
            if (i11 != 0 && Utils.shouldUpdateTimestamp(j6, getCommunityTimestamp(i11))) {
                UpdateStub updateStub = new UpdateStub(community.id);
                updateStub.timestamp = j6;
                boolean z6 = true;
                Community community2 = getCommunity(community.id, true);
                Community community3 = (Community) community.m1622clone();
                String strWriteAsString = null;
                community3.launchPage = null;
                ObjectNode objectNode2 = community3.configuration;
                if (objectNode2 == null || objectNode2.size() == 0) {
                    if (community2 == null) {
                        objectNode = null;
                    } else {
                        objectNode = community2.configuration;
                    }
                    community3.configuration = objectNode;
                }
                if (community2 != null) {
                    community3.agent = community2.agent;
                    community3.communityHeadList = community2.communityHeadList;
                    community3.influencerList = community2.influencerList;
                }
                community3.userAddedTopicList = null;
                community3.content = null;
                community3.tagline = null;
                community3.mediaList = null;
                community3.communityHeat = 0.0f;
                community3.searchable = false;
                if (community2 == null || !community2.equals(community3)) {
                    z6 = false;
                }
                if (!z6) {
                    updateStub.community = community3;
                    strWriteAsString = JacksonUtils.writeAsString(community3);
                    updateStub.communityStr = strWriteAsString;
                    this.cache.remove(Integer.valueOf(community.id));
                }
                updateStub.save(this.dir);
                if (!z6) {
                    Intent intent = new Intent(ACTION_COMMUNITY_CHANGED);
                    intent.putExtra("id", community.id);
                    intent.putExtra(SearchPrefsHelper.PREFS_KEY_COMMUNITY, strWriteAsString);
                    this.lbm.d(intent);
                    i10++;
                }
            }
        }
        if (i10 == 0) {
            Log.i("batch update, no community changed");
            return;
        }
        Log.w("batch update " + i10 + " changed community in " + (SystemClock.currentThreadTimeMillis() - jCurrentThreadTimeMillis) + "ms");
    }

    public long getCommunityTimestamp(int i10) {
        Integer numValueOf = Integer.valueOf(i10);
        UpdateStub updateStubSafeGetUpdate = safeGetUpdate(numValueOf);
        if (updateStubSafeGetUpdate != null) {
            return updateStubSafeGetUpdate.timestamp;
        }
        Long l = this.timestampCache.get(numValueOf);
        if (l != null) {
            return l.longValue();
        }
        File file = new File(this.dir, "x" + i10 + ".t");
        if (file.length() > 0) {
            try {
                this.timestampCache.put(numValueOf, Long.valueOf(Long.parseLong(Utils.readStringFromFile(file))));
            } catch (Exception unused) {
                file.delete();
            }
        }
        return 0L;
    }

    public Community getLiteCommunity(int i10) {
        Community community = getCommunity(i10);
        if (community != null) {
            return community;
        }
        return this.liteCommunityCache.get(i10);
    }

    @Nullable
    public Community getCommunity(int i10) {
        return getCommunity(i10, false);
    }

    public void updateCommunity(Community community, boolean z6, String str) {
        updateCommunity(community, z6, DateTimeFormatter.parseISO8601(str).getTime());
    }

    public void updateCommunity(Community community, boolean z6, long j6) {
        updateCommunity(community, z6, j6, false);
    }
}
