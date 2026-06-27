package com.narvii.master.home.profile;

import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.app.NVContext;
import com.narvii.model.User;
import com.narvii.user.profile.post.UserProfilePost;
import com.narvii.util.JacksonUtils;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GlobalProfilePost.kt */
/* loaded from: classes3.dex */
public final class GlobalProfilePost extends UserProfilePost {
    public GlobalProfilePost(User user) {
        super(user);
    }

    @Override // com.narvii.user.profile.post.UserProfilePost, com.narvii.post.PostObject
    public ObjectNode postBody(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        ObjectNode node = JacksonUtils.createObjectNode();
        node.put("nickname", this.nickname);
        node.put("icon", this.icon);
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        ObjectNode objectNode = this.extensions;
        if (objectNode != null && objectNodeCreateObjectNode != null) {
            objectNodeCreateObjectNode.put(TtmlNode.TAG_STYLE, objectNode.get(TtmlNode.TAG_STYLE));
        }
        node.put("extensions", objectNodeCreateObjectNode);
        Intrinsics.checkExpressionValueIsNotNull(node, "node");
        return node;
    }
}
