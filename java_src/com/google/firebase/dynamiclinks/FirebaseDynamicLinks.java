package com.google.firebase.dynamiclinks;

import android.content.Intent;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseApp;

/* loaded from: classes2.dex */
public abstract class FirebaseDynamicLinks {
    public abstract Task<PendingDynamicLinkData> getDynamicLink(Intent intent);

    public static synchronized FirebaseDynamicLinks getInstance() {
        return (FirebaseDynamicLinks) FirebaseApp.getInstance().get(FirebaseDynamicLinks.class);
    }
}
