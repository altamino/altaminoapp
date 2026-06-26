.class public final Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;
.super Landroid/view/View;
.source "SimpleEditorView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$IEditorViewTouchListener;,
        Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$Companion;

.field private static final INNER_BORDER:F = 7.0f

.field private static final INNER_COLOR:Ljava/lang/String; = "#F5A623"

.field private static final INNER_PAINT_WIDTH:F = 2.0f

.field private static final INNER_RADIUS:F = 4.0f

.field private static final OUTER_ALPHA:I = 0x24

.field private static final OUTER_PAINT_WIDTH:F = 4.0f

.field private static final OUTER_RADIUS:F = 8.0f


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final diff:F

.field private editorViewMoved:Z

.field private editorViewTouchListener:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$IEditorViewTouchListener;

.field private final innerRadius:F

.field private leftBorder:F

.field private mInnerPaint:Landroid/graphics/Paint;

.field private mInnerRect:Landroid/graphics/RectF;

.field private mOuterPaint:Landroid/graphics/Paint;

.field private mOuterRectF:Landroid/graphics/RectF;

.field private mShadowPaint:Landroid/graphics/Paint;

.field private mVideoViewHeight:I

.field private mVideoViewWidth:I

.field private final outerRadius:F

.field private rightBorder:F

.field private showOuterRect:Z

.field private simpleGlView:Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;

.field private spring:Lcom/facebook/rebound/Spring;

.field private springSystem:Lcom/facebook/rebound/SpringSystem;

.field private startLeft:F

