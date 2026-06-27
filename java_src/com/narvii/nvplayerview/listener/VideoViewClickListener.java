package com.narvii.nvplayerview.listener;

import com.narvii.model.Media;
import com.narvii.model.NVObject;

/* loaded from: classes3.dex */
public interface VideoViewClickListener {
    boolean interceptClickEvent(NVObject nVObject);

    void onVideoViewClicked(Media media, NVObject nVObject);
}
