.class public final Lcom/google/android/material/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# static fields
.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_DRAW_PAINT:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final ELLIPSIS_NORMAL:Ljava/lang/String; = "\u2026"

.field private static final FADE_MODE_THRESHOLD_FRACTION_RELATIVE:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "CollapsingTextHelper"

.field private static final USE_SCALING_TEXTURE:Z


# instance fields
.field private boundsChanged:Z

.field private final collapsedBounds:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private collapsedDrawX:F

.field private collapsedDrawY:F

.field private collapsedFontCallback:Lcom/google/android/material/resources/a;

.field private collapsedLetterSpacing:F

.field private collapsedShadowColor:Landroid/content/res/ColorStateList;

.field private collapsedShadowDx:F

.field private collapsedShadowDy:F

.field private collapsedShadowRadius:F

.field private collapsedTextBlend:F

.field private collapsedTextColor:Landroid/content/res/ColorStateList;

.field private collapsedTextGravity:I

.field private collapsedTextSize:F

.field private collapsedTextWidth:F

.field private collapsedTypeface:Landroid/graphics/Typeface;

.field private collapsedTypefaceBold:Landroid/graphics/Typeface;

.field private collapsedTypefaceDefault:Landroid/graphics/Typeface;

.field private final currentBounds:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private currentDrawX:F

.field private currentDrawY:F

.field private currentLetterSpacing:F

.field private currentOffsetY:I

.field private currentShadowColor:I

.field private currentShadowDx:F

.field private currentShadowDy:F

.field private currentShadowRadius:F

.field private currentTextSize:F

.field private currentTypeface:Landroid/graphics/Typeface;

.field private drawTitle:Z

.field private final expandedBounds:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private expandedDrawX:F

.field private expandedDrawY:F

.field private expandedFontCallback:Lcom/google/android/material/resources/a;

.field private expandedFraction:F

.field private expandedLetterSpacing:F

.field private expandedLineCount:I

.field private expandedShadowColor:Landroid/content/res/ColorStateList;

.field private expandedShadowDx:F

.field private expandedShadowDy:F

.field private expandedShadowRadius:F

.field private expandedTextBlend:F

.field private expandedTextColor:Landroid/content/res/ColorStateList;

.field private expandedTextGravity:I

.field private expandedTextSize:F

.field private expandedTitleTexture:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private expandedTypeface:Landroid/graphics/Typeface;

.field private expandedTypefaceBold:Landroid/graphics/Typeface;

.field private expandedTypefaceDefault:Landroid/graphics/Typeface;

.field private fadeModeEnabled:Z

.field private fadeModeStartFraction:F

.field private fadeModeThresholdFraction:F

.field private hyphenationFrequency:I

.field private isRtl:Z

.field private isRtlTextDirectionHeuristicsEnabled:Z

.field private lineSpacingAdd:F

.field private lineSpacingMultiplier:F

.field private maxLines:I

.field private positionInterpolator:Landroid/animation/TimeInterpolator;

.field private scale:F