.field private videoRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->Companion:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 17
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerPaint:Landroid/graphics/Paint;

    .line 32
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    .line 34
    sget-object p1, Lcom/narvii/editor/cropping/dynamic/Utils;->Companion:Lcom/narvii/editor/cropping/dynamic/Utils$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {p1, v0, v2}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->innerRadius:F

    .line 38
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    .line 39
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterRectF:Landroid/graphics/RectF;

    .line 40
    sget-object p1, Lcom/narvii/editor/cropping/dynamic/Utils;->Companion:Lcom/narvii/editor/cropping/dynamic/Utils$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v3, 0x41000000    # 8.0f

    invoke-virtual {p1, v0, v3}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->outerRadius:F

    .line 41
    sget-object p1, Lcom/narvii/editor/cropping/dynamic/Utils;->Companion:Lcom/narvii/editor/cropping/dynamic/Utils$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->diff:F

    .line 45
    new-instance p1, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->videoRect:Landroid/graphics/Rect;

    .line 49
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mShadowPaint:Landroid/graphics/Paint;

    .line 55
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerPaint:Landroid/graphics/Paint;

    const-string v0, "#F5A623"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerPaint:Landroid/graphics/Paint;

    sget-object v4, Lcom/narvii/editor/cropping/dynamic/Utils;->Companion:Lcom/narvii/editor/cropping/dynamic/Utils$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v4, v5, v6}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result v4

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 61
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/narvii/editor/cropping/dynamic/Utils;->Companion:Lcom/narvii/editor/cropping/dynamic/Utils$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v2}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    const v0, 0x42b7999a    # 91.8f

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 65
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 68
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mShadowPaint:Landroid/graphics/Paint;

    const-string v0, "#55000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object p1

    const-string v0, "SpringSystem.create()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->springSystem:Lcom/facebook/rebound/SpringSystem;

    .line 72
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->springSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {p1}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object p1

    const-string v0, "springSystem.createSpring()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->spring:Lcom/facebook/rebound/Spring;

    .line 73
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->spring:Lcom/facebook/rebound/Spring;

    new-instance v0, Lcom/facebook/rebound/SpringConfig;

    const-wide v1, 0x4051800000000000L    # 70.0

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rebound/SpringConfig;-><init>(DD)V

    invoke-virtual {p1, v0}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 74
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->spring:Lcom/facebook/rebound/Spring;

    new-instance v0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$1;

    invoke-direct {v0, p0}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$1;-><init>(Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;)V

    invoke-virtual {p1, v0}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerPaint:Landroid/graphics/Paint;

    .line 32
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    .line 34
    sget-object p1, Lcom/narvii/editor/cropping/dynamic/Utils;->Companion:Lcom/narvii/editor/cropping/dynamic/Utils$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p1, p2, v1}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->innerRadius:F

    .line 38
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    .line 39
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterRectF:Landroid/graphics/RectF;

    .line 40
    sget-object p1, Lcom/narvii/editor/cropping/dynamic/Utils;->Companion:Lcom/narvii/editor/cropping/dynamic/Utils$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {p1, p2, v2}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->outerRadius:F

    .line 41
    sget-object p1, Lcom/narvii/editor/cropping/dynamic/Utils;->Companion:Lcom/narvii/editor/cropping/dynamic/Utils$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v1}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->diff:F

    .line 45
    new-instance p1, Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->videoRect:Landroid/graphics/Rect;

    .line 49
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mShadowPaint:Landroid/graphics/Paint;

    .line 55
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerPaint:Landroid/graphics/Paint;

    const-string p2, "#F5A623"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerPaint:Landroid/graphics/Paint;

    sget-object v3, Lcom/narvii/editor/cropping/dynamic/Utils;->Companion:Lcom/narvii/editor/cropping/dynamic/Utils$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v3, v4, v5}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 61
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    sget-object p2, Lcom/narvii/editor/cropping/dynamic/Utils;->Companion:Lcom/narvii/editor/cropping/dynamic/Utils$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v4, v1}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    const p2, 0x42b7999a    # 91.8f

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 65
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 68
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mShadowPaint:Landroid/graphics/Paint;

    const-string p2, "#55000000"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object p1

    const-string p2, "SpringSystem.create()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->springSystem:Lcom/facebook/rebound/SpringSystem;

    .line 72
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->springSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {p1}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object p1

    const-string p2, "springSystem.createSpring()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->spring:Lcom/facebook/rebound/Spring;

    .line 73
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->spring:Lcom/facebook/rebound/Spring;

    new-instance p2, Lcom/facebook/rebound/SpringConfig;

    const-wide v0, 0x4051800000000000L    # 70.0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/facebook/rebound/SpringConfig;-><init>(DD)V

    invoke-virtual {p1, p2}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 74
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->spring:Lcom/facebook/rebound/Spring;

    new-instance p2, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$1;

    invoke-direct {p2, p0}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$1;-><init>(Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;)V

    invoke-virtual {p1, p2}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerPaint:Landroid/graphics/Paint;

    .line 32
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    .line 34
    sget-object p1, Lcom/narvii/editor/cropping/dynamic/Utils;->Companion:Lcom/narvii/editor/cropping/dynamic/Utils$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "context"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p1, p2, v0}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->innerRadius:F

    .line 38
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    .line 39
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterRectF:Landroid/graphics/RectF;

    .line 40
    sget-object p1, Lcom/narvii/editor/cropping/dynamic/Utils;->Companion:Lcom/narvii/editor/cropping/dynamic/Utils$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {p1, p2, v1}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->outerRadius:F

    .line 41
    sget-object p1, Lcom/narvii/editor/cropping/dynamic/Utils;->Companion:Lcom/narvii/editor/cropping/dynamic/Utils$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->diff:F

    .line 45
    new-instance p1, Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->videoRect:Landroid/graphics/Rect;

    .line 49
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mShadowPaint:Landroid/graphics/Paint;

    .line 55
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerPaint:Landroid/graphics/Paint;

    const-string p2, "#F5A623"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/narvii/editor/cropping/dynamic/Utils;->Companion:Lcom/narvii/editor/cropping/dynamic/Utils$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v2, v3, v4}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 61
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    sget-object p2, Lcom/narvii/editor/cropping/dynamic/Utils;->Companion:Lcom/narvii/editor/cropping/dynamic/Utils$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v3, v0}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    const p2, 0x42b7999a    # 91.8f

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 65
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 68
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mShadowPaint:Landroid/graphics/Paint;

    const-string p2, "#55000000"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object p1

    const-string p2, "SpringSystem.create()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->springSystem:Lcom/facebook/rebound/SpringSystem;

    .line 72
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->springSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {p1}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object p1

    const-string p2, "springSystem.createSpring()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->spring:Lcom/facebook/rebound/Spring;

    .line 73
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->spring:Lcom/facebook/rebound/Spring;

    new-instance p2, Lcom/facebook/rebound/SpringConfig;

    const-wide v0, 0x4051800000000000L    # 70.0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/facebook/rebound/SpringConfig;-><init>(DD)V

    invoke-virtual {p1, p2}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 74
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->spring:Lcom/facebook/rebound/Spring;

    new-instance p2, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$1;

    invoke-direct {p2, p0}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$1;-><init>(Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;)V

    invoke-virtual {p1, p2}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    return-void
