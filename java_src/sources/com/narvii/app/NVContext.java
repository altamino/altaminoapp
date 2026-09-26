package com.narvii.app;

import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes6.dex */
public interface NVContext {
    Context getContext();

    long getContextId();

    NVContext getParentContext();

    <T> T getService(String str);

    void startActivity(Intent intent);
}
