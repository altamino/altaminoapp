package com.narvii.topic.model;

import com.narvii.model.Community;
import java.util.ArrayList;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public interface CommunityDataSourceCarrier {
    @Nullable
    ArrayList<Community> getCommunityList();

    @Nullable
    String getLastPageToken();
}
