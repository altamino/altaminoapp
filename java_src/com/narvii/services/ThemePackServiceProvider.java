package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.theme.ThemePackService;
import java.io.IOException;

/* loaded from: classes.dex */
public class ThemePackServiceProvider implements ServiceProvider<ThemePackService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, ThemePackService themePackService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, ThemePackService themePackService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, ThemePackService themePackService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, ThemePackService themePackService) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public ThemePackService create(NVContext nVContext) {
        return new ThemePackService(nVContext);
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, ThemePackService themePackService) throws IOException {
        themePackService.cancelAll();
        themePackService.cleanCache();
        themePackService.trim(150, 50, 172800000L);
    }
}
