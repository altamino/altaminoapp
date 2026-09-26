package com.narvii.model.api;

import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.model.Media;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface CoverPost {
    ObjectNode getExtensions();

    List<Media> getMediaList();
}
