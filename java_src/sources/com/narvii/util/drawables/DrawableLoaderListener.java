package com.narvii.util.drawables;

import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes10.dex */
public interface DrawableLoaderListener {
    void onFailed(String str);

    void onFinished(String str, Drawable drawable, boolean z6);
}
