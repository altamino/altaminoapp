.class public final Landroidx/compose/ui/node/DrawEntity;
.super Landroidx/compose/ui/node/LayoutNodeEntity;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/OwnerScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/DrawEntity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/LayoutNodeEntity<",
        "Landroidx/compose/ui/node/DrawEntity;",
        "Landroidx/compose/ui/draw/DrawModifier;",
        ">;",
        "Landroidx/compose/ui/node/OwnerScope;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDrawEntity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DrawEntity.kt\nandroidx/compose/ui/node/DrawEntity\n+ 2 LayoutNodeDrawScope.kt\nandroidx/compose/ui/node/LayoutNodeDrawScope\n+ 3 CanvasDrawScope.kt\nandroidx/compose/ui/graphics/drawscope/CanvasDrawScope\n*L\n1#1,120:1\n60#2,5:121\n69#2,2:143\n558#3,17:126\n*S KotlinDebug\n*F\n+ 1 DrawEntity.kt\nandroidx/compose/ui/node/DrawEntity\n*L\n95#1:121,5\n95#1:143,2\n95#1:126,17\n*E\n"
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/node/DrawEntity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final onCommitAffectingDrawEntity:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/ui/node/DrawEntity;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final buildCacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cacheDrawModifier:Landroidx/compose/ui/draw/DrawCacheModifier;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private invalidateCache:Z

.field private final updateCache:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/node/DrawEntity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/node/DrawEntity$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Landroidx/compose/ui/node/DrawEntity;->Companion:Landroidx/compose/ui/node/DrawEntity$Companion;

    sget-object v0, Landroidx/compose/ui/node/DrawEntity$Companion$onCommitAffectingDrawEntity$1;->INSTANCE:Landroidx/compose/ui/node/DrawEntity$Companion$onCommitAffectingDrawEntity$1;

    sput-object v0, Landroidx/compose/ui/node/DrawEntity;->onCommitAffectingDrawEntity:Le8/l;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/draw/DrawModifier;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/LayoutNodeWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/draw/DrawModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "layoutNodeWrapper"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "modifier"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/LayoutNodeEntity;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/Modifier;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Landroidx/compose/ui/node/DrawEntity;->o()Landroidx/compose/ui/draw/DrawCacheModifier;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    iput-object p2, p0, Landroidx/compose/ui/node/DrawEntity;->cacheDrawModifier:Landroidx/compose/ui/draw/DrawCacheModifier;

    .line 20
    .line 21
    new-instance p2, Landroidx/compose/ui/node/DrawEntity$buildCacheParams$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {p2, p0, p1}, Landroidx/compose/ui/node/DrawEntity$buildCacheParams$1;-><init>(Landroidx/compose/ui/node/DrawEntity;Landroidx/compose/ui/node/LayoutNodeWrapper;)V

    .line 25
    .line 26
    iput-object p2, p0, Landroidx/compose/ui/node/DrawEntity;->buildCacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 27
    const/4 p1, 0x1

    .line 28
    .line 29
    iput-boolean p1, p0, Landroidx/compose/ui/node/DrawEntity;->invalidateCache:Z

    .line 30
    .line 31
    new-instance p1, Landroidx/compose/ui/node/DrawEntity$updateCache$1;

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, p0}, Landroidx/compose/ui/node/DrawEntity$updateCache$1;-><init>(Landroidx/compose/ui/node/DrawEntity;)V

    .line 35
    .line 36
    iput-object p1, p0, Landroidx/compose/ui/node/DrawEntity;->updateCache:Le8/a;

    .line 37
    return-void
.end method

.method public static final synthetic j(Landroidx/compose/ui/node/DrawEntity;)Landroidx/compose/ui/draw/BuildDrawCacheParams;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/ui/node/DrawEntity;->buildCacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 3
    return-object p0
.end method

.method public static final synthetic k(Landroidx/compose/ui/node/DrawEntity;)Landroidx/compose/ui/draw/DrawCacheModifier;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/ui/node/DrawEntity;->cacheDrawModifier:Landroidx/compose/ui/draw/DrawCacheModifier;

    .line 3
    return-object p0
.end method

