package com.narvii.services;

import androidx.compose.material.TextFieldImplKt;
import com.narvii.app.NVContext;
import com.narvii.theme.ThemePackService;

/* JADX INFO: loaded from: classes6.dex */
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
    public void stop(NVContext nVContext, ThemePackService themePackService) {
        themePackService.cancelAll();
        themePackService.cleanCache();
        themePackService.trim(TextFieldImplKt.AnimationDuration, 50, 172800000L);
    }
}
