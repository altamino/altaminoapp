.class public final Lcom/narvii/story/base/StoryListAdapterKt;
.super Ljava/lang/Object;
.source "StoryListAdapter.kt"


# direct methods
.method public static final filterStoryNofication(Ljava/util/List;Lcom/narvii/model/Blog;Lcom/narvii/notification/Notification;)Lcom/narvii/notification/Notification;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Blog;",
            ">;",
            "Lcom/narvii/model/Blog;",
            "Lcom/narvii/notification/Notification;",
            ")",
            "Lcom/narvii/notification/Notification;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Blog;

    .line 285
    iget-object v1, v0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-eqz v1, :cond_0

    invoke-static {v1, p1}, Lcom/narvii/util/Utils;->isIdEquals(Lcom/narvii/model/NVObject;Lcom/narvii/model/NVObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p0

    if-eqz p0, :cond_6

    check-cast p0, Lcom/narvii/model/Blog;

    .line 287
    iget-object v0, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    invoke-static {v0, p1}, Lcom/narvii/logging/LogUtils;->takeOldStrategyInfo(Lcom/narvii/model/NVObject;Lcom/narvii/model/NVObject;)Lcom/narvii/model/NVObject;

    move-result-object p1

    instance-of v0, p1, Lcom/narvii/model/Blog;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object p1, v1

    :cond_1
    check-cast p1, Lcom/narvii/model/Blog;

    iput-object p1, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 288
    iget p1, p0, Lcom/narvii/model/Blog;->type:I

    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 289
    invoke-static {p0}, Lcom/narvii/model/Blog;->deserilizeStory(Lcom/narvii/model/Blog;)Lcom/narvii/model/Blog;

    move-result-object p0

    const-string p1, "Blog.deserilizeStory(b)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    iget p1, p0, Lcom/narvii/model/Blog;->publishToGlobal:I

    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    const-string p1, "delete"

    .line 291
    iput-object p1, p2, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 294
    :cond_2
    new-instance p1, Lcom/narvii/notification/Notification;

    if-eqz p2, :cond_3

    iget-object v0, p2, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_0
    invoke-direct {p1, v0, p0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    if-eqz p2, :cond_4

    .line 295
    iget-object p0, p2, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object p0, v1

    :goto_1
    iput-object p0, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 296
    iget-object v1, p2, Lcom/narvii/notification/Notification;->uid:Ljava/lang/String;

    :cond_5
    iput-object v1, p1, Lcom/narvii/notification/Notification;->uid:Ljava/lang/String;

    return-object p1

    .line 286
    :cond_6
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type com.narvii.model.Blog"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    return-object p2
.end method
