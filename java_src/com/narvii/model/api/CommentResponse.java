package com.narvii.model.api;

import com.narvii.model.Comment;

/* loaded from: classes3.dex */
public class CommentResponse extends ObjectResponse<Comment> {
    public Comment comment;
    public Comment reply;

    @Override // com.narvii.model.api.ObjectResponse
    public Comment object() {
        Comment comment = this.comment;
        return comment == null ? this.reply : comment;
    }
}
