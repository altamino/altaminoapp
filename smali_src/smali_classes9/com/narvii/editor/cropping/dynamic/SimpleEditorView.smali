.class public final Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$Companion;,
        Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$IEditorViewTouchListener;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final INNER_BORDER:F = 7.0f

.field private static final INNER_COLOR:Ljava/lang/String; = "#F5A623"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final INNER_PAINT_WIDTH:F = 2.0f

.field private static final INNER_RADIUS:F = 4.0f

.field private static final OUTER_ALPHA:I = 0x24

.field private static final OUTER_PAINT_WIDTH:F = 4.0f

.field private static final OUTER_RADIUS:F = 8.0f


# instance fields
.field private final diff:F

.field private editorViewMoved:Z

.field private editorViewTouchListener:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$IEditorViewTouchListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final innerRadius:F

.field private leftBorder:F

.field private mInnerPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mInnerRect:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mOuterPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mOuterRectF:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mShadowPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mVideoViewHeight:I

.field private mVideoViewWidth:I

.field private final outerRadius:F

.field private rightBorder:F

.field private showOuterRect:Z

.field private simpleGlView:Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private spring:Lcom/facebook/rebound/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private springSystem:Lcom/facebook/rebound/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private startLeft:F

.field private videoRect:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->Companion:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerPaint:Landroid/graphics/Paint;

    .line 3
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    .line 4
    sget-object p1, Lcom/narvii/editor/cropping/dynamic/Utils;->Companion:Lcom/narvii/editor/cropping/dynamic/Utils$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {p1, v0, v2}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->innerRadius:F

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    .line 6
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterRectF:Landroid/graphics/RectF;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v3, 0x41000000    # 8.0f

    invoke-virtual {p1, v0, v3}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->outerRadius:F

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->diff:F

    .line 9
    new-instance v0, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->videoRect:Landroid/graphics/Rect;

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mShadowPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerPaint:Landroid/graphics/Paint;

    const-string v3, "#F5A623"

    .line 11
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    .line 12
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerPaint:Landroid/graphics/Paint;

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {p1, v5, v6}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerPaint:Landroid/graphics/Paint;

    .line 14
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    const/4 v6, 0x0

    .line 15
    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    .line 16
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    .line 17
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3, v2}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    const/16 v0, 0x5b

    .line 19
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    .line 20
    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterRectF:Landroid/graphics/RectF;

    .line 21
    invoke-virtual {p1, v6, v6, v6, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mShadowPaint:Landroid/graphics/Paint;

    const-string v0, "#55000000"

    .line 22
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mShadowPaint:Landroid/graphics/Paint;

    .line 23
    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    invoke-static {}, Lcom/facebook/rebound/i;->g()Lcom/facebook/rebound/i;

    move-result-object p1

    const-string v0, "create(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->springSystem:Lcom/facebook/rebound/i;

    .line 25
    invoke-virtual {p1}, Lcom/facebook/rebound/b;->c()Lcom/facebook/rebound/e;

    move-result-object p1

    const-string v0, "createSpring(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->spring:Lcom/facebook/rebound/e;

    .line 26
    new-instance v0, Lcom/facebook/rebound/f;

    const-wide v1, 0x4051800000000000L    # 70.0

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rebound/f;-><init>(DD)V

    invoke-virtual {p1, v0}, Lcom/facebook/rebound/e;->r(Lcom/facebook/rebound/f;)Lcom/facebook/rebound/e;

    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->spring:Lcom/facebook/rebound/e;

    .line 27
    new-instance v0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$1;

    invoke-direct {v0, p0}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$1;-><init>(Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;)V

    invoke-virtual {p1, v0}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/g;)Lcom/facebook/rebound/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerPaint:Landroid/graphics/Paint;

    .line 30
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    .line 31
    sget-object p1, Lcom/narvii/editor/cropping/dynamic/Utils;->Companion:Lcom/narvii/editor/cropping/dynamic/Utils$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "getContext(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p1, p2, v1}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result p2

    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->innerRadius:F

    .line 32
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    .line 33
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterRectF:Landroid/graphics/RectF;

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {p1, p2, v2}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result p2

    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->outerRadius:F

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v1}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result p2

    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->diff:F

    .line 36
    new-instance p2, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {p2, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->videoRect:Landroid/graphics/Rect;

    .line 37
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mShadowPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerPaint:Landroid/graphics/Paint;

    const-string v2, "#F5A623"

    .line 38
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    .line 39
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerPaint:Landroid/graphics/Paint;

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {p1, v4, v5}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result v4

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerPaint:Landroid/graphics/Paint;

    .line 41
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    const/4 v5, 0x0

    .line 42
    invoke-virtual {p2, v5, v5, v5, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    .line 43
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    .line 44
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2, v1}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    const/16 p2, 0x5b

    .line 46
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    .line 47
    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterRectF:Landroid/graphics/RectF;

    .line 48
    invoke-virtual {p1, v5, v5, v5, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mShadowPaint:Landroid/graphics/Paint;

    const-string p2, "#55000000"

    .line 49
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mShadowPaint:Landroid/graphics/Paint;

    .line 50
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    invoke-static {}, Lcom/facebook/rebound/i;->g()Lcom/facebook/rebound/i;

    move-result-object p1

    const-string p2, "create(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->springSystem:Lcom/facebook/rebound/i;

    .line 52
    invoke-virtual {p1}, Lcom/facebook/rebound/b;->c()Lcom/facebook/rebound/e;

    move-result-object p1

    const-string p2, "createSpring(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->spring:Lcom/facebook/rebound/e;

    .line 53
    new-instance p2, Lcom/facebook/rebound/f;

    const-wide v0, 0x4051800000000000L    # 70.0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/facebook/rebound/f;-><init>(DD)V

    invoke-virtual {p1, p2}, Lcom/facebook/rebound/e;->r(Lcom/facebook/rebound/f;)Lcom/facebook/rebound/e;

    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->spring:Lcom/facebook/rebound/e;

    .line 54
    new-instance p2, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$1;

    invoke-direct {p2, p0}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$1;-><init>(Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;)V

    invoke-virtual {p1, p2}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/g;)Lcom/facebook/rebound/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerPaint:Landroid/graphics/Paint;

    .line 57
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    .line 58
    sget-object p1, Lcom/narvii/editor/cropping/dynamic/Utils;->Companion:Lcom/narvii/editor/cropping/dynamic/Utils$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "getContext(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p1, p2, v0}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result p2

    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->innerRadius:F

    .line 59
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    .line 60
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterRectF:Landroid/graphics/RectF;

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {p1, p2, v1}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result p2

    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->outerRadius:F

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result p2

    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->diff:F

    .line 63
    new-instance p2, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->videoRect:Landroid/graphics/Rect;

    .line 64
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mShadowPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerPaint:Landroid/graphics/Paint;

    const-string v1, "#F5A623"

    .line 65
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    .line 66
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerPaint:Landroid/graphics/Paint;

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {p1, v3, v4}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result v3

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerPaint:Landroid/graphics/Paint;

    .line 68
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    const/4 v4, 0x0

    .line 69
    invoke-virtual {p2, v4, v4, v4, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    .line 70
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    .line 71
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v0}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    const/16 p2, 0x5b

    .line 73
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    .line 74
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterRectF:Landroid/graphics/RectF;

    .line 75
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mShadowPaint:Landroid/graphics/Paint;

    const-string p2, "#55000000"

    .line 76
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mShadowPaint:Landroid/graphics/Paint;

    .line 77
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    invoke-static {}, Lcom/facebook/rebound/i;->g()Lcom/facebook/rebound/i;

    move-result-object p1

    const-string p2, "create(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->springSystem:Lcom/facebook/rebound/i;

    .line 79
    invoke-virtual {p1}, Lcom/facebook/rebound/b;->c()Lcom/facebook/rebound/e;

    move-result-object p1

    const-string p2, "createSpring(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->spring:Lcom/facebook/rebound/e;

    .line 80
    new-instance p2, Lcom/facebook/rebound/f;

    const-wide v0, 0x4051800000000000L    # 70.0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/facebook/rebound/f;-><init>(DD)V

    invoke-virtual {p1, p2}, Lcom/facebook/rebound/e;->r(Lcom/facebook/rebound/f;)Lcom/facebook/rebound/e;

    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->spring:Lcom/facebook/rebound/e;

    .line 81
    new-instance p2, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$1;

    invoke-direct {p2, p0}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$1;-><init>(Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;)V

    invoke-virtual {p1, p2}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/g;)Lcom/facebook/rebound/e;

    return-void
