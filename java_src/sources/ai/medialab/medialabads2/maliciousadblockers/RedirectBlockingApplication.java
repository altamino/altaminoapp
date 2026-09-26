package ai.medialab.medialabads2.maliciousadblockers;

import android.app.Application;
import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
public class RedirectBlockingApplication extends Application {
    @Override // android.content.ContextWrapper, android.content.Context
    public void startActivity(Intent intent) {
        super.startActivity(intent);
    }
}