.field private state:[I

.field private text:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private textLayout:Landroid/text/StaticLayout;

.field private final textPaint:Landroid/text/TextPaint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private textSizeInterpolator:Landroid/animation/TimeInterpolator;

.field private textToDraw:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private textToDrawCollapsed:Ljava/lang/CharSequence;

.field private texturePaint:Landroid/graphics/Paint;

.field private final tmpPaint:Landroid/text/TextPaint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private useTexture:Z

.field private final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/material/internal/b;->USE_SCALING_TEXTURE:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/material/internal/b;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const/16 v0, 0x10

    .line 6
    .line 7
    iput v0, p0, Lcom/google/android/material/internal/b;->expandedTextGravity:I

    .line 8
    .line 9
    iput v0, p0, Lcom/google/android/material/internal/b;->collapsedTextGravity:I

    .line 10
    .line 11
    const/high16 v0, 0x41700000    # 15.0f

    .line 12
    .line 13
    iput v0, p0, Lcom/google/android/material/internal/b;->expandedTextSize:F

    .line 14
    .line 15
    iput v0, p0, Lcom/google/android/material/internal/b;->collapsedTextSize:F

    .line 16
    const/4 v0, 0x1

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/google/android/material/internal/b;->isRtlTextDirectionHeuristicsEnabled:Z

    .line 19
    .line 20
    iput v0, p0, Lcom/google/android/material/internal/b;->maxLines:I

    .line 21
    const/4 v0, 0x0

    .line 22
    .line 23
    iput v0, p0, Lcom/google/android/material/internal/b;->lineSpacingAdd:F

    .line 24
    .line 25
    const/high16 v0, 0x3f800000    # 1.0f

    .line 26
    .line 27
    iput v0, p0, Lcom/google/android/material/internal/b;->lineSpacingMultiplier:F

    .line 28
    .line 29
    sget v0, Lcom/google/android/material/internal/o;->DEFAULT_HYPHENATION_FREQUENCY:I

    .line 30
    .line 31
    iput v0, p0, Lcom/google/android/material/internal/b;->hyphenationFrequency:I

    .line 32
    .line 33
    iput-object p1, p0, Lcom/google/android/material/internal/b;->view:Landroid/view/View;

    .line 34
    .line 35
    new-instance v0, Landroid/text/TextPaint;

    .line 36
    .line 37
    const/16 v1, 0x81

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    .line 41
    .line 42
    iput-object v0, p0, Lcom/google/android/material/internal/b;->textPaint:Landroid/text/TextPaint;

    .line 43
    .line 44
    new-instance v1, Landroid/text/TextPaint;

    .line 45
    .line 46
    .line 47
    invoke-direct {v1, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 48
    .line 49
    iput-object v1, p0, Lcom/google/android/material/internal/b;->tmpPaint:Landroid/text/TextPaint;

    .line 50
    .line 51
    new-instance v0, Landroid/graphics/Rect;

    .line 52
    .line 53
    .line 54
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 55
    .line 56
    iput-object v0, p0, Lcom/google/android/material/internal/b;->collapsedBounds:Landroid/graphics/Rect;

    .line 57
    .line 58
    new-instance v0, Landroid/graphics/Rect;

    .line 59
    .line 60
    .line 61
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 62
    .line 63
    iput-object v0, p0, Lcom/google/android/material/internal/b;->expandedBounds:Landroid/graphics/Rect;

    .line 64
    .line 65
    new-instance v0, Landroid/graphics/RectF;

    .line 66
    .line 67
    .line 68
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 69
    .line 70
    iput-object v0, p0, Lcom/google/android/material/internal/b;->currentBounds:Landroid/graphics/RectF;

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Lcom/google/android/material/internal/b;->e()F

    .line 74
    move-result v0

    .line 75
    .line 76
    iput v0, p0, Lcom/google/android/material/internal/b;->fadeModeThresholdFraction:F

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/b;->V(Landroid/content/res/Configuration;)V

    .line 92
    return-void
.end method

.method private I0()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/b;->maxLines:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/internal/b;->isRtl:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/internal/b;->fadeModeEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/internal/b;->useTexture:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private K()Landroid/text/Layout$Alignment;
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/material/internal/b;->expandedTextGravity:I

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/google/android/material/internal/b;->isRtl:Z

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/core/view/GravityCompat;->b(II)I

    .line 8
    move-result v0

    .line 9
    .line 10
    and-int/lit8 v0, v0, 0x7

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    if-eq v0, v1, :cond_3

    .line 14
    const/4 v1, 0x5

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/google/android/material/internal/b;->isRtl:Z

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 26
    :goto_0
    return-object v0

    .line 27
    .line 28
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/internal/b;->isRtl:Z

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 33
    goto :goto_1

    .line 34
    .line 35
    :cond_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 36
    :goto_1
    return-object v0

    .line 37
    .line 38
    :cond_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 39
    return-object v0
.end method

.method private N(Landroid/text/TextPaint;)V
    .locals 1
    .param p1    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/material/internal/b;->collapsedTextSize:F

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/internal/b;->collapsedTypeface:Landroid/graphics/Typeface;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 11
    .line 12
    iget v0, p0, Lcom/google/android/material/internal/b;->collapsedLetterSpacing:F

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 16
    return-void
.end method

.method private O(Landroid/text/TextPaint;)V
    .locals 1
    .param p1    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/material/internal/b;->expandedTextSize:F

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/internal/b;->expandedTypeface:Landroid/graphics/Typeface;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 11
    .line 12
    iget v0, p0, Lcom/google/android/material/internal/b;->expandedLetterSpacing:F

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 16
    return-void
.end method

.method private P(F)V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/internal/b;->fadeModeEnabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/material/internal/b;->currentBounds:Landroid/graphics/RectF;

    .line 7
    .line 8
    iget v1, p0, Lcom/google/android/material/internal/b;->fadeModeThresholdFraction:F

    .line 9
    .line 10
    cmpg-float p1, p1, v1

    .line 11
    .line 12
    if-gez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/google/android/material/internal/b;->expandedBounds:Landroid/graphics/Rect;

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/internal/b;->collapsedBounds:Landroid/graphics/Rect;

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/internal/b;->currentBounds:Landroid/graphics/RectF;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/google/android/material/internal/b;->expandedBounds:Landroid/graphics/Rect;

    .line 26
    .line 27
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 28
    int-to-float v1, v1

    .line 29
    .line 30
    iget-object v2, p0, Lcom/google/android/material/internal/b;->collapsedBounds:Landroid/graphics/Rect;

    .line 31
    .line 32
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 33
    int-to-float v2, v2

    .line 34
    .line 35
    iget-object v3, p0, Lcom/google/android/material/internal/b;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/b;->U(FFFLandroid/animation/TimeInterpolator;)F

    .line 39
    move-result v1

    .line 40
    .line 41
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/android/material/internal/b;->currentBounds:Landroid/graphics/RectF;

    .line 44
    .line 45
    iget v1, p0, Lcom/google/android/material/internal/b;->expandedDrawY:F

    .line 46
    .line 47
    iget v2, p0, Lcom/google/android/material/internal/b;->collapsedDrawY:F

    .line 48
    .line 49
    iget-object v3, p0, Lcom/google/android/material/internal/b;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 50
    .line 51
    .line 52
    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/b;->U(FFFLandroid/animation/TimeInterpolator;)F

    .line 53
    move-result v1

    .line 54
    .line 55
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 56
    .line 57
    iget-object v0, p0, Lcom/google/android/material/internal/b;->currentBounds:Landroid/graphics/RectF;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/google/android/material/internal/b;->expandedBounds:Landroid/graphics/Rect;

    .line 60
    .line 61
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 62
    int-to-float v1, v1

    .line 63
    .line 64
    iget-object v2, p0, Lcom/google/android/material/internal/b;->collapsedBounds:Landroid/graphics/Rect;

    .line 65
    .line 66
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 67
    int-to-float v2, v2

    .line 68
    .line 69
    iget-object v3, p0, Lcom/google/android/material/internal/b;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 70
    .line 71
    .line 72
    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/b;->U(FFFLandroid/animation/TimeInterpolator;)F

    .line 73
    move-result v1

    .line 74
    .line 75
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 76
    .line 77
    iget-object v0, p0, Lcom/google/android/material/internal/b;->currentBounds:Landroid/graphics/RectF;

    .line 78
    .line 79
    iget-object v1, p0, Lcom/google/android/material/internal/b;->expandedBounds:Landroid/graphics/Rect;

    .line 80
    .line 81
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 82
    int-to-float v1, v1

    .line 83
    .line 84
    iget-object v2, p0, Lcom/google/android/material/internal/b;->collapsedBounds:Landroid/graphics/Rect;

    .line 85
    .line 86
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 87
    int-to-float v2, v2

    .line 88
    .line 89
    iget-object v3, p0, Lcom/google/android/material/internal/b;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 90
    .line 91
    .line 92
    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/b;->U(FFFLandroid/animation/TimeInterpolator;)F

    .line 93
    move-result p1

    .line 94
    .line 95
    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 96
    :goto_1
    return-void
.end method

.method private static Q(FF)Z
    .locals 0

    .line 1
    sub-float/2addr p0, p1

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 5
    move-result p0

    .line 6
    .line 7
    .line 8
    const p1, 0x3727c5ac    # 1.0E-5f

    .line 9
    .line 10
    cmpg-float p0, p0, p1

    .line 11
    .line 12
    if-gez p0, :cond_0

    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method private R()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/b;->view:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->D(Landroid/view/View;)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    return v1
.end method

.method private T(Ljava/lang/CharSequence;Z)Z
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    sget-object p2, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Landroidx/core/text/TextDirectionHeuristicCompat;

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    sget-object p2, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroidx/core/text/TextDirectionHeuristicCompat;

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-interface {p2, p1, v1, v0}, Landroidx/core/text/TextDirectionHeuristicCompat;->a(Ljava/lang/CharSequence;II)Z

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method private static U(FFFLandroid/animation/TimeInterpolator;)F
    .locals 0
    .param p3    # Landroid/animation/TimeInterpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-interface {p3, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 6
    move-result p2

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {p0, p1, p2}, Le3/a;->a(FFF)F

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private W(Landroid/text/TextPaint;Ljava/lang/CharSequence;)F
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2, v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method private static a(IIF)I
    .locals 5
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    sub-float/2addr v0, p2

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    .line 7
    move-result v1

    .line 8
    int-to-float v1, v1

    .line 9
    mul-float/2addr v1, v0

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 13
    move-result v2

    .line 14
    int-to-float v2, v2

    .line 15
    mul-float/2addr v2, p2

    .line 16
    add-float/2addr v1, v2

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    .line 20
    move-result v2

    .line 21
    int-to-float v2, v2

    .line 22
    mul-float/2addr v2, v0

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 26
    move-result v3

    .line 27
    int-to-float v3, v3

    .line 28
    mul-float/2addr v3, p2

    .line 29
    add-float/2addr v2, v3

    .line 30
    .line 31
    .line 32
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    .line 33
    move-result v3

    .line 34
    int-to-float v3, v3

    .line 35
    mul-float/2addr v3, v0

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 39
    move-result v4

    .line 40
    int-to-float v4, v4

    .line 41
    mul-float/2addr v4, p2

    .line 42
    add-float/2addr v3, v4

    .line 43
    .line 44
    .line 45
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    .line 46
    move-result p0

    .line 47
    int-to-float p0, p0

    .line 48
    mul-float/2addr p0, v0

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 52
    move-result p1

    .line 53
    int-to-float p1, p1

    .line 54
    mul-float/2addr p1, p2

    .line 55
    add-float/2addr p0, p1

    .line 56
    .line 57
    .line 58
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 59
    move-result p1

    .line 60
    .line 61
    .line 62
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 63
    move-result p2

    .line 64
    .line 65
    .line 66
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 67
    move-result v0

    .line 68
    .line 69
    .line 70
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 71
    move-result p0

    .line 72
    .line 73
    .line 74
    invoke-static {p1, p2, v0, p0}, Landroid/graphics/Color;->argb(IIII)I

    .line 75
    move-result p0

    .line 76
    return p0
.end method

.method private static a0(Landroid/graphics/Rect;IIII)Z
    .locals 1
    .param p0    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    iget p1, p0, Landroid/graphics/Rect;->top:I

    .line 7
    .line 8
    if-ne p1, p2, :cond_0

    .line 9
    .line 10
    iget p1, p0, Landroid/graphics/Rect;->right:I

    .line 11
    .line 12
    if-ne p1, p3, :cond_0

    .line 13
    .line 14
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 15
    .line 16
    if-ne p0, p4, :cond_0

    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method private b(Z)V
    .locals 9

    .line 1
    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/internal/b;->i(FZ)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/internal/b;->textToDraw:Ljava/lang/CharSequence;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/material/internal/b;->textLayout:Landroid/text/StaticLayout;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/android/material/internal/b;->textPaint:Landroid/text/TextPaint;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    .line 19
    move-result v1

    .line 20
    int-to-float v1, v1

    .line 21
    .line 22
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v2, v1, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    iput-object v0, p0, Lcom/google/android/material/internal/b;->textToDrawCollapsed:Ljava/lang/CharSequence;

    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/b;->textToDrawCollapsed:Ljava/lang/CharSequence;

    .line 31
    const/4 v1, 0x0

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v2, p0, Lcom/google/android/material/internal/b;->textPaint:Landroid/text/TextPaint;

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, v2, v0}, Lcom/google/android/material/internal/b;->W(Landroid/text/TextPaint;Ljava/lang/CharSequence;)F

    .line 39
    move-result v0

    .line 40
    .line 41
    iput v0, p0, Lcom/google/android/material/internal/b;->collapsedTextWidth:F

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_1
    iput v1, p0, Lcom/google/android/material/internal/b;->collapsedTextWidth:F

    .line 45
    .line 46
    :goto_0
    iget v0, p0, Lcom/google/android/material/internal/b;->collapsedTextGravity:I

    .line 47
    .line 48
    iget-boolean v2, p0, Lcom/google/android/material/internal/b;->isRtl:Z

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v2}, Landroidx/core/view/GravityCompat;->b(II)I

    .line 52
    move-result v0

    .line 53
    .line 54
    and-int/lit8 v2, v0, 0x70

    .line 55
    .line 56
    const/16 v3, 0x50

    .line 57
    .line 58
    const/16 v4, 0x30

    .line 59
    .line 60
    const/high16 v5, 0x40000000    # 2.0f

    .line 61
    .line 62
    if-eq v2, v4, :cond_3

    .line 63
    .line 64
    if-eq v2, v3, :cond_2

    .line 65
    .line 66
    iget-object v2, p0, Lcom/google/android/material/internal/b;->textPaint:Landroid/text/TextPaint;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    .line 70
    move-result v2

    .line 71
    .line 72
    iget-object v6, p0, Lcom/google/android/material/internal/b;->textPaint:Landroid/text/TextPaint;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    .line 76
    move-result v6

    .line 77
    sub-float/2addr v2, v6

    .line 78
    div-float/2addr v2, v5

    .line 79
    .line 80
    iget-object v6, p0, Lcom/google/android/material/internal/b;->collapsedBounds:Landroid/graphics/Rect;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    .line 84
    move-result v6

    .line 85
    int-to-float v6, v6

    .line 86
    sub-float/2addr v6, v2

    .line 87
    .line 88
    iput v6, p0, Lcom/google/android/material/internal/b;->collapsedDrawY:F

    .line 89
    goto :goto_1

    .line 90
    .line 91
    :cond_2
    iget-object v2, p0, Lcom/google/android/material/internal/b;->collapsedBounds:Landroid/graphics/Rect;

    .line 92
    .line 93
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 94
    int-to-float v2, v2

    .line 95
    .line 96
    iget-object v6, p0, Lcom/google/android/material/internal/b;->textPaint:Landroid/text/TextPaint;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    .line 100
    move-result v6

    .line 101
    add-float/2addr v2, v6

    .line 102
    .line 103
    iput v2, p0, Lcom/google/android/material/internal/b;->collapsedDrawY:F

    .line 104
    goto :goto_1

    .line 105
    .line 106
    :cond_3
    iget-object v2, p0, Lcom/google/android/material/internal/b;->collapsedBounds:Landroid/graphics/Rect;

    .line 107
    .line 108
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 109
    int-to-float v2, v2

    .line 110
    .line 111
    iput v2, p0, Lcom/google/android/material/internal/b;->collapsedDrawY:F

    .line 112
    .line 113
    .line 114
    :goto_1
    const v2, 0x800007

    .line 115
    and-int/2addr v0, v2

    .line 116
    const/4 v6, 0x5

    .line 117
    const/4 v7, 0x1

    .line 118
    .line 119
    if-eq v0, v7, :cond_5

    .line 120
    .line 121
    if-eq v0, v6, :cond_4

    .line 122
    .line 123
    iget-object v0, p0, Lcom/google/android/material/internal/b;->collapsedBounds:Landroid/graphics/Rect;

    .line 124
    .line 125
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 126
    int-to-float v0, v0

    .line 127
    .line 128
    iput v0, p0, Lcom/google/android/material/internal/b;->collapsedDrawX:F

    .line 129
    goto :goto_2

    .line 130
    .line 131
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/internal/b;->collapsedBounds:Landroid/graphics/Rect;

    .line 132
    .line 133
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 134
    int-to-float v0, v0

    .line 135
    .line 136
    iget v8, p0, Lcom/google/android/material/internal/b;->collapsedTextWidth:F

    .line 137
    sub-float/2addr v0, v8

    .line 138
    .line 139
    iput v0, p0, Lcom/google/android/material/internal/b;->collapsedDrawX:F

    .line 140
    goto :goto_2

    .line 141
    .line 142
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/internal/b;->collapsedBounds:Landroid/graphics/Rect;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 146
    move-result v0

    .line 147
    int-to-float v0, v0

    .line 148
    .line 149
    iget v8, p0, Lcom/google/android/material/internal/b;->collapsedTextWidth:F

    .line 150
    div-float/2addr v8, v5

    .line 151
    sub-float/2addr v0, v8

    .line 152
    .line 153
    iput v0, p0, Lcom/google/android/material/internal/b;->collapsedDrawX:F

    .line 154
    .line 155
    .line 156
    :goto_2
    invoke-direct {p0, v1, p1}, Lcom/google/android/material/internal/b;->i(FZ)V

    .line 157
    .line 158
    iget-object p1, p0, Lcom/google/android/material/internal/b;->textLayout:Landroid/text/StaticLayout;

    .line 159
    .line 160
    if-eqz p1, :cond_6

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    .line 164
    move-result p1

    .line 165
    int-to-float p1, p1

    .line 166
    goto :goto_3

    .line 167
    :cond_6
    move p1, v1

    .line 168
    .line 169
    :goto_3
    iget-object v0, p0, Lcom/google/android/material/internal/b;->textLayout:Landroid/text/StaticLayout;

    .line 170
    .line 171
    if-eqz v0, :cond_7

    .line 172
    .line 173
    iget v8, p0, Lcom/google/android/material/internal/b;->maxLines:I

    .line 174
    .line 175
    if-le v8, v7, :cond_7

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    .line 179
    move-result v0

    .line 180
    int-to-float v1, v0

    .line 181
    goto :goto_4

    .line 182
    .line 183
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/internal/b;->textToDraw:Ljava/lang/CharSequence;

    .line 184
    .line 185
    if-eqz v0, :cond_8

    .line 186
    .line 187
    iget-object v1, p0, Lcom/google/android/material/internal/b;->textPaint:Landroid/text/TextPaint;

    .line 188
    .line 189
    .line 190
    invoke-direct {p0, v1, v0}, Lcom/google/android/material/internal/b;->W(Landroid/text/TextPaint;Ljava/lang/CharSequence;)F

    .line 191
    move-result v1

    .line 192
    .line 193
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/google/android/material/internal/b;->textLayout:Landroid/text/StaticLayout;

    .line 194
    .line 195
    if-eqz v0, :cond_9

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    .line 199
    move-result v0

    .line 200
    goto :goto_5

    .line 201
    :cond_9
    const/4 v0, 0x0

    .line 202
    .line 203
    :goto_5
    iput v0, p0, Lcom/google/android/material/internal/b;->expandedLineCount:I

    .line 204
    .line 205
    iget v0, p0, Lcom/google/android/material/internal/b;->expandedTextGravity:I

    .line 206
    .line 207
    iget-boolean v8, p0, Lcom/google/android/material/internal/b;->isRtl:Z

    .line 208
    .line 209
    .line 210
    invoke-static {v0, v8}, Landroidx/core/view/GravityCompat;->b(II)I

    .line 211
    move-result v0

    .line 212
    .line 213
    and-int/lit8 v8, v0, 0x70

    .line 214
    .line 215
    if-eq v8, v4, :cond_b

    .line 216
    .line 217
    if-eq v8, v3, :cond_a

    .line 218
    div-float/2addr p1, v5

    .line 219
    .line 220
    iget-object v3, p0, Lcom/google/android/material/internal/b;->expandedBounds:Landroid/graphics/Rect;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    .line 224
    move-result v3

    .line 225
    int-to-float v3, v3

    .line 226
    sub-float/2addr v3, p1

    .line 227
    .line 228
    iput v3, p0, Lcom/google/android/material/internal/b;->expandedDrawY:F

    .line 229
    goto :goto_6

    .line 230
    .line 231
    :cond_a
    iget-object v3, p0, Lcom/google/android/material/internal/b;->expandedBounds:Landroid/graphics/Rect;

    .line 232
    .line 233
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 234
    int-to-float v3, v3

    .line 235
    sub-float/2addr v3, p1

    .line 236
    .line 237
    iget-object p1, p0, Lcom/google/android/material/internal/b;->textPaint:Landroid/text/TextPaint;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    .line 241
    move-result p1

    .line 242
    add-float/2addr v3, p1

    .line 243
    .line 244
    iput v3, p0, Lcom/google/android/material/internal/b;->expandedDrawY:F

    .line 245
    goto :goto_6

    .line 246
    .line 247
    :cond_b
    iget-object p1, p0, Lcom/google/android/material/internal/b;->expandedBounds:Landroid/graphics/Rect;

    .line 248
    .line 249
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 250
    int-to-float p1, p1

    .line 251
    .line 252
    iput p1, p0, Lcom/google/android/material/internal/b;->expandedDrawY:F

    .line 253
    .line 254
    :goto_6
    and-int p1, v0, v2

    .line 255
    .line 256
    if-eq p1, v7, :cond_d

    .line 257
    .line 258
    if-eq p1, v6, :cond_c

    .line 259
    .line 260
    iget-object p1, p0, Lcom/google/android/material/internal/b;->expandedBounds:Landroid/graphics/Rect;

    .line 261
    .line 262
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 263
    int-to-float p1, p1

    .line 264
    .line 265
    iput p1, p0, Lcom/google/android/material/internal/b;->expandedDrawX:F

    .line 266
    goto :goto_7

    .line 267
    .line 268
    :cond_c
    iget-object p1, p0, Lcom/google/android/material/internal/b;->expandedBounds:Landroid/graphics/Rect;

    .line 269
    .line 270
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 271
    int-to-float p1, p1

    .line 272
    sub-float/2addr p1, v1

    .line 273
    .line 274
    iput p1, p0, Lcom/google/android/material/internal/b;->expandedDrawX:F

    .line 275
    goto :goto_7

    .line 276
    .line 277
    :cond_d
    iget-object p1, p0, Lcom/google/android/material/internal/b;->expandedBounds:Landroid/graphics/Rect;

    .line 278
    .line 279
    .line 280
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    .line 281
    move-result p1

    .line 282
    int-to-float p1, p1

    .line 283
    div-float/2addr v1, v5

    .line 284
    sub-float/2addr p1, v1

    .line 285
    .line 286
    iput p1, p0, Lcom/google/android/material/internal/b;->expandedDrawX:F

    .line 287
    .line 288
    .line 289
    :goto_7
    invoke-direct {p0}, Lcom/google/android/material/internal/b;->j()V

    .line 290
    .line 291
    iget p1, p0, Lcom/google/android/material/internal/b;->expandedFraction:F

    .line 292
    .line 293
    .line 294
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/b;->y0(F)V

    .line 295
    return-void