.end method

.method public static final synthetic access$setBorderRect(Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;F)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->setBorderRect(F)V

    .line 4
    return-void
.end method

.method private final setBorderRect(F)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    .line 3
    .line 4
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 5
    .line 6
    iget v2, v0, Landroid/graphics/RectF;->right:F

    .line 7
    .line 8
    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->startLeft:F

    .line 9
    .line 10
    sub-float v4, p1, v3

    .line 11
    float-to-int v4, v4

    .line 12
    int-to-float v4, v4

    .line 13
    add-float/2addr v1, v4

    .line 14
    .line 15
    sub-float v3, p1, v3

    .line 16
    float-to-int v3, v3

    .line 17
    int-to-float v3, v3

    .line 18
    add-float/2addr v2, v3

    .line 19
    .line 20
    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->leftBorder:F

    .line 21
    .line 22
    cmpg-float v4, v1, v3

    .line 23
    .line 24
    if-gez v4, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 28
    move-result v0

    .line 29
    .line 30
    add-float v2, v3, v0

    .line 31
    move v1, v3

    .line 32
    .line 33
    :cond_0
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->rightBorder:F

    .line 34
    .line 35
    cmpl-float v3, v2, v0

    .line 36
    .line 37
    if-lez v3, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 43
    move-result v1

    .line 44
    .line 45
    sub-float v1, v0, v1

    .line 46
    move v2, v0

    .line 47
    .line 48
    :cond_1
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    .line 49
    .line 50
    iget v3, v0, Landroid/graphics/RectF;->top:F

    .line 51
    .line 52
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 56
    .line 57
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterRectF:Landroid/graphics/RectF;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    .line 60
    .line 61
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 62
    .line 63
    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->diff:F

    .line 64
    sub-float/2addr v2, v3

    .line 65
    .line 66
    iget v4, v1, Landroid/graphics/RectF;->top:F

    .line 67
    sub-float/2addr v4, v3

    .line 68
    .line 69
    iget v5, v1, Landroid/graphics/RectF;->right:F

    .line 70
    add-float/2addr v5, v3

    .line 71
    .line 72
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 73
    add-float/2addr v1, v3

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 80
    .line 81
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->videoRect:Landroid/graphics/Rect;

    .line 82
    .line 83
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    .line 84
    .line 85
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 86
    .line 87
    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->leftBorder:F

    .line 88
    sub-float/2addr v2, v3

    .line 89
    float-to-int v2, v2

    .line 90
    .line 91
    iget v1, v1, Landroid/graphics/RectF;->right:F

    .line 92
    sub-float/2addr v1, v3

    .line 93
    float-to-int v1, v1

    .line 94
    .line 95
    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mVideoViewHeight:I

    .line 96
    const/4 v4, 0x0

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->setVideoEditorRect()V

    .line 103
    .line 104
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->startLeft:F

    .line 105
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    .line 8
    .line 9
    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->innerRadius:F

    .line 10
    .line 11
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerPaint:Landroid/graphics/Paint;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 15
    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->showOuterRect:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterRectF:Landroid/graphics/RectF;

    .line 23
    .line 24
    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->outerRadius:F

    .line 25
    .line 26
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 30
    .line 31
    :cond_1
    if-eqz p1, :cond_2

    .line 32
    .line 33
    iget v4, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->leftBorder:F

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    .line 36
    .line 37
    iget v5, v0, Landroid/graphics/RectF;->top:F

    .line 38
    .line 39
    iget v6, v0, Landroid/graphics/RectF;->left:F

    .line 40
    .line 41
    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    .line 42
    .line 43
    iget-object v8, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mShadowPaint:Landroid/graphics/Paint;

    .line 44
    move-object v3, p1

    .line 45
    .line 46
    .line 47
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 48
    .line 49
    :cond_2
    if-eqz p1, :cond_3

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    .line 52
    .line 53
    iget v2, v0, Landroid/graphics/RectF;->right:F

    .line 54
    .line 55
    iget v3, v0, Landroid/graphics/RectF;->top:F

    .line 56
    .line 57
    iget v4, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->rightBorder:F

    .line 58
    .line 59
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    .line 60
    .line 61
    iget-object v6, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mShadowPaint:Landroid/graphics/Paint;

    .line 62
    move-object v1, p1

    .line 63
    .line 64
    .line 65
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 66
    :cond_3
    return-void
