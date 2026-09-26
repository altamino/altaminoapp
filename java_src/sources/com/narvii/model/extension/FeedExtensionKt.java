package com.narvii.model.extension;

import com.narvii.model.Blog;
import com.narvii.model.Feed;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class FeedExtensionKt {
    @NotNull
    public static final String apiTypeNameForBlog(boolean z6) {
        return z6 ? "announcement" : "blog";
    }

    public static final boolean isAnnouncement(@NotNull Feed feed) {
        t.j(feed, "<this>");
        if (feed instanceof Blog) {
            return ((Blog) feed).isGlobalAnnouncement;
        }
        return false;
    }
}
