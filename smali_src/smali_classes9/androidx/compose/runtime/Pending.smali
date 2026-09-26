.class final Landroidx/compose/runtime/Pending;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/Pending\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,4249:1\n1#2:4250\n1849#3,2:4251\n1849#3,2:4253\n1849#3,2:4255\n1849#3,2:4257\n1849#3,2:4259\n*S KotlinDebug\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/Pending\n*L\n144#1:4251,2\n150#1:4253,2\n160#1:4255,2\n166#1:4257,2\n186#1:4259,2\n*E\n"
.end annotation


# instance fields
.field private groupIndex:I

.field private final groupInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/runtime/GroupInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final keyInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/KeyInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final keyMap$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final startIndex:I

.field private final usedKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/KeyInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/KeyInfo;",
            ">;I)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "keyInfos"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/compose/runtime/Pending;->keyInfos:Ljava/util/List;

    .line 11
    .line 12
    iput p2, p0, Landroidx/compose/runtime/Pending;->startIndex:I

    .line 13
    .line 14
    if-ltz p2, :cond_1

    .line 15
    .line 16
    new-instance p2, Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    iput-object p2, p0, Landroidx/compose/runtime/Pending;->usedKeys:Ljava/util/List;

    .line 22
    .line 23
    new-instance p2, Ljava/util/HashMap;

    .line 24
    .line 25
    .line 26
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 30
    move-result p1

    .line 31
    const/4 v0, 0x0

    .line 32
    move v1, v0

    .line 33
    .line 34
    :goto_0
    if-ge v0, p1, :cond_0

    .line 35
    .line 36
    iget-object v2, p0, Landroidx/compose/runtime/Pending;->keyInfos:Ljava/util/List;

    .line 37
    .line 38
    .line 39
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    check-cast v2, Landroidx/compose/runtime/KeyInfo;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Landroidx/compose/runtime/KeyInfo;->b()I

    .line 46
    move-result v3

    .line 47
    .line 48
    .line 49
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    new-instance v4, Landroidx/compose/runtime/GroupInfo;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Landroidx/compose/runtime/KeyInfo;->c()I

    .line 56
    move-result v5

    .line 57
    .line 58
    .line 59
    invoke-direct {v4, v0, v1, v5}, Landroidx/compose/runtime/GroupInfo;-><init>(III)V

    .line 60
    .line 61
    .line 62
    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Landroidx/compose/runtime/KeyInfo;->c()I

    .line 66
    move-result v2

    .line 67
    add-int/2addr v1, v2

    .line 68
    .line 69
    add-int/lit8 v0, v0, 0x1

    .line 70
    goto :goto_0

    .line 71
    .line 72
    :cond_0
    iput-object p2, p0, Landroidx/compose/runtime/Pending;->groupInfos:Ljava/util/HashMap;

    .line 73
    .line 74
    new-instance p1, Landroidx/compose/runtime/Pending$keyMap$2;

    .line 75
    .line 76
    .line 77
    invoke-direct {p1, p0}, Landroidx/compose/runtime/Pending$keyMap$2;-><init>(Landroidx/compose/runtime/Pending;)V

    .line 78
    .line 79
    .line 80
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    iput-object p1, p0, Landroidx/compose/runtime/Pending;->keyMap$delegate:Lw7/m;

    .line 84
    return-void

    .line 85
    .line 86
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 87
    .line 88
    const-string p2, "Invalid start index"

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 92
    move-result-object p2

    .line 93
    .line 94
    .line 95
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 96
    throw p1
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/Pending;->groupIndex:I

    return v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/KeyInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Pending;->keyInfos:Ljava/util/List;

    return-object v0
.end method

.method public final c()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/util/LinkedHashSet<",
            "Landroidx/compose/runtime/KeyInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/Pending;->keyMap$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/util/HashMap;

    .line 9
    return-object v0
.end method

