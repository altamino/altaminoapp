package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.language.LanguageManager;

/* loaded from: classes.dex */
public class LanguageServiceProvider implements ServiceProvider<LanguageManager> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, LanguageManager languageManager) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, LanguageManager languageManager) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, LanguageManager languageManager) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, LanguageManager languageManager) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, LanguageManager languageManager) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public LanguageManager create(NVContext nVContext) {
        return new LanguageManager(nVContext.getContext());
    }
}
