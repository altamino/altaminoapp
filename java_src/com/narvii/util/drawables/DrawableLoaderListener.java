package com.narvii.util.drawables;

import android.graphics.drawable.Drawable;

/* loaded from: classes3.dex */
public interface DrawableLoaderListener {
    void onFailed(String str);

    void onFinished(String str, Drawable drawable, boolean z);
}