.method public final d(ILjava/lang/Object;)Landroidx/compose/runtime/KeyInfo;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    new-instance v0, Landroidx/compose/runtime/JoinedKey;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p1, p2}, Landroidx/compose/runtime/JoinedKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/runtime/Pending;->c()Ljava/util/HashMap;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->p(Ljava/util/HashMap;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    check-cast p1, Landroidx/compose/runtime/KeyInfo;

    .line 27
    return-object p1
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/Pending;->startIndex:I

    return v0
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/KeyInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Pending;->usedKeys:Ljava/util/List;

    return-object v0
.end method

.method public final g(Landroidx/compose/runtime/KeyInfo;)I
    .locals 1
    .param p1    # Landroidx/compose/runtime/KeyInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "keyInfo"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/runtime/Pending;->groupInfos:Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/compose/runtime/KeyInfo;->b()I

    .line 11
    move-result p1

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Landroidx/compose/runtime/GroupInfo;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/compose/runtime/GroupInfo;->b()I

    .line 27
    move-result p1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, -0x1

    .line 30
    :goto_0
    return p1
.end method

.method public final h(Landroidx/compose/runtime/KeyInfo;)Z
    .locals 1
    .param p1    # Landroidx/compose/runtime/KeyInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "keyInfo"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/runtime/Pending;->usedKeys:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final i(Landroidx/compose/runtime/KeyInfo;I)V
    .locals 4
    .param p1    # Landroidx/compose/runtime/KeyInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "keyInfo"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/runtime/Pending;->groupInfos:Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/compose/runtime/KeyInfo;->b()I

    .line 11
    move-result p1

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    new-instance v1, Landroidx/compose/runtime/GroupInfo;

    .line 18
    const/4 v2, -0x1

    .line 19
    const/4 v3, 0x0

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2, p2, v3}, Landroidx/compose/runtime/GroupInfo;-><init>(III)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public final j(III)V
    .locals 4

    .line 1
    .line 2
    const-string v0, "groupInfos.values"

    .line 3
    .line 4
    if-le p1, p2, :cond_2

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/runtime/Pending;->groupInfos:Ljava/util/HashMap;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    check-cast v1, Ljava/lang/Iterable;

    .line 16
    .line 17
    .line 18
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-eqz v1, :cond_5

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    check-cast v1, Landroidx/compose/runtime/GroupInfo;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/compose/runtime/GroupInfo;->b()I

    .line 35
    move-result v2

    .line 36
    .line 37
    if-gt p1, v2, :cond_1

    .line 38
    .line 39
    add-int v3, p1, p3

    .line 40
    .line 41
    if-ge v2, v3, :cond_1

    .line 42
    sub-int/2addr v2, p1

    .line 43
    add-int/2addr v2, p2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GroupInfo;->e(I)V

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_1
    if-gt p2, v2, :cond_0

    .line 50
    .line 51
    if-ge v2, p1, :cond_0

    .line 52
    add-int/2addr v2, p3

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GroupInfo;->e(I)V

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_2
    if-le p2, p1, :cond_5

    .line 59
    .line 60
    iget-object v1, p0, Landroidx/compose/runtime/Pending;->groupInfos:Ljava/util/HashMap;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    .line 67
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    check-cast v1, Ljava/lang/Iterable;

    .line 70
    .line 71
    .line 72
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    move-result v1

    .line 78
    .line 79
    if-eqz v1, :cond_5

    .line 80
    .line 81
    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    check-cast v1, Landroidx/compose/runtime/GroupInfo;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Landroidx/compose/runtime/GroupInfo;->b()I

    .line 89
    move-result v2

    .line 90
    .line 91
    if-gt p1, v2, :cond_4

    .line 92
    .line 93
    add-int v3, p1, p3

    .line 94
    .line 95
    if-ge v2, v3, :cond_4

    .line 96
    sub-int/2addr v2, p1

    .line 97
    add-int/2addr v2, p2

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GroupInfo;->e(I)V

    .line 101
    goto :goto_1

    .line 102
    .line 103
    :cond_4
    add-int/lit8 v3, p1, 0x1

    .line 104
    .line 105
    if-gt v3, v2, :cond_3

    .line 106
    .line 107
    if-ge v2, p2, :cond_3

    .line 108
    sub-int/2addr v2, p3

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GroupInfo;->e(I)V

    .line 112
    goto :goto_1

    .line 113
    :cond_5
    return-void
.end method

