package com.narvii.monetization.bubble;

import com.narvii.app.NVContext;
import com.narvii.services.ServiceProvider;
import java.io.IOException;

/* loaded from: classes.dex */
public class BubbleServiceProvider implements ServiceProvider<BubbleService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, BubbleService bubbleService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, BubbleService bubbleService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, BubbleService bubbleService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, BubbleService bubbleService) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public BubbleService create(NVContext nVContext) {
        return new BubbleService(nVContext);
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, BubbleService bubbleService) throws IOException {
        bubbleService.cancelAll();
        bubbleService.cleanDiscardedBubbleCache();
        bubbleService.removeUploadDir();
    }
}
