package com.narvii.influencer;

import com.narvii.model.User;

/* JADX INFO: loaded from: classes10.dex */
public interface FansOnlyContent {
    int HintTextId();

    User influencer();

    String influencerUid();

    boolean isContentAccessible();
}
