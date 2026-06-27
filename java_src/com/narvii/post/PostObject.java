package com.narvii.post;

import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.app.NVContext;

/* loaded from: classes.dex */
public interface PostObject {
    String content();

    boolean hasVideo();

    String icon();

    boolean isEmpty();

    boolean isSame(PostObject postObject);

    ObjectNode postBody(NVContext nVContext);

    String title();
}
