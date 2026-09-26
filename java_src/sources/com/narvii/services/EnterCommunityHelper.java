package com.narvii.services;

import android.os.SystemClock;
import android.text.TextUtils;
import com.fasterxml.jackson.databind.JsonNode;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.community.AffiliationsService;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.theme.ThemeInfo;
import com.narvii.theme.ThemePackService;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.statistics.StatisticsEventBuilder;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.TmpValue;
import java.util.HashMap;

/* JADX INFO: loaded from: classes8.dex */
public class EnterCommunityHelper implements AutostartServiceProvider<Object> {
    private final HashMap<Integer, Long> lastEnterTime = new HashMap<>();
    public static final TmpValue<String> SOURCE = new TmpValue<>();
    public static final TmpValue<Boolean> SKIP_ENTER_COMMUNITY = new TmpValue<>();

    @Override // com.narvii.services.ServiceProvider
    public Object create(NVContext nVContext) {
        return this;
    }

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, Object obj) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, Object obj) {
    }

    public void logEnterCommunity(NVContext nVContext, long j6) {
        int communityId;
        int i10;
        if (SKIP_ENTER_COMMUNITY.getAndRemove() == Boolean.TRUE || (communityId = ((ConfigService) nVContext.getService("config")).getCommunityId()) == 0) {
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        Long l = this.lastEnterTime.get(Integer.valueOf(communityId));
        if (j6 == 0 || l == null || jElapsedRealtime > l.longValue() + j6) {
            this.lastEnterTime.put(Integer.valueOf(communityId), Long.valueOf(jElapsedRealtime));
            StatisticsEventBuilder statisticsEventBuilderSource = ((StatisticsService) nVContext.getService("statistics")).event("Enters A Community").priority(5).userPropInc("Community Entered Total").param("Community ID", communityId).source(SOURCE.getAndRemove());
            User userProfile = ((AccountService) nVContext.getService("account")).getUserProfile();
            if (userProfile != null && ((i10 = userProfile.role) == 100 || i10 == 102)) {
                statisticsEventBuilderSource.param("User Role", "Leader");
                statisticsEventBuilderSource.userPropInc("Leader Entered Total");
            } else if (userProfile != null && userProfile.role == 101) {
                statisticsEventBuilderSource.param("User Role", "Curator");
                statisticsEventBuilderSource.userPropInc("Curator Entered Total");
            } else if (userProfile != null) {
                statisticsEventBuilderSource.param("User Role", "Member");
            }
            JsonNode jsonNodeNodePath = userProfile == null ? null : JacksonUtils.nodePath(userProfile.extensions, "customTitles");
            if (jsonNodeNodePath == null || jsonNodeNodePath.size() <= 0) {
                return;
            }
            statisticsEventBuilderSource.userProp("Has A Custom Title", true);
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, Object obj) {
        final int communityId = ((ConfigService) nVContext.getService("config")).getCommunityId();
        if (communityId != 0) {
            final Community community = ((CommunityService) nVContext.getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY)).getCommunity(communityId);
            final ThemePackService themePackService = (ThemePackService) nVContext.getService("themePack");
            themePackService.touchThemePack(communityId);
            ThemeInfo themeInfo = themePackService.getThemeInfo(communityId);
            boolean zContains = ((AffiliationsService) nVContext.getService("affiliations")).contains(communityId);
            if (community == null || TextUtils.isEmpty(community.themePackUrl()) || !zContains) {
                return;
            }
            if (themeInfo == null || themeInfo.revision != community.themePackRevision()) {
                themePackService.addToDownLoadList(communityId);
                Utils.post(new Runnable() { // from class: com.narvii.services.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        EnterCommunityHelper.lambda$start$0(themePackService, communityId, community);
                    }
                });
            }
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, Object obj) {
        int communityId = ((ConfigService) nVContext.getService("config")).getCommunityId();
        if (communityId != 0) {
            this.lastEnterTime.remove(Integer.valueOf(communityId));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$start$0(ThemePackService themePackService, int i10, Community community) {
        themePackService.require(i10, community.themePackRevision(), community.themePackUrl());
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, Object obj) {
        logEnterCommunity(nVContext, 300000L);
    }
}
