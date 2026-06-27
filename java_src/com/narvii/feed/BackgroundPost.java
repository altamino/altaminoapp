package com.narvii.feed;

import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.image.BackgroundSource;
import com.narvii.model.Media;
import com.narvii.post.BackgroundUtils;
import com.narvii.post.PostObject;
import com.narvii.util.JacksonUtils;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class BackgroundPost implements PostObject, BackgroundSource {
    public ObjectNode extensions;

    @Override // com.narvii.image.BackgroundSource
    public int getBackgroundColor() {
        return BackgroundUtils.getBackgroundColor(this.extensions);
    }

    public void setBackgroundColor(int i) {
        if (i != 0 && this.extensions == null) {
            this.extensions = JacksonUtils.createObjectNode();
        }
        BackgroundUtils.setBackgroundColor(this.extensions, i);
    }

    @Override // com.narvii.image.BackgroundSource
    public Media getBackgroundMedia() {
        return BackgroundUtils.getBackgroundMedia(this.extensions);
    }

    public void setBackgroundMediaList(List<Media> list) {
        if (this.extensions == null) {
            this.extensions = JacksonUtils.createObjectNode();
        }
        BackgroundUtils.setBackgroundMediaList(this.extensions, list);
    }

    @Override // com.narvii.image.BackgroundSource
    public boolean hasBackground() {
        return (getBackgroundColor() == 0 && getBackgroundMedia() == null) ? false : true;
    }
}
