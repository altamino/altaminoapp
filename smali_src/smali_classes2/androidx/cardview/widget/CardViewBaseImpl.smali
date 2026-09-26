.class Landroidx/cardview/widget/CardViewBaseImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/cardview/widget/CardViewImpl;


# instance fields
.field final mCornerRect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/RectF;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/cardview/widget/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    .line 11
    return-void
.end method

.method private p(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    .locals 7

    .line 1
    .line 2
    new-instance v6, Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v1

    .line 7
    move-object v0, v6

    .line 8
    move-object v2, p2

    .line 9
    move v3, p3

    .line 10
    move v4, p4

    .line 11
    move v5, p5

    .line 12
    .line 13
    .line 14
    invoke-direct/range {v0 .. v5}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;-><init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V

    .line 15
    return-object v6
.end method

.method private q(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroidx/cardview/widget/CardViewDelegate;->e()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    .line 7
    return-object p1
.end method


# virtual methods
.method public a(Landroidx/cardview/widget/CardViewDelegate;)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->q(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->g()F

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public b(Landroidx/cardview/widget/CardViewDelegate;)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->q(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->i()F

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public c(Landroidx/cardview/widget/CardViewDelegate;)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->q(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->j()F

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public d(Landroidx/cardview/widget/CardViewDelegate;)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->q(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->l()F

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public e(Landroidx/cardview/widget/CardViewDelegate;)V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/Rect;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->q(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->h(Landroid/graphics/Rect;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->f(Landroidx/cardview/widget/CardViewDelegate;)F

    .line 16
    move-result v1

    .line 17
    float-to-double v1, v1

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 21
    move-result-wide v1

    .line 22
    double-to-int v1, v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->c(Landroidx/cardview/widget/CardViewDelegate;)F

    .line 26
    move-result v2

    .line 27
    float-to-double v2, v2

    .line 28
    .line 29
    .line 30
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 31
    move-result-wide v2

    .line 32
    double-to-int v2, v2

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v1, v2}, Landroidx/cardview/widget/CardViewDelegate;->c(II)V

    .line 36
    .line 37
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 38
    .line 39
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 40
    .line 41
    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 42
    .line 43
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 44
    .line 45
    .line 46
    invoke-interface {p1, v1, v2, v3, v0}, Landroidx/cardview/widget/CardViewDelegate;->a(IIII)V

    .line 47
    return-void
.end method

.method public f(Landroidx/cardview/widget/CardViewDelegate;)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->q(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->k()F

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public g(Landroidx/cardview/widget/CardViewDelegate;F)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->q(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p2}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->q(F)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->e(Landroidx/cardview/widget/CardViewDelegate;)V

    .line 11
    return-void
.end method

.method public h(Landroidx/cardview/widget/CardViewDelegate;F)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->q(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p2}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->p(F)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->e(Landroidx/cardview/widget/CardViewDelegate;)V

    .line 11
    return-void
.end method

.method public i(Landroidx/cardview/widget/CardViewDelegate;F)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->q(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->r(F)V

    .line 8
    return-void
.end method

.method public j(Landroidx/cardview/widget/CardViewDelegate;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->q(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->f()Landroid/content/res/ColorStateList;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public k(Landroidx/cardview/widget/CardViewDelegate;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->q(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Landroidx/cardview/widget/CardViewDelegate;->f()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->m(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->e(Landroidx/cardview/widget/CardViewDelegate;)V

    .line 15
    return-void
.end method

.method public l(Landroidx/cardview/widget/CardViewDelegate;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 6

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p2

    .line 3
    move-object v2, p3

    .line 4
    move v3, p4

    .line 5
    move v4, p5

    .line 6
    move v5, p6

    .line 7
    .line 8
    .line 9
    invoke-direct/range {v0 .. v5}, Landroidx/cardview/widget/CardViewBaseImpl;->p(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Landroidx/cardview/widget/CardViewDelegate;->f()Z

    .line 14
    move-result p3

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p3}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->m(Z)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, p2}, Landroidx/cardview/widget/CardViewDelegate;->d(Landroid/graphics/drawable/Drawable;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->e(Landroidx/cardview/widget/CardViewDelegate;)V

    .line 24
    return-void
.end method

.method public m(Landroidx/cardview/widget/CardViewDelegate;)V
    .locals 0

    .line 1
    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/cardview/widget/CardViewBaseImpl$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroidx/cardview/widget/CardViewBaseImpl$1;-><init>(Landroidx/cardview/widget/CardViewBaseImpl;)V

    .line 6
    .line 7
    sput-object v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->sRoundRectHelper:Landroidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;

    .line 8
    return-void
.end method

.method public o(Landroidx/cardview/widget/CardViewDelegate;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p2    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->q(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->o(Landroid/content/res/ColorStateList;)V

    .line 8
    return-void
.end method