.method public static final synthetic l(Landroidx/compose/ui/node/DrawEntity;Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Landroidx/compose/ui/node/DrawEntity;->invalidateCache:Z

    .line 3
    return-void
.end method

.method private final o()Landroidx/compose/ui/draw/DrawCacheModifier;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->c()Landroidx/compose/ui/Modifier;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Landroidx/compose/ui/draw/DrawModifier;

    .line 7
    .line 8
    instance-of v1, v0, Landroidx/compose/ui/draw/DrawCacheModifier;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Landroidx/compose/ui/draw/DrawCacheModifier;

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return-object v0
.end method


# virtual methods
.method public g()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/node/DrawEntity;->o()Landroidx/compose/ui/draw/DrawCacheModifier;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/compose/ui/node/DrawEntity;->cacheDrawModifier:Landroidx/compose/ui/draw/DrawCacheModifier;

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    iput-boolean v0, p0, Landroidx/compose/ui/node/DrawEntity;->invalidateCache:Z

    .line 10
    .line 11
    .line 12
    invoke-super {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->g()V

    .line 13
    return-void
.end method

.method public isValid()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->b()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->Q()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final m(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 13
    .param p1    # Landroidx/compose/ui/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "canvas"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->e()J

    .line 9
    move-result-wide v0

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSizeKt;->b(J)J

    .line 13
    move-result-wide v0

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/compose/ui/node/DrawEntity;->cacheDrawModifier:Landroidx/compose/ui/draw/DrawCacheModifier;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    iget-boolean v2, p0, Landroidx/compose/ui/node/DrawEntity;->invalidateCache:Z

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->a()Landroidx/compose/ui/node/LayoutNode;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-static {v2}, Landroidx/compose/ui/node/LayoutNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    .line 32
    invoke-interface {v2}, Landroidx/compose/ui/node/Owner;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    sget-object v3, Landroidx/compose/ui/node/DrawEntity;->onCommitAffectingDrawEntity:Le8/l;

    .line 36
    .line 37
    iget-object v4, p0, Landroidx/compose/ui/node/DrawEntity;->updateCache:Le8/a;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, p0, v3, v4}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->e(Landroidx/compose/ui/node/OwnerScope;Le8/l;Le8/a;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->a()Landroidx/compose/ui/node/LayoutNode;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->b()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 52
    move-result-object v3

    .line 53
    .line 54
    .line 55
    invoke-static {v2}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->m(Landroidx/compose/ui/node/LayoutNodeDrawScope;)Landroidx/compose/ui/node/DrawEntity;

    .line 56
    move-result-object v4

    .line 57
    .line 58
    .line 59
    invoke-static {v2, p0}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->p(Landroidx/compose/ui/node/LayoutNodeDrawScope;Landroidx/compose/ui/node/DrawEntity;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v2}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->e(Landroidx/compose/ui/node/LayoutNodeDrawScope;)Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 63
    move-result-object v5

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNodeWrapper;->z1()Landroidx/compose/ui/layout/MeasureScope;

    .line 67
    move-result-object v6

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNodeWrapper;->z1()Landroidx/compose/ui/layout/MeasureScope;

    .line 71
    move-result-object v3

    .line 72
    .line 73
    .line 74
    invoke-interface {v3}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 75
    move-result-object v3

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->I()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 79
    move-result-object v7

    .line 80
    .line 81
    .line 82
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->a()Landroidx/compose/ui/unit/Density;

    .line 83
    move-result-object v8

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->b()Landroidx/compose/ui/unit/LayoutDirection;

    .line 87
    move-result-object v9

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->c()Landroidx/compose/ui/graphics/Canvas;

    .line 91
    move-result-object v10

    .line 92
    .line 93
    .line 94
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->d()J

    .line 95
    move-result-wide v11

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->I()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 99
    move-result-object v7

    .line 100
    .line 101
    .line 102
    invoke-virtual {v7, v6}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->j(Landroidx/compose/ui/unit/Density;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v7, v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->k(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v7, p1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->i(Landroidx/compose/ui/graphics/Canvas;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->l(J)V

    .line 112
    .line 113
    .line 114
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->r()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->c()Landroidx/compose/ui/Modifier;

    .line 118
    move-result-object v0

    .line 119
    .line 120
    check-cast v0, Landroidx/compose/ui/draw/DrawModifier;

    .line 121
    .line 122
    .line 123
    invoke-interface {v0, v2}, Landroidx/compose/ui/draw/DrawModifier;->r(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V

    .line 124
    .line 125
    .line 126
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->n()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->I()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 130
    move-result-object p1

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v8}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->j(Landroidx/compose/ui/unit/Density;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->k(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v10}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->i(Landroidx/compose/ui/graphics/Canvas;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v11, v12}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->l(J)V

    .line 143
    .line 144
    .line 145
    invoke-static {v2, v4}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->p(Landroidx/compose/ui/node/LayoutNodeDrawScope;Landroidx/compose/ui/node/DrawEntity;)V

    .line 146
    return-void
.end method

.method public final n()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/DrawEntity;->invalidateCache:Z

    return-void
.end method