.method public final k(II)V
    .locals 4

    .line 1
    .line 2
    const-string v0, "groupInfos.values"

    .line 3
    .line 4
    if-le p1, p2, :cond_2

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/runtime/Pending;->groupInfos:Ljava/util/HashMap;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    check-cast v1, Ljava/lang/Iterable;

    .line 16
    .line 17
    .line 18
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-eqz v1, :cond_5

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    check-cast v1, Landroidx/compose/runtime/GroupInfo;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/compose/runtime/GroupInfo;->c()I

    .line 35
    move-result v2

    .line 36
    .line 37
    if-ne v2, p1, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p2}, Landroidx/compose/runtime/GroupInfo;->f(I)V

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_1
    if-gt p2, v2, :cond_0

    .line 44
    .line 45
    if-ge v2, p1, :cond_0

    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GroupInfo;->f(I)V

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_2
    if-le p2, p1, :cond_5

    .line 54
    .line 55
    iget-object v1, p0, Landroidx/compose/runtime/Pending;->groupInfos:Ljava/util/HashMap;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    check-cast v1, Ljava/lang/Iterable;

    .line 65
    .line 66
    .line 67
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    move-result v1

    .line 73
    .line 74
    if-eqz v1, :cond_5

    .line 75
    .line 76
    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    check-cast v1, Landroidx/compose/runtime/GroupInfo;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Landroidx/compose/runtime/GroupInfo;->c()I

    .line 84
    move-result v2

    .line 85
    .line 86
    if-ne v2, p1, :cond_4

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, p2}, Landroidx/compose/runtime/GroupInfo;->f(I)V

    .line 90
    goto :goto_1

    .line 91
    .line 92
    :cond_4
    add-int/lit8 v3, p1, 0x1

    .line 93
    .line 94
    if-gt v3, v2, :cond_3

    .line 95
    .line 96
    if-ge v2, p2, :cond_3

    .line 97
    .line 98
    add-int/lit8 v2, v2, -0x1

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GroupInfo;->f(I)V

    .line 102
    goto :goto_1

    .line 103
    :cond_5
    return-void
.end method

.method public final l(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/runtime/Pending;->groupIndex:I

    return-void
.end method

.method public final m(Landroidx/compose/runtime/KeyInfo;)I
    .locals 1
    .param p1    # Landroidx/compose/runtime/KeyInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "keyInfo"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/runtime/Pending;->groupInfos:Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/compose/runtime/KeyInfo;->b()I

    .line 11
    move-result p1

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Landroidx/compose/runtime/GroupInfo;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/compose/runtime/GroupInfo;->c()I

    .line 27
    move-result p1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, -0x1

    .line 30
    :goto_0
    return p1
.end method

.method public final n(II)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/Pending;->groupInfos:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Landroidx/compose/runtime/GroupInfo;

    .line 13
    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/compose/runtime/GroupInfo;->b()I

    .line 18
    move-result v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/compose/runtime/GroupInfo;->a()I

    .line 22
    move-result v1

    .line 23
    .line 24
    sub-int v1, p2, v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/GroupInfo;->d(I)V

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-object p2, p0, Landroidx/compose/runtime/Pending;->groupInfos:Ljava/util/HashMap;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    const-string v2, "groupInfos.values"

    .line 38
    .line 39
    .line 40
    invoke-static {p2, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    check-cast p2, Ljava/lang/Iterable;

    .line 43
    .line 44
    .line 45
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    .line 49
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    move-result v2

    .line 51
    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    .line 55
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    check-cast v2, Landroidx/compose/runtime/GroupInfo;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Landroidx/compose/runtime/GroupInfo;->b()I

    .line 62
    move-result v3

    .line 63
    .line 64
    if-lt v3, v0, :cond_0

    .line 65
    .line 66
    .line 67
    invoke-static {v2, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    move-result v3

    .line 69
    .line 70
    if-nez v3, :cond_0

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Landroidx/compose/runtime/GroupInfo;->b()I

    .line 74
    move-result v3

    .line 75
    add-int/2addr v3, v1

    .line 76
    .line 77
    if-ltz v3, :cond_0

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GroupInfo;->e(I)V

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    const/4 p1, 0x1

    .line 83
    return p1

    .line 84
    :cond_2
    const/4 p1, 0x0

    .line 85
    return p1
.end method

.method public final o(Landroidx/compose/runtime/KeyInfo;)I
    .locals 2
    .param p1    # Landroidx/compose/runtime/KeyInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "keyInfo"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/runtime/Pending;->groupInfos:Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/compose/runtime/KeyInfo;->b()I

    .line 11
    move-result v1

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Landroidx/compose/runtime/GroupInfo;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/compose/runtime/GroupInfo;->a()I

    .line 27
    move-result p1

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/KeyInfo;->c()I

    .line 32
    move-result p1

    .line 33
    :goto_0
    return p1
.end method
