.class public final Landroidx/window/embedding/EmbeddingAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/window/core/ExperimentalWindowApi;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEmbeddingAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EmbeddingAdapter.kt\nandroidx/window/embedding/EmbeddingAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,164:1\n1547#2:165\n1618#2,3:166\n1547#2:169\n1618#2,3:170\n1741#2,3:173\n1741#2,3:176\n1741#2,3:179\n1741#2,3:182\n*S KotlinDebug\n*F\n+ 1 EmbeddingAdapter.kt\nandroidx/window/embedding/EmbeddingAdapter\n*L\n39#1:165\n39#1:166,3\n120#1:169\n120#1:170,3\n73#1:173,3\n83#1:176,3\n103#1:179,3\n113#1:182,3\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private final a(Landroidx/window/extensions/embedding/SplitInfo;)Landroidx/window/embedding/SplitInfo;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/SplitInfo;->getPrimaryActivityStack()Landroidx/window/extensions/embedding/ActivityStack;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    const-string/jumbo v1, "splitInfo.primaryActivityStack"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-virtual {v0}, Landroidx/window/extensions/embedding/ActivityStack;->isEmpty()Z

    .line 15
    move-result v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move v2, v1

    .line 18
    .line 19
    :goto_0
    new-instance v3, Landroidx/window/embedding/ActivityStack;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/window/extensions/embedding/ActivityStack;->getActivities()Ljava/util/List;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    const-string/jumbo v4, "primaryActivityStack.activities"

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v3, v0, v2}, Landroidx/window/embedding/ActivityStack;-><init>(Ljava/util/List;Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/SplitInfo;->getSecondaryActivityStack()Landroidx/window/extensions/embedding/ActivityStack;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    const-string/jumbo v2, "splitInfo.secondaryActivityStack"

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :try_start_1
    invoke-virtual {v0}, Landroidx/window/extensions/embedding/ActivityStack;->isEmpty()Z

    .line 46
    move-result v1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    .line 47
    .line 48
    :catch_1
    new-instance v2, Landroidx/window/embedding/ActivityStack;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroidx/window/extensions/embedding/ActivityStack;->getActivities()Ljava/util/List;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    const-string/jumbo v4, "secondaryActivityStack.activities"

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {v2, v0, v1}, Landroidx/window/embedding/ActivityStack;-><init>(Ljava/util/List;Z)V

    .line 62
    .line 63
    new-instance v0, Landroidx/window/embedding/SplitInfo;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/SplitInfo;->getSplitRatio()F

    .line 67
    move-result p1

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, v3, v2, p1}, Landroidx/window/embedding/SplitInfo;-><init>(Landroidx/window/embedding/ActivityStack;Landroidx/window/embedding/ActivityStack;F)V

    .line 71
    return-object v0
.end method


# virtual methods
.method public final b(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/window/extensions/embedding/SplitInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/window/embedding/SplitInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "splitInfoList"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    check-cast p1, Ljava/lang/Iterable;

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    const/16 v1, 0xa

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v1}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    check-cast v1, Landroidx/window/extensions/embedding/SplitInfo;

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, v1}, Landroidx/window/embedding/EmbeddingAdapter;->a(Landroidx/window/extensions/embedding/SplitInfo;)Landroidx/window/embedding/SplitInfo;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-object v0
.end method