.end method

.method private c()V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/material/internal/b;->expandedFraction:F

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/b;->g(F)V

    .line 6
    return-void
.end method

.method private d(F)F
    .locals 4
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
        .end annotation
    .end param

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/material/internal/b;->fadeModeThresholdFraction:F

    .line 3
    .line 4
    cmpg-float v1, p1, v0

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    const/high16 v3, 0x3f800000    # 1.0f

    .line 8
    .line 9
    if-gtz v1, :cond_0

    .line 10
    .line 11
    iget v1, p0, Lcom/google/android/material/internal/b;->fadeModeStartFraction:F

    .line 12
    .line 13
    .line 14
    invoke-static {v3, v2, v1, v0, p1}, Le3/a;->b(FFFFF)F

    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static {v2, v3, v0, v3, p1}, Le3/a;->b(FFFFF)F

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method private e()F
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/b;->fadeModeStartFraction:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private e0(F)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/material/internal/b;->collapsedTextBlend:F

    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/material/internal/b;->view:Landroid/view/View;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->k0(Landroid/view/View;)V

    .line 8
    return-void
.end method

.method private f(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/internal/b;->R()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/google/android/material/internal/b;->isRtlTextDirectionHeuristicsEnabled:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/b;->T(Ljava/lang/CharSequence;Z)Z

    .line 12
    move-result v0

    .line 13
    :cond_0
    return v0
.end method

.method private g(F)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/b;->P(F)V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/google/android/material/internal/b;->fadeModeEnabled:Z

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    const/high16 v2, 0x3f800000    # 1.0f

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget v0, p0, Lcom/google/android/material/internal/b;->fadeModeThresholdFraction:F

    .line 13
    .line 14
    cmpg-float v0, p1, v0

    .line 15
    .line 16
    if-gez v0, :cond_0

    .line 17
    .line 18
    iget v0, p0, Lcom/google/android/material/internal/b;->expandedDrawX:F

    .line 19
    .line 20
    iput v0, p0, Lcom/google/android/material/internal/b;->currentDrawX:F

    .line 21
    .line 22
    iget v0, p0, Lcom/google/android/material/internal/b;->expandedDrawY:F

    .line 23
    .line 24
    iput v0, p0, Lcom/google/android/material/internal/b;->currentDrawY:F

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v1}, Lcom/google/android/material/internal/b;->y0(F)V

    .line 28
    move v0, v1

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    iget v0, p0, Lcom/google/android/material/internal/b;->collapsedDrawX:F

    .line 32
    .line 33
    iput v0, p0, Lcom/google/android/material/internal/b;->currentDrawX:F

    .line 34
    .line 35
    iget v0, p0, Lcom/google/android/material/internal/b;->collapsedDrawY:F

    .line 36
    const/4 v3, 0x0

    .line 37
    .line 38
    iget v4, p0, Lcom/google/android/material/internal/b;->currentOffsetY:I

    .line 39
    .line 40
    .line 41
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 42
    move-result v3

    .line 43
    int-to-float v3, v3

    .line 44
    sub-float/2addr v0, v3

    .line 45
    .line 46
    iput v0, p0, Lcom/google/android/material/internal/b;->currentDrawY:F

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, v2}, Lcom/google/android/material/internal/b;->y0(F)V

    .line 50
    move v0, v2

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_1
    iget v0, p0, Lcom/google/android/material/internal/b;->expandedDrawX:F

    .line 54
    .line 55
    iget v3, p0, Lcom/google/android/material/internal/b;->collapsedDrawX:F

    .line 56
    .line 57
    iget-object v4, p0, Lcom/google/android/material/internal/b;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v3, p1, v4}, Lcom/google/android/material/internal/b;->U(FFFLandroid/animation/TimeInterpolator;)F

    .line 61
    move-result v0

    .line 62
    .line 63
    iput v0, p0, Lcom/google/android/material/internal/b;->currentDrawX:F

    .line 64
    .line 65
    iget v0, p0, Lcom/google/android/material/internal/b;->expandedDrawY:F

    .line 66
    .line 67
    iget v3, p0, Lcom/google/android/material/internal/b;->collapsedDrawY:F

    .line 68
    .line 69
    iget-object v4, p0, Lcom/google/android/material/internal/b;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v3, p1, v4}, Lcom/google/android/material/internal/b;->U(FFFLandroid/animation/TimeInterpolator;)F

    .line 73
    move-result v0

    .line 74
    .line 75
    iput v0, p0, Lcom/google/android/material/internal/b;->currentDrawY:F

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/b;->y0(F)V

    .line 79
    move v0, p1

    .line 80
    .line 81
    :goto_0
    sub-float v3, v2, p1

    .line 82
    .line 83
    sget-object v4, Le3/a;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 84
    .line 85
    .line 86
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/material/internal/b;->U(FFFLandroid/animation/TimeInterpolator;)F

    .line 87
    move-result v3

    .line 88
    .line 89
    sub-float v3, v2, v3

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, v3}, Lcom/google/android/material/internal/b;->e0(F)V

    .line 93
    .line 94
    .line 95
    invoke-static {v2, v1, p1, v4}, Lcom/google/android/material/internal/b;->U(FFFLandroid/animation/TimeInterpolator;)F

    .line 96
    move-result v1

    .line 97
    .line 98
    .line 99
    invoke-direct {p0, v1}, Lcom/google/android/material/internal/b;->o0(F)V

    .line 100
    .line 101
    iget-object v1, p0, Lcom/google/android/material/internal/b;->collapsedTextColor:Landroid/content/res/ColorStateList;

    .line 102
    .line 103
    iget-object v2, p0, Lcom/google/android/material/internal/b;->expandedTextColor:Landroid/content/res/ColorStateList;

    .line 104
    .line 105
    if-eq v1, v2, :cond_2

    .line 106
    .line 107
    iget-object v1, p0, Lcom/google/android/material/internal/b;->textPaint:Landroid/text/TextPaint;

    .line 108
    .line 109
    .line 110
    invoke-direct {p0}, Lcom/google/android/material/internal/b;->x()I

    .line 111
    move-result v2

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->v()I

    .line 115
    move-result v3

    .line 116
    .line 117
    .line 118
    invoke-static {v2, v3, v0}, Lcom/google/android/material/internal/b;->a(IIF)I

    .line 119
    move-result v0

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    goto :goto_1

    .line 124
    .line 125
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/internal/b;->textPaint:Landroid/text/TextPaint;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->v()I

    .line 129
    move-result v1

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    .line 134
    :goto_1
    iget v0, p0, Lcom/google/android/material/internal/b;->collapsedLetterSpacing:F

    .line 135
    .line 136
    iget v1, p0, Lcom/google/android/material/internal/b;->expandedLetterSpacing:F

    .line 137
    .line 138
    cmpl-float v2, v0, v1

    .line 139
    .line 140
    if-eqz v2, :cond_3

    .line 141
    .line 142
    iget-object v2, p0, Lcom/google/android/material/internal/b;->textPaint:Landroid/text/TextPaint;

    .line 143
    .line 144
    .line 145
    invoke-static {v1, v0, p1, v4}, Lcom/google/android/material/internal/b;->U(FFFLandroid/animation/TimeInterpolator;)F

    .line 146
    move-result v0

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 150
    goto :goto_2

    .line 151
    .line 152
    :cond_3
    iget-object v1, p0, Lcom/google/android/material/internal/b;->textPaint:Landroid/text/TextPaint;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 156
    .line 157
    :goto_2
    iget v0, p0, Lcom/google/android/material/internal/b;->expandedShadowRadius:F

    .line 158
    .line 159
    iget v1, p0, Lcom/google/android/material/internal/b;->collapsedShadowRadius:F

    .line 160
    const/4 v2, 0x0

    .line 161
    .line 162
    .line 163
    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/b;->U(FFFLandroid/animation/TimeInterpolator;)F

    .line 164
    move-result v0

    .line 165
    .line 166
    iput v0, p0, Lcom/google/android/material/internal/b;->currentShadowRadius:F

    .line 167
    .line 168
    iget v0, p0, Lcom/google/android/material/internal/b;->expandedShadowDx:F

    .line 169
    .line 170
    iget v1, p0, Lcom/google/android/material/internal/b;->collapsedShadowDx:F

    .line 171
    .line 172
    .line 173
    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/b;->U(FFFLandroid/animation/TimeInterpolator;)F

    .line 174
    move-result v0

    .line 175
    .line 176
    iput v0, p0, Lcom/google/android/material/internal/b;->currentShadowDx:F

    .line 177
    .line 178
    iget v0, p0, Lcom/google/android/material/internal/b;->expandedShadowDy:F

    .line 179
    .line 180
    iget v1, p0, Lcom/google/android/material/internal/b;->collapsedShadowDy:F

    .line 181
    .line 182
    .line 183
    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/b;->U(FFFLandroid/animation/TimeInterpolator;)F

    .line 184
    move-result v0

    .line 185
    .line 186
    iput v0, p0, Lcom/google/android/material/internal/b;->currentShadowDy:F

    .line 187
    .line 188
    iget-object v0, p0, Lcom/google/android/material/internal/b;->expandedShadowColor:Landroid/content/res/ColorStateList;

    .line 189
    .line 190
    .line 191
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/b;->w(Landroid/content/res/ColorStateList;)I

    .line 192
    move-result v0

    .line 193
    .line 194
    iget-object v1, p0, Lcom/google/android/material/internal/b;->collapsedShadowColor:Landroid/content/res/ColorStateList;

    .line 195
    .line 196
    .line 197
    invoke-direct {p0, v1}, Lcom/google/android/material/internal/b;->w(Landroid/content/res/ColorStateList;)I

    .line 198
    move-result v1

    .line 199
    .line 200
    .line 201
    invoke-static {v0, v1, p1}, Lcom/google/android/material/internal/b;->a(IIF)I

    .line 202
    move-result v0

    .line 203
    .line 204
    iput v0, p0, Lcom/google/android/material/internal/b;->currentShadowColor:I

    .line 205
    .line 206
    iget-object v1, p0, Lcom/google/android/material/internal/b;->textPaint:Landroid/text/TextPaint;

    .line 207
    .line 208
    iget v2, p0, Lcom/google/android/material/internal/b;->currentShadowRadius:F

    .line 209
    .line 210
    iget v3, p0, Lcom/google/android/material/internal/b;->currentShadowDx:F

    .line 211
    .line 212
    iget v4, p0, Lcom/google/android/material/internal/b;->currentShadowDy:F

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 216
    .line 217
    iget-boolean v0, p0, Lcom/google/android/material/internal/b;->fadeModeEnabled:Z

    .line 218
    .line 219
    if-eqz v0, :cond_4

    .line 220
    .line 221
    iget-object v0, p0, Lcom/google/android/material/internal/b;->textPaint:Landroid/text/TextPaint;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    .line 225
    move-result v0

    .line 226
    .line 227
    .line 228
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/b;->d(F)F

    .line 229
    move-result p1

    .line 230
    int-to-float v0, v0

    .line 231
    mul-float/2addr p1, v0

    .line 232
    float-to-int p1, p1

    .line 233
    .line 234
    iget-object v0, p0, Lcom/google/android/material/internal/b;->textPaint:Landroid/text/TextPaint;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 238
    .line 239
    :cond_4
    iget-object p1, p0, Lcom/google/android/material/internal/b;->view:Landroid/view/View;

    .line 240
    .line 241
    .line 242
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->k0(Landroid/view/View;)V

    .line 243
    return-void
