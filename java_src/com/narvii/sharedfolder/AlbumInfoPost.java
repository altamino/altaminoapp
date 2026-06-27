package com.narvii.sharedfolder;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.app.NVContext;
import com.narvii.model.Media;
import com.narvii.post.PostObject;
import com.narvii.util.CollectionUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import java.util.List;

/* loaded from: classes3.dex */
public class AlbumInfoPost implements PostObject {

    @JsonDeserialize(contentAs = Media.class)
    public List<Media> coverMediaList;
    public String description;
    public boolean isDefaultFolder;
    public int status;
    public String title;

    @Override // com.narvii.post.PostObject
    public boolean hasVideo() {
        return false;
    }

    @Override // com.narvii.post.PostObject
    public String icon() {
        return null;
    }

    @Override // com.narvii.post.PostObject
    public String title() {
        return this.title;
    }

    @Override // com.narvii.post.PostObject
    public String content() {
        return this.description;
    }

    @Override // com.narvii.post.PostObject
    public ObjectNode postBody(NVContext nVContext) {
        ObjectNode objectNode = (ObjectNode) JacksonUtils.DEFAULT_MAPPER.valueToTree(this);
        objectNode.remove("isDefaultFolder");
        if (this.isDefaultFolder) {
            objectNode.remove("title");
        }
        return objectNode;
    }

    @Override // com.narvii.post.PostObject
    public boolean isEmpty() {
        return StringUtils.isTrimEmpty(this.title);
    }

    @Override // com.narvii.post.PostObject
    public boolean isSame(PostObject postObject) {
        if (!(postObject instanceof AlbumInfoPost)) {
            return false;
        }
        AlbumInfoPost albumInfoPost = (AlbumInfoPost) postObject;
        return Utils.isStringEquals(this.title, albumInfoPost.title) && Utils.isStringEquals(this.description, albumInfoPost.description) && Utils.isListEquals(this.coverMediaList, albumInfoPost.coverMediaList) && this.status == albumInfoPost.status;
    }

    public Media getCoverImage() {
        if (CollectionUtils.isEmpty(this.coverMediaList)) {
            return null;
        }
        return this.coverMediaList.get(0);
    }
}
