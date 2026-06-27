package com.narvii.poll.post;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.app.NVContext;
import com.narvii.model.Media;
import com.narvii.model.PollOption;
import com.narvii.post.PostObject;
import com.narvii.util.JacksonUtils;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import java.util.List;

/* loaded from: classes3.dex */
public class PlainPollPost implements PostObject {

    @JsonDeserialize(contentAs = Media.class)
    public List<Media> mediaList;
    public String title;

    @Override // com.narvii.post.PostObject
    public String content() {
        return null;
    }

    @Override // com.narvii.post.PostObject
    public boolean hasVideo() {
        return false;
    }

    public PlainPollPost() {
    }

    public PlainPollPost(PollOption pollOption) {
        this.title = pollOption.title;
        this.mediaList = pollOption.mediaList;
    }

    @Override // com.narvii.post.PostObject
    public String title() {
        return this.title;
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
        objectNode.put("type", 0);
        return objectNode;
    }

    @Override // com.narvii.post.PostObject
    public boolean isEmpty() {
        List<Media> list;
        return StringUtils.isTrimEmpty(this.title) && ((list = this.mediaList) == null || list.size() == 0);
    }

    @Override // com.narvii.post.PostObject
    public boolean isSame(PostObject postObject) {
        if (!(postObject instanceof PlainPollPost)) {
            return false;
        }
        PlainPollPost plainPollPost = (PlainPollPost) postObject;
        return Utils.isStringEquals(this.title, plainPollPost.title) && Utils.isListEquals(this.mediaList, plainPollPost.mediaList);
    }
}