.end method

.method public final getEditorViewMoved()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->editorViewMoved:Z

    return v0
.end method

.method public final getEditorViewTouchListener()Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$IEditorViewTouchListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->editorViewTouchListener:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$IEditorViewTouchListener;

    return-object v0
.end method

.method public final getInnerRectF()Landroid/graphics/RectF;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final getShowOuterRect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->showOuterRect:Z

    return v0
.end method

.method public final getSimpleGlView()Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->simpleGlView:Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;

    return-object v0
.end method

.method public final getVideoRect()Landroid/graphics/Rect;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->videoRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final moveInnerRectToPos(F)V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->showOuterRect:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->videoRect:Landroid/graphics/Rect;

    .line 8
    .line 9
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 10
    int-to-float v0, v0

    .line 11
    sub-float/2addr v0, p1

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 15
    move-result v0

    .line 16
    .line 17
    .line 18
    const v1, 0x3c23d70a    # 0.01f

    .line 19
    .line 20
    cmpg-float v0, v0, v1

    .line 21
    .line 22
    if-gez v0, :cond_1

    .line 23
    return-void

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->videoRect:Landroid/graphics/Rect;

    .line 26
    float-to-int p1, p1

    .line 27
    .line 28
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 32
    move-result v2

    .line 33
    add-int/2addr v2, p1

    .line 34
    .line 35
    iget-object v3, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->videoRect:Landroid/graphics/Rect;

    .line 36
    .line 37
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->videoRect:Landroid/graphics/Rect;

    .line 45
    .line 46
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 47
    int-to-float v1, v1

    .line 48
    .line 49
    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->leftBorder:F

    .line 50
    add-float/2addr v1, v2

    .line 51
    .line 52
    iget v3, p1, Landroid/graphics/RectF;->top:F

    .line 53
    .line 54
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 55
    int-to-float v0, v0

    .line 56
    add-float/2addr v0, v2

    .line 57
    .line 58
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->setVideoEditorRect()V

    .line 68
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    goto :goto_1

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result v3

    .line 22
    .line 23
    if-nez v3, :cond_4

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 29
    move-result v3

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 33
    move-result v4

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    .line 37
    move-result v0

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    return v1

    .line 41
    .line 42
    :cond_2
    iput-boolean v2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->showOuterRect:Z

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->editorViewTouchListener:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$IEditorViewTouchListener;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    .line 49
    invoke-interface {v0}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$IEditorViewTouchListener;->onTouchDown()V

    .line 50
    .line 51
    .line 52
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 53
    move-result v0

    .line 54
    .line 55
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->startLeft:F

    .line 56
    .line 57
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->spring:Lcom/facebook/rebound/e;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 61
    move-result p1

    .line 62
    float-to-double v3, p1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v3, v4}, Lcom/facebook/rebound/e;->m(D)Lcom/facebook/rebound/e;

    .line 66
    goto :goto_3

    .line 67
    .line 68
    :cond_4
    :goto_1
    if-nez v0, :cond_5

    .line 69
    goto :goto_2

    .line 70
    .line 71
    .line 72
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 73
    move-result v3

    .line 74
    const/4 v4, 0x2

    .line 75
    .line 76
    if-ne v3, v4, :cond_6

    .line 77
    .line 78
    iput-boolean v2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->editorViewMoved:Z

    .line 79
    .line 80
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->spring:Lcom/facebook/rebound/e;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 84
    move-result p1

    .line 85
    float-to-double v3, p1

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v3, v4}, Lcom/facebook/rebound/e;->o(D)Lcom/facebook/rebound/e;

    .line 89
    goto :goto_3

    .line 90
    .line 91
    :cond_6
    :goto_2
    if-nez v0, :cond_7

    .line 92
    goto :goto_3

    .line 93
    .line 94
    .line 95
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 96
    move-result p1

    .line 97
    .line 98
    if-ne p1, v2, :cond_8

    .line 99
    .line 100
    iput-boolean v1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->showOuterRect:Z

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 104
    .line 105
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->editorViewTouchListener:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$IEditorViewTouchListener;

    .line 106
    .line 107
    if-eqz p1, :cond_8

    .line 108
    .line 109
    .line 110
    invoke-interface {p1}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$IEditorViewTouchListener;->onTouchUp()V

    .line 111
    :cond_8
    :goto_3
    return v2
