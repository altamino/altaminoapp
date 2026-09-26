.class public final Landroidx/compose/foundation/text/TextController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/RememberObserver;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoreText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoreText.kt\nandroidx/compose/foundation/text/TextController\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,660:1\n1#2:661\n*E\n"
.end annotation


# instance fields
.field private final coreModifiers:Landroidx/compose/ui/Modifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public longPressDragObserver:Landroidx/compose/foundation/text/TextDragObserver;

.field private final measurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private selectionModifiers:Landroidx/compose/ui/Modifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private semanticsModifier:Landroidx/compose/ui/Modifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final state:Landroidx/compose/foundation/text/TextState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/TextState;)V
    .locals 3
    .param p1    # Landroidx/compose/foundation/text/TextState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo v0, "state"

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
    iput-object p1, p0, Landroidx/compose/foundation/text/TextController;->state:Landroidx/compose/foundation/text/TextState;

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/foundation/text/TextController$measurePolicy$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/TextController$measurePolicy$1;-><init>(Landroidx/compose/foundation/text/TextController;)V

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/compose/foundation/text/TextController;->measurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;

    .line 18
    .line 19
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/TextController;->g(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    new-instance v2, Landroidx/compose/foundation/text/TextController$coreModifiers$1;

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, p0}, Landroidx/compose/foundation/text/TextController$coreModifiers$1;-><init>(Landroidx/compose/foundation/text/TextController;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v2}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->a(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    iput-object v1, p0, Landroidx/compose/foundation/text/TextController;->coreModifiers:Landroidx/compose/ui/Modifier;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextState;->i()Landroidx/compose/foundation/text/TextDelegate;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextDelegate;->k()Landroidx/compose/ui/text/AnnotatedString;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/TextController;->f(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/Modifier;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    iput-object p1, p0, Landroidx/compose/foundation/text/TextController;->semanticsModifier:Landroidx/compose/ui/Modifier;

    .line 49
    .line 50
    iput-object v0, p0, Landroidx/compose/foundation/text/TextController;->selectionModifiers:Landroidx/compose/ui/Modifier;

    .line 51
    return-void
.end method

.method public static final synthetic a(Landroidx/compose/foundation/text/TextController;)Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/foundation/text/TextController;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 3
    return-object p0
.end method

.method public static final synthetic e(Landroidx/compose/foundation/text/TextController;JJ)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/TextController;->l(JJ)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final f(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/Modifier;
    .locals 4

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 3
    .line 4
    new-instance v1, Landroidx/compose/foundation/text/TextController$createSemanticsModifierFor$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p1, p0}, Landroidx/compose/foundation/text/TextController$createSemanticsModifierFor$1;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/foundation/text/TextController;)V

    .line 8
    const/4 p1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v3, v1, p1, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->c(Landroidx/compose/ui/Modifier;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method private final g(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 22
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p1

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v6, 0x0

    .line 9
    const/4 v7, 0x0

    .line 10
    const/4 v8, 0x0

    .line 11
    const/4 v9, 0x0

    .line 12
    const/4 v10, 0x0

    .line 13
    .line 14
    const-wide/16 v11, 0x0

    .line 15
    const/4 v13, 0x0

    .line 16
    const/4 v14, 0x0

    .line 17
    const/4 v15, 0x0

    .line 18
    .line 19
    const-wide/16 v16, 0x0

    .line 20
    .line 21
    const-wide/16 v18, 0x0

    .line 22
    .line 23
    .line 24
    const v20, 0xffff

    .line 25
    .line 26
    const/16 v21, 0x0

    .line 27
    .line 28
    .line 29
    invoke-static/range {v0 .. v21}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->c(Landroidx/compose/ui/Modifier;FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    new-instance v1, Landroidx/compose/foundation/text/TextController$drawTextAndSelectionBehind$1;

    .line 33
    .line 34
    move-object/from16 v2, p0

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, v2}, Landroidx/compose/foundation/text/TextController$drawTextAndSelectionBehind$1;-><init>(Landroidx/compose/foundation/text/TextController;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Landroidx/compose/ui/draw/DrawModifierKt;->a(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;

    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method

.method private final l(JJ)Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController;->state:Landroidx/compose/foundation/text/TextState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextState;->c()Landroidx/compose/ui/text/TextLayoutResult;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutResult;->k()Landroidx/compose/ui/text/TextLayoutInput;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Landroidx/compose/ui/text/TextLayoutInput;->j()Landroidx/compose/ui/text/AnnotatedString;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Landroidx/compose/ui/text/AnnotatedString;->g()Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 25
    move-result v2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/text/TextLayoutResult;->w(J)I

    .line 29
    move-result p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p3, p4}, Landroidx/compose/ui/text/TextLayoutResult;->w(J)I

    .line 33
    move-result p2

    .line 34
    const/4 p3, 0x1

    .line 35
    sub-int/2addr v2, p3

    .line 36
    .line 37
    if-lt p1, v2, :cond_0

    .line 38
    .line 39
    if-ge p2, v2, :cond_1

    .line 40
    .line 41
    :cond_0
    if-gez p1, :cond_2

    .line 42
    .line 43
    if-gez p2, :cond_2

    .line 44
    :cond_1
    move v1, p3

    .line 45
    :cond_2
    return v1
.end method


# virtual methods
.method public b()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/foundation/text/TextController;->state:Landroidx/compose/foundation/text/TextState;

    .line 7
    .line 8
    new-instance v2, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/compose/foundation/text/TextState;->g()J

    .line 12
    move-result-wide v3

    .line 13
    .line 14
    new-instance v5, Landroidx/compose/foundation/text/TextController$onRemembered$1$1;

    .line 15
    .line 16
    .line 17
    invoke-direct {v5, p0}, Landroidx/compose/foundation/text/TextController$onRemembered$1$1;-><init>(Landroidx/compose/foundation/text/TextController;)V

    .line 18
    .line 19
    new-instance v6, Landroidx/compose/foundation/text/TextController$onRemembered$1$2;

    .line 20
    .line 21
    .line 22
    invoke-direct {v6, p0}, Landroidx/compose/foundation/text/TextController$onRemembered$1$2;-><init>(Landroidx/compose/foundation/text/TextController;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;-><init>(JLe8/a;Le8/a;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v2}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->j(Landroidx/compose/foundation/text/selection/Selectable;)Landroidx/compose/foundation/text/selection/Selectable;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroidx/compose/foundation/text/TextState;->o(Landroidx/compose/foundation/text/selection/Selectable;)V

    .line 33
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController;->state:Landroidx/compose/foundation/text/TextState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextState;->f()Landroidx/compose/foundation/text/selection/Selectable;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/compose/foundation/text/TextController;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->c(Landroidx/compose/foundation/text/selection/Selectable;)V

    .line 16
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController;->state:Landroidx/compose/foundation/text/TextState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextState;->f()Landroidx/compose/foundation/text/selection/Selectable;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/compose/foundation/text/TextController;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->c(Landroidx/compose/foundation/text/selection/Selectable;)V

    .line 16
    :cond_0
    return-void
.end method

.method public final h()Landroidx/compose/foundation/text/TextDragObserver;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController;->longPressDragObserver:Landroidx/compose/foundation/text/TextDragObserver;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "longPressDragObserver"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final i()Landroidx/compose/ui/layout/MeasurePolicy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController;->measurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;

    return-object v0
.end method

.method public final j()Landroidx/compose/ui/Modifier;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController;->coreModifiers:Landroidx/compose/ui/Modifier;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/foundation/text/TextController;->semanticsModifier:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/compose/foundation/text/TextController;->selectionModifiers:Landroidx/compose/ui/Modifier;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public final k()Landroidx/compose/foundation/text/TextState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController;->state:Landroidx/compose/foundation/text/TextState;

    return-object v0
.end method

.method public final m(Landroidx/compose/foundation/text/TextDragObserver;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/text/TextDragObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/foundation/text/TextController;->longPressDragObserver:Landroidx/compose/foundation/text/TextDragObserver;

    return-void
.end method

.method public final n(Landroidx/compose/foundation/text/TextDelegate;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/text/TextDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo v0, "textDelegate"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController;->state:Landroidx/compose/foundation/text/TextState;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextState;->i()Landroidx/compose/foundation/text/TextDelegate;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-ne v0, p1, :cond_0

    .line 14
    return-void

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController;->state:Landroidx/compose/foundation/text/TextState;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text/TextState;->q(Landroidx/compose/foundation/text/TextDelegate;)V

    .line 20
    .line 21
    iget-object p1, p0, Landroidx/compose/foundation/text/TextController;->state:Landroidx/compose/foundation/text/TextState;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextState;->i()Landroidx/compose/foundation/text/TextDelegate;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextDelegate;->k()Landroidx/compose/ui/text/AnnotatedString;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/TextController;->f(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/Modifier;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    iput-object p1, p0, Landroidx/compose/foundation/text/TextController;->semanticsModifier:Landroidx/compose/ui/Modifier;

    .line 36
    return-void
.end method

.method public final o(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)V
    .locals 4
    .param p1    # Landroidx/compose/foundation/text/selection/SelectionRegistrar;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/foundation/text/TextController;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroidx/compose/foundation/text/TouchMode_androidKt;->a()Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Landroidx/compose/foundation/text/TextController$update$1;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/text/TextController$update$1;-><init>(Landroidx/compose/foundation/text/TextController;Landroidx/compose/foundation/text/selection/SelectionRegistrar;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/TextController;->m(Landroidx/compose/foundation/text/TextDragObserver;)V

    .line 20
    .line 21
    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextController;->h()Landroidx/compose/foundation/text/TextDragObserver;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    new-instance v2, Landroidx/compose/foundation/text/TextController$update$2;

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, p0, v1}, Landroidx/compose/foundation/text/TextController$update$2;-><init>(Landroidx/compose/foundation/text/TextController;Lkotlin/coroutines/d;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v0, v2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Le8/p;)Landroidx/compose/ui/Modifier;

    .line 34
    move-result-object p1

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_0
    new-instance v0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;-><init>(Landroidx/compose/foundation/text/TextController;Landroidx/compose/foundation/text/selection/SelectionRegistrar;)V

    .line 41
    .line 42
    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 43
    .line 44
    new-instance v2, Landroidx/compose/foundation/text/TextController$update$3;

    .line 45
    .line 46
    .line 47
    invoke-direct {v2, v0, v1}, Landroidx/compose/foundation/text/TextController$update$3;-><init>(Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;Lkotlin/coroutines/d;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v0, v2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Le8/p;)Landroidx/compose/ui/Modifier;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-static {}, Landroidx/compose/foundation/text/TextPointerIcon_androidKt;->a()Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 55
    move-result-object v0

    .line 56
    const/4 v2, 0x0

    .line 57
    const/4 v3, 0x2

    .line 58
    .line 59
    .line 60
    invoke-static {p1, v0, v2, v3, v1}, Landroidx/compose/ui/input/pointer/PointerIconKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/pointer/PointerIcon;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 61
    move-result-object p1

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_1
    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 65
    .line 66
    :goto_0
    iput-object p1, p0, Landroidx/compose/foundation/text/TextController;->selectionModifiers:Landroidx/compose/ui/Modifier;

    .line 67
    return-void
.end method