.end method

.method private h(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/b;->i(FZ)V

    .line 5
    return-void
.end method

.method private i(FZ)V
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/b;->text:Ljava/lang/CharSequence;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/b;->collapsedBounds:Landroid/graphics/Rect;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 11
    move-result v0

    .line 12
    int-to-float v0, v0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/material/internal/b;->expandedBounds:Landroid/graphics/Rect;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 18
    move-result v1

    .line 19
    int-to-float v1, v1

    .line 20
    .line 21
    const/high16 v2, 0x3f800000    # 1.0f

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v2}, Lcom/google/android/material/internal/b;->Q(FF)Z

    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x1

    .line 29
    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    iget p1, p0, Lcom/google/android/material/internal/b;->collapsedTextSize:F

    .line 33
    .line 34
    iget p2, p0, Lcom/google/android/material/internal/b;->collapsedLetterSpacing:F

    .line 35
    .line 36
    iput v2, p0, Lcom/google/android/material/internal/b;->scale:F

    .line 37
    .line 38
    iget-object v1, p0, Lcom/google/android/material/internal/b;->currentTypeface:Landroid/graphics/Typeface;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/google/android/material/internal/b;->collapsedTypeface:Landroid/graphics/Typeface;

    .line 41
    .line 42
    if-eq v1, v3, :cond_1

    .line 43
    .line 44
    iput-object v3, p0, Lcom/google/android/material/internal/b;->currentTypeface:Landroid/graphics/Typeface;

    .line 45
    move v1, v6

    .line 46
    goto :goto_3

    .line 47
    :cond_1
    move v1, v5

    .line 48
    goto :goto_3

    .line 49
    .line 50
    :cond_2
    iget v3, p0, Lcom/google/android/material/internal/b;->expandedTextSize:F

    .line 51
    .line 52
    iget v7, p0, Lcom/google/android/material/internal/b;->expandedLetterSpacing:F

    .line 53
    .line 54
    iget-object v8, p0, Lcom/google/android/material/internal/b;->currentTypeface:Landroid/graphics/Typeface;

    .line 55
    .line 56
    iget-object v9, p0, Lcom/google/android/material/internal/b;->expandedTypeface:Landroid/graphics/Typeface;

    .line 57
    .line 58
    if-eq v8, v9, :cond_3

    .line 59
    .line 60
    iput-object v9, p0, Lcom/google/android/material/internal/b;->currentTypeface:Landroid/graphics/Typeface;

    .line 61
    move v8, v6

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    move v8, v5

    .line 64
    .line 65
    .line 66
    :goto_0
    invoke-static {p1, v4}, Lcom/google/android/material/internal/b;->Q(FF)Z

    .line 67
    move-result v9

    .line 68
    .line 69
    if-eqz v9, :cond_4

    .line 70
    .line 71
    iput v2, p0, Lcom/google/android/material/internal/b;->scale:F

    .line 72
    goto :goto_1

    .line 73
    .line 74
    :cond_4
    iget v9, p0, Lcom/google/android/material/internal/b;->expandedTextSize:F

    .line 75
    .line 76
    iget v10, p0, Lcom/google/android/material/internal/b;->collapsedTextSize:F

    .line 77
    .line 78
    iget-object v11, p0, Lcom/google/android/material/internal/b;->textSizeInterpolator:Landroid/animation/TimeInterpolator;

    .line 79
    .line 80
    .line 81
    invoke-static {v9, v10, p1, v11}, Lcom/google/android/material/internal/b;->U(FFFLandroid/animation/TimeInterpolator;)F

    .line 82
    move-result p1

    .line 83
    .line 84
    iget v9, p0, Lcom/google/android/material/internal/b;->expandedTextSize:F

    .line 85
    div-float/2addr p1, v9

    .line 86
    .line 87
    iput p1, p0, Lcom/google/android/material/internal/b;->scale:F

    .line 88
    .line 89
    :goto_1
    iget p1, p0, Lcom/google/android/material/internal/b;->collapsedTextSize:F

    .line 90
    .line 91
    iget v9, p0, Lcom/google/android/material/internal/b;->expandedTextSize:F

    .line 92
    div-float/2addr p1, v9

    .line 93
    .line 94
    mul-float v9, v1, p1

    .line 95
    .line 96
    if-eqz p2, :cond_6

    .line 97
    :cond_5
    move v0, v1

    .line 98
    :goto_2
    move p1, v3

    .line 99
    move p2, v7

    .line 100
    move v1, v8

    .line 101
    goto :goto_3

    .line 102
    .line 103
    :cond_6
    cmpl-float p2, v9, v0

    .line 104
    .line 105
    if-lez p2, :cond_5

    .line 106
    div-float/2addr v0, p1

    .line 107
    .line 108
    .line 109
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 110
    move-result p1

    .line 111
    move v0, p1

    .line 112
    goto :goto_2

    .line 113
    .line 114
    :goto_3
    cmpl-float v3, v0, v4

    .line 115
    .line 116
    if-lez v3, :cond_b

    .line 117
    .line 118
    iget v3, p0, Lcom/google/android/material/internal/b;->currentTextSize:F

    .line 119
    .line 120
    cmpl-float v3, v3, p1

    .line 121
    .line 122
    if-eqz v3, :cond_7

    .line 123
    move v3, v6

    .line 124
    goto :goto_4

    .line 125
    :cond_7
    move v3, v5

    .line 126
    .line 127
    :goto_4
    iget v4, p0, Lcom/google/android/material/internal/b;->currentLetterSpacing:F

    .line 128
    .line 129
    cmpl-float v4, v4, p2

    .line 130
    .line 131
    if-eqz v4, :cond_8

    .line 132
    move v4, v6

    .line 133
    goto :goto_5

    .line 134
    :cond_8
    move v4, v5

    .line 135
    .line 136
    :goto_5
    if-nez v3, :cond_a

    .line 137
    .line 138
    if-nez v4, :cond_a

    .line 139
    .line 140
    iget-boolean v3, p0, Lcom/google/android/material/internal/b;->boundsChanged:Z

    .line 141
    .line 142
    if-nez v3, :cond_a

    .line 143
    .line 144
    if-eqz v1, :cond_9

    .line 145
    goto :goto_6

    .line 146
    :cond_9
    move v1, v5

    .line 147
    goto :goto_7

    .line 148
    :cond_a
    :goto_6
    move v1, v6

    .line 149
    .line 150
    :goto_7
    iput p1, p0, Lcom/google/android/material/internal/b;->currentTextSize:F

    .line 151
    .line 152
    iput p2, p0, Lcom/google/android/material/internal/b;->currentLetterSpacing:F

    .line 153
    .line 154
    iput-boolean v5, p0, Lcom/google/android/material/internal/b;->boundsChanged:Z

    .line 155
    .line 156
    :cond_b
    iget-object p1, p0, Lcom/google/android/material/internal/b;->textToDraw:Ljava/lang/CharSequence;

    .line 157
    .line 158
    if-eqz p1, :cond_c

    .line 159
    .line 160
    if-eqz v1, :cond_f

    .line 161
    .line 162
    :cond_c
    iget-object p1, p0, Lcom/google/android/material/internal/b;->textPaint:Landroid/text/TextPaint;

    .line 163
    .line 164
    iget p2, p0, Lcom/google/android/material/internal/b;->currentTextSize:F

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 168
    .line 169
    iget-object p1, p0, Lcom/google/android/material/internal/b;->textPaint:Landroid/text/TextPaint;

    .line 170
    .line 171
    iget-object p2, p0, Lcom/google/android/material/internal/b;->currentTypeface:Landroid/graphics/Typeface;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 175
    .line 176
    iget-object p1, p0, Lcom/google/android/material/internal/b;->textPaint:Landroid/text/TextPaint;

    .line 177
    .line 178
    iget p2, p0, Lcom/google/android/material/internal/b;->currentLetterSpacing:F

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 182
    .line 183
    iget-object p1, p0, Lcom/google/android/material/internal/b;->textPaint:Landroid/text/TextPaint;

    .line 184
    .line 185
    iget p2, p0, Lcom/google/android/material/internal/b;->scale:F

    .line 186
    .line 187
    cmpl-float p2, p2, v2

    .line 188
    .line 189
    if-eqz p2, :cond_d

    .line 190
    move v5, v6

    .line 191
    .line 192
    .line 193
    :cond_d
    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setLinearText(Z)V

    .line 194
    .line 195
    iget-object p1, p0, Lcom/google/android/material/internal/b;->text:Ljava/lang/CharSequence;

    .line 196
    .line 197
    .line 198
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/b;->f(Ljava/lang/CharSequence;)Z

    .line 199
    move-result p1

    .line 200
    .line 201
    iput-boolean p1, p0, Lcom/google/android/material/internal/b;->isRtl:Z

    .line 202
    .line 203
    .line 204
    invoke-direct {p0}, Lcom/google/android/material/internal/b;->I0()Z

    .line 205
    move-result p1

    .line 206
    .line 207
    if-eqz p1, :cond_e

    .line 208
    .line 209
    iget v6, p0, Lcom/google/android/material/internal/b;->maxLines:I

    .line 210
    .line 211
    :cond_e
    iget-boolean p1, p0, Lcom/google/android/material/internal/b;->isRtl:Z

    .line 212
    .line 213
    .line 214
    invoke-direct {p0, v6, v0, p1}, Lcom/google/android/material/internal/b;->k(IFZ)Landroid/text/StaticLayout;

    .line 215
    move-result-object p1

    .line 216
    .line 217
    iput-object p1, p0, Lcom/google/android/material/internal/b;->textLayout:Landroid/text/StaticLayout;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 221
    move-result-object p1

    .line 222
    .line 223
    iput-object p1, p0, Lcom/google/android/material/internal/b;->textToDraw:Ljava/lang/CharSequence;

    .line 224
    :cond_f
    return-void
