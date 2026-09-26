.class public final Lcom/narvii/model/extension/FeedExtensionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final apiTypeNameForBlog(Z)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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
    .param p0    # Lcom/narvii/model/Feed;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    instance-of v0, p0, Lcom/narvii/model/Blog;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p0, Lcom/narvii/model/Blog;

    .line 12
    .line 13
    iget-boolean p0, p0, Lcom/narvii/model/Blog;->isGlobalAnnouncement:Z

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method
