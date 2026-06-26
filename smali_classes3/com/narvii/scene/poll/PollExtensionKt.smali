.class public final Lcom/narvii/scene/poll/PollExtensionKt;
.super Ljava/lang/Object;
.source "PollExtension.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPollExtension.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PollExtension.kt\ncom/narvii/scene/poll/PollExtensionKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,21:1\n1365#2,9:22\n1587#2,2:31\n1374#2:33\n1587#2,2:34\n*E\n*S KotlinDebug\n*F\n+ 1 PollExtension.kt\ncom/narvii/scene/poll/PollExtensionKt\n*L\n12#1,9:22\n12#1,2:31\n12#1:33\n17#1,2:34\n*E\n"
.end annotation


# direct methods
.method public static final initPollPlayRecord(Ljava/util/List;Ljava/util/HashMap;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/story/ScenePollOrQuizHost;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/scene/ScenePlayRecord;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    if-eqz p0, :cond_8

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 30
    check-cast v1, Lcom/narvii/model/story/ScenePollOrQuizHost;

    .line 13
    invoke-interface {v1}, Lcom/narvii/model/story/ScenePollOrQuizHost;->getPoll()Lcom/narvii/model/PollAttach;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    iget-object v2, v2, Lcom/narvii/model/PollAttach;->polloptList:Ljava/util/List;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/narvii/model/PollOption;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p2, :cond_2

    .line 14
    iget v5, v5, Lcom/narvii/model/PollOption;->globalVotedValue:I

    if-lez v5, :cond_3

    goto :goto_1

    :cond_2
    iget v5, v5, Lcom/narvii/model/PollOption;->votedValue:I

    if-lez v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_1

    goto :goto_2

    :cond_4
    move-object v4, v3

    .line 13
    :goto_2
    move-object v2, v4

    check-cast v2, Lcom/narvii/model/PollOption;

    goto :goto_3

    :cond_5
    move-object v2, v3

    :goto_3
    if-eqz v2, :cond_6

    .line 16
    invoke-interface {v1}, Lcom/narvii/model/story/ScenePollOrQuizHost;->id()Ljava/lang/String;

    move-result-object v3

    :cond_6
    if-eqz v3, :cond_0

    .line 30
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    :cond_7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 18
    new-instance v0, Lcom/narvii/scene/ScenePlayRecord;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/narvii/scene/ScenePlayRecord;-><init>(I)V

    .line 19
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_8
    return-void
.end method