.end method

.method private i0(Landroid/graphics/Typeface;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/b;->collapsedFontCallback:Lcom/google/android/material/resources/a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/material/resources/a;->c()V

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/b;->collapsedTypefaceDefault:Landroid/graphics/Typeface;

    .line 10
    .line 11
    if-eq v0, p1, :cond_2

    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/material/internal/b;->collapsedTypefaceDefault:Landroid/graphics/Typeface;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/material/internal/b;->view:Landroid/view/View;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-static {v0, p1}, Lcom/google/android/material/resources/h;->b(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iput-object p1, p0, Lcom/google/android/material/internal/b;->collapsedTypefaceBold:Landroid/graphics/Typeface;

    .line 34
    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lcom/google/android/material/internal/b;->collapsedTypefaceDefault:Landroid/graphics/Typeface;

    .line 38
    .line 39
    :cond_1
    iput-object p1, p0, Lcom/google/android/material/internal/b;->collapsedTypeface:Landroid/graphics/Typeface;

    .line 40
    const/4 p1, 0x1

    .line 41
    return p1

    .line 42
    :cond_2
    const/4 p1, 0x0

    .line 43
    return p1
.end method

.method private j()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/b;->expandedTitleTexture:Landroid/graphics/Bitmap;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/material/internal/b;->expandedTitleTexture:Landroid/graphics/Bitmap;

    .line 11
    :cond_0
    return-void
.end method

.method private k(IFZ)Landroid/text/StaticLayout;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/internal/b;->K()Landroid/text/Layout$Alignment;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/internal/b;->text:Ljava/lang/CharSequence;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/android/material/internal/b;->textPaint:Landroid/text/TextPaint;

    .line 15
    float-to-int p2, p2

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2, p2}, Lcom/google/android/material/internal/o;->b(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Lcom/google/android/material/internal/o;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v1}, Lcom/google/android/material/internal/o;->d(Landroid/text/TextUtils$TruncateAt;)Lcom/google/android/material/internal/o;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/o;->g(Z)Lcom/google/android/material/internal/o;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Lcom/google/android/material/internal/o;->c(Landroid/text/Layout$Alignment;)Lcom/google/android/material/internal/o;

    .line 33
    move-result-object p2

    .line 34
    const/4 p3, 0x0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/o;->f(Z)Lcom/google/android/material/internal/o;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p1}, Lcom/google/android/material/internal/o;->i(I)Lcom/google/android/material/internal/o;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    iget p2, p0, Lcom/google/android/material/internal/b;->lineSpacingAdd:F

    .line 45
    .line 46
    iget p3, p0, Lcom/google/android/material/internal/b;->lineSpacingMultiplier:F

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2, p3}, Lcom/google/android/material/internal/o;->h(FF)Lcom/google/android/material/internal/o;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    iget p2, p0, Lcom/google/android/material/internal/b;->hyphenationFrequency:I

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/o;->e(I)Lcom/google/android/material/internal/o;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/google/android/material/internal/o;->a()Landroid/text/StaticLayout;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Landroidx/core/util/Preconditions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    check-cast p1, Landroid/text/StaticLayout;

    .line 67
    return-object p1
.end method

.method private m(Landroid/graphics/Canvas;FF)V
    .locals 14
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/material/internal/b;->textPaint:Landroid/text/TextPaint;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    .line 7
    move-result v1

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 11
    .line 12
    iget-object v2, v0, Lcom/google/android/material/internal/b;->textPaint:Landroid/text/TextPaint;

    .line 13
    .line 14
    iget v3, v0, Lcom/google/android/material/internal/b;->expandedTextBlend:F

    .line 15
    int-to-float v4, v1

    .line 16
    mul-float/2addr v3, v4

    .line 17
    float-to-int v3, v3

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 21
    .line 22
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 23
    .line 24
    const/16 v3, 0x1f

    .line 25
    .line 26
    if-lt v2, v3, :cond_0

    .line 27
    .line 28
    iget-object v5, v0, Lcom/google/android/material/internal/b;->textPaint:Landroid/text/TextPaint;

    .line 29
    .line 30
    iget v6, v0, Lcom/google/android/material/internal/b;->currentShadowRadius:F

    .line 31
    .line 32
    iget v7, v0, Lcom/google/android/material/internal/b;->currentShadowDx:F

    .line 33
    .line 34
    iget v8, v0, Lcom/google/android/material/internal/b;->currentShadowDy:F

    .line 35
    .line 36
    iget v9, v0, Lcom/google/android/material/internal/b;->currentShadowColor:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    .line 40
    move-result v10

    .line 41
    .line 42
    .line 43
    invoke-static {v9, v10}, Li3/a;->a(II)I

    .line 44
    move-result v9

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 48
    .line 49
    :cond_0
    iget-object v5, v0, Lcom/google/android/material/internal/b;->textLayout:Landroid/text/StaticLayout;

    .line 50
    move-object v13, p1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 54
    .line 55
    iget-object v5, v0, Lcom/google/android/material/internal/b;->textPaint:Landroid/text/TextPaint;

    .line 56
    .line 57
    iget v6, v0, Lcom/google/android/material/internal/b;->collapsedTextBlend:F

    .line 58
    mul-float/2addr v6, v4

    .line 59
    float-to-int v4, v6

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 63
    .line 64
    if-lt v2, v3, :cond_1

    .line 65
    .line 66
    iget-object v4, v0, Lcom/google/android/material/internal/b;->textPaint:Landroid/text/TextPaint;

    .line 67
    .line 68
    iget v5, v0, Lcom/google/android/material/internal/b;->currentShadowRadius:F

    .line 69
    .line 70
    iget v6, v0, Lcom/google/android/material/internal/b;->currentShadowDx:F

    .line 71
    .line 72
    iget v7, v0, Lcom/google/android/material/internal/b;->currentShadowDy:F

    .line 73
    .line 74
    iget v8, v0, Lcom/google/android/material/internal/b;->currentShadowColor:I

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    .line 78
    move-result v9

    .line 79
    .line 80
    .line 81
    invoke-static {v8, v9}, Li3/a;->a(II)I

    .line 82
    move-result v8

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 86
    .line 87
    :cond_1
    iget-object v4, v0, Lcom/google/android/material/internal/b;->textLayout:Landroid/text/StaticLayout;

    .line 88
    const/4 v5, 0x0

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineBaseline(I)I

    .line 92
    move-result v4

    .line 93
    .line 94
    iget-object v7, v0, Lcom/google/android/material/internal/b;->textToDrawCollapsed:Ljava/lang/CharSequence;

    .line 95
    const/4 v8, 0x0

    .line 96
    .line 97
    .line 98
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 99
    move-result v9

    .line 100
    const/4 v10, 0x0

    .line 101
    int-to-float v4, v4

    .line 102
    .line 103
    iget-object v12, v0, Lcom/google/android/material/internal/b;->textPaint:Landroid/text/TextPaint;

    .line 104
    move-object v6, p1

    .line 105
    move v11, v4

    .line 106
    .line 107
    .line 108
    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 109
    .line 110
    if-lt v2, v3, :cond_2

    .line 111
    .line 112
    iget-object v2, v0, Lcom/google/android/material/internal/b;->textPaint:Landroid/text/TextPaint;

    .line 113
    .line 114
    iget v3, v0, Lcom/google/android/material/internal/b;->currentShadowRadius:F

    .line 115
    .line 116
    iget v6, v0, Lcom/google/android/material/internal/b;->currentShadowDx:F

    .line 117
    .line 118
    iget v7, v0, Lcom/google/android/material/internal/b;->currentShadowDy:F

    .line 119
    .line 120
    iget v8, v0, Lcom/google/android/material/internal/b;->currentShadowColor:I

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v3, v6, v7, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 124
    .line 125
    :cond_2
    iget-boolean v2, v0, Lcom/google/android/material/internal/b;->fadeModeEnabled:Z

    .line 126
    .line 127
    if-nez v2, :cond_4

    .line 128
    .line 129
    iget-object v2, v0, Lcom/google/android/material/internal/b;->textToDrawCollapsed:Ljava/lang/CharSequence;

    .line 130
    .line 131
    .line 132
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 133
    move-result-object v2

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 137
    move-result-object v2

    .line 138
    .line 139
    const-string v3, "\u2026"

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 143
    move-result v3

    .line 144
    .line 145
    if-eqz v3, :cond_3

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 149
    move-result v3

    .line 150
    .line 151
    add-int/lit8 v3, v3, -0x1

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 155
    move-result-object v2

    .line 156
    :cond_3
    move-object v7, v2

    .line 157
    .line 158
    iget-object v2, v0, Lcom/google/android/material/internal/b;->textPaint:Landroid/text/TextPaint;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 162
    const/4 v8, 0x0

    .line 163
    .line 164
    iget-object v1, v0, Lcom/google/android/material/internal/b;->textLayout:Landroid/text/StaticLayout;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v5}, Landroid/text/Layout;->getLineEnd(I)I

    .line 168
    move-result v1

    .line 169
    .line 170
    .line 171
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 172
    move-result v2

    .line 173
    .line 174
    .line 175
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 176
    move-result v9

    .line 177
    const/4 v10, 0x0

    .line 178
    .line 179
    iget-object v12, v0, Lcom/google/android/material/internal/b;->textPaint:Landroid/text/TextPaint;

    .line 180
    move-object v6, p1

    .line 181
    move v11, v4

    .line 182
    .line 183
    .line 184
    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 185
    :cond_4
    return-void
