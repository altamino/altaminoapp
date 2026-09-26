package com.narvii.services.incubator;

import android.app.Application;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.community.CommunityService;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.Community;
import com.narvii.services.ServiceProvider;
import com.narvii.util.Log;
import com.narvii.util.statistics.StatisticsEventBuilder;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.StatisticsServiceImpl;
import com.narvii.util.statistics.TeaManagerStatisticsService;

/* JADX INFO: loaded from: classes8.dex */
public class IncubatorStatisticsServiceProvider implements ServiceProvider<StatisticsService> {
    StatisticsServiceImpl root;

    class CommunityStatisticsService implements StatisticsService {
        int cid;
        CommunityService communityService;
        StatisticsService parent;

        public CommunityStatisticsService(StatisticsService statisticsService, int i10, CommunityService communityService) {
            this.parent = statisticsService;
            this.cid = i10;
            this.communityService = communityService;
        }

        @Override // com.narvii.util.statistics.StatisticsService
        public StatisticsEventBuilder event(String str) {
            int i10;
            StatisticsEventBuilder statisticsEventBuilderEvent = this.parent.event(str);
            statisticsEventBuilderEvent.param("Community ID", this.cid);
            try {
                Community community = this.communityService.getCommunity(this.cid);
                if (community != null && (i10 = community.templateId) != 0) {
                    statisticsEventBuilderEvent.param("Template", i10);
                }
            } catch (Exception unused) {
                Log.w("fail to get community template");
            }
            return statisticsEventBuilderEvent;
        }

        @Override // com.narvii.util.statistics.StatisticsService
        public void revenue(String str, double d) {
            this.parent.revenue(str, d);
        }

        @Override // com.narvii.util.statistics.StatisticsService
        public void setDeviceProperty(String str, Object obj) {
            this.parent.setDeviceProperty(str, obj);
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, StatisticsService statisticsService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, StatisticsService statisticsService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, StatisticsService statisticsService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, StatisticsService statisticsService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, StatisticsService statisticsService) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public StatisticsService create(NVContext nVContext) {
        if (this.root == null) {
            this.root = new TeaManagerStatisticsService(nVContext instanceof Application ? nVContext : NVApplication.instance(), "Master");
        }
        int communityId = IncubatorApplication.getCommunityId(nVContext);
        if (communityId == 0) {
            return this.root;
        }
        return new CommunityStatisticsService(this.root, communityId, (CommunityService) nVContext.getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY));
    }
}
