package com.narvii.ad;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes10.dex */
public interface PaidContent {
    void contentVisiblePercentage(int i10);

    View createView(ViewGroup viewGroup, View view, Object obj);

    void init();

    void setData(Object obj, boolean z6);
}
