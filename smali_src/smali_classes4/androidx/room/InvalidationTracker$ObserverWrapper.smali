.class public final Landroidx/room/InvalidationTracker$ObserverWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/InvalidationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObserverWrapper"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInvalidationTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InvalidationTracker.kt\nandroidx/room/InvalidationTracker$ObserverWrapper\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,846:1\n13638#2,3:847\n12708#2,2:850\n13543#2:852\n13543#2,2:853\n13544#2:855\n*S KotlinDebug\n*F\n+ 1 InvalidationTracker.kt\nandroidx/room/InvalidationTracker$ObserverWrapper\n*L\n619#1:847,3\n641#1:850,2\n647#1:852\n648#1:853,2\n647#1:855\n*E\n"
.end annotation


# instance fields
.field private final observer:Landroidx/room/InvalidationTracker$Observer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final singleTableSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tableIds:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tableNames:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/InvalidationTracker$Observer;[I[Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroidx/room/InvalidationTracker$Observer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "observer"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string/jumbo v0, "tableIds"

    .line 10
    .line 11
    .line 12
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string/jumbo v0, "tableNames"

    .line 16
    .line 17
    .line 18
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    iput-object p1, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->observer:Landroidx/room/InvalidationTracker$Observer;

    .line 24
    .line 25
    iput-object p2, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->tableIds:[I

    .line 26
    .line 27
    iput-object p3, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->tableNames:[Ljava/lang/String;

    .line 28
    array-length p1, p3

    .line 29
    const/4 v0, 0x1

    .line 30
    const/4 v1, 0x0

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    move p1, v0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move p1, v1

    .line 36
    :goto_0
    xor-int/2addr p1, v0

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    aget-object p1, p3, v1

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lkotlin/collections/w0;->d(Ljava/lang/Object;)Ljava/util/Set;

    .line 44
    move-result-object p1

    .line 45
    goto :goto_1

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-static {}, Lkotlin/collections/w0;->e()Ljava/util/Set;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    :goto_1
    iput-object p1, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->singleTableSet:Ljava/util/Set;

    .line 52
    array-length p1, p2

    .line 53
    array-length p2, p3

    .line 54
    .line 55
    if-ne p1, p2, :cond_2

    .line 56
    return-void

    .line 57
    .line 58
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string p2, "Check failed."

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    move-result-object p2

    .line 65
    .line 66
    .line 67
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    throw p1
.end method


# virtual methods
.method public final a()[I
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->tableIds:[I

    return-object v0
.end method

.method public final b(Ljava/util/Set;)V
    .locals 8
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "invalidatedTablesIds"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->tableIds:[I

    .line 8
    array-length v1, v0

    .line 9
    const/4 v2, 0x1

    .line 10
    .line 11
    if-eqz v1, :cond_4

    .line 12
    const/4 v3, 0x0

    .line 13
    .line 14
    if-eq v1, v2, :cond_2

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lkotlin/collections/w0;->b()Ljava/util/Set;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->tableIds:[I

    .line 21
    array-length v4, v1

    .line 22
    move v5, v3

    .line 23
    .line 24
    :goto_0
    if-ge v3, v4, :cond_1

    .line 25
    .line 26
    aget v6, v1, v3

    .line 27
    .line 28
    add-int/lit8 v7, v5, 0x1

    .line 29
    .line 30
    .line 31
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v6

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 36
    move-result v6

    .line 37
    .line 38
    if-eqz v6, :cond_0

    .line 39
    .line 40
    iget-object v6, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->tableNames:[Ljava/lang/String;

    .line 41
    .line 42
    aget-object v5, v6, v5

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 48
    move v5, v7

    .line 49
    goto :goto_0

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-static {v0}, Lkotlin/collections/w0;->a(Ljava/util/Set;)Ljava/util/Set;

    .line 53
    move-result-object p1

    .line 54
    goto :goto_1

    .line 55
    .line 56
    :cond_2
    aget v0, v0, v3

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 64
    move-result p1

    .line 65
    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    iget-object p1, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->singleTableSet:Ljava/util/Set;

    .line 69
    goto :goto_1

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-static {}, Lkotlin/collections/w0;->e()Ljava/util/Set;

    .line 73
    move-result-object p1

    .line 74
    goto :goto_1

    .line 75
    .line 76
    .line 77
    :cond_4
    invoke-static {}, Lkotlin/collections/w0;->e()Ljava/util/Set;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    .line 81
    :goto_1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 82
    move-result v0

    .line 83
    xor-int/2addr v0, v2

    .line 84
    .line 85
    if-eqz v0, :cond_5

    .line 86
    .line 87
    iget-object v0, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->observer:Landroidx/room/InvalidationTracker$Observer;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p1}, Landroidx/room/InvalidationTracker$Observer;->c(Ljava/util/Set;)V

    .line 91
    :cond_5
    return-void
.end method

.method public final c([Ljava/lang/String;)V
    .locals 11
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "tables"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->tableNames:[Ljava/lang/String;

    .line 9
    array-length v0, v0

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    if-eqz v0, :cond_6

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    if-eq v0, v1, :cond_3

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lkotlin/collections/w0;->b()Ljava/util/Set;

    .line 19
    move-result-object v0

    .line 20
    array-length v3, p1

    .line 21
    move v4, v2

    .line 22
    .line 23
    :goto_0
    if-ge v4, v3, :cond_2

    .line 24
    .line 25
    aget-object v5, p1, v4

    .line 26
    .line 27
    iget-object v6, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->tableNames:[Ljava/lang/String;

    .line 28
    array-length v7, v6

    .line 29
    move v8, v2

    .line 30
    .line 31
    :goto_1
    if-ge v8, v7, :cond_1

    .line 32
    .line 33
    aget-object v9, v6, v8

    .line 34
    .line 35
    .line 36
    invoke-static {v9, v5, v1}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 37
    move-result v10

    .line 38
    .line 39
    if-eqz v10, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 48
    goto :goto_0

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-static {v0}, Lkotlin/collections/w0;->a(Ljava/util/Set;)Ljava/util/Set;

    .line 52
    move-result-object p1

    .line 53
    goto :goto_3

    .line 54
    :cond_3
    array-length v0, p1

    .line 55
    move v3, v2

    .line 56
    .line 57
    :goto_2
    if-ge v3, v0, :cond_5

    .line 58
    .line 59
    aget-object v4, p1, v3

    .line 60
    .line 61
    iget-object v5, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->tableNames:[Ljava/lang/String;

    .line 62
    .line 63
    aget-object v5, v5, v2

    .line 64
    .line 65
    .line 66
    invoke-static {v4, v5, v1}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 67
    move-result v4

    .line 68
    .line 69
    if-eqz v4, :cond_4

    .line 70
    .line 71
    iget-object p1, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->singleTableSet:Ljava/util/Set;

    .line 72
    goto :goto_3

    .line 73
    .line 74
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 75
    goto :goto_2

    .line 76
    .line 77
    .line 78
    :cond_5
    invoke-static {}, Lkotlin/collections/w0;->e()Ljava/util/Set;

    .line 79
    move-result-object p1

    .line 80
    goto :goto_3

    .line 81
    .line 82
    .line 83
    :cond_6
    invoke-static {}, Lkotlin/collections/w0;->e()Ljava/util/Set;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    .line 87
    :goto_3
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 88
    move-result v0

    .line 89
    xor-int/2addr v0, v1

    .line 90
    .line 91
    if-eqz v0, :cond_7

    .line 92
    .line 93
    iget-object v0, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->observer:Landroidx/room/InvalidationTracker$Observer;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p1}, Landroidx/room/InvalidationTracker$Observer;->c(Ljava/util/Set;)V

    .line 97
    :cond_7
    return-void
.end method
