.class Lcom/google/android/material/floatingactionbutton/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/d$g;,
        Lcom/google/android/material/floatingactionbutton/d$i;,
        Lcom/google/android/material/floatingactionbutton/d$h;,
        Lcom/google/android/material/floatingactionbutton/d$l;,
        Lcom/google/android/material/floatingactionbutton/d$m;,
        Lcom/google/android/material/floatingactionbutton/d$k;,
        Lcom/google/android/material/floatingactionbutton/d$j;
    }
.end annotation


# static fields
.field static final ANIM_STATE_HIDING:I = 0x1

.field static final ANIM_STATE_NONE:I = 0x0

.field static final ANIM_STATE_SHOWING:I = 0x2

.field static final ELEVATION_ANIM_DELAY:J = 0x64L

.field static final ELEVATION_ANIM_DURATION:J = 0x64L

.field static final ELEVATION_ANIM_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field static final EMPTY_STATE_SET:[I

.field static final ENABLED_STATE_SET:[I

.field static final FOCUSED_ENABLED_STATE_SET:[I

.field private static final HIDE_ICON_SCALE:F = 0.4f

.field private static final HIDE_OPACITY:F = 0.0f

.field private static final HIDE_SCALE:F = 0.4f

.field static final HOVERED_ENABLED_STATE_SET:[I

.field static final HOVERED_FOCUSED_ENABLED_STATE_SET:[I

.field static final PRESSED_ENABLED_STATE_SET:[I

.field static final SHADOW_MULTIPLIER:F = 1.5f

.field private static final SHOW_ICON_SCALE:F = 1.0f

.field private static final SHOW_OPACITY:F = 1.0f

.field private static final SHOW_SCALE:F = 1.0f

.field private static final SPEC_HIDE_ICON_SCALE:F

.field private static final SPEC_HIDE_SCALE:F


# instance fields
.field private animState:I

.field borderDrawable:Lcom/google/android/material/floatingactionbutton/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field contentBackground:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private currentAnimator:Landroid/animation/Animator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field elevation:F

.field ensureMinTouchTargetSize:Z

.field private hideListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private hideMotionSpec:Le3/h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field hoveredFocusedTranslationZ:F

.field private imageMatrixScale:F

.field private maxImageSize:I

.field minTouchTargetSize:I

.field private preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field pressedTranslationZ:F

.field rippleDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private rotation:F

.field shadowPaddingEnabled:Z

.field final shadowViewDelegate:Lq3/b;

.field shapeAppearance:Lcom/google/android/material/shape/k;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field shapeDrawable:Lcom/google/android/material/shape/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private showListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private showMotionSpec:Le3/h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final stateListAnimator:Lcom/google/android/material/internal/n;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final tmpMatrix:Landroid/graphics/Matrix;

.field private final tmpRect:Landroid/graphics/Rect;

.field private final tmpRectF1:Landroid/graphics/RectF;

.field private final tmpRectF2:Landroid/graphics/RectF;

.field private transformationCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/floatingactionbutton/d$j;",
            ">;"
        }
    .end annotation
.end field

.field final view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    sget-object v0, Le3/a;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 3
    .line 4
    sput-object v0, Lcom/google/android/material/floatingactionbutton/d;->ELEVATION_ANIM_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 5
    .line 6
    .line 7
    const v0, 0x10100a7

    .line 8
    .line 9
    .line 10
    const v1, 0x101009e

    .line 11
    .line 12
    .line 13
    filled-new-array {v0, v1}, [I

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sput-object v0, Lcom/google/android/material/floatingactionbutton/d;->PRESSED_ENABLED_STATE_SET:[I

    .line 17
    .line 18
    .line 19
    const v0, 0x1010367

    .line 20
    .line 21
    .line 22
    const v2, 0x101009c

    .line 23
    .line 24
    .line 25
    filled-new-array {v0, v2, v1}, [I

    .line 26
    move-result-object v3

    .line 27
    .line 28
    sput-object v3, Lcom/google/android/material/floatingactionbutton/d;->HOVERED_FOCUSED_ENABLED_STATE_SET:[I

    .line 29
    .line 30
    .line 31
    filled-new-array {v2, v1}, [I

    .line 32
    move-result-object v2

    .line 33
    .line 34
    sput-object v2, Lcom/google/android/material/floatingactionbutton/d;->FOCUSED_ENABLED_STATE_SET:[I

    .line 35
    .line 36
    .line 37
    filled-new-array {v0, v1}, [I

    .line 38
    move-result-object v0

    .line 39
    .line 40
    sput-object v0, Lcom/google/android/material/floatingactionbutton/d;->HOVERED_ENABLED_STATE_SET:[I

    .line 41
    .line 42
    .line 43
    filled-new-array {v1}, [I

    .line 44
    move-result-object v0

    .line 45
    .line 46
    sput-object v0, Lcom/google/android/material/floatingactionbutton/d;->ENABLED_STATE_SET:[I

    .line 47
    const/4 v0, 0x0

    .line 48
    .line 49
    new-array v0, v0, [I

    .line 50
    .line 51
    sput-object v0, Lcom/google/android/material/floatingactionbutton/d;->EMPTY_STATE_SET:[I

    .line 52
    return-void
.end method

.method constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lq3/b;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/d;->shadowPaddingEnabled:Z

    .line 7
    .line 8
    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    .line 10
    iput v0, p0, Lcom/google/android/material/floatingactionbutton/d;->imageMatrixScale:F

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput v0, p0, Lcom/google/android/material/floatingactionbutton/d;->animState:I

    .line 14
    .line 15
    new-instance v0, Landroid/graphics/Rect;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->tmpRect:Landroid/graphics/Rect;

    .line 21
    .line 22
    new-instance v0, Landroid/graphics/RectF;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 26
    .line 27
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->tmpRectF1:Landroid/graphics/RectF;

    .line 28
    .line 29
    new-instance v0, Landroid/graphics/RectF;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 33
    .line 34
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->tmpRectF2:Landroid/graphics/RectF;

    .line 35
    .line 36
    new-instance v0, Landroid/graphics/Matrix;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 40
    .line 41
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->tmpMatrix:Landroid/graphics/Matrix;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 44
    .line 45
    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/d;->shadowViewDelegate:Lq3/b;

    .line 46
    .line 47
    new-instance p2, Lcom/google/android/material/internal/n;

    .line 48
    .line 49
    .line 50
    invoke-direct {p2}, Lcom/google/android/material/internal/n;-><init>()V

    .line 51
    .line 52
    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/d;->stateListAnimator:Lcom/google/android/material/internal/n;

    .line 53
    .line 54
    sget-object v0, Lcom/google/android/material/floatingactionbutton/d;->PRESSED_ENABLED_STATE_SET:[I

    .line 55
    .line 56
    new-instance v1, Lcom/google/android/material/floatingactionbutton/d$i;

    .line 57
    .line 58
    .line 59
    invoke-direct {v1, p0}, Lcom/google/android/material/floatingactionbutton/d$i;-><init>(Lcom/google/android/material/floatingactionbutton/d;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, v1}, Lcom/google/android/material/floatingactionbutton/d;->k(Lcom/google/android/material/floatingactionbutton/d$m;)Landroid/animation/ValueAnimator;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, v0, v1}, Lcom/google/android/material/internal/n;->a([ILandroid/animation/ValueAnimator;)V

    .line 67
    .line 68
    sget-object v0, Lcom/google/android/material/floatingactionbutton/d;->HOVERED_FOCUSED_ENABLED_STATE_SET:[I

    .line 69
    .line 70
    new-instance v1, Lcom/google/android/material/floatingactionbutton/d$h;

    .line 71
    .line 72
    .line 73
    invoke-direct {v1, p0}, Lcom/google/android/material/floatingactionbutton/d$h;-><init>(Lcom/google/android/material/floatingactionbutton/d;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, v1}, Lcom/google/android/material/floatingactionbutton/d;->k(Lcom/google/android/material/floatingactionbutton/d$m;)Landroid/animation/ValueAnimator;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, v0, v1}, Lcom/google/android/material/internal/n;->a([ILandroid/animation/ValueAnimator;)V

    .line 81
    .line 82
    sget-object v0, Lcom/google/android/material/floatingactionbutton/d;->FOCUSED_ENABLED_STATE_SET:[I

    .line 83
    .line 84
    new-instance v1, Lcom/google/android/material/floatingactionbutton/d$h;

    .line 85
    .line 86
    .line 87
    invoke-direct {v1, p0}, Lcom/google/android/material/floatingactionbutton/d$h;-><init>(Lcom/google/android/material/floatingactionbutton/d;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0, v1}, Lcom/google/android/material/floatingactionbutton/d;->k(Lcom/google/android/material/floatingactionbutton/d$m;)Landroid/animation/ValueAnimator;

    .line 91
    move-result-object v1

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, v0, v1}, Lcom/google/android/material/internal/n;->a([ILandroid/animation/ValueAnimator;)V

    .line 95
    .line 96
    sget-object v0, Lcom/google/android/material/floatingactionbutton/d;->HOVERED_ENABLED_STATE_SET:[I

    .line 97
    .line 98
    new-instance v1, Lcom/google/android/material/floatingactionbutton/d$h;

    .line 99
    .line 100
    .line 101
    invoke-direct {v1, p0}, Lcom/google/android/material/floatingactionbutton/d$h;-><init>(Lcom/google/android/material/floatingactionbutton/d;)V

    .line 102
    .line 103
    .line 104
    invoke-direct {p0, v1}, Lcom/google/android/material/floatingactionbutton/d;->k(Lcom/google/android/material/floatingactionbutton/d$m;)Landroid/animation/ValueAnimator;

    .line 105
    move-result-object v1

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, v0, v1}, Lcom/google/android/material/internal/n;->a([ILandroid/animation/ValueAnimator;)V

    .line 109
    .line 110
    sget-object v0, Lcom/google/android/material/floatingactionbutton/d;->ENABLED_STATE_SET:[I

    .line 111
    .line 112
    new-instance v1, Lcom/google/android/material/floatingactionbutton/d$l;

    .line 113
    .line 114
    .line 115
    invoke-direct {v1, p0}, Lcom/google/android/material/floatingactionbutton/d$l;-><init>(Lcom/google/android/material/floatingactionbutton/d;)V

    .line 116
    .line 117
    .line 118
    invoke-direct {p0, v1}, Lcom/google/android/material/floatingactionbutton/d;->k(Lcom/google/android/material/floatingactionbutton/d$m;)Landroid/animation/ValueAnimator;

    .line 119
    move-result-object v1

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2, v0, v1}, Lcom/google/android/material/internal/n;->a([ILandroid/animation/ValueAnimator;)V

    .line 123
    .line 124
    sget-object v0, Lcom/google/android/material/floatingactionbutton/d;->EMPTY_STATE_SET:[I

    .line 125
    .line 126
    new-instance v1, Lcom/google/android/material/floatingactionbutton/d$g;

    .line 127
    .line 128
    .line 129
    invoke-direct {v1, p0}, Lcom/google/android/material/floatingactionbutton/d$g;-><init>(Lcom/google/android/material/floatingactionbutton/d;)V

    .line 130
    .line 131
    .line 132
    invoke-direct {p0, v1}, Lcom/google/android/material/floatingactionbutton/d;->k(Lcom/google/android/material/floatingactionbutton/d$m;)Landroid/animation/ValueAnimator;

    .line 133
    move-result-object v1

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2, v0, v1}, Lcom/google/android/material/internal/n;->a([ILandroid/animation/ValueAnimator;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    .line 140
    move-result p1

    .line 141
    .line 142
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/d;->rotation:F

    .line 143
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/floatingactionbutton/d;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/d;->animState:I

    .line 3
    return p1
.end method

.method private a0()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->X(Landroid/view/View;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method static synthetic b(Lcom/google/android/material/floatingactionbutton/d;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->currentAnimator:Landroid/animation/Animator;

    .line 3
    return-object p1
.end method

.method static synthetic c(Lcom/google/android/material/floatingactionbutton/d;F)F
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/d;->imageMatrixScale:F

    .line 3
    return p1
.end method

.method static synthetic d(Lcom/google/android/material/floatingactionbutton/d;FLandroid/graphics/Matrix;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/d;->h(FLandroid/graphics/Matrix;)V

    .line 4
    return-void
.end method

.method private h(FLandroid/graphics/Matrix;)V
    .locals 5
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/d;->maxImageSize:I

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/d;->tmpRectF1:Landroid/graphics/RectF;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/d;->tmpRectF2:Landroid/graphics/RectF;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 23
    move-result v3

    .line 24
    int-to-float v3, v3

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 28
    move-result v0

    .line 29
    int-to-float v0, v0

    .line 30
    const/4 v4, 0x0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v4, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 34
    .line 35
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->maxImageSize:I

    .line 36
    int-to-float v3, v0

    .line 37
    int-to-float v0, v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v4, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 41
    .line 42
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 46
    .line 47
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->maxImageSize:I

    .line 48
    int-to-float v1, v0

    .line 49
    .line 50
    const/high16 v2, 0x40000000    # 2.0f

    .line 51
    div-float/2addr v1, v2

    .line 52
    int-to-float v0, v0

    .line 53
    div-float/2addr v0, v2

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p1, p1, v1, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 57
    :cond_0
    return-void
.end method

.method private h0(Landroid/animation/ObjectAnimator;)V
    .locals 2

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1a

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    new-instance v0, Lcom/google/android/material/floatingactionbutton/d$e;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/google/android/material/floatingactionbutton/d$e;-><init>(Lcom/google/android/material/floatingactionbutton/d;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 16
    return-void
.end method

.method private i(Le3/h;FFF)Landroid/animation/AnimatorSet;
    .locals 6
    .param p1    # Le3/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/d;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 8
    .line 9
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 10
    const/4 v3, 0x1

    .line 11
    .line 12
    new-array v4, v3, [F

    .line 13
    const/4 v5, 0x0

    .line 14
    .line 15
    aput p2, v4, v5

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    const-string v1, "opacity"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1}, Le3/h;->h(Ljava/lang/String;)Le3/i;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p2}, Le3/i;->a(Landroid/animation/Animator;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/d;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 34
    .line 35
    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 36
    .line 37
    new-array v2, v3, [F

    .line 38
    .line 39
    aput p3, v2, v5

    .line 40
    .line 41
    .line 42
    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 43
    move-result-object p2

    .line 44
    .line 45
    const-string v1, "scale"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v1}, Le3/h;->h(Ljava/lang/String;)Le3/i;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p2}, Le3/i;->a(Landroid/animation/Animator;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, p2}, Lcom/google/android/material/floatingactionbutton/d;->h0(Landroid/animation/ObjectAnimator;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/d;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 61
    .line 62
    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 63
    .line 64
    new-array v4, v3, [F

    .line 65
    .line 66
    aput p3, v4, v5

    .line 67
    .line 68
    .line 69
    invoke-static {p2, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 70
    move-result-object p2

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v1}, Le3/h;->h(Ljava/lang/String;)Le3/i;

    .line 74
    move-result-object p3

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3, p2}, Le3/i;->a(Landroid/animation/Animator;)V

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, p2}, Lcom/google/android/material/floatingactionbutton/d;->h0(Landroid/animation/ObjectAnimator;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/d;->tmpMatrix:Landroid/graphics/Matrix;

    .line 86
    .line 87
    .line 88
    invoke-direct {p0, p4, p2}, Lcom/google/android/material/floatingactionbutton/d;->h(FLandroid/graphics/Matrix;)V

    .line 89
    .line 90
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/d;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 91
    .line 92
    new-instance p3, Le3/f;

    .line 93
    .line 94
    .line 95
    invoke-direct {p3}, Le3/f;-><init>()V

    .line 96
    .line 97
    new-instance p4, Lcom/google/android/material/floatingactionbutton/d$c;

    .line 98
    .line 99
    .line 100
    invoke-direct {p4, p0}, Lcom/google/android/material/floatingactionbutton/d$c;-><init>(Lcom/google/android/material/floatingactionbutton/d;)V

    .line 101
    .line 102
    new-array v1, v3, [Landroid/graphics/Matrix;

    .line 103
    .line 104
    new-instance v2, Landroid/graphics/Matrix;

    .line 105
    .line 106
    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/d;->tmpMatrix:Landroid/graphics/Matrix;

    .line 107
    .line 108
    .line 109
    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 110
    .line 111
    aput-object v2, v1, v5

    .line 112
    .line 113
    .line 114
    invoke-static {p2, p3, p4, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    .line 115
    move-result-object p2

    .line 116
    .line 117
    const-string p3, "iconScale"

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, p3}, Le3/h;->h(Ljava/lang/String;)Le3/i;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, p2}, Le3/i;->a(Landroid/animation/Animator;)V

    .line 125
    .line 126
    .line 127
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    new-instance p1, Landroid/animation/AnimatorSet;

    .line 130
    .line 131
    .line 132
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-static {p1, v0}, Le3/b;->a(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 136
    return-object p1
.end method

.method private j(FFF)Landroid/animation/AnimatorSet;
    .locals 15

    .line 1
    move-object v10, p0

    .line 2
    .line 3
    new-instance v11, Landroid/animation/AnimatorSet;

    .line 4
    .line 5
    .line 6
    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    .line 7
    .line 8
    new-instance v12, Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 12
    const/4 v0, 0x2

    .line 13
    .line 14
    new-array v0, v0, [F

    .line 15
    .line 16
    .line 17
    fill-array-data v0, :array_0

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 21
    move-result-object v13

    .line 22
    .line 23
    iget-object v0, v10, Lcom/google/android/material/floatingactionbutton/d;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    .line 27
    move-result v2

    .line 28
    .line 29
    iget-object v0, v10, Lcom/google/android/material/floatingactionbutton/d;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    .line 33
    move-result v4

    .line 34
    .line 35
    iget-object v0, v10, Lcom/google/android/material/floatingactionbutton/d;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    .line 39
    move-result v6

    .line 40
    .line 41
    iget v7, v10, Lcom/google/android/material/floatingactionbutton/d;->imageMatrixScale:F

    .line 42
    .line 43
    new-instance v9, Landroid/graphics/Matrix;

    .line 44
    .line 45
    iget-object v0, v10, Lcom/google/android/material/floatingactionbutton/d;->tmpMatrix:Landroid/graphics/Matrix;

    .line 46
    .line 47
    .line 48
    invoke-direct {v9, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 49
    .line 50
    new-instance v14, Lcom/google/android/material/floatingactionbutton/d$d;

    .line 51
    move-object v0, v14

    .line 52
    move-object v1, p0

    .line 53
    .line 54
    move/from16 v3, p1

    .line 55
    .line 56
    move/from16 v5, p2

    .line 57
    .line 58
    move/from16 v8, p3

    .line 59
    .line 60
    .line 61
    invoke-direct/range {v0 .. v9}, Lcom/google/android/material/floatingactionbutton/d$d;-><init>(Lcom/google/android/material/floatingactionbutton/d;FFFFFFFLandroid/graphics/Matrix;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v13, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    invoke-static {v11, v12}, Le3/b;->a(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 71
    .line 72
    iget-object v0, v10, Lcom/google/android/material/floatingactionbutton/d;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    sget v1, Ld3/b;->motionDurationLong1:I

    .line 79
    .line 80
    iget-object v2, v10, Lcom/google/android/material/floatingactionbutton/d;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 84
    move-result-object v2

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 88
    move-result-object v2

    .line 89
    .line 90
    sget v3, Ld3/g;->material_motion_duration_long_1:I

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 94
    move-result v2

    .line 95
    .line 96
    .line 97
    invoke-static {v0, v1, v2}, Lo3/a;->d(Landroid/content/Context;II)I

    .line 98
    move-result v0

    .line 99
    int-to-long v0, v0

    .line 100
    .line 101
    .line 102
    invoke-virtual {v11, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 103
    .line 104
    iget-object v0, v10, Lcom/google/android/material/floatingactionbutton/d;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    sget v1, Ld3/b;->motionEasingStandard:I

    .line 111
    .line 112
    sget-object v2, Le3/a;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 113
    .line 114
    .line 115
    invoke-static {v0, v1, v2}, Lo3/a;->e(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    .line 116
    move-result-object v0

    .line 117
    .line 118
    .line 119
    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 120
    return-object v11

    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private k(Lcom/google/android/material/floatingactionbutton/d$m;)Landroid/animation/ValueAnimator;
    .locals 3
    .param p1    # Lcom/google/android/material/floatingactionbutton/d$m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/animation/ValueAnimator;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 6
    .line 7
    sget-object v1, Lcom/google/android/material/floatingactionbutton/d;->ELEVATION_ANIM_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 11
    .line 12
    const-wide/16 v1, 0x64

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 22
    const/4 p1, 0x2

    .line 23
    .line 24
    new-array p1, p1, [F

    .line 25
    .line 26
    .line 27
    fill-array-data p1, :array_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 31
    return-object v0

    .line 32
    nop

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private r()Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/google/android/material/floatingactionbutton/d$f;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/google/android/material/floatingactionbutton/d$f;-><init>(Lcom/google/android/material/floatingactionbutton/d;)V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 14
    return-object v0
.end method


# virtual methods
.method A()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->stateListAnimator:Lcom/google/android/material/internal/n;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/internal/n;->c()V

    .line 6
    return-void
.end method

.method B()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->shapeDrawable:Lcom/google/android/material/shape/g;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/d;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v0}, Lcom/google/android/material/shape/h;->f(Landroid/view/View;Lcom/google/android/material/shape/g;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/d;->K()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/d;->r()Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 29
    :cond_1
    return-void
.end method

.method C()V
    .locals 0

    .line 1
    return-void
.end method

.method D()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/d;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 17
    :cond_0
    return-void
.end method

.method E([I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->stateListAnimator:Lcom/google/android/material/internal/n;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/n;->d([I)V

    .line 6
    return-void
.end method

.method F(FFF)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/d;->f0()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/d;->g0(F)V

    .line 7
    return-void
.end method

.method G(Landroid/graphics/Rect;)V
    .locals 7
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->contentBackground:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    const-string v1, "Didn\'t initialize content background"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/d;->Z()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/d;->contentBackground:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 20
    .line 21
    iget v4, p1, Landroid/graphics/Rect;->top:I

    .line 22
    .line 23
    iget v5, p1, Landroid/graphics/Rect;->right:I

    .line 24
    .line 25
    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    .line 26
    move-object v1, v0

    .line 27
    .line 28
    .line 29
    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 30
    .line 31
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->shadowViewDelegate:Lq3/b;

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, v0}, Lq3/b;->b(Landroid/graphics/drawable/Drawable;)V

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->shadowViewDelegate:Lq3/b;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->contentBackground:Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, v0}, Lq3/b;->b(Landroid/graphics/drawable/Drawable;)V

    .line 43
    :goto_0
    return-void
.end method

.method H()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    .line 6
    move-result v0

    .line 7
    .line 8
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/d;->rotation:F

    .line 9
    .line 10
    cmpl-float v1, v1, v0

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iput v0, p0, Lcom/google/android/material/floatingactionbutton/d;->rotation:F

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/d;->d0()V

    .line 18
    :cond_0
    return-void
.end method

.method I()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->transformationCallbacks:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Lcom/google/android/material/floatingactionbutton/d$j;

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Lcom/google/android/material/floatingactionbutton/d$j;->a()V

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method J()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->transformationCallbacks:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Lcom/google/android/material/floatingactionbutton/d$j;

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Lcom/google/android/material/floatingactionbutton/d$j;->b()V

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method K()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method L(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->shapeDrawable:Lcom/google/android/material/shape/g;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/g;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->borderDrawable:Lcom/google/android/material/floatingactionbutton/c;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/c;->c(Landroid/content/res/ColorStateList;)V

    .line 15
    :cond_1
    return-void
.end method

.method M(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->shapeDrawable:Lcom/google/android/material/shape/g;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/g;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 8
    :cond_0
    return-void
.end method

.method final N(F)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->elevation:F

    .line 3
    .line 4
    cmpl-float v0, v0, p1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/d;->elevation:F

    .line 9
    .line 10
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->hoveredFocusedTranslationZ:F

    .line 11
    .line 12
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/d;->pressedTranslationZ:F

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/material/floatingactionbutton/d;->F(FFF)V

    .line 16
    :cond_0
    return-void
.end method

.method O(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/d;->ensureMinTouchTargetSize:Z

    return-void
.end method

.method final P(Le3/h;)V
    .locals 0
    .param p1    # Le3/h;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->hideMotionSpec:Le3/h;

    return-void
.end method

.method final Q(F)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->hoveredFocusedTranslationZ:F

    .line 3
    .line 4
    cmpl-float v0, v0, p1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/d;->hoveredFocusedTranslationZ:F

    .line 9
    .line 10
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->elevation:F

    .line 11
    .line 12
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/d;->pressedTranslationZ:F

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/material/floatingactionbutton/d;->F(FFF)V

    .line 16
    :cond_0
    return-void
.end method

.method final R(F)V
    .locals 1

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/d;->imageMatrixScale:F

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->tmpMatrix:Landroid/graphics/Matrix;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/d;->h(FLandroid/graphics/Matrix;)V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 13
    return-void
.end method

.method final S(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->maxImageSize:I

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/d;->maxImageSize:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/d;->e0()V

    .line 10
    :cond_0
    return-void
.end method

.method T(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/d;->minTouchTargetSize:I

    return-void
.end method

.method final U(F)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->pressedTranslationZ:F

    .line 3
    .line 4
    cmpl-float v0, v0, p1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/d;->pressedTranslationZ:F

    .line 9
    .line 10
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->elevation:F

    .line 11
    .line 12
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/d;->hoveredFocusedTranslationZ:F

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/material/floatingactionbutton/d;->F(FFF)V

    .line 16
    :cond_0
    return-void
.end method

.method V(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/google/android/material/ripple/b;->d(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 12
    :cond_0
    return-void
.end method

.method W(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/d;->shadowPaddingEnabled:Z

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/d;->f0()V

    .line 6
    return-void
.end method

.method final X(Lcom/google/android/material/shape/k;)V
    .locals 2
    .param p1    # Lcom/google/android/material/shape/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->shapeAppearance:Lcom/google/android/material/shape/k;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->shapeDrawable:Lcom/google/android/material/shape/g;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/g;->setShapeAppearanceModel(Lcom/google/android/material/shape/k;)V

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    instance-of v1, v0, Lcom/google/android/material/shape/o;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/google/android/material/shape/o;

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, p1}, Lcom/google/android/material/shape/o;->setShapeAppearanceModel(Lcom/google/android/material/shape/k;)V

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->borderDrawable:Lcom/google/android/material/floatingactionbutton/c;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/c;->f(Lcom/google/android/material/shape/k;)V

    .line 28
    :cond_2
    return-void
.end method

.method final Y(Le3/h;)V
    .locals 0
    .param p1    # Le3/h;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->showMotionSpec:Le3/h;

    return-void
.end method

.method Z()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method final b0()Z
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/d;->ensureMinTouchTargetSize:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    .line 10
    move-result v0

    .line 11
    .line 12
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/d;->minTouchTargetSize:I

    .line 13
    .line 14
    if-lt v0, v1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    return v0
.end method

.method c0(Lcom/google/android/material/floatingactionbutton/d$k;Z)V
    .locals 6
    .param p1    # Lcom/google/android/material/floatingactionbutton/d$k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/d;->z()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->currentAnimator:Landroid/animation/Animator;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->showMotionSpec:Le3/h;

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_2
    move v0, v1

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/d;->a0()Z

    .line 26
    move-result v2

    .line 27
    .line 28
    const/high16 v3, 0x3f800000    # 1.0f

    .line 29
    .line 30
    if-eqz v2, :cond_9

    .line 31
    .line 32
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/d;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 36
    move-result v1

    .line 37
    .line 38
    if-eqz v1, :cond_6

    .line 39
    .line 40
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/d;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 41
    const/4 v2, 0x0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 45
    .line 46
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/d;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 47
    .line 48
    .line 49
    const v4, 0x3ecccccd    # 0.4f

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    move v5, v4

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    move v5, v2

    .line 55
    .line 56
    .line 57
    :goto_1
    invoke-virtual {v1, v5}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleY(F)V

    .line 58
    .line 59
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/d;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    move v5, v4

    .line 63
    goto :goto_2

    .line 64
    :cond_4
    move v5, v2

    .line 65
    .line 66
    .line 67
    :goto_2
    invoke-virtual {v1, v5}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleX(F)V

    .line 68
    .line 69
    if-eqz v0, :cond_5

    .line 70
    move v2, v4

    .line 71
    .line 72
    .line 73
    :cond_5
    invoke-virtual {p0, v2}, Lcom/google/android/material/floatingactionbutton/d;->R(F)V

    .line 74
    .line 75
    :cond_6
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->showMotionSpec:Le3/h;

    .line 76
    .line 77
    if-eqz v0, :cond_7

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, v0, v3, v3, v3}, Lcom/google/android/material/floatingactionbutton/d;->i(Le3/h;FFF)Landroid/animation/AnimatorSet;

    .line 81
    move-result-object v0

    .line 82
    goto :goto_3

    .line 83
    .line 84
    .line 85
    :cond_7
    invoke-direct {p0, v3, v3, v3}, Lcom/google/android/material/floatingactionbutton/d;->j(FFF)Landroid/animation/AnimatorSet;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    :goto_3
    new-instance v1, Lcom/google/android/material/floatingactionbutton/d$b;

    .line 89
    .line 90
    .line 91
    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/material/floatingactionbutton/d$b;-><init>(Lcom/google/android/material/floatingactionbutton/d;ZLcom/google/android/material/floatingactionbutton/d$k;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 95
    .line 96
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->showListeners:Ljava/util/ArrayList;

    .line 97
    .line 98
    if-eqz p1, :cond_8

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    .line 105
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    move-result p2

    .line 107
    .line 108
    if-eqz p2, :cond_8

    .line 109
    .line 110
    .line 111
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    move-result-object p2

    .line 113
    .line 114
    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 118
    goto :goto_4

    .line 119
    .line 120
    .line 121
    :cond_8
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 122
    goto :goto_5

    .line 123
    .line 124
    :cond_9
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1, p2}, Lcom/google/android/material/internal/v;->b(IZ)V

    .line 128
    .line 129
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/d;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 133
    .line 134
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/d;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleY(F)V

    .line 138
    .line 139
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/d;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleX(F)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v3}, Lcom/google/android/material/floatingactionbutton/d;->R(F)V

    .line 146
    .line 147
    if-eqz p1, :cond_a

    .line 148
    .line 149
    .line 150
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/d$k;->a()V

    .line 151
    :cond_a
    :goto_5
    return-void
.end method

.method d0()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->shapeDrawable:Lcom/google/android/material/shape/g;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/d;->rotation:F

    .line 7
    float-to-int v1, v1

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/g;->g0(I)V

    .line 11
    :cond_0
    return-void
.end method

.method public e(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->hideListeners:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->hideListeners:Ljava/util/ArrayList;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->hideListeners:Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method final e0()V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->imageMatrixScale:F

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/d;->R(F)V

    .line 6
    return-void
.end method

.method f(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->showListeners:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->showListeners:Ljava/util/ArrayList;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->showListeners:Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method final f0()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->tmpRect:Landroid/graphics/Rect;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/d;->s(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/d;->G(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/d;->shadowViewDelegate:Lq3/b;

    .line 11
    .line 12
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 13
    .line 14
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 15
    .line 16
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 17
    .line 18
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 19
    .line 20
    .line 21
    invoke-interface {v1, v2, v3, v4, v0}, Lq3/b;->a(IIII)V

    .line 22
    return-void
.end method

.method g(Lcom/google/android/material/floatingactionbutton/d$j;)V
    .locals 1
    .param p1    # Lcom/google/android/material/floatingactionbutton/d$j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->transformationCallbacks:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->transformationCallbacks:Ljava/util/ArrayList;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->transformationCallbacks:Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method g0(F)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->shapeDrawable:Lcom/google/android/material/shape/g;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/g;->Y(F)V

    .line 8
    :cond_0
    return-void
.end method

.method l()Lcom/google/android/material/shape/g;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->shapeAppearance:Lcom/google/android/material/shape/k;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/core/util/Preconditions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/material/shape/k;

    .line 9
    .line 10
    new-instance v1, Lcom/google/android/material/shape/g;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v0}, Lcom/google/android/material/shape/g;-><init>(Lcom/google/android/material/shape/k;)V

    .line 14
    return-object v1
.end method

.method final m()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->contentBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method n()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->elevation:F

    return v0
.end method

.method o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/d;->ensureMinTouchTargetSize:Z

    return v0
.end method

.method final p()Le3/h;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->hideMotionSpec:Le3/h;

    return-object v0
.end method

.method q()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->hoveredFocusedTranslationZ:F

    return v0
.end method

.method s(Landroid/graphics/Rect;)V
    .locals 5
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/d;->ensureMinTouchTargetSize:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->minTouchTargetSize:I

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/d;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    .line 12
    move-result v1

    .line 13
    sub-int/2addr v0, v1

    .line 14
    .line 15
    div-int/lit8 v0, v0, 0x2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    .line 19
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/material/floatingactionbutton/d;->shadowPaddingEnabled:Z

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/d;->n()F

    .line 25
    move-result v1

    .line 26
    .line 27
    iget v2, p0, Lcom/google/android/material/floatingactionbutton/d;->pressedTranslationZ:F

    .line 28
    add-float/2addr v1, v2

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v1, 0x0

    .line 31
    :goto_1
    float-to-double v2, v1

    .line 32
    .line 33
    .line 34
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 35
    move-result-wide v2

    .line 36
    double-to-int v2, v2

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 40
    move-result v2

    .line 41
    .line 42
    const/high16 v3, 0x3fc00000    # 1.5f

    .line 43
    mul-float/2addr v1, v3

    .line 44
    float-to-double v3, v1

    .line 45
    .line 46
    .line 47
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 48
    move-result-wide v3

    .line 49
    double-to-int v1, v3

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 53
    move-result v0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v2, v0, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 57
    return-void
.end method

.method t()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->pressedTranslationZ:F

    return v0
.end method

.method final u()Lcom/google/android/material/shape/k;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->shapeAppearance:Lcom/google/android/material/shape/k;

    return-object v0
.end method

.method final v()Le3/h;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->showMotionSpec:Le3/h;

    return-object v0
.end method

.method w(Lcom/google/android/material/floatingactionbutton/d$k;Z)V
    .locals 2
    .param p1    # Lcom/google/android/material/floatingactionbutton/d$k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/d;->y()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->currentAnimator:Landroid/animation/Animator;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/d;->a0()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_4

    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->hideMotionSpec:Le3/h;

    .line 23
    const/4 v1, 0x0

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v0, v1, v1, v1}, Lcom/google/android/material/floatingactionbutton/d;->i(Le3/h;FFF)Landroid/animation/AnimatorSet;

    .line 29
    move-result-object v0

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_2
    const v0, 0x3ecccccd    # 0.4f

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v1, v0, v0}, Lcom/google/android/material/floatingactionbutton/d;->j(FFF)Landroid/animation/AnimatorSet;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    :goto_0
    new-instance v1, Lcom/google/android/material/floatingactionbutton/d$a;

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/material/floatingactionbutton/d$a;-><init>(Lcom/google/android/material/floatingactionbutton/d;ZLcom/google/android/material/floatingactionbutton/d$k;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 46
    .line 47
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->hideListeners:Ljava/util/ArrayList;

    .line 48
    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result p2

    .line 58
    .line 59
    if-eqz p2, :cond_3

    .line 60
    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object p2

    .line 64
    .line 65
    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 69
    goto :goto_1

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 73
    goto :goto_3

    .line 74
    .line 75
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 76
    .line 77
    if-eqz p2, :cond_5

    .line 78
    .line 79
    const/16 v1, 0x8

    .line 80
    goto :goto_2

    .line 81
    :cond_5
    const/4 v1, 0x4

    .line 82
    .line 83
    .line 84
    :goto_2
    invoke-virtual {v0, v1, p2}, Lcom/google/android/material/internal/v;->b(IZ)V

    .line 85
    .line 86
    if-eqz p1, :cond_6

    .line 87
    .line 88
    .line 89
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/d$k;->b()V

    .line 90
    :cond_6
    :goto_3
    return-void
.end method

.method x(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/content/res/ColorStateList;I)V
    .locals 0
    .param p2    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/d;->l()Lcom/google/android/material/shape/g;

    .line 4
    move-result-object p4

    .line 5
    .line 6
    iput-object p4, p0, Lcom/google/android/material/floatingactionbutton/d;->shapeDrawable:Lcom/google/android/material/shape/g;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p4, p1}, Lcom/google/android/material/shape/g;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->shapeDrawable:Lcom/google/android/material/shape/g;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/g;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->shapeDrawable:Lcom/google/android/material/shape/g;

    .line 19
    .line 20
    .line 21
    const p2, -0xbbbbbc

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/g;->f0(I)V

    .line 25
    .line 26
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->shapeDrawable:Lcom/google/android/material/shape/g;

    .line 27
    .line 28
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/d;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/g;->O(Landroid/content/Context;)V

    .line 36
    .line 37
    new-instance p1, Lcom/google/android/material/ripple/a;

    .line 38
    .line 39
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/d;->shapeDrawable:Lcom/google/android/material/shape/g;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/google/android/material/shape/g;->E()Lcom/google/android/material/shape/k;

    .line 43
    move-result-object p2

    .line 44
    .line 45
    .line 46
    invoke-direct {p1, p2}, Lcom/google/android/material/ripple/a;-><init>(Lcom/google/android/material/shape/k;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p3}, Lcom/google/android/material/ripple/b;->d(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 50
    move-result-object p2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lcom/google/android/material/ripple/a;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 54
    .line 55
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 56
    const/4 p2, 0x2

    .line 57
    .line 58
    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    .line 59
    .line 60
    iget-object p3, p0, Lcom/google/android/material/floatingactionbutton/d;->shapeDrawable:Lcom/google/android/material/shape/g;

    .line 61
    .line 62
    .line 63
    invoke-static {p3}, Landroidx/core/util/Preconditions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    move-result-object p3

    .line 65
    .line 66
    check-cast p3, Landroid/graphics/drawable/Drawable;

    .line 67
    const/4 p4, 0x0

    .line 68
    .line 69
    aput-object p3, p2, p4

    .line 70
    const/4 p3, 0x1

    .line 71
    .line 72
    aput-object p1, p2, p3

    .line 73
    .line 74
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    .line 75
    .line 76
    .line 77
    invoke-direct {p1, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 78
    .line 79
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->contentBackground:Landroid/graphics/drawable/Drawable;

    .line 80
    return-void
.end method

.method y()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->animState:I

    .line 13
    .line 14
    if-ne v0, v2, :cond_0

    .line 15
    move v1, v2

    .line 16
    :cond_0
    return v1

    .line 17
    .line 18
    :cond_1
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->animState:I

    .line 19
    const/4 v3, 0x2

    .line 20
    .line 21
    if-eq v0, v3, :cond_2

    .line 22
    move v1, v2

    .line 23
    :cond_2
    return v1
.end method

.method z()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->animState:I

    .line 13
    const/4 v3, 0x2

    .line 14
    .line 15
    if-ne v0, v3, :cond_0

    .line 16
    move v1, v2

    .line 17
    :cond_0
    return v1

    .line 18
    .line 19
    :cond_1
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->animState:I

    .line 20
    .line 21
    if-eq v0, v2, :cond_2

    .line 22
    move v1, v2

    .line 23
    :cond_2
    return v1
.end method