.end method

.method public static final synthetic access$setBorderRect(Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;F)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->setBorderRect(F)V

    return-void
.end method

.method private final setBorderRect(F)V
    .locals 6

    .line 191
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 192
    iget v2, v0, Landroid/graphics/RectF;->right:F

    .line 193
    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->startLeft:F

    sub-float v4, p1, v3

    float-to-int v4, v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    sub-float v3, p1, v3

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 195
    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->leftBorder:F

    cmpg-float v4, v1, v3

    if-gez v4, :cond_0

    .line 197
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    add-float v2, v3, v0

    move v1, v3

    .line 199
    :cond_0
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->rightBorder:F

    cmpl-float v3, v2, v0

    if-lez v3, :cond_1

    .line 201
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float v1, v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 203
    :goto_0
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v1, v3, v0, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 204
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterRectF:Landroid/graphics/RectF;

    .line 205
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->diff:F

    sub-float/2addr v2, v3

    .line 206
    iget v4, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v3

    .line 207
    iget v5, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v3

    .line 208
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v3

    .line 204
    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 210
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 211
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->videoRect:Landroid/graphics/Rect;

    .line 212
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->leftBorder:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v4, 0x0

    .line 214
    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    .line 215
    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mVideoViewHeight:I

    .line 211
    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 217
    invoke-virtual {p0}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->setVideoEditorRect()V

    .line 218
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->startLeft:F

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 149
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    if-eqz p1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    .line 152
    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->innerRadius:F

    .line 154
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerPaint:Landroid/graphics/Paint;

    .line 150
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 156
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->showOuterRect:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 157
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->outerRadius:F

    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 160
    iget v4, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->leftBorder:F

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget v6, v0, Landroid/graphics/RectF;->left:F

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mShadowPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 161
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->rightBorder:F

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mShadowPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method public final getEditorViewMoved()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->editorViewMoved:Z

    return v0
.end method

.method public final getEditorViewTouchListener()Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$IEditorViewTouchListener;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->editorViewTouchListener:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$IEditorViewTouchListener;

    return-object v0
.end method

.method public final getInnerRectF()Landroid/graphics/RectF;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final getShowOuterRect()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->showOuterRect:Z

    return v0
.end method

.method public final getSimpleGlView()Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->simpleGlView:Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;

    return-object v0
.end method