.end method

.method public final setEditorViewMoved(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->editorViewMoved:Z

    return-void
.end method

.method public final setEditorViewTouchListener(Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$IEditorViewTouchListener;)V
    .locals 0
    .param p1    # Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$IEditorViewTouchListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->editorViewTouchListener:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$IEditorViewTouchListener;

    return-void
.end method

.method public final setShowOuterRect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->showOuterRect:Z

    return-void
.end method

.method public final setSimpleGlView(Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;)V
    .locals 0
    .param p1    # Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->simpleGlView:Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;

    return-void
.end method

.method public final setSize(FFFF)V
    .locals 5

    .line 1
    float-to-int v0, p2

    .line 2
    .line 3
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mVideoViewWidth:I

    .line 4
    float-to-int v0, p1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mVideoViewHeight:I

    .line 7
    .line 8
    sub-float v0, p4, p2

    .line 9
    const/4 v1, 0x2

    .line 10
    int-to-float v1, v1

    .line 11
    div-float/2addr v0, v1

    .line 12
    .line 13
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->leftBorder:F

    .line 14
    add-float/2addr p2, p4

    .line 15
    div-float/2addr p2, v1

    .line 16
    .line 17
    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->rightBorder:F

    .line 18
    .line 19
    const/high16 p2, 0x41800000    # 16.0f

    .line 20
    div-float/2addr p1, p2

    .line 21
    .line 22
    const/high16 p2, 0x41100000    # 9.0f

    .line 23
    mul-float/2addr p1, p2

    .line 24
    sub-float/2addr p4, p1

    .line 25
    div-float/2addr p4, v1

    .line 26
    .line 27
    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    .line 28
    .line 29
    sget-object v0, Lcom/narvii/editor/cropping/dynamic/Utils;->Companion:Lcom/narvii/editor/cropping/dynamic/Utils$Companion;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    const-string v2, "getContext(...)"

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    const/high16 v3, 0x40e00000    # 7.0f

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1, v3}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    .line 44
    move-result v1

    .line 45
    add-float/2addr p1, p4

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    move-result-object v4

    .line 50
    .line 51
    .line 52
    invoke-static {v4, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v4, v3}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    .line 56
    move-result v0

    .line 57
    sub-float/2addr p3, v0

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p4, v1, p1, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 61
    .line 62
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterRectF:Landroid/graphics/RectF;

    .line 63
    .line 64
    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    .line 65
    .line 66
    iget p3, p2, Landroid/graphics/RectF;->left:F

    .line 67
    .line 68
    iget p4, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->diff:F

    .line 69
    sub-float/2addr p3, p4

    .line 70
    .line 71
    iget v0, p2, Landroid/graphics/RectF;->top:F

    .line 72
    sub-float/2addr v0, p4

    .line 73
    .line 74
    iget v1, p2, Landroid/graphics/RectF;->right:F

    .line 75
    add-float/2addr v1, p4

    .line 76
    .line 77
    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    .line 78
    add-float/2addr p2, p4

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p3, v0, v1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 85
    .line 86
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->videoRect:Landroid/graphics/Rect;

    .line 87
    .line 88
    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    .line 89
    .line 90
    iget p3, p2, Landroid/graphics/RectF;->left:F

    .line 91
    .line 92
    iget p4, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->leftBorder:F

    .line 93
    sub-float/2addr p3, p4

    .line 94
    float-to-int p3, p3

    .line 95
    .line 96
    iget p2, p2, Landroid/graphics/RectF;->right:F

    .line 97
    sub-float/2addr p2, p4

    .line 98
    float-to-int p2, p2

    .line 99
    .line 100
    iget p4, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mVideoViewHeight:I

    .line 101
    const/4 v0, 0x0

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p3, v0, p2, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->setVideoEditorRect()V

    .line 108
    return-void
