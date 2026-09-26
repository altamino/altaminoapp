.class public final Lcom/narvii/scene/poll/PollExtensionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPollExtension.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PollExtension.kt\ncom/narvii/scene/poll/PollExtensionKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,21:1\n1603#2,9:22\n1855#2:31\n1856#2:33\n1612#2:34\n1855#2,2:35\n1#3:32\n*S KotlinDebug\n*F\n+ 1 PollExtension.kt\ncom/narvii/scene/poll/PollExtensionKt\n*L\n12#1:22,9\n12#1:31\n12#1:33\n12#1:34\n17#1:35,2\n12#1:32\n*E\n"
.end annotation


# direct methods
.method public static final initPollPlayRecord(Ljava/util/List;Ljava/util/HashMap;Z)V
    .locals 6
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .line 1
    .line 2
    const-string v0, "map"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 9
    .line 10
    if-eqz p0, :cond_7

    .line 11
    .line 12
    check-cast p0, Ljava/lang/Iterable;

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v1

    .line 26
    .line 27
    if-eqz v1, :cond_6

    .line 28
    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    check-cast v1, Lcom/narvii/model/story/ScenePollOrQuizHost;

    .line 34
    .line 35
    .line 36
    invoke-interface {v1}, Lcom/narvii/model/story/ScenePollOrQuizHost;->getPoll()Lcom/narvii/model/PollAttach;

    .line 37
    move-result-object v2

    .line 38
    const/4 v3, 0x0

    .line 39
    .line 40
    if-eqz v2, :cond_4

    .line 41
    .line 42
    iget-object v2, v2, Lcom/narvii/model/PollAttach;->polloptList:Ljava/util/List;

    .line 43
    .line 44
    if-eqz v2, :cond_4

    .line 45
    .line 46
    .line 47
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 48
    .line 49
    check-cast v2, Ljava/lang/Iterable;

    .line 50
    .line 51
    .line 52
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v4

    .line 58
    .line 59
    if-eqz v4, :cond_3

    .line 60
    .line 61
    .line 62
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v4

    .line 64
    move-object v5, v4

    .line 65
    .line 66
    check-cast v5, Lcom/narvii/model/PollOption;

    .line 67
    .line 68
    if-eqz p2, :cond_2

    .line 69
    .line 70
    iget v5, v5, Lcom/narvii/model/PollOption;->globalVotedValue:I

    .line 71
    .line 72
    if-lez v5, :cond_1

    .line 73
    goto :goto_1

    .line 74
    .line 75
    :cond_2
    iget v5, v5, Lcom/narvii/model/PollOption;->votedValue:I

    .line 76
    .line 77
    if-lez v5, :cond_1

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    move-object v4, v3

    .line 80
    .line 81
    :goto_1
    check-cast v4, Lcom/narvii/model/PollOption;

    .line 82
    goto :goto_2

    .line 83
    :cond_4
    move-object v4, v3

    .line 84
    .line 85
    :goto_2
    if-eqz v4, :cond_5

    .line 86
    .line 87
    .line 88
    invoke-interface {v1}, Lcom/narvii/model/story/ScenePollOrQuizHost;->id()Ljava/lang/String;

    .line 89
    move-result-object v3

    .line 90
    .line 91
    :cond_5
    if-eqz v3, :cond_0

    .line 92
    .line 93
    .line 94
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 95
    goto :goto_0

    .line 96
    .line 97
    .line 98
    :cond_6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 99
    move-result-object p0

    .line 100
    .line 101
    .line 102
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    move-result p2

    .line 104
    .line 105
    if-eqz p2, :cond_7

    .line 106
    .line 107
    .line 108
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    move-result-object p2

    .line 110
    .line 111
    check-cast p2, Ljava/lang/String;

    .line 112
    .line 113
    new-instance v0, Lcom/narvii/scene/ScenePlayRecord;

    .line 114
    const/4 v1, 0x2

    .line 115
    .line 116
    .line 117
    invoke-direct {v0, v1}, Lcom/narvii/scene/ScenePlayRecord;-><init>(I)V

    .line 118
    .line 119
    .line 120
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    goto :goto_3

    .line 122
    :cond_7
    return-void
.end method