.method public final getVideoRect()Landroid/graphics/Rect;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->videoRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final moveInnerRectToPos(F)V
    .locals 4

    .line 127
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->showOuterRect:Z

    if-eqz v0, :cond_0

    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->videoRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->videoRect:Landroid/graphics/Rect;

    float-to-int p1, p1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v2, p1

    iget-object v3, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->videoRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 134
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    .line 135
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->videoRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->leftBorder:F

    add-float/2addr v1, v2

    iget v3, p1, Landroid/graphics/RectF;->top:F

    .line 136
    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 134
    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 138
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 139
    invoke-virtual {p0}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->setVideoEditorRect()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    goto :goto_1

    .line 167
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_4

    .line 169
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 172
    :cond_2
    iput-boolean v2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->showOuterRect:Z

    .line 173
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->editorViewTouchListener:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$IEditorViewTouchListener;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$IEditorViewTouchListener;->onTouchDown()V

    .line 174
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->startLeft:F

    .line 175
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->spring:Lcom/facebook/rebound/Spring;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-double v3, p1

    invoke-virtual {v0, v3, v4}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    goto :goto_3

    :cond_4
    :goto_1
    const/4 v3, 0x2

    if-nez v0, :cond_5

    goto :goto_2

    .line 177
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_6

    .line 178
    iput-boolean v2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->editorViewMoved:Z

    .line 179
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->spring:Lcom/facebook/rebound/Spring;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-double v3, p1

    invoke-virtual {v0, v3, v4}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    goto :goto_3

    :cond_6
    :goto_2
    if-nez v0, :cond_7

    goto :goto_3

    .line 181
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_8

    .line 182
    iput-boolean v1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->showOuterRect:Z

    .line 183
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 184
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->editorViewTouchListener:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$IEditorViewTouchListener;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$IEditorViewTouchListener;->onTouchUp()V

    :cond_8
    :goto_3
    return v2
.end method

.method public final setEditorViewMoved(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->editorViewMoved:Z

    return-void
.end method

.method public final setEditorViewTouchListener(Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$IEditorViewTouchListener;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->editorViewTouchListener:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$IEditorViewTouchListener;

    return-void
.end method

.method public final setShowOuterRect(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->showOuterRect:Z

    return-void
.end method

.method public final setSimpleGlView(Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->simpleGlView:Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;

    return-void
.end method

.method public final setSize(FFFF)V
    .locals 5

    float-to-int v0, p2

    .line 89
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mVideoViewWidth:I

    float-to-int v0, p1

    .line 90
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mVideoViewHeight:I

    sub-float v0, p4, p2

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 91
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->leftBorder:F

    add-float/2addr p2, p4

    div-float/2addr p2, v1

    .line 92
    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->rightBorder:F

    const/high16 p2, 0x41800000    # 16.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x41100000    # 9.0f

    mul-float p1, p1, p2

    sub-float/2addr p4, p1

    div-float/2addr p4, v1

    .line 96
    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    .line 98
    sget-object v0, Lcom/narvii/editor/cropping/dynamic/Utils;->Companion:Lcom/narvii/editor/cropping/dynamic/Utils$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-virtual {v0, v1, v3}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result v0

    add-float/2addr p1, p4

    .line 100
    sget-object v1, Lcom/narvii/editor/cropping/dynamic/Utils;->Companion:Lcom/narvii/editor/cropping/dynamic/Utils$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v3}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result v1

    sub-float/2addr p3, v1

    .line 96
    invoke-virtual {p2, p4, v0, p1, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 102
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mOuterRectF:Landroid/graphics/RectF;

    .line 103
    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/RectF;->left:F

    iget p4, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->diff:F

    sub-float/2addr p3, p4

    .line 104
    iget v0, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p4

    .line 105
    iget v1, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p4

    .line 106
    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p2, p4

    .line 102
    invoke-virtual {p1, p3, v0, v1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 109
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->videoRect:Landroid/graphics/Rect;

    .line 110
    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mInnerRect:Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/RectF;->left:F

    iget p4, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->leftBorder:F

    sub-float/2addr p3, p4

    float-to-int p3, p3

    .line 112
    iget p2, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr p2, p4

    float-to-int p2, p2

    .line 113
    iget p4, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->mVideoViewHeight:I

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p1, p3, v0, p2, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 115
    invoke-virtual {p0}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->setVideoEditorRect()V

    return-void
.end method

.method public final setTensionAndFriction(II)V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->spring:Lcom/facebook/rebound/Spring;

    new-instance v1, Lcom/facebook/rebound/SpringConfig;

    int-to-double v2, p1

    int-to-double p1, p2

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/facebook/rebound/SpringConfig;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    return-void
.end method

.method public final setVideoEditorRect()V
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->videoRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->rightBorder:F

    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->leftBorder:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 145
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->simpleGlView:Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x0

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->setTransform([F)V

    :cond_0
    return-void
.end method
