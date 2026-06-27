package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.util.ranking.RankingService;

/* loaded from: classes.dex */
public class RankingServiceProvider implements ServiceProvider<RankingService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, RankingService rankingService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, RankingService rankingService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, RankingService rankingService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, RankingService rankingService) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public RankingService create(NVContext nVContext) {
        return new RankingService(nVContext);
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, RankingService rankingService) {
        rankingService.reset();
    }
}
