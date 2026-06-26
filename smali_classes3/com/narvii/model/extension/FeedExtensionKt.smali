.class public final Lcom/narvii/model/extension/FeedExtensionKt;
.super Ljava/lang/Object;
.source "FeedExtension.kt"


# direct methods
.method public static final apiTypeNameForBlog(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "announcement"

    goto :goto_0

    :cond_0
    const-string p0, "blog"

    :goto_0
    return-object p0
.end method

.method public static final isAnnouncement(Lcom/narvii/model/Feed;)Z
    .locals 1

    const-string v0, "$this$isAnnouncement"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    instance-of v0, p0, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/narvii/model/Blog;

    iget-boolean p0, p0, Lcom/narvii/model/Blog;->isGlobalAnnouncement:Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
