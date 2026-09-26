package com.narvii.services.incubator;

import android.content.Context;
import com.narvii.app.NVContext;
import com.narvii.post.DraftManager;
import com.narvii.services.DraftManagerProvider;
import com.narvii.services.ServiceProvider;

/* JADX INFO: loaded from: classes11.dex */
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
        int i10 = nVContext instanceof CommunityContext ? ((CommunityContext) nVContext).cid : 0;
        DraftManager draftManager = new DraftManager(nVContext, i10);
        if (i10 != 0) {
            Context context = nVContext.getContext();
            DraftManagerProvider.convertOldDrafts(context.getSharedPreferences("post_" + i10 + "_blog", 0), "blog", draftManager);
            DraftManagerProvider.convertOldDrafts(context.getSharedPreferences("post_" + i10 + "_item", 0), "item", draftManager);
            DraftManagerProvider.convertOldDrafts(context.getSharedPreferences("post_" + i10 + "_topic", 0), "topic", draftManager);
        }
        return draftManager;
    }
}
