package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.post.entry.PostEntryDialog;

/* loaded from: classes.dex */
public class PostEntryProvider implements ServiceProvider<PostEntryDialog> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, PostEntryDialog postEntryDialog) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, PostEntryDialog postEntryDialog) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, PostEntryDialog postEntryDialog) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, PostEntryDialog postEntryDialog) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, PostEntryDialog postEntryDialog) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public PostEntryDialog create(NVContext nVContext) {
        return new PostEntryDialog(nVContext);
    }
}
