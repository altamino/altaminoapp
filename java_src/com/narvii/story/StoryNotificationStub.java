package com.narvii.story;

import com.narvii.model.Blog;
import com.narvii.model.NVObject;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes3.dex */
public class StoryNotificationStub extends NVObject {
    public static final String ACTION_DELETE = "delete";
    public static final String ACTION_NEW = "new";
    public static final String ACTION_UNVOTE = "unvote";
    public static final String ACTION_VOTE = "vote";
    public static final String ACTION_VOTE_END = "vote_end";
    public static final String ACTION_VOTE_START = "vote_start";
    public String action;
    public String id;
    public Blog story;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Action {
    }

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 1;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.id;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        Blog blog = this.story;
        if (blog == null) {
            return null;
        }
        return blog.uid();
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        Blog blog = this.story;
        if (blog == null) {
            return 0;
        }
        return blog.status;
    }
}
