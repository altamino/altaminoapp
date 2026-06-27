package com.narvii.sharedfolder;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.app.NVContext;
import com.narvii.model.Media;
import com.narvii.notification.channel.NotificationChannelHelper;
import com.narvii.post.PostObject;
import com.narvii.util.JacksonUtils;
import java.util.List;

/* loaded from: classes3.dex */
public class SharedPhotoPost implements PostObject {
    public String folderId;

    @JsonDeserialize(contentAs = Media.class)
    public List<Media> mediaList;
    public String type = NotificationChannelHelper.CHANNEL_NORMAL;

    @Override // com.narvii.post.PostObject
    public String content() {
        return null;
    }

    @Override // com.narvii.post.PostObject
    public boolean hasVideo() {
        return false;
    }

    @Override // com.narvii.post.PostObject
    public String icon() {
        return null;
    }

    @Override // com.narvii.post.PostObject
    public boolean isEmpty() {
        return false;
    }

    @Override // com.narvii.post.PostObject
    public boolean isSame(PostObject postObject) {
        return false;
    }

    @Override // com.narvii.post.PostObject
    public String title() {
        return null;
    }

    @Override // com.narvii.post.PostObject
    public ObjectNode postBody(NVContext nVContext) {
        return (ObjectNode) JacksonUtils.DEFAULT_MAPPER.valueToTree(this);
    }
}
