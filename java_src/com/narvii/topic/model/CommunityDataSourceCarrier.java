package com.narvii.topic.model;

import com.narvii.model.Community;
import java.util.ArrayList;

/* compiled from: CommunityDataSourceCarrier.kt */
/* loaded from: classes3.dex */
public interface CommunityDataSourceCarrier {
    ArrayList<Community> getCommunityList();

    String getLastPageToken();
}