.end method

.method public final setTensionAndFriction(II)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->spring:Lcom/facebook/rebound/e;

    .line 3
    .line 4
    new-instance v1, Lcom/facebook/rebound/f;

    .line 5
    int-to-double v2, p1

    .line 6
    int-to-double p1, p2

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v2, v3, p1, p2}, Lcom/facebook/rebound/f;-><init>(DD)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/facebook/rebound/e;->r(Lcom/facebook/rebound/f;)Lcom/facebook/rebound/e;

    .line 13
    return-void
.end method

.method public final setVideoEditorRect()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->videoRect:Landroid/graphics/Rect;

    .line 3
    .line 4
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 5
    int-to-float v0, v0

    .line 6
    .line 7
    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    mul-float/2addr v0, v1

    .line 9
    .line 10
    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->rightBorder:F

    .line 11
    .line 12
    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->leftBorder:F

    .line 13
    sub-float/2addr v1, v2

    .line 14
    div-float/2addr v0, v1

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->simpleGlView:Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    const/4 v2, 0x2

    .line 20
    .line 21
    new-array v2, v2, [F

    .line 22
    const/4 v3, 0x0

    .line 23
    .line 24
    aput v0, v2, v3

    .line 25
    const/4 v0, 0x1

    .line 26
    const/4 v3, 0x0

    .line 27
    .line 28
    aput v3, v2, v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->setTransform([F)V

    .line 32
    :cond_0
    return-void
.end method
