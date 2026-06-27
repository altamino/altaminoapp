package com.narvii.ad;

import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes2.dex */
public interface PaidContent {
    void contentVisiblePercentage(int i);

    View createView(ViewGroup viewGroup, View view, Object obj);

    void init();

    void setData(Object obj, boolean z);
}
