.class public final Landroidx/compose/foundation/text/TextState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoreText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoreText.kt\nandroidx/compose/foundation/text/TextState\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,660:1\n76#2:661\n102#2,2:662\n*S KotlinDebug\n*F\n+ 1 CoreText.kt\nandroidx/compose/foundation/text/TextState\n*L\n545#1:661\n545#1:662,2\n*E\n"
.end annotation


# instance fields
.field private final drawScopeInvalidation$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private layoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private layoutResult:Landroidx/compose/ui/text/TextLayoutResult;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private onTextLayout:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private previousGlobalPosition:J

.field private selectable:Landroidx/compose/foundation/text/selection/Selectable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final selectableId:J

.field private selectionBackgroundColor:J

.field private textDelegate:Landroidx/compose/foundation/text/TextDelegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/TextDelegate;J)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/text/TextDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "textDelegate"

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
    iput-object p1, p0, Landroidx/compose/foundation/text/TextState;->textDelegate:Landroidx/compose/foundation/text/TextDelegate;

    .line 11
    .line 12
    iput-wide p2, p0, Landroidx/compose/foundation/text/TextState;->selectableId:J

    .line 13
    .line 14
    sget-object p1, Landroidx/compose/foundation/text/TextState$onTextLayout$1;->INSTANCE:Landroidx/compose/foundation/text/TextState$onTextLayout$1;

    .line 15
    .line 16
    iput-object p1, p0, Landroidx/compose/foundation/text/TextState;->onTextLayout:Le8/l;

    .line 17
    .line 18
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 22
    move-result-wide p1

    .line 23
    .line 24
    iput-wide p1, p0, Landroidx/compose/foundation/text/TextState;->previousGlobalPosition:J

    .line 25
    .line 26
    sget-object p1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Color$Companion;->f()J

    .line 30
    move-result-wide p1

    .line 31
    .line 32
    iput-wide p1, p0, Landroidx/compose/foundation/text/TextState;->selectionBackgroundColor:J

    .line 33
    .line 34
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->i()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    .line 41
    invoke-static {p1, p2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    iput-object p1, p0, Landroidx/compose/foundation/text/TextState;->drawScopeInvalidation$delegate:Landroidx/compose/runtime/MutableState;

    .line 45
    return-void
.end method

.method private final j(Lw7/l0;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/TextState;->drawScopeInvalidation$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final a()Lw7/l0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/TextState;->drawScopeInvalidation$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object v0
.end method

.method public final b()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextState;->layoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    return-object v0
.end method

.method public final c()Landroidx/compose/ui/text/TextLayoutResult;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextState;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    return-object v0
.end method

.method public final d()Le8/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/l<",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextState;->onTextLayout:Le8/l;

    return-object v0
.end method

.method public final e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/text/TextState;->previousGlobalPosition:J

    return-wide v0
.end method

.method public final f()Landroidx/compose/foundation/text/selection/Selectable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextState;->selectable:Landroidx/compose/foundation/text/selection/Selectable;

    return-object v0
.end method

.method public final g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/text/TextState;->selectableId:J

    return-wide v0
.end method

.method public final h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/text/TextState;->selectionBackgroundColor:J

    return-wide v0
.end method

.method public final i()Landroidx/compose/foundation/text/TextDelegate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextState;->textDelegate:Landroidx/compose/foundation/text/TextDelegate;

    return-object v0
.end method

.method public final k(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/text/TextState;->layoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    return-void
.end method

.method public final l(Landroidx/compose/ui/text/TextLayoutResult;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/text/TextLayoutResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/TextState;->j(Lw7/l0;)V

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/compose/foundation/text/TextState;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    .line 8
    return-void
.end method

.method public final m(Le8/l;)V
    .locals 1
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/foundation/text/TextState;->onTextLayout:Le8/l;

    return-void
.end method

.method public final n(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/compose/foundation/text/TextState;->previousGlobalPosition:J

    return-void
.end method

.method public final o(Landroidx/compose/foundation/text/selection/Selectable;)V
    .locals 0
    .param p1    # Landroidx/compose/foundation/text/selection/Selectable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/text/TextState;->selectable:Landroidx/compose/foundation/text/selection/Selectable;

    return-void
.end method

.method public final p(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/compose/foundation/text/TextState;->selectionBackgroundColor:J

    return-void
.end method

.method public final q(Landroidx/compose/foundation/text/TextDelegate;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/text/TextDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/foundation/text/TextState;->textDelegate:Landroidx/compose/foundation/text/TextDelegate;

    return-void
.end method
