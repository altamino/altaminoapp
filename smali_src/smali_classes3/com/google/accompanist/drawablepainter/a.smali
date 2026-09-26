.class public final Lcom/google/accompanist/drawablepainter/a;
.super Landroidx/compose/ui/graphics/painter/Painter;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/RememberObserver;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/accompanist/drawablepainter/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDrawablePainter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DrawablePainter.kt\ncom/google/accompanist/drawablepainter/DrawablePainter\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 DrawScope.kt\nandroidx/compose/ui/graphics/drawscope/DrawScopeKt\n+ 4 Canvas.kt\nandroidx/compose/ui/graphics/CanvasKt\n*L\n1#1,179:1\n76#2:180\n102#2,2:181\n76#2:183\n102#2,2:184\n245#3:186\n47#4,7:187\n*S KotlinDebug\n*F\n+ 1 DrawablePainter.kt\ncom/google/accompanist/drawablepainter/DrawablePainter\n*L\n61#1:180\n61#1:181,2\n62#1:183\n62#1:184,2\n129#1:186\n136#1:187,7\n*E\n"
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final callback$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final drawInvalidateTick$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final drawable:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final drawableIntrinsicSize$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "drawable"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/accompanist/drawablepainter/a;->drawable:Landroid/graphics/drawable/Drawable;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x2

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2, v3, v2}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    iput-object v1, p0, Lcom/google/accompanist/drawablepainter/a;->drawInvalidateTick$delegate:Landroidx/compose/runtime/MutableState;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/google/accompanist/drawablepainter/b;->a(Landroid/graphics/drawable/Drawable;)J

    .line 27
    move-result-wide v4

    .line 28
    .line 29
    .line 30
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Size;->c(J)Landroidx/compose/ui/geometry/Size;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v2, v3, v2}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    iput-object v1, p0, Lcom/google/accompanist/drawablepainter/a;->drawableIntrinsicSize$delegate:Landroidx/compose/runtime/MutableState;

    .line 38
    .line 39
    new-instance v1, Lcom/google/accompanist/drawablepainter/a$b;

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, p0}, Lcom/google/accompanist/drawablepainter/a$b;-><init>(Lcom/google/accompanist/drawablepainter/a;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    iput-object v1, p0, Lcom/google/accompanist/drawablepainter/a;->callback$delegate:Lw7/m;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 52
    move-result v1

    .line 53
    .line 54
    if-ltz v1, :cond_0

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 58
    move-result v1

    .line 59
    .line 60
    if-ltz v1, :cond_0

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 64
    move-result v1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 68
    move-result v2

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 72
    :cond_0
    return-void
.end method

.method public static final synthetic n(Lcom/google/accompanist/drawablepainter/a;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/accompanist/drawablepainter/a;->r()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic o(Lcom/google/accompanist/drawablepainter/a;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/accompanist/drawablepainter/a;->u(I)V

    .line 4
    return-void
.end method

.method public static final synthetic p(Lcom/google/accompanist/drawablepainter/a;J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/accompanist/drawablepainter/a;->v(J)V

    .line 4
    return-void
.end method

.method private final q()Landroid/graphics/drawable/Drawable$Callback;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/accompanist/drawablepainter/a;->callback$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/graphics/drawable/Drawable$Callback;

    .line 9
    return-object v0
.end method

.method private final r()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/accompanist/drawablepainter/a;->drawInvalidateTick$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Number;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private final t()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/accompanist/drawablepainter/a;->drawableIntrinsicSize$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/ui/geometry/Size;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size;->m()J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method private final u(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/accompanist/drawablepainter/a;->drawInvalidateTick$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 10
    return-void
.end method

.method private final v(J)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/accompanist/drawablepainter/a;->drawableIntrinsicSize$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->c(J)Landroidx/compose/ui/geometry/Size;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 10
    return-void
.end method


# virtual methods
.method protected a(F)Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/accompanist/drawablepainter/a;->drawable:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    const/16 v1, 0xff

    .line 5
    int-to-float v2, v1

    .line 6
    mul-float/2addr p1, v2

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lg8/a;->c(F)I

    .line 10
    move-result p1

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v2, v1}, Lj8/m;->n(III)I

    .line 15
    move-result p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 19
    const/4 p1, 0x1

    .line 20
    return p1
.end method

.method public b()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/accompanist/drawablepainter/a;->drawable:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/accompanist/drawablepainter/a;->q()Landroid/graphics/drawable/Drawable$Callback;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/accompanist/drawablepainter/a;->drawable:Landroid/graphics/drawable/Drawable;

    .line 12
    const/4 v1, 0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/accompanist/drawablepainter/a;->drawable:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 27
    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/accompanist/drawablepainter/a;->d()V

    .line 4
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/accompanist/drawablepainter/a;->drawable:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/accompanist/drawablepainter/a;->drawable:Landroid/graphics/drawable/Drawable;

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/accompanist/drawablepainter/a;->drawable:Landroid/graphics/drawable/Drawable;

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 24
    return-void
.end method

.method protected e(Landroidx/compose/ui/graphics/ColorFilter;)Z
    .locals 1
    .param p1    # Landroidx/compose/ui/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/accompanist/drawablepainter/a;->drawable:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidColorFilter_androidKt;->b(Landroidx/compose/ui/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 14
    const/4 p1, 0x1

    .line 15
    return p1
.end method

.method protected f(Landroidx/compose/ui/unit/LayoutDirection;)Z
    .locals 3
    .param p1    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "layoutDirection"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/accompanist/drawablepainter/a;->drawable:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    sget-object v1, Lcom/google/accompanist/drawablepainter/a$a;->$EnumSwitchMapping$0:[I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 13
    move-result p1

    .line 14
    .line 15
    aget p1, v1, p1

    .line 16
    const/4 v1, 0x1

    .line 17
    .line 18
    if-eq p1, v1, :cond_1

    .line 19
    const/4 v2, 0x2

    .line 20
    .line 21
    if-ne p1, v2, :cond_0

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    new-instance p1, Lw7/s;

    .line 25
    .line 26
    .line 27
    invoke-direct {p1}, Lw7/s;-><init>()V

    .line 28
    throw p1

    .line 29
    :cond_1
    const/4 v1, 0x0

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 33
    move-result p1

    .line 34
    return p1
.end method

.method public k()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/accompanist/drawablepainter/a;->t()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method protected m(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 5
    .param p1    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->T()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/google/accompanist/drawablepainter/a;->r()I

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/accompanist/drawablepainter/a;->drawable:Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 22
    move-result-wide v2

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 26
    move-result v2

    .line 27
    .line 28
    .line 29
    invoke-static {v2}, Lg8/a;->c(F)I

    .line 30
    move-result v2

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 34
    move-result-wide v3

    .line 35
    .line 36
    .line 37
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 38
    move-result p1

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lg8/a;->c(F)I

    .line 42
    move-result p1

    .line 43
    const/4 v3, 0x0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v3, v3, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 47
    .line 48
    .line 49
    :try_start_0
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->r()V

    .line 50
    .line 51
    iget-object p1, p0, Lcom/google/accompanist/drawablepainter/a;->drawable:Landroid/graphics/drawable/Drawable;

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->c(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->n()V

    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    .line 65
    .line 66
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->n()V

    .line 67
    throw p1
.end method

.method public final s()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/accompanist/drawablepainter/a;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
