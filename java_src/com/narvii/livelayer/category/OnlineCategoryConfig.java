package com.narvii.livelayer.category;

import com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment;

/* loaded from: classes3.dex */
public interface OnlineCategoryConfig {
    int color();

    int iconId();

    String listApiName();

    int membersTitleBackgroundColor();

    int membersTitleId();

    Class<? extends LiveLayerDetailBaseFragment> targetFragment();

    int titleId();

    String topicName();
}
