package com.narvii.model;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class PromoteInfo {

    @JsonDeserialize(contentAs = Media.class)
    public List<Media> mediaList;
    public String title;
}
