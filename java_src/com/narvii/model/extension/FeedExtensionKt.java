package com.narvii.model.extension;

import com.narvii.model.Blog;
import com.narvii.model.Feed;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FeedExtension.kt */
/* loaded from: classes3.dex */
public final class FeedExtensionKt {
    public static final String apiTypeNameForBlog(boolean z) {
        return z ? "announcement" : "blog";
    }

    public static final boolean isAnnouncement(Feed isAnnouncement) {
        Intrinsics.checkParameterIsNotNull(isAnnouncement, "$this$isAnnouncement");
        if (isAnnouncement instanceof Blog) {
            return ((Blog) isAnnouncement).isGlobalAnnouncement;
        }
        return false;
    }
}
