package com.narvii.master.home.profile;

import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.app.NVContext;
import com.narvii.model.User;
import com.narvii.user.profile.post.UserProfilePost;
import com.narvii.util.JacksonUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class GlobalProfilePost extends UserProfilePost {
    @Override // com.narvii.user.profile.post.UserProfilePost, com.narvii.post.PostObject
    @NotNull
    public ObjectNode postBody(@NotNull NVContext ctx) {
        kotlin.jvm.internal.t.j(ctx, "ctx");
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("nickname", this.nickname);
        objectNodeCreateObjectNode.put("icon", this.icon);
        ObjectNode objectNodeCreateObjectNode2 = JacksonUtils.createObjectNode();
        ObjectNode objectNode = this.extensions;
        if (objectNode != null && objectNodeCreateObjectNode2 != null) {
            objectNodeCreateObjectNode2.put("style", objectNode.get("style"));
        }
        objectNodeCreateObjectNode.put("extensions", objectNodeCreateObjectNode2);
        kotlin.jvm.internal.t.g(objectNodeCreateObjectNode);
        return objectNodeCreateObjectNode;
    }

    public GlobalProfilePost(@Nullable User user) {
        super(user);
    }
}
