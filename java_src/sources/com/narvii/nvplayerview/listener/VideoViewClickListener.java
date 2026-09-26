package com.narvii.nvplayerview.listener;

import com.narvii.model.Media;
import com.narvii.model.NVObject;

/* JADX INFO: loaded from: classes5.dex */
public interface VideoViewClickListener {
    boolean interceptClickEvent(NVObject nVObject);

    void onVideoViewClicked(Media media, NVObject nVObject);
}
