package com.narvii.story.base;

import com.narvii.logging.LogUtils;
import com.narvii.model.Blog;
import com.narvii.model.Feed;
import com.narvii.model.NVObject;
import com.narvii.notification.Notification;
import com.narvii.util.Utils;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: StoryListAdapter.kt */
/* loaded from: classes3.dex */
public final class StoryListAdapterKt {
    public static final Notification filterStoryNofication(List<? extends Blog> it, Blog blog, Notification notification) {
        Intrinsics.checkParameterIsNotNull(it, "it");
        Intrinsics.checkParameterIsNotNull(blog, "blog");
        for (Blog blog2 : it) {
            Feed feed = blog2.refObject;
            if (feed != null && Utils.isIdEquals(feed, blog)) {
                NVObject nVObjectM46clone = blog2.m46clone();
                if (nVObjectM46clone == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.Blog");
                }
                Blog blogDeserilizeStory = (Blog) nVObjectM46clone;
                NVObject nVObjectTakeOldStrategyInfo = LogUtils.takeOldStrategyInfo(blogDeserilizeStory.refObject, blog);
                if (!(nVObjectTakeOldStrategyInfo instanceof Blog)) {
                    nVObjectTakeOldStrategyInfo = null;
                }
                blogDeserilizeStory.refObject = (Blog) nVObjectTakeOldStrategyInfo;
                if (blogDeserilizeStory.type == 9) {
                    blogDeserilizeStory = Blog.deserilizeStory(blogDeserilizeStory);
                    Intrinsics.checkExpressionValueIsNotNull(blogDeserilizeStory, "Blog.deserilizeStory(b)");
                    if (blogDeserilizeStory.publishToGlobal == 0 && notification != null) {
                        notification.action = "delete";
                    }
                }
                Notification notification2 = new Notification(notification != null ? notification.action : null, blogDeserilizeStory);
                notification2.parentId = notification != null ? notification.parentId : null;
                notification2.uid = notification != null ? notification.uid : null;
                return notification2;
            }
        }
        return notification;
    }
}
