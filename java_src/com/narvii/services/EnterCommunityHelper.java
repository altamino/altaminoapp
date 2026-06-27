package com.narvii.services;

import android.text.TextUtils;
import com.narvii.app.NVContext;
import com.narvii.community.AffiliationsService;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.model.Community;
import com.narvii.theme.ThemeInfo;
import com.narvii.theme.ThemePackService;
import com.narvii.util.Utils;
import com.narvii.util.statistics.TmpValue;
import java.io.IOException;

/* loaded from: classes.dex */
public class EnterCommunityHelper implements AutostartServiceProvider<Object> {
    public static final TmpValue<String> SOURCE = new TmpValue<>();
    public static final TmpValue<Boolean> SKIP_ENTER_COMMUNITY = new TmpValue<>();

    @Override // com.narvii.services.ServiceProvider
    public Object create(NVContext nVContext) {
        return this;
    }

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, Object obj) {
    }

    public void logEnterCommunity(NVContext nVContext, long j) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, Object obj) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, Object obj) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, Object obj) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, Object obj) {
        final int communityId = ((ConfigService) nVContext.getService("config")).getCommunityId();
        if (communityId != 0) {
            final Community community = ((CommunityService) nVContext.getService("community")).getCommunity(communityId);
            final ThemePackService themePackService = (ThemePackService) nVContext.getService("themePack");
            themePackService.touchThemePack(communityId);
            ThemeInfo themeInfo = themePackService.getThemeInfo(communityId);
            boolean zContains = ((AffiliationsService) nVContext.getService("affiliations")).contains(communityId);
            if (community == null || TextUtils.isEmpty(community.themePackUrl()) || !zContains) {
                return;
            }
            if (themeInfo == null || themeInfo.revision != community.themePackRevision()) {
                themePackService.addToDownLoadList(communityId);
                Utils.post(new Runnable() { // from class: com.narvii.services.-$$Lambda$EnterCommunityHelper$5p6Hh-Q0x7GKrzFaIl5YGmmHGBY
                    @Override // java.lang.Runnable
                    public final void run() throws IOException {
                        ThemePackService themePackService2 = themePackService;
                        int i = communityId;
                        Community community2 = community;
                        themePackService2.require(i, community2.themePackRevision(), community2.themePackUrl());
                    }
                });
            }
        }
    }
}
