package com.narvii.semicontext;

import com.narvii.app.NVContext;
import com.narvii.notification.NotificationCenter;
import com.narvii.services.ServiceProvider;

/* loaded from: classes3.dex */
public class SemiNotificationCenterProvider implements ServiceProvider<NotificationCenter> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, NotificationCenter notificationCenter) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, NotificationCenter notificationCenter) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, NotificationCenter notificationCenter) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, NotificationCenter notificationCenter) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, NotificationCenter notificationCenter) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public NotificationCenter create(NVContext nVContext) {
        return new NotificationCenter();
    }
}
