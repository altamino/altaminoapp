package com.narvii.services.incubator;

import android.content.Context;
import com.narvii.app.NVContext;
import com.narvii.post.DraftManager;
import com.narvii.services.DraftManagerProvider;
import com.narvii.services.ServiceProvider;

/* loaded from: classes.dex */
public class IncubatorDraftManagerProvider implements ServiceProvider<DraftManager> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, DraftManager draftManager) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, DraftManager draftManager) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, DraftManager draftManager) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, DraftManager draftManager) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, DraftManager draftManager) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public DraftManager create(NVContext nVContext) {
        int i = nVContext instanceof CommunityContext ? ((CommunityContext) nVContext).cid : 0;
        DraftManager draftManager = new DraftManager(nVContext, i);
        if (i != 0) {
            Context context = nVContext.getContext();
            DraftManagerProvider.convertOldDrafts(context.getSharedPreferences("post_" + i + "_blog", 0), "blog", draftManager);
            DraftManagerProvider.convertOldDrafts(context.getSharedPreferences("post_" + i + "_item", 0), "item", draftManager);
            DraftManagerProvider.convertOldDrafts(context.getSharedPreferences("post_" + i + "_topic", 0), "topic", draftManager);
        }
        return draftManager;
    }
}
