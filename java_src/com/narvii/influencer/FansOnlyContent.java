package com.narvii.influencer;

import com.narvii.model.User;

/* loaded from: classes.dex */
public interface FansOnlyContent {
    int HintTextId();

    User influencer();

    String influencerUid();

    boolean isContentAccessible();
}