.end method

.method private n()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/b;->expandedTitleTexture:Landroid/graphics/Bitmap;

    .line 3
    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/material/internal/b;->expandedBounds:Landroid/graphics/Rect;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/material/internal/b;->textToDraw:Ljava/lang/CharSequence;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/b;->g(F)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/material/internal/b;->textLayout:Landroid/text/StaticLayout;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    .line 31
    move-result v0

    .line 32
    .line 33
    iget-object v1, p0, Lcom/google/android/material/internal/b;->textLayout:Landroid/text/StaticLayout;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    .line 37
    move-result v1

    .line 38
    .line 39
    if-lez v0, :cond_2

    .line 40
    .line 41
    if-gtz v1, :cond_1

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    iput-object v0, p0, Lcom/google/android/material/internal/b;->expandedTitleTexture:Landroid/graphics/Bitmap;

    .line 51
    .line 52
    new-instance v0, Landroid/graphics/Canvas;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/google/android/material/internal/b;->expandedTitleTexture:Landroid/graphics/Bitmap;

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 58
    .line 59
    iget-object v1, p0, Lcom/google/android/material/internal/b;->textLayout:Landroid/text/StaticLayout;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 63
    .line 64
    iget-object v0, p0, Lcom/google/android/material/internal/b;->texturePaint:Landroid/graphics/Paint;

    .line 65
    .line 66
    if-nez v0, :cond_2

    .line 67
    .line 68
    new-instance v0, Landroid/graphics/Paint;

    .line 69
    const/4 v1, 0x3

    .line 70
    .line 71
    .line 72
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 73
    .line 74
    iput-object v0, p0, Lcom/google/android/material/internal/b;->texturePaint:Landroid/graphics/Paint;

    .line 75
    :cond_2
    :goto_0
    return-void
.end method

.method private o0(F)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/material/internal/b;->expandedTextBlend:F

    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/material/internal/b;->view:Landroid/view/View;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->k0(Landroid/view/View;)V

    .line 8
    return-void
.end method

.method private s(II)F
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x11

    .line 3
    .line 4
    if-eq p2, v0, :cond_5

    .line 5
    .line 6
    and-int/lit8 v0, p2, 0x7

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    goto :goto_3

    .line 11
    .line 12
    .line 13
    :cond_0
    const p1, 0x800005

    .line 14
    .line 15
    and-int v0, p2, p1

    .line 16
    .line 17
    if-eq v0, p1, :cond_3

    .line 18
    const/4 p1, 0x5

    .line 19
    and-int/2addr p2, p1

    .line 20
    .line 21
    if-ne p2, p1, :cond_1

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_1
    iget-boolean p1, p0, Lcom/google/android/material/internal/b;->isRtl:Z

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    iget-object p1, p0, Lcom/google/android/material/internal/b;->collapsedBounds:Landroid/graphics/Rect;

    .line 29
    .line 30
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 31
    int-to-float p1, p1

    .line 32
    .line 33
    iget p2, p0, Lcom/google/android/material/internal/b;->collapsedTextWidth:F

    .line 34
    sub-float/2addr p1, p2

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/internal/b;->collapsedBounds:Landroid/graphics/Rect;

    .line 38
    .line 39
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 40
    int-to-float p1, p1

    .line 41
    :goto_0
    return p1

    .line 42
    .line 43
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lcom/google/android/material/internal/b;->isRtl:Z

    .line 44
    .line 45
    if-eqz p1, :cond_4

    .line 46
    .line 47
    iget-object p1, p0, Lcom/google/android/material/internal/b;->collapsedBounds:Landroid/graphics/Rect;

    .line 48
    .line 49
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 50
    int-to-float p1, p1

    .line 51
    goto :goto_2

    .line 52
    .line 53
    :cond_4
    iget-object p1, p0, Lcom/google/android/material/internal/b;->collapsedBounds:Landroid/graphics/Rect;

    .line 54
    .line 55
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 56
    int-to-float p1, p1

    .line 57
    .line 58
    iget p2, p0, Lcom/google/android/material/internal/b;->collapsedTextWidth:F

    .line 59
    sub-float/2addr p1, p2

    .line 60
    :goto_2
    return p1

    .line 61
    :cond_5
    :goto_3
    int-to-float p1, p1

    .line 62
    .line 63
    const/high16 p2, 0x40000000    # 2.0f

    .line 64
    div-float/2addr p1, p2

    .line 65
    .line 66
    iget v0, p0, Lcom/google/android/material/internal/b;->collapsedTextWidth:F

    .line 67
    div-float/2addr v0, p2

    .line 68
    sub-float/2addr p1, v0

    .line 69
    return p1
.end method

.method private t(Landroid/graphics/RectF;II)F
    .locals 2
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const/16 v0, 0x11

    .line 3
    .line 4
    if-eq p3, v0, :cond_5

    .line 5
    .line 6
    and-int/lit8 v0, p3, 0x7

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    goto :goto_3

    .line 11
    .line 12
    .line 13
    :cond_0
    const p2, 0x800005

    .line 14
    .line 15
    and-int v0, p3, p2

    .line 16
    .line 17
    if-eq v0, p2, :cond_3

    .line 18
    const/4 p2, 0x5

    .line 19
    and-int/2addr p3, p2

    .line 20
    .line 21
    if-ne p3, p2, :cond_1

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_1
    iget-boolean p2, p0, Lcom/google/android/material/internal/b;->isRtl:Z

    .line 25
    .line 26
    if-eqz p2, :cond_2

    .line 27
    .line 28
    iget-object p1, p0, Lcom/google/android/material/internal/b;->collapsedBounds:Landroid/graphics/Rect;

    .line 29
    .line 30
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 31
    int-to-float p1, p1

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_2
    iget p1, p1, Landroid/graphics/RectF;->left:F

    .line 35
    .line 36
    iget p2, p0, Lcom/google/android/material/internal/b;->collapsedTextWidth:F

    .line 37
    add-float/2addr p1, p2

    .line 38
    :goto_0
    return p1

    .line 39
    .line 40
    :cond_3
    :goto_1
    iget-boolean p2, p0, Lcom/google/android/material/internal/b;->isRtl:Z

    .line 41
    .line 42
    if-eqz p2, :cond_4

    .line 43
    .line 44
    iget p1, p1, Landroid/graphics/RectF;->left:F

    .line 45
    .line 46
    iget p2, p0, Lcom/google/android/material/internal/b;->collapsedTextWidth:F

    .line 47
    add-float/2addr p1, p2

    .line 48
    goto :goto_2

    .line 49
    .line 50
    :cond_4
    iget-object p1, p0, Lcom/google/android/material/internal/b;->collapsedBounds:Landroid/graphics/Rect;

    .line 51
    .line 52
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 53
    int-to-float p1, p1

    .line 54
    :goto_2
    return p1

    .line 55
    :cond_5
    :goto_3
    int-to-float p1, p2

    .line 56
    .line 57
    const/high16 p2, 0x40000000    # 2.0f

    .line 58
    div-float/2addr p1, p2

    .line 59
    .line 60
    iget p3, p0, Lcom/google/android/material/internal/b;->collapsedTextWidth:F

    .line 61
    div-float/2addr p3, p2

    .line 62
    add-float/2addr p1, p3

    .line 63
    return p1
.end method

