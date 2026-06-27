package com.narvii.model.api;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.Comment;
import java.util.List;

/* loaded from: classes3.dex */
public class CommentListResponse extends ListResponse<Comment> {

    @JsonDeserialize(contentAs = Comment.class)
    public List<Comment> commentList;

    @Override // com.narvii.model.api.ListResponse
    public List<Comment> list() {
        return this.commentList;
    }
}
