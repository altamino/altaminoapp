package com.narvii.app;

import android.content.Context;
import android.content.Intent;

/* loaded from: classes.dex */
public interface NVContext {
    Context getContext();

    long getContextId();

    NVContext getParentContext();

    <T> T getService(String str);

    void startActivity(Intent intent);
}