.method private t0(Landroid/graphics/Typeface;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/b;->expandedFontCallback:Lcom/google/android/material/resources/a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/material/resources/a;->c()V

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/b;->expandedTypefaceDefault:Landroid/graphics/Typeface;

    .line 10
    .line 11
    if-eq v0, p1, :cond_2

    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/material/internal/b;->expandedTypefaceDefault:Landroid/graphics/Typeface;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/material/internal/b;->view:Landroid/view/View;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-static {v0, p1}, Lcom/google/android/material/resources/h;->b(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iput-object p1, p0, Lcom/google/android/material/internal/b;->expandedTypefaceBold:Landroid/graphics/Typeface;

    .line 34
    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lcom/google/android/material/internal/b;->expandedTypefaceDefault:Landroid/graphics/Typeface;

    .line 38
    .line 39
    :cond_1
    iput-object p1, p0, Lcom/google/android/material/internal/b;->expandedTypeface:Landroid/graphics/Typeface;

    .line 40
    const/4 p1, 0x1

    .line 41
    return p1

    .line 42
    :cond_2
    const/4 p1, 0x0

    .line 43
    return p1
.end method

.method private w(Landroid/content/res/ColorStateList;)I
    .locals 2
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/internal/b;->state:[I

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    .line 15
    .line 16
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method private x()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/b;->expandedTextColor:Landroid/content/res/ColorStateList;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/b;->w(Landroid/content/res/ColorStateList;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private y0(F)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/b;->h(F)V

    .line 4
    .line 5
    sget-boolean p1, Lcom/google/android/material/internal/b;->USE_SCALING_TEXTURE:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget p1, p0, Lcom/google/android/material/internal/b;->scale:F

    .line 10
    .line 11
    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    .line 13
    cmpl-float p1, p1, v0

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    .line 20
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/internal/b;->useTexture:Z

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/google/android/material/internal/b;->n()V

    .line 26
    .line 27
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/internal/b;->view:Landroid/view/View;

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->k0(Landroid/view/View;)V

    .line 31
    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/b;->expandedTextGravity:I

    return v0
.end method

.method public A0(F)V
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/internal/b;->lineSpacingMultiplier:F

    return-void
.end method

.method public B()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/b;->tmpPaint:Landroid/text/TextPaint;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/b;->O(Landroid/text/TextPaint;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/internal/b;->tmpPaint:Landroid/text/TextPaint;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    .line 11
    move-result v0

    .line 12
    neg-float v0, v0

    .line 13
    return v0
.end method

.method public B0(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/material/internal/b;->maxLines:I

    .line 3
    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/google/android/material/internal/b;->maxLines:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/material/internal/b;->j()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->Y()V

    .line 13
    :cond_0
    return-void
.end method

.method public C()Landroid/graphics/Typeface;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/b;->expandedTypeface:Landroid/graphics/Typeface;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 8
    :goto_0
    return-object v0
.end method

.method public C0(Landroid/animation/TimeInterpolator;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/internal/b;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->Y()V

    .line 6
    return-void
.end method

.method public D()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/b;->expandedFraction:F

    return v0
.end method

.method public D0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/internal/b;->isRtlTextDirectionHeuristicsEnabled:Z

    return-void
.end method

.method public E()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/b;->fadeModeThresholdFraction:F

    return v0
.end method

.method public final E0([I)Z
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/internal/b;->state:[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->S()Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->Y()V

    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method public F()I
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/b;->hyphenationFrequency:I

    return v0
.end method

.method public F0(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/material/internal/b;->text:Ljava/lang/CharSequence;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/internal/b;->text:Ljava/lang/CharSequence;

    .line 13
    const/4 p1, 0x0

    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/material/internal/b;->textToDraw:Ljava/lang/CharSequence;

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/google/android/material/internal/b;->j()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->Y()V

    .line 22
    :cond_1
    return-void
.end method

.method public G()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/b;->textLayout:Landroid/text/StaticLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public G0(Landroid/animation/TimeInterpolator;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/internal/b;->textSizeInterpolator:Landroid/animation/TimeInterpolator;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->Y()V

    .line 6
    return-void
.end method

.method public H()F
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/b;->textLayout:Landroid/text/StaticLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/text/Layout;->getSpacingAdd()F

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public H0(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/b;->i0(Landroid/graphics/Typeface;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/b;->t0(Landroid/graphics/Typeface;)Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->Y()V

    .line 16
    :cond_1
    return-void
.end method

.method public I()F
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/b;->textLayout:Landroid/text/StaticLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/text/Layout;->getSpacingMultiplier()F

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public J()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/b;->maxLines:I

    return v0
.end method

.method public L()Landroid/animation/TimeInterpolator;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/b;->positionInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public M()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/b;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final S()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/b;->collapsedTextColor:Landroid/content/res/ColorStateList;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/b;->expandedTextColor:Landroid/content/res/ColorStateList;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method public V(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1f

    .line 5
    .line 6
    if-lt v0, v1, :cond_4

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/material/internal/b;->collapsedTypefaceDefault:Landroid/graphics/Typeface;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/google/android/material/resources/h;->b(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/material/internal/b;->collapsedTypefaceBold:Landroid/graphics/Typeface;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/b;->expandedTypefaceDefault:Landroid/graphics/Typeface;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v0}, Lcom/google/android/material/resources/h;->b(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    iput-object p1, p0, Lcom/google/android/material/internal/b;->expandedTypefaceBold:Landroid/graphics/Typeface;

    .line 27
    .line 28
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/internal/b;->collapsedTypefaceBold:Landroid/graphics/Typeface;

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/internal/b;->collapsedTypefaceDefault:Landroid/graphics/Typeface;

    .line 34
    .line 35
    :goto_0
    iput-object p1, p0, Lcom/google/android/material/internal/b;->collapsedTypeface:Landroid/graphics/Typeface;

    .line 36
    .line 37
    iget-object p1, p0, Lcom/google/android/material/internal/b;->expandedTypefaceBold:Landroid/graphics/Typeface;

    .line 38
    .line 39
    if-eqz p1, :cond_3

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/internal/b;->expandedTypefaceDefault:Landroid/graphics/Typeface;

    .line 43
    .line 44
    :goto_1
    iput-object p1, p0, Lcom/google/android/material/internal/b;->expandedTypeface:Landroid/graphics/Typeface;

    .line 45
    const/4 p1, 0x1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/b;->Z(Z)V

    .line 49
    :cond_4
    return-void
.end method

.method X()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/b;->collapsedBounds:Landroid/graphics/Rect;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/material/internal/b;->collapsedBounds:Landroid/graphics/Rect;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-lez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/material/internal/b;->expandedBounds:Landroid/graphics/Rect;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 22
    move-result v0

    .line 23
    .line 24
    if-lez v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/android/material/internal/b;->expandedBounds:Landroid/graphics/Rect;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 30
    move-result v0

    .line 31
    .line 32
    if-lez v0, :cond_0

    .line 33
    const/4 v0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    .line 37
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/material/internal/b;->drawTitle:Z

    .line 38
    return-void
.end method

.method public Y()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/b;->Z(Z)V

    .line 5
    return-void
.end method

.method public Z(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/b;->view:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/material/internal/b;->view:Landroid/view/View;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-gtz v0, :cond_1

    .line 17
    .line 18
    :cond_0
    if-eqz p1, :cond_2

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/b;->b(Z)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/google/android/material/internal/b;->c()V

    .line 25
    :cond_2
    return-void
.end method

.method public b0(IIII)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/b;->collapsedBounds:Landroid/graphics/Rect;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/material/internal/b;->a0(Landroid/graphics/Rect;IIII)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/material/internal/b;->collapsedBounds:Landroid/graphics/Rect;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 14
    const/4 p1, 0x1

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/google/android/material/internal/b;->boundsChanged:Z

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->X()V

    .line 20
    :cond_0
    return-void
.end method

.method public c0(Landroid/graphics/Rect;)V
    .locals 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 3
    .line 4
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 5
    .line 6
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 7
    .line 8
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/google/android/material/internal/b;->b0(IIII)V

    .line 12
    return-void
.end method

.method public d0(I)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/material/resources/d;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/material/internal/b;->view:Landroid/view/View;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1, p1}, Lcom/google/android/material/resources/d;-><init>(Landroid/content/Context;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/material/resources/d;->i()Landroid/content/res/ColorStateList;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/material/resources/d;->i()Landroid/content/res/ColorStateList;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    iput-object p1, p0, Lcom/google/android/material/internal/b;->collapsedTextColor:Landroid/content/res/ColorStateList;

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/resources/d;->j()F

    .line 27
    move-result p1

    .line 28
    const/4 v1, 0x0

    .line 29
    .line 30
    cmpl-float p1, p1, v1

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/google/android/material/resources/d;->j()F

    .line 36
    move-result p1

    .line 37
    .line 38
    iput p1, p0, Lcom/google/android/material/internal/b;->collapsedTextSize:F

    .line 39
    .line 40
    :cond_1
    iget-object p1, v0, Lcom/google/android/material/resources/d;->shadowColor:Landroid/content/res/ColorStateList;

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    iput-object p1, p0, Lcom/google/android/material/internal/b;->collapsedShadowColor:Landroid/content/res/ColorStateList;

    .line 45
    .line 46
    :cond_2
    iget p1, v0, Lcom/google/android/material/resources/d;->shadowDx:F

    .line 47
    .line 48
    iput p1, p0, Lcom/google/android/material/internal/b;->collapsedShadowDx:F

    .line 49
    .line 50
    iget p1, v0, Lcom/google/android/material/resources/d;->shadowDy:F

    .line 51
    .line 52
    iput p1, p0, Lcom/google/android/material/internal/b;->collapsedShadowDy:F

    .line 53
    .line 54
    iget p1, v0, Lcom/google/android/material/resources/d;->shadowRadius:F

    .line 55
    .line 56
    iput p1, p0, Lcom/google/android/material/internal/b;->collapsedShadowRadius:F

    .line 57
    .line 58
    iget p1, v0, Lcom/google/android/material/resources/d;->letterSpacing:F

    .line 59
    .line 60
    iput p1, p0, Lcom/google/android/material/internal/b;->collapsedLetterSpacing:F

    .line 61
    .line 62
    iget-object p1, p0, Lcom/google/android/material/internal/b;->collapsedFontCallback:Lcom/google/android/material/resources/a;

    .line 63
    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/google/android/material/resources/a;->c()V

    .line 68
    .line 69
    :cond_3
    new-instance p1, Lcom/google/android/material/resources/a;

    .line 70
    .line 71
    new-instance v1, Lcom/google/android/material/internal/b$a;

    .line 72
    .line 73
    .line 74
    invoke-direct {v1, p0}, Lcom/google/android/material/internal/b$a;-><init>(Lcom/google/android/material/internal/b;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/google/android/material/resources/d;->e()Landroid/graphics/Typeface;

    .line 78
    move-result-object v2

    .line 79
    .line 80
    .line 81
    invoke-direct {p1, v1, v2}, Lcom/google/android/material/resources/a;-><init>(Lcom/google/android/material/resources/a$a;Landroid/graphics/Typeface;)V

    .line 82
    .line 83
    iput-object p1, p0, Lcom/google/android/material/internal/b;->collapsedFontCallback:Lcom/google/android/material/resources/a;

    .line 84
    .line 85
    iget-object p1, p0, Lcom/google/android/material/internal/b;->view:Landroid/view/View;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    iget-object v1, p0, Lcom/google/android/material/internal/b;->collapsedFontCallback:Lcom/google/android/material/resources/a;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/resources/d;->h(Landroid/content/Context;Lcom/google/android/material/resources/f;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->Y()V

    .line 98
    return-void
.end method

.method public f0(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/b;->collapsedTextColor:Landroid/content/res/ColorStateList;

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/material/internal/b;->collapsedTextColor:Landroid/content/res/ColorStateList;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->Y()V

    .line 10
    :cond_0
    return-void
.end method

.method public g0(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/material/internal/b;->collapsedTextGravity:I

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/google/android/material/internal/b;->collapsedTextGravity:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->Y()V

    .line 10
    :cond_0
    return-void
.end method

.method public h0(Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/b;->i0(Landroid/graphics/Typeface;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->Y()V

    .line 10
    :cond_0
    return-void
.end method

.method public j0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/internal/b;->currentOffsetY:I

    return-void
.end method

.method public k0(IIII)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/b;->expandedBounds:Landroid/graphics/Rect;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/material/internal/b;->a0(Landroid/graphics/Rect;IIII)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/material/internal/b;->expandedBounds:Landroid/graphics/Rect;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 14
    const/4 p1, 0x1

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/google/android/material/internal/b;->boundsChanged:Z

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->X()V

    .line 20
    :cond_0
    return-void
.end method

.method public l(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/material/internal/b;->textToDraw:Ljava/lang/CharSequence;

    .line 7
    .line 8
    if-eqz v1, :cond_5

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/google/android/material/internal/b;->drawTitle:Z

    .line 11
    .line 12
    if-eqz v1, :cond_5

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/material/internal/b;->textPaint:Landroid/text/TextPaint;

    .line 15
    .line 16
    iget v2, p0, Lcom/google/android/material/internal/b;->currentTextSize:F

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 20
    .line 21
    iget v1, p0, Lcom/google/android/material/internal/b;->currentDrawX:F

    .line 22
    .line 23
    iget v2, p0, Lcom/google/android/material/internal/b;->currentDrawY:F

    .line 24
    .line 25
    iget-boolean v3, p0, Lcom/google/android/material/internal/b;->useTexture:Z

    .line 26
    const/4 v4, 0x0

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    iget-object v3, p0, Lcom/google/android/material/internal/b;->expandedTitleTexture:Landroid/graphics/Bitmap;

    .line 31
    .line 32
    if-eqz v3, :cond_0

    .line 33
    const/4 v3, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v3, v4

    .line 36
    .line 37
    :goto_0
    iget v5, p0, Lcom/google/android/material/internal/b;->scale:F

    .line 38
    .line 39
    const/high16 v6, 0x3f800000    # 1.0f

    .line 40
    .line 41
    cmpl-float v6, v5, v6

    .line 42
    .line 43
    if-eqz v6, :cond_1

    .line 44
    .line 45
    iget-boolean v6, p0, Lcom/google/android/material/internal/b;->fadeModeEnabled:Z

    .line 46
    .line 47
    if-nez v6, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v5, v5, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 51
    .line 52
    :cond_1
    if-eqz v3, :cond_2

    .line 53
    .line 54
    iget-object v3, p0, Lcom/google/android/material/internal/b;->expandedTitleTexture:Landroid/graphics/Bitmap;

    .line 55
    .line 56
    iget-object v4, p0, Lcom/google/android/material/internal/b;->texturePaint:Landroid/graphics/Paint;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 63
    return-void

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/internal/b;->I0()Z

    .line 67
    move-result v3

    .line 68
    .line 69
    if-eqz v3, :cond_4

    .line 70
    .line 71
    iget-boolean v3, p0, Lcom/google/android/material/internal/b;->fadeModeEnabled:Z

    .line 72
    .line 73
    if-eqz v3, :cond_3

    .line 74
    .line 75
    iget v3, p0, Lcom/google/android/material/internal/b;->expandedFraction:F

    .line 76
    .line 77
    iget v5, p0, Lcom/google/android/material/internal/b;->fadeModeThresholdFraction:F

    .line 78
    .line 79
    cmpl-float v3, v3, v5

    .line 80
    .line 81
    if-lez v3, :cond_4

    .line 82
    .line 83
    :cond_3
    iget v1, p0, Lcom/google/android/material/internal/b;->currentDrawX:F

    .line 84
    .line 85
    iget-object v3, p0, Lcom/google/android/material/internal/b;->textLayout:Landroid/text/StaticLayout;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v4}, Landroid/text/StaticLayout;->getLineStart(I)I

    .line 89
    move-result v3

    .line 90
    int-to-float v3, v3

    .line 91
    sub-float/2addr v1, v3

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/material/internal/b;->m(Landroid/graphics/Canvas;FF)V

    .line 95
    goto :goto_1

    .line 96
    .line 97
    .line 98
    :cond_4
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 99
    .line 100
    iget-object v1, p0, Lcom/google/android/material/internal/b;->textLayout:Landroid/text/StaticLayout;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 104
    .line 105
    .line 106
    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 107
    :cond_5
    return-void
.end method

.method public l0(Landroid/graphics/Rect;)V
    .locals 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 3
    .line 4
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 5
    .line 6
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 7
    .line 8
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/google/android/material/internal/b;->k0(IIII)V

    .line 12
    return-void
.end method

.method public m0(F)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/material/internal/b;->expandedLetterSpacing:F

    .line 3
    .line 4
    cmpl-float v0, v0, p1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput p1, p0, Lcom/google/android/material/internal/b;->expandedLetterSpacing:F

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->Y()V

    .line 12
    :cond_0
    return-void
.end method

.method public n0(I)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/material/resources/d;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/material/internal/b;->view:Landroid/view/View;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1, p1}, Lcom/google/android/material/resources/d;-><init>(Landroid/content/Context;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/material/resources/d;->i()Landroid/content/res/ColorStateList;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/material/resources/d;->i()Landroid/content/res/ColorStateList;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    iput-object p1, p0, Lcom/google/android/material/internal/b;->expandedTextColor:Landroid/content/res/ColorStateList;

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/resources/d;->j()F

    .line 27
    move-result p1

    .line 28
    const/4 v1, 0x0

    .line 29
    .line 30
    cmpl-float p1, p1, v1

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/google/android/material/resources/d;->j()F

    .line 36
    move-result p1

    .line 37
    .line 38
    iput p1, p0, Lcom/google/android/material/internal/b;->expandedTextSize:F

    .line 39
    .line 40
    :cond_1
    iget-object p1, v0, Lcom/google/android/material/resources/d;->shadowColor:Landroid/content/res/ColorStateList;

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    iput-object p1, p0, Lcom/google/android/material/internal/b;->expandedShadowColor:Landroid/content/res/ColorStateList;

    .line 45
    .line 46
    :cond_2
    iget p1, v0, Lcom/google/android/material/resources/d;->shadowDx:F

    .line 47
    .line 48
    iput p1, p0, Lcom/google/android/material/internal/b;->expandedShadowDx:F

    .line 49
    .line 50
    iget p1, v0, Lcom/google/android/material/resources/d;->shadowDy:F

    .line 51
    .line 52
    iput p1, p0, Lcom/google/android/material/internal/b;->expandedShadowDy:F

    .line 53
    .line 54
    iget p1, v0, Lcom/google/android/material/resources/d;->shadowRadius:F

    .line 55
    .line 56
    iput p1, p0, Lcom/google/android/material/internal/b;->expandedShadowRadius:F

    .line 57
    .line 58
    iget p1, v0, Lcom/google/android/material/resources/d;->letterSpacing:F

    .line 59
    .line 60
    iput p1, p0, Lcom/google/android/material/internal/b;->expandedLetterSpacing:F

    .line 61
    .line 62
    iget-object p1, p0, Lcom/google/android/material/internal/b;->expandedFontCallback:Lcom/google/android/material/resources/a;

    .line 63
    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/google/android/material/resources/a;->c()V

    .line 68
    .line 69
    :cond_3
    new-instance p1, Lcom/google/android/material/resources/a;

    .line 70
    .line 71
    new-instance v1, Lcom/google/android/material/internal/b$b;

    .line 72
    .line 73
    .line 74
    invoke-direct {v1, p0}, Lcom/google/android/material/internal/b$b;-><init>(Lcom/google/android/material/internal/b;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/google/android/material/resources/d;->e()Landroid/graphics/Typeface;

    .line 78
    move-result-object v2

    .line 79
    .line 80
    .line 81
    invoke-direct {p1, v1, v2}, Lcom/google/android/material/resources/a;-><init>(Lcom/google/android/material/resources/a$a;Landroid/graphics/Typeface;)V

    .line 82
    .line 83
    iput-object p1, p0, Lcom/google/android/material/internal/b;->expandedFontCallback:Lcom/google/android/material/resources/a;

    .line 84
    .line 85
    iget-object p1, p0, Lcom/google/android/material/internal/b;->view:Landroid/view/View;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    iget-object v1, p0, Lcom/google/android/material/internal/b;->expandedFontCallback:Lcom/google/android/material/resources/a;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/resources/d;->h(Landroid/content/Context;Lcom/google/android/material/resources/f;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->Y()V

    .line 98
    return-void
.end method

.method public o(Landroid/graphics/RectF;II)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/b;->text:Ljava/lang/CharSequence;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/b;->f(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/google/android/material/internal/b;->isRtl:Z

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/internal/b;->s(II)F

    .line 12
    move-result v0

    .line 13
    .line 14
    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/material/internal/b;->collapsedBounds:Landroid/graphics/Rect;

    .line 17
    .line 18
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 19
    int-to-float v0, v0

    .line 20
    .line 21
    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/internal/b;->t(Landroid/graphics/RectF;II)F

    .line 25
    move-result p2

    .line 26
    .line 27
    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 28
    .line 29
    iget-object p2, p0, Lcom/google/android/material/internal/b;->collapsedBounds:Landroid/graphics/Rect;

    .line 30
    .line 31
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 32
    int-to-float p2, p2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->r()F

    .line 36
    move-result p3

    .line 37
    add-float/2addr p2, p3

    .line 38
    .line 39
    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 40
    return-void
.end method

.method public p()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/b;->collapsedTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public p0(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/b;->expandedTextColor:Landroid/content/res/ColorStateList;

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/material/internal/b;->expandedTextColor:Landroid/content/res/ColorStateList;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->Y()V

    .line 10
    :cond_0
    return-void
.end method

.method public q()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/b;->collapsedTextGravity:I

    return v0
.end method

.method public q0(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/material/internal/b;->expandedTextGravity:I

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/google/android/material/internal/b;->expandedTextGravity:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->Y()V

    .line 10
    :cond_0
    return-void
.end method

.method public r()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/b;->tmpPaint:Landroid/text/TextPaint;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/b;->N(Landroid/text/TextPaint;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/internal/b;->tmpPaint:Landroid/text/TextPaint;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    .line 11
    move-result v0

    .line 12
    neg-float v0, v0

    .line 13
    return v0
.end method

.method public r0(F)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/material/internal/b;->expandedTextSize:F

    .line 3
    .line 4
    cmpl-float v0, v0, p1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput p1, p0, Lcom/google/android/material/internal/b;->expandedTextSize:F

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->Y()V

    .line 12
    :cond_0
    return-void
.end method

.method public s0(Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/b;->t0(Landroid/graphics/Typeface;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->Y()V

    .line 10
    :cond_0
    return-void
.end method

.method public u()Landroid/graphics/Typeface;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/b;->collapsedTypeface:Landroid/graphics/Typeface;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 8
    :goto_0
    return-object v0
.end method

.method public u0(F)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Landroidx/core/math/MathUtils;->a(FFF)F

    .line 7
    move-result p1

    .line 8
    .line 9
    iget v0, p0, Lcom/google/android/material/internal/b;->expandedFraction:F

    .line 10
    .line 11
    cmpl-float v0, p1, v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iput p1, p0, Lcom/google/android/material/internal/b;->expandedFraction:F

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/google/android/material/internal/b;->c()V

    .line 19
    :cond_0
    return-void
.end method

.method public v()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/b;->collapsedTextColor:Landroid/content/res/ColorStateList;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/b;->w(Landroid/content/res/ColorStateList;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public v0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/internal/b;->fadeModeEnabled:Z

    return-void
.end method

.method public w0(F)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/material/internal/b;->fadeModeStartFraction:F

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/material/internal/b;->e()F

    .line 6
    move-result p1

    .line 7
    .line 8
    iput p1, p0, Lcom/google/android/material/internal/b;->fadeModeThresholdFraction:F

    .line 9
    return-void
.end method

.method public x0(I)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/internal/b;->hyphenationFrequency:I

    return-void
.end method

.method public y()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/b;->expandedLineCount:I

    return v0
.end method

.method public z()F
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/b;->tmpPaint:Landroid/text/TextPaint;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/b;->O(Landroid/text/TextPaint;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/internal/b;->tmpPaint:Landroid/text/TextPaint;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    .line 11
    move-result v0

    .line 12
    neg-float v0, v0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/material/internal/b;->tmpPaint:Landroid/text/TextPaint;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    .line 18
    move-result v1

    .line 19
    add-float/2addr v0, v1

    .line 20
    return v0
.end method

.method public z0(F)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/internal/b;->lineSpacingAdd:F

    return-void
.end method
