package com.narvii.services.incubator;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.narvii.app.NVContext;
import com.narvii.community.CommunityService;
import com.narvii.community.MyCommunityListResponse;
import com.narvii.community.MyCommunityListService;
import com.narvii.master.CommunityListResponse;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.Community;
import com.narvii.services.AutostartServiceProvider;
import com.narvii.theme.ThemePackService;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.Utils;
import com.narvii.util.statistics.StatisticsService;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class IncubatorMyCommunityListHelper implements AutostartServiceProvider<Object>, MyCommunityListService.MyCommunityListObserver {
    int autoUpdateCid;
    CommunityService communityService;
    NVContext context;
    boolean isResumed;
    LocalBroadcastManager localBroadcastManager;
    MyCommunityListService myCommunityListService;
    ThemePackService themePackService;
    private final Runnable downloadThemePackRunnable = new Runnable() { // from class: com.narvii.services.incubator.IncubatorMyCommunityListHelper.1
        @Override // java.lang.Runnable
        public void run() {
            IncubatorMyCommunityListHelper incubatorMyCommunityListHelper = IncubatorMyCommunityListHelper.this;
            if (incubatorMyCommunityListHelper.isResumed) {
                incubatorMyCommunityListHelper.downloadThemePack();
            }
        }
    };
    private final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.services.incubator.IncubatorMyCommunityListHelper.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Utils.handler.removeCallbacks(IncubatorMyCommunityListHelper.this.downloadThemePackRunnable);
            Utils.postDelayed(IncubatorMyCommunityListHelper.this.downloadThemePackRunnable, 200L);
        }
    };

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, Object obj) {
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onReminderChanged(MyCommunityListService myCommunityListService) {
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onSuggestListChanged(MyCommunityListService myCommunityListService, CommunityListResponse communityListResponse) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, Object obj) {
        this.isResumed = false;
        this.localBroadcastManager.f(this.receiver);
        Utils.handler.removeCallbacks(this.downloadThemePackRunnable);
        int i10 = this.autoUpdateCid;
        if (i10 != 0) {
            this.themePackService.cancel(i10);
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, Object obj) {
        this.isResumed = true;
        this.localBroadcastManager.c(this.receiver, new IntentFilter(ThemePackService.ACTION_STATUS_CHANGED));
        downloadThemePack();
    }

    @Override // com.narvii.services.ServiceProvider
    public Object create(NVContext nVContext) {
        this.context = nVContext;
        this.myCommunityListService = (MyCommunityListService) nVContext.getService("myCommunityList");
        this.communityService = (CommunityService) nVContext.getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY);
        this.themePackService = (ThemePackService) nVContext.getService("themePack");
        this.localBroadcastManager = LocalBroadcastManager.b(nVContext.getContext());
        return this;
    }

    void downloadThemePack() {
        if (this.myCommunityListService.list().isEmpty()) {
            return;
        }
        Community community = null;
        int i10 = 0;
        for (Community community2 : this.myCommunityListService.list()) {
            int status = this.themePackService.getStatus(community2.id, community2.themePackRevision());
            if (status == 0) {
                if (community == null) {
                    community = community2;
                }
            } else if (status == 1) {
                i10++;
            }
        }
        if (i10 != 0 || community == null) {
            return;
        }
        this.themePackService.require(community.id, community.themePackRevision(), community.themePackUrl());
        this.autoUpdateCid = community.id;
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onListChanged(MyCommunityListService myCommunityListService, MyCommunityListResponse myCommunityListResponse, Integer num) {
        if (myCommunityListResponse == null) {
            return;
        }
        if (num != null) {
            this.themePackService.clearErrors();
        }
        if (this.isResumed) {
            downloadThemePack();
        }
        if (this.isResumed) {
            this.communityService.batchUpdateCommunity(myCommunityListResponse.communityList, DateTimeFormatter.parseISO8601(myCommunityListResponse.timestamp).getTime());
        }
        if (myCommunityListService.isEnd()) {
            List<Community> list = myCommunityListService.list();
            int size = list.size();
            int[] iArr = new int[size];
            for (int i10 = 0; i10 < size; i10++) {
                Community community = list.get(i10);
                if (community instanceof Community) {
                    iArr[i10] = community.id;
                }
            }
            Arrays.sort(iArr);
            ((StatisticsService) this.context.getService("statistics")).event(null).userProp("Communities Joined Total", size).userProp("Communities Joined", iArr);
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, Object obj) {
        this.myCommunityListService.addObserver(this);
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, Object obj) {
        this.myCommunityListService.removeObserver(this);
    }
}
