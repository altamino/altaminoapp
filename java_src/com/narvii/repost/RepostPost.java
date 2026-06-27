package com.narvii.repost;

import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.app.NVContext;
import com.narvii.model.Media;
import com.narvii.post.PostObject;
import com.narvii.util.JacksonUtils;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class RepostPost implements PostObject {
    public String content;
    public boolean needHidden;
    public String previewContent;
    public Media previewImage;
    public String previewTitle;
    public String refObjectId;
    public int refObjectType;
    public int type;

    @Override // com.narvii.post.PostObject
    public boolean hasVideo() {
        return false;
    }

    @Override // com.narvii.post.PostObject
    public String title() {
        return null;
    }

    @Override // com.narvii.post.PostObject
    public String content() {
        return this.content;
    }

    @Override // com.narvii.post.PostObject
    public String icon() {
        Media media = this.previewImage;
        if (media == null) {
            return null;
        }
        return media.url;
    }

    @Override // com.narvii.post.PostObject
    public ObjectNode postBody(NVContext nVContext) {
        ObjectNode objectNode = (ObjectNode) JacksonUtils.DEFAULT_MAPPER.valueToTree(this);
        objectNode.remove("previewImage");
        objectNode.remove("previewTitle");
        objectNode.remove("previewContent");
        objectNode.remove("needHidden");
        return objectNode;
    }

    @Override // com.narvii.post.PostObject
    public boolean isEmpty() {
        return StringUtils.isTrimEmpty(this.content);
    }

    @Override // com.narvii.post.PostObject
    public boolean isSame(PostObject postObject) {
        if (!(postObject instanceof RepostPost)) {
            return false;
        }
        RepostPost repostPost = (RepostPost) postObject;
        return this.type == repostPost.type && this.refObjectId == repostPost.refObjectId && Utils.isStringEquals(this.content, repostPost.content) && Utils.isEquals(this.refObjectId, repostPost.refObjectId);
    }
}
