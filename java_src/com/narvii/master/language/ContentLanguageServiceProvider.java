package com.narvii.master.language;

import com.narvii.app.NVContext;
import com.narvii.language.ContentLanguageService;
import com.narvii.services.AutostartServiceProvider;

/* loaded from: classes.dex */
public class ContentLanguageServiceProvider implements AutostartServiceProvider<ContentLanguageService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, ContentLanguageService contentLanguageService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, ContentLanguageService contentLanguageService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, ContentLanguageService contentLanguageService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, ContentLanguageService contentLanguageService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, ContentLanguageService contentLanguageService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public ContentLanguageService create(NVContext nVContext) {
        return new ContentLanguageService(nVContext);
    }
}
