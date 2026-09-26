package com.narvii.master.explorer;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.Media;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
class MediaMap {

    @JsonDeserialize(contentAs = Media.class)
    public List<Media> coverImages;

    MediaMap() {
    }
}
