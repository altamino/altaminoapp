package com.narvii.comment.post;

import android.text.TextUtils;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.app.NVContext;
import com.narvii.model.Comment;
import com.narvii.model.Media;
import com.narvii.post.PostObject;
import com.narvii.util.JacksonUtils;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import java.util.List;

/* loaded from: classes.dex */
public class CommentPost implements PostObject {
    public String content;

    @JsonDeserialize(contentAs = Media.class)
    public List<Media> mediaList;

    @JsonInclude(JsonInclude.Include.NON_NULL)
    public String prefix;

    @JsonInclude(JsonInclude.Include.NON_NULL)
    public String respondTo;
    public String stickerId;
    public int type;

    @Override // com.narvii.post.PostObject
    public boolean hasVideo() {
        return false;
    }

    @Override // com.narvii.post.PostObject
    public String title() {
        return null;
    }

    public CommentPost() {
    }

    public CommentPost(Comment comment) {
        this.content = comment.content;
        this.mediaList = comment.mediaList;
    }

    @Override // com.narvii.post.PostObject
    public String content() {
        return this.content;
    }

    @Override // com.narvii.post.PostObject
    public String icon() {
        List<Media> list = this.mediaList;
        if (list == null || list.size() <= 0) {
            return null;
        }
        return this.mediaList.get(0).url;
    }

    @Override // com.narvii.post.PostObject
    public ObjectNode postBody(NVContext nVContext) {
        ObjectNode objectNode = (ObjectNode) JacksonUtils.DEFAULT_MAPPER.valueToTree(this);
        if (this.prefix != null) {
            objectNode.remove("prefix");
            StringBuilder sb = new StringBuilder();
            sb.append(this.prefix);
            sb.append(TextUtils.isEmpty(this.content) ? "" : this.content);
            objectNode.put("content", sb.toString());
        }
        return objectNode;
    }

    @Override // com.narvii.post.PostObject
    public boolean isEmpty() {
        List<Media> list;
        return StringUtils.isTrimEmpty(this.content) && ((list = this.mediaList) == null || list.size() == 0);
    }

    @Override // com.narvii.post.PostObject
    public boolean isSame(PostObject postObject) {
        if (!(postObject instanceof CommentPost)) {
            return false;
        }
        CommentPost commentPost = (CommentPost) postObject;
        return Utils.isStringEquals(this.content, commentPost.content) && Utils.isListEquals(this.mediaList, commentPost.mediaList);
    }
}
