.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/RememberObserver;
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$Prefetcher;
.implements Ljava/lang/Runnable;
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;,
        Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyLayoutPrefetcher.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyLayoutPrefetcher.android.kt\nandroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 4 AndroidTrace.android.kt\nandroidx/compose/ui/util/AndroidTrace_androidKt\n*L\n1#1,310:1\n1182#2:311\n1161#2,2:312\n523#3:314\n26#4,5:315\n26#4,5:320\n*S KotlinDebug\n*F\n+ 1 LazyLayoutPrefetcher.android.kt\nandroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher\n*L\n122#1:311\n122#1:312,2\n159#1:314\n164#1:315,5\n182#1:320,5\n*E\n"
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static frameIntervalNs:J


# instance fields
.field private averagePrecomposeTimeNs:J

.field private averagePremeasureTimeNs:J

.field private final choreographer:Landroid/view/Choreographer;

.field private isActive:Z

.field private final itemContentFactory:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final prefetchRequests:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private prefetchScheduled:Z

.field private final prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final subcomposeLayoutState:Landroidx/compose/ui/layout/SubcomposeLayoutState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final view:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->Companion:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;Landroid/view/View;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/SubcomposeLayoutState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "prefetchState"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "subcomposeLayoutState"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "itemContentFactory"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "view"

    .line 18
    .line 19
    .line 20
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 26
    .line 27
    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->subcomposeLayoutState:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .line 28
    .line 29
    iput-object p3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->itemContentFactory:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    .line 30
    .line 31
    iput-object p4, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->view:Landroid/view/View;

    .line 32
    .line 33
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    .line 34
    .line 35
    const/16 p2, 0x10

    .line 36
    .line 37
    new-array p2, p2, [Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;

    .line 38
    const/4 p3, 0x0

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, p2, p3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 42
    .line 43
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->prefetchRequests:Landroidx/compose/runtime/collection/MutableVector;

    .line 44
    .line 45
    .line 46
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->choreographer:Landroid/view/Choreographer;

    .line 50
    .line 51
    sget-object p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->Companion:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$Companion;

    .line 52
    .line 53
    .line 54
    invoke-static {p1, p4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$Companion;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$Companion;Landroid/view/View;)V

    .line 55
    return-void
.end method

.method public static final synthetic e()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->frameIntervalNs:J

    return-wide v0
.end method

.method public static final synthetic f(J)V
    .locals 0

    .line 1
    sput-wide p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->frameIntervalNs:J

    return-void
.end method

.method private final g(JJ)J
    .locals 4

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v0, p3, v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x4

    .line 9
    int-to-long v0, v0

    .line 10
    div-long/2addr p3, v0

    .line 11
    const/4 v2, 0x3

    .line 12
    int-to-long v2, v2

    .line 13
    mul-long/2addr p3, v2

    .line 14
    div-long/2addr p1, v0

    .line 15
    add-long/2addr p1, p3

    .line 16
    :goto_0
    return-wide p1
.end method

.method private final h(JJJ)Z
    .locals 1

    .line 1
    cmp-long v0, p1, p3

    if-gtz v0, :cond_1

    add-long/2addr p1, p5

    cmp-long p1, p1, p3

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public a(IJ)Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, p2, p3, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;-><init>(IJLkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->prefetchRequests:Landroidx/compose/runtime/collection/MutableVector;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)Z

    .line 12
    .line 13
    iget-boolean p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->prefetchScheduled:Z

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    const/4 p1, 0x1

    .line 17
    .line 18
    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->prefetchScheduled:Z

    .line 19
    .line 20
    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->view:Landroid/view/View;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 24
    :cond_0
    return-object v0
.end method

.method public b()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->c(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$Prefetcher;)V

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->isActive:Z

    .line 9
    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->isActive:Z

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->c(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$Prefetcher;)V

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->view:Landroid/view/View;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->choreographer:Landroid/view/Choreographer;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 20
    return-void
.end method

.method public doFrame(J)V
    .locals 0

    .line 1
    .line 2
    iget-boolean p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->isActive:Z

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->view:Landroid/view/View;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 10
    :cond_0
    return-void
.end method

.method public run()V
    .locals 17

    .line 1
    .line 2
    move-object/from16 v8, p0

    .line 3
    .line 4
    iget-object v0, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->prefetchRequests:Landroidx/compose/runtime/collection/MutableVector;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->p()Z

    .line 8
    move-result v0

    .line 9
    const/4 v9, 0x0

    .line 10
    .line 11
    if-nez v0, :cond_9

    .line 12
    .line 13
    iget-boolean v0, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->prefetchScheduled:Z

    .line 14
    .line 15
    if-eqz v0, :cond_9

    .line 16
    .line 17
    iget-boolean v0, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->isActive:Z

    .line 18
    .line 19
    if-eqz v0, :cond_9

    .line 20
    .line 21
    iget-object v0, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->view:Landroid/view/View;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    goto/16 :goto_7

    .line 30
    .line 31
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 32
    .line 33
    iget-object v1, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->view:Landroid/view/View;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/view/View;->getDrawingTime()J

    .line 37
    move-result-wide v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 41
    move-result-wide v0

    .line 42
    .line 43
    sget-wide v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->frameIntervalNs:J

    .line 44
    .line 45
    add-long v10, v0, v2

    .line 46
    move v0, v9

    .line 47
    .line 48
    :goto_0
    iget-object v1, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->prefetchRequests:Landroidx/compose/runtime/collection/MutableVector;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->q()Z

    .line 52
    move-result v1

    .line 53
    .line 54
    if-eqz v1, :cond_7

    .line 55
    .line 56
    if-nez v0, :cond_7

    .line 57
    .line 58
    iget-object v1, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->prefetchRequests:Landroidx/compose/runtime/collection/MutableVector;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    aget-object v1, v1, v9

    .line 65
    move-object v12, v1

    .line 66
    .line 67
    check-cast v12, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;

    .line 68
    .line 69
    iget-object v1, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->itemContentFactory:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->d()Le8/a;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    .line 76
    invoke-interface {v1}, Le8/a;->invoke()Ljava/lang/Object;

    .line 77
    move-result-object v1

    .line 78
    move-object v13, v1

    .line 79
    .line 80
    check-cast v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->a()Z

    .line 84
    move-result v1

    .line 85
    .line 86
    if-nez v1, :cond_6

    .line 87
    .line 88
    .line 89
    invoke-interface {v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->f()I

    .line 90
    move-result v1

    .line 91
    .line 92
    .line 93
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->c()I

    .line 94
    move-result v2

    .line 95
    .line 96
    if-ltz v2, :cond_6

    .line 97
    .line 98
    if-ge v2, v1, :cond_6

    .line 99
    .line 100
    .line 101
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->e()Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    .line 102
    move-result-object v1

    .line 103
    const/4 v14, 0x1

    .line 104
    .line 105
    if-nez v1, :cond_2

    .line 106
    .line 107
    const-string v1, "compose:lazylist:prefetch:compose"

    .line 108
    .line 109
    .line 110
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 114
    move-result-wide v15

    .line 115
    .line 116
    iget-wide v6, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->averagePrecomposeTimeNs:J

    .line 117
    .line 118
    move-object/from16 v1, p0

    .line 119
    move-wide v2, v15

    .line 120
    move-wide v4, v10

    .line 121
    .line 122
    .line 123
    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->h(JJJ)Z

    .line 124
    move-result v1

    .line 125
    .line 126
    if-eqz v1, :cond_1

    .line 127
    .line 128
    .line 129
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->c()I

    .line 130
    move-result v1

    .line 131
    .line 132
    .line 133
    invoke-interface {v13, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->d(I)Ljava/lang/Object;

    .line 134
    move-result-object v1

    .line 135
    .line 136
    iget-object v2, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->itemContentFactory:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->c()I

    .line 140
    move-result v3

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v3, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->b(ILjava/lang/Object;)Le8/p;

    .line 144
    move-result-object v2

    .line 145
    .line 146
    iget-object v3, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->subcomposeLayoutState:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3, v1, v2}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->j(Ljava/lang/Object;Le8/p;)Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    .line 150
    move-result-object v1

    .line 151
    .line 152
    .line 153
    invoke-virtual {v12, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->f(Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;)V

    .line 154
    .line 155
    .line 156
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 157
    move-result-wide v1

    .line 158
    sub-long/2addr v1, v15

    .line 159
    .line 160
    iget-wide v3, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->averagePrecomposeTimeNs:J

    .line 161
    .line 162
    .line 163
    invoke-direct {v8, v1, v2, v3, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->g(JJ)J

    .line 164
    move-result-wide v1

    .line 165
    .line 166
    iput-wide v1, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->averagePrecomposeTimeNs:J

    .line 167
    goto :goto_1

    .line 168
    :catchall_0
    move-exception v0

    .line 169
    goto :goto_2

    .line 170
    :cond_1
    move v0, v14

    .line 171
    .line 172
    :goto_1
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .line 174
    .line 175
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 176
    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    .line 180
    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 181
    throw v0

    .line 182
    .line 183
    .line 184
    :cond_2
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->d()Z

    .line 185
    move-result v1

    .line 186
    xor-int/2addr v1, v14

    .line 187
    .line 188
    if-eqz v1, :cond_5

    .line 189
    .line 190
    const-string v1, "compose:lazylist:prefetch:measure"

    .line 191
    .line 192
    .line 193
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 197
    move-result-wide v15

    .line 198
    .line 199
    iget-wide v6, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->averagePremeasureTimeNs:J

    .line 200
    .line 201
    move-object/from16 v1, p0

    .line 202
    move-wide v2, v15

    .line 203
    move-wide v4, v10

    .line 204
    .line 205
    .line 206
    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->h(JJJ)Z

    .line 207
    move-result v1

    .line 208
    .line 209
    if-eqz v1, :cond_4

    .line 210
    .line 211
    .line 212
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->e()Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    .line 213
    move-result-object v1

    .line 214
    .line 215
    .line 216
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    invoke-interface {v1}, Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;->a()I

    .line 220
    move-result v2

    .line 221
    move v3, v9

    .line 222
    .line 223
    :goto_3
    if-ge v3, v2, :cond_3

    .line 224
    .line 225
    .line 226
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->b()J

    .line 227
    move-result-wide v4

    .line 228
    .line 229
    .line 230
    invoke-interface {v1, v3, v4, v5}, Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;->b(IJ)V

    .line 231
    .line 232
    add-int/lit8 v3, v3, 0x1

    .line 233
    goto :goto_3

    .line 234
    :catchall_1
    move-exception v0

    .line 235
    goto :goto_5

    .line 236
    .line 237
    .line 238
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 239
    move-result-wide v1

    .line 240
    sub-long/2addr v1, v15

    .line 241
    .line 242
    iget-wide v3, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->averagePremeasureTimeNs:J

    .line 243
    .line 244
    .line 245
    invoke-direct {v8, v1, v2, v3, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->g(JJ)J

    .line 246
    move-result-wide v1

    .line 247
    .line 248
    iput-wide v1, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->averagePremeasureTimeNs:J

    .line 249
    .line 250
    iget-object v1, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->prefetchRequests:Landroidx/compose/runtime/collection/MutableVector;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/collection/MutableVector;->v(I)Ljava/lang/Object;

    .line 254
    goto :goto_4

    .line 255
    .line 256
    :cond_4
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 257
    move v0, v14

    .line 258
    .line 259
    .line 260
    :goto_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 261
    .line 262
    goto/16 :goto_0

    .line 263
    .line 264
    .line 265
    :goto_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 266
    throw v0

    .line 267
    .line 268
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 269
    .line 270
    const-string v1, "Check failed."

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 274
    move-result-object v1

    .line 275
    .line 276
    .line 277
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 278
    throw v0

    .line 279
    .line 280
    :cond_6
    iget-object v1, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->prefetchRequests:Landroidx/compose/runtime/collection/MutableVector;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/collection/MutableVector;->v(I)Ljava/lang/Object;

    .line 284
    .line 285
    goto/16 :goto_0

    .line 286
    .line 287
    :cond_7
    if-eqz v0, :cond_8

    .line 288
    .line 289
    iget-object v0, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->choreographer:Landroid/view/Choreographer;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v8}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 293
    goto :goto_6

    .line 294
    .line 295
    :cond_8
    iput-boolean v9, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->prefetchScheduled:Z

    .line 296
    :goto_6
    return-void

    .line 297
    .line 298
    :cond_9
    :goto_7
    iput-boolean v9, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->prefetchScheduled:Z

    .line 299
    return-void
.end method
