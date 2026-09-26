.class public Landroidx/transition/ChangeBounds;
.super Landroidx/transition/Transition;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/ChangeBounds$ViewBounds;
    }
.end annotation


# static fields
.field private static final BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final POSITION_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeBounds:bounds"

.field private static final PROPNAME_CLIP:Ljava/lang/String; = "android:changeBounds:clip"

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:changeBounds:parent"

.field private static final PROPNAME_WINDOW_X:Ljava/lang/String; = "android:changeBounds:windowX"

.field private static final PROPNAME_WINDOW_Y:Ljava/lang/String; = "android:changeBounds:windowY"

.field private static final TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOP_LEFT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static sRectEvaluator:Landroidx/transition/RectEvaluator;

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mReparent:Z

.field private mResizeClip:Z

.field private mTempLocation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    .line 2
    const-string v0, "android:changeBounds:windowX"

    .line 3
    .line 4
    const-string v1, "android:changeBounds:windowY"

    .line 5
    .line 6
    const-string v2, "android:changeBounds:bounds"

    .line 7
    .line 8
    const-string v3, "android:changeBounds:clip"

    .line 9
    .line 10
    const-string v4, "android:changeBounds:parent"

    .line 11
    .line 12
    .line 13
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sput-object v0, Landroidx/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Landroidx/transition/ChangeBounds$1;

    .line 19
    .line 20
    const-string v1, "boundsOrigin"

    .line 21
    .line 22
    const-class v2, Landroid/graphics/PointF;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v2, v1}, Landroidx/transition/ChangeBounds$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 26
    .line 27
    sput-object v0, Landroidx/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    .line 28
    .line 29
    new-instance v0, Landroidx/transition/ChangeBounds$2;

    .line 30
    .line 31
    .line 32
    const-string/jumbo v1, "topLeft"

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v2, v1}, Landroidx/transition/ChangeBounds$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 36
    .line 37
    sput-object v0, Landroidx/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    .line 38
    .line 39
    new-instance v0, Landroidx/transition/ChangeBounds$3;

    .line 40
    .line 41
    const-string v3, "bottomRight"

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v2, v3}, Landroidx/transition/ChangeBounds$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 45
    .line 46
    sput-object v0, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    .line 47
    .line 48
    new-instance v0, Landroidx/transition/ChangeBounds$4;

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v2, v3}, Landroidx/transition/ChangeBounds$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 52
    .line 53
    sput-object v0, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    .line 54
    .line 55
    new-instance v0, Landroidx/transition/ChangeBounds$5;

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v2, v1}, Landroidx/transition/ChangeBounds$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 59
    .line 60
    sput-object v0, Landroidx/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    .line 61
    .line 62
    new-instance v0, Landroidx/transition/ChangeBounds$6;

    .line 63
    .line 64
    .line 65
    const-string/jumbo v1, "position"

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, v2, v1}, Landroidx/transition/ChangeBounds$6;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 69
    .line 70
    sput-object v0, Landroidx/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    .line 71
    .line 72
    new-instance v0, Landroidx/transition/RectEvaluator;

    .line 73
    .line 74
    .line 75
    invoke-direct {v0}, Landroidx/transition/RectEvaluator;-><init>()V

    .line 76
    .line 77
    sput-object v0, Landroidx/transition/ChangeBounds;->sRectEvaluator:Landroidx/transition/RectEvaluator;

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    iput-boolean v0, p0, Landroidx/transition/ChangeBounds;->mReparent:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    iput-boolean v0, p0, Landroidx/transition/ChangeBounds;->mReparent:Z

    .line 3
    sget-object v1, Landroidx/transition/Styleable;->CHANGE_BOUNDS:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    check-cast p2, Landroid/content/res/XmlResourceParser;

    const-string/jumbo v1, "resizeClip"

    invoke-static {p1, p2, v1, v0, v0}, Landroidx/core/content/res/TypedArrayUtils;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result p2

    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    invoke-virtual {p0, p2}, Landroidx/transition/ChangeBounds;->j0(Z)V

    return-void
.end method

.method private h0(Landroidx/transition/TransitionValues;)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->X(Landroid/view/View;)Z

    .line 6
    move-result v1

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 12
    move-result v1

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    :cond_0
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 23
    .line 24
    new-instance v2, Landroid/graphics/Rect;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 28
    move-result v3

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 32
    move-result v4

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 36
    move-result v5

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 40
    move-result v6

    .line 41
    .line 42
    .line 43
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 44
    .line 45
    const-string v3, "android:changeBounds:bounds"

    .line 46
    .line 47
    .line 48
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 51
    .line 52
    iget-object v2, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    const-string v3, "android:changeBounds:parent"

    .line 59
    .line 60
    .line 61
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    iget-boolean v1, p0, Landroidx/transition/ChangeBounds;->mReparent:Z

    .line 64
    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    iget-object v1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 68
    .line 69
    iget-object v2, p0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 73
    .line 74
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 75
    .line 76
    iget-object v2, p0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    .line 77
    const/4 v3, 0x0

    .line 78
    .line 79
    aget v2, v2, v3

    .line 80
    .line 81
    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    move-result-object v2

    .line 84
    .line 85
    const-string v3, "android:changeBounds:windowX"

    .line 86
    .line 87
    .line 88
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 91
    .line 92
    iget-object v2, p0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    .line 93
    const/4 v3, 0x1

    .line 94
    .line 95
    aget v2, v2, v3

    .line 96
    .line 97
    .line 98
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    move-result-object v2

    .line 100
    .line 101
    const-string v3, "android:changeBounds:windowY"

    .line 102
    .line 103
    .line 104
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    :cond_1
    iget-boolean v1, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    .line 107
    .line 108
    if-eqz v1, :cond_2

    .line 109
    .line 110
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 111
    .line 112
    const-string v1, "android:changeBounds:clip"

    .line 113
    .line 114
    .line 115
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->w(Landroid/view/View;)Landroid/graphics/Rect;

    .line 116
    move-result-object v0

    .line 117
    .line 118
    .line 119
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_2
    return-void
.end method

.method private i0(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/transition/ChangeBounds;->mReparent:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, v1}, Landroidx/transition/Transition;->v(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    .line 9
    move-result-object v0

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    if-ne p1, p2, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v1, v2

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_1
    iget-object p1, v0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 20
    .line 21
    if-ne p2, p1, :cond_0

    .line 22
    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public F()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public h(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/transition/ChangeBounds;->h0(Landroidx/transition/TransitionValues;)V

    .line 4
    return-void
.end method

.method public j0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    return-void
.end method

.method public k(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/transition/ChangeBounds;->h0(Landroidx/transition/TransitionValues;)V

    .line 4
    return-void
.end method

.method public o(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 18
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v8, p0

    .line 3
    .line 4
    move-object/from16 v0, p2

    .line 5
    .line 6
    move-object/from16 v1, p3

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    .line 13
    goto/16 :goto_c

    .line 14
    .line 15
    :cond_1
    iget-object v3, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 16
    .line 17
    iget-object v4, v1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 18
    .line 19
    const-string v5, "android:changeBounds:parent"

    .line 20
    .line 21
    .line 22
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    check-cast v3, Landroid/view/ViewGroup;

    .line 26
    .line 27
    .line 28
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v4

    .line 30
    .line 31
    check-cast v4, Landroid/view/ViewGroup;

    .line 32
    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    if-nez v4, :cond_3

    .line 36
    :cond_2
    const/4 v0, 0x0

    .line 37
    .line 38
    goto/16 :goto_c

    .line 39
    .line 40
    :cond_3
    iget-object v9, v1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 41
    .line 42
    .line 43
    invoke-direct {v8, v3, v4}, Landroidx/transition/ChangeBounds;->i0(Landroid/view/View;Landroid/view/View;)Z

    .line 44
    move-result v3

    .line 45
    .line 46
    if-eqz v3, :cond_1a

    .line 47
    .line 48
    iget-object v3, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 49
    .line 50
    const-string v5, "android:changeBounds:bounds"

    .line 51
    .line 52
    .line 53
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    check-cast v3, Landroid/graphics/Rect;

    .line 57
    .line 58
    iget-object v6, v1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 59
    .line 60
    .line 61
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    move-result-object v5

    .line 63
    .line 64
    check-cast v5, Landroid/graphics/Rect;

    .line 65
    .line 66
    iget v6, v3, Landroid/graphics/Rect;->left:I

    .line 67
    .line 68
    iget v7, v5, Landroid/graphics/Rect;->left:I

    .line 69
    .line 70
    iget v11, v3, Landroid/graphics/Rect;->top:I

    .line 71
    .line 72
    iget v12, v5, Landroid/graphics/Rect;->top:I

    .line 73
    .line 74
    iget v13, v3, Landroid/graphics/Rect;->right:I

    .line 75
    .line 76
    iget v14, v5, Landroid/graphics/Rect;->right:I

    .line 77
    .line 78
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 79
    .line 80
    iget v15, v5, Landroid/graphics/Rect;->bottom:I

    .line 81
    .line 82
    sub-int v5, v13, v6

    .line 83
    .line 84
    sub-int v2, v3, v11

    .line 85
    .line 86
    sub-int v10, v14, v7

    .line 87
    .line 88
    sub-int v4, v15, v12

    .line 89
    .line 90
    iget-object v0, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 91
    .line 92
    move-object/from16 v16, v9

    .line 93
    .line 94
    const-string v9, "android:changeBounds:clip"

    .line 95
    .line 96
    .line 97
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    check-cast v0, Landroid/graphics/Rect;

    .line 101
    .line 102
    iget-object v1, v1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 103
    .line 104
    .line 105
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    move-result-object v1

    .line 107
    move-object v9, v1

    .line 108
    .line 109
    check-cast v9, Landroid/graphics/Rect;

    .line 110
    .line 111
    if-eqz v5, :cond_4

    .line 112
    .line 113
    if-nez v2, :cond_5

    .line 114
    .line 115
    :cond_4
    if-eqz v10, :cond_9

    .line 116
    .line 117
    if-eqz v4, :cond_9

    .line 118
    .line 119
    :cond_5
    if-ne v6, v7, :cond_7

    .line 120
    .line 121
    if-eq v11, v12, :cond_6

    .line 122
    goto :goto_0

    .line 123
    :cond_6
    const/4 v1, 0x0

    .line 124
    goto :goto_1

    .line 125
    :cond_7
    :goto_0
    const/4 v1, 0x1

    .line 126
    .line 127
    :goto_1
    if-ne v13, v14, :cond_8

    .line 128
    .line 129
    if-eq v3, v15, :cond_a

    .line 130
    .line 131
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 132
    goto :goto_2

    .line 133
    :cond_9
    const/4 v1, 0x0

    .line 134
    .line 135
    :cond_a
    :goto_2
    if-eqz v0, :cond_b

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 139
    move-result v17

    .line 140
    .line 141
    if-eqz v17, :cond_c

    .line 142
    .line 143
    :cond_b
    if-nez v0, :cond_d

    .line 144
    .line 145
    if-eqz v9, :cond_d

    .line 146
    .line 147
    :cond_c
    add-int/lit8 v1, v1, 0x1

    .line 148
    .line 149
    :cond_d
    if-lez v1, :cond_19

    .line 150
    .line 151
    move-object/from16 p1, v9

    .line 152
    .line 153
    iget-boolean v9, v8, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    .line 154
    .line 155
    move-object/from16 p2, v0

    .line 156
    const/4 v0, 0x2

    .line 157
    .line 158
    if-nez v9, :cond_12

    .line 159
    .line 160
    move-object/from16 v9, v16

    .line 161
    .line 162
    .line 163
    invoke-static {v9, v6, v11, v13, v3}, Landroidx/transition/ViewUtils;->g(Landroid/view/View;IIII)V

    .line 164
    .line 165
    if-ne v1, v0, :cond_f

    .line 166
    .line 167
    if-ne v5, v10, :cond_e

    .line 168
    .line 169
    if-ne v2, v4, :cond_e

    .line 170
    .line 171
    .line 172
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/Transition;->x()Landroidx/transition/PathMotion;

    .line 173
    move-result-object v0

    .line 174
    int-to-float v1, v6

    .line 175
    int-to-float v2, v11

    .line 176
    int-to-float v3, v7

    .line 177
    int-to-float v4, v12

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/transition/PathMotion;->a(FFFF)Landroid/graphics/Path;

    .line 181
    move-result-object v0

    .line 182
    .line 183
    sget-object v1, Landroidx/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    .line 184
    .line 185
    .line 186
    invoke-static {v9, v1, v0}, Landroidx/transition/ObjectAnimatorUtils;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 187
    move-result-object v0

    .line 188
    .line 189
    goto/16 :goto_9

    .line 190
    .line 191
    :cond_e
    new-instance v1, Landroidx/transition/ChangeBounds$ViewBounds;

    .line 192
    .line 193
    .line 194
    invoke-direct {v1, v9}, Landroidx/transition/ChangeBounds$ViewBounds;-><init>(Landroid/view/View;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/Transition;->x()Landroidx/transition/PathMotion;

    .line 198
    move-result-object v2

    .line 199
    int-to-float v4, v6

    .line 200
    int-to-float v5, v11

    .line 201
    int-to-float v6, v7

    .line 202
    int-to-float v7, v12

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2, v4, v5, v6, v7}, Landroidx/transition/PathMotion;->a(FFFF)Landroid/graphics/Path;

    .line 206
    move-result-object v2

    .line 207
    .line 208
    sget-object v4, Landroidx/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    .line 209
    .line 210
    .line 211
    invoke-static {v1, v4, v2}, Landroidx/transition/ObjectAnimatorUtils;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 212
    move-result-object v2

    .line 213
    .line 214
    .line 215
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/Transition;->x()Landroidx/transition/PathMotion;

    .line 216
    move-result-object v4

    .line 217
    int-to-float v5, v13

    .line 218
    int-to-float v3, v3

    .line 219
    int-to-float v6, v14

    .line 220
    int-to-float v7, v15

    .line 221
    .line 222
    .line 223
    invoke-virtual {v4, v5, v3, v6, v7}, Landroidx/transition/PathMotion;->a(FFFF)Landroid/graphics/Path;

    .line 224
    move-result-object v3

    .line 225
    .line 226
    sget-object v4, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    .line 227
    .line 228
    .line 229
    invoke-static {v1, v4, v3}, Landroidx/transition/ObjectAnimatorUtils;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 230
    move-result-object v3

    .line 231
    .line 232
    new-instance v4, Landroid/animation/AnimatorSet;

    .line 233
    .line 234
    .line 235
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 236
    .line 237
    new-array v0, v0, [Landroid/animation/Animator;

    .line 238
    const/4 v5, 0x0

    .line 239
    .line 240
    aput-object v2, v0, v5

    .line 241
    const/4 v2, 0x1

    .line 242
    .line 243
    aput-object v3, v0, v2

    .line 244
    .line 245
    .line 246
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 247
    .line 248
    new-instance v0, Landroidx/transition/ChangeBounds$7;

    .line 249
    .line 250
    .line 251
    invoke-direct {v0, v8, v1}, Landroidx/transition/ChangeBounds$7;-><init>(Landroidx/transition/ChangeBounds;Landroidx/transition/ChangeBounds$ViewBounds;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v4, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 255
    move-object v0, v4

    .line 256
    .line 257
    goto/16 :goto_9

    .line 258
    .line 259
    :cond_f
    if-ne v6, v7, :cond_11

    .line 260
    .line 261
    if-eq v11, v12, :cond_10

    .line 262
    goto :goto_3

    .line 263
    .line 264
    .line 265
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/Transition;->x()Landroidx/transition/PathMotion;

    .line 266
    move-result-object v0

    .line 267
    int-to-float v1, v13

    .line 268
    int-to-float v2, v3

    .line 269
    int-to-float v3, v14

    .line 270
    int-to-float v4, v15

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/transition/PathMotion;->a(FFFF)Landroid/graphics/Path;

    .line 274
    move-result-object v0

    .line 275
    .line 276
    sget-object v1, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    .line 277
    .line 278
    .line 279
    invoke-static {v9, v1, v0}, Landroidx/transition/ObjectAnimatorUtils;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 280
    move-result-object v0

    .line 281
    .line 282
    goto/16 :goto_9

    .line 283
    .line 284
    .line 285
    :cond_11
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/Transition;->x()Landroidx/transition/PathMotion;

    .line 286
    move-result-object v0

    .line 287
    int-to-float v1, v6

    .line 288
    int-to-float v2, v11

    .line 289
    int-to-float v3, v7

    .line 290
    int-to-float v4, v12

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/transition/PathMotion;->a(FFFF)Landroid/graphics/Path;

    .line 294
    move-result-object v0

    .line 295
    .line 296
    sget-object v1, Landroidx/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    .line 297
    .line 298
    .line 299
    invoke-static {v9, v1, v0}, Landroidx/transition/ObjectAnimatorUtils;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 300
    move-result-object v0

    .line 301
    .line 302
    goto/16 :goto_9

    .line 303
    .line 304
    :cond_12
    move-object/from16 v9, v16

    .line 305
    .line 306
    .line 307
    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    .line 308
    move-result v1

    .line 309
    .line 310
    .line 311
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 312
    move-result v3

    .line 313
    add-int/2addr v1, v6

    .line 314
    add-int/2addr v3, v11

    .line 315
    .line 316
    .line 317
    invoke-static {v9, v6, v11, v1, v3}, Landroidx/transition/ViewUtils;->g(Landroid/view/View;IIII)V

    .line 318
    .line 319
    if-ne v6, v7, :cond_14

    .line 320
    .line 321
    if-eq v11, v12, :cond_13

    .line 322
    goto :goto_4

    .line 323
    :cond_13
    const/4 v11, 0x0

    .line 324
    goto :goto_5

    .line 325
    .line 326
    .line 327
    :cond_14
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/Transition;->x()Landroidx/transition/PathMotion;

    .line 328
    move-result-object v1

    .line 329
    int-to-float v3, v6

    .line 330
    int-to-float v6, v11

    .line 331
    int-to-float v11, v7

    .line 332
    int-to-float v13, v12

    .line 333
    .line 334
    .line 335
    invoke-virtual {v1, v3, v6, v11, v13}, Landroidx/transition/PathMotion;->a(FFFF)Landroid/graphics/Path;

    .line 336
    move-result-object v1

    .line 337
    .line 338
    sget-object v3, Landroidx/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    .line 339
    .line 340
    .line 341
    invoke-static {v9, v3, v1}, Landroidx/transition/ObjectAnimatorUtils;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 342
    move-result-object v1

    .line 343
    move-object v11, v1

    .line 344
    .line 345
    :goto_5
    if-nez p2, :cond_15

    .line 346
    .line 347
    new-instance v1, Landroid/graphics/Rect;

    .line 348
    const/4 v3, 0x0

    .line 349
    .line 350
    .line 351
    invoke-direct {v1, v3, v3, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 352
    goto :goto_6

    .line 353
    :cond_15
    const/4 v3, 0x0

    .line 354
    .line 355
    move-object/from16 v1, p2

    .line 356
    .line 357
    :goto_6
    if-nez p1, :cond_16

    .line 358
    .line 359
    new-instance v2, Landroid/graphics/Rect;

    .line 360
    .line 361
    .line 362
    invoke-direct {v2, v3, v3, v10, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 363
    goto :goto_7

    .line 364
    .line 365
    :cond_16
    move-object/from16 v2, p1

    .line 366
    .line 367
    .line 368
    :goto_7
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 369
    move-result v4

    .line 370
    .line 371
    if-nez v4, :cond_17

    .line 372
    .line 373
    .line 374
    invoke-static {v9, v1}, Landroidx/core/view/ViewCompat;->B0(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 375
    .line 376
    sget-object v4, Landroidx/transition/ChangeBounds;->sRectEvaluator:Landroidx/transition/RectEvaluator;

    .line 377
    .line 378
    new-array v0, v0, [Ljava/lang/Object;

    .line 379
    .line 380
    aput-object v1, v0, v3

    .line 381
    const/4 v1, 0x1

    .line 382
    .line 383
    aput-object v2, v0, v1

    .line 384
    .line 385
    const-string v1, "clipBounds"

    .line 386
    .line 387
    .line 388
    invoke-static {v9, v1, v4, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    .line 389
    move-result-object v10

    .line 390
    .line 391
    new-instance v13, Landroidx/transition/ChangeBounds$8;

    .line 392
    move-object v0, v13

    .line 393
    .line 394
    move-object/from16 v1, p0

    .line 395
    move-object v2, v9

    .line 396
    .line 397
    move-object/from16 v3, p1

    .line 398
    move v4, v7

    .line 399
    move v5, v12

    .line 400
    move v6, v14

    .line 401
    move v7, v15

    .line 402
    .line 403
    .line 404
    invoke-direct/range {v0 .. v7}, Landroidx/transition/ChangeBounds$8;-><init>(Landroidx/transition/ChangeBounds;Landroid/view/View;Landroid/graphics/Rect;IIII)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v10, v13}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 408
    move-object v2, v10

    .line 409
    goto :goto_8

    .line 410
    :cond_17
    const/4 v2, 0x0

    .line 411
    .line 412
    .line 413
    :goto_8
    invoke-static {v11, v2}, Landroidx/transition/TransitionUtils;->c(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 414
    move-result-object v0

    .line 415
    .line 416
    .line 417
    :goto_9
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 418
    move-result-object v1

    .line 419
    .line 420
    instance-of v1, v1, Landroid/view/ViewGroup;

    .line 421
    .line 422
    if-eqz v1, :cond_18

    .line 423
    .line 424
    .line 425
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 426
    move-result-object v1

    .line 427
    .line 428
    check-cast v1, Landroid/view/ViewGroup;

    .line 429
    const/4 v2, 0x1

    .line 430
    .line 431
    .line 432
    invoke-static {v1, v2}, Landroidx/transition/ViewGroupUtils;->d(Landroid/view/ViewGroup;Z)V

    .line 433
    .line 434
    new-instance v2, Landroidx/transition/ChangeBounds$9;

    .line 435
    .line 436
    .line 437
    invoke-direct {v2, v8, v1}, Landroidx/transition/ChangeBounds$9;-><init>(Landroidx/transition/ChangeBounds;Landroid/view/ViewGroup;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v8, v2}, Landroidx/transition/Transition;->b(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    .line 441
    :cond_18
    return-object v0

    .line 442
    :cond_19
    const/4 v0, 0x0

    .line 443
    goto :goto_a

    .line 444
    .line 445
    :cond_1a
    iget-object v2, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 446
    .line 447
    const-string v3, "android:changeBounds:windowX"

    .line 448
    .line 449
    .line 450
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    move-result-object v2

    .line 452
    .line 453
    check-cast v2, Ljava/lang/Integer;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 457
    move-result v2

    .line 458
    .line 459
    iget-object v0, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 460
    .line 461
    const-string v4, "android:changeBounds:windowY"

    .line 462
    .line 463
    .line 464
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    move-result-object v0

    .line 466
    .line 467
    check-cast v0, Ljava/lang/Integer;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 471
    move-result v0

    .line 472
    .line 473
    iget-object v5, v1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 474
    .line 475
    .line 476
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    move-result-object v3

    .line 478
    .line 479
    check-cast v3, Ljava/lang/Integer;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 483
    move-result v3

    .line 484
    .line 485
    iget-object v1, v1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 486
    .line 487
    .line 488
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    move-result-object v1

    .line 490
    .line 491
    check-cast v1, Ljava/lang/Integer;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 495
    move-result v1

    .line 496
    .line 497
    if-ne v2, v3, :cond_1b

    .line 498
    .line 499
    if-eq v0, v1, :cond_19

    .line 500
    goto :goto_b

    .line 501
    :goto_a
    return-object v0

    .line 502
    .line 503
    :cond_1b
    :goto_b
    iget-object v4, v8, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    .line 504
    .line 505
    move-object/from16 v5, p1

    .line 506
    .line 507
    .line 508
    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 512
    move-result v4

    .line 513
    .line 514
    .line 515
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 516
    move-result v6

    .line 517
    .line 518
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 519
    .line 520
    .line 521
    invoke-static {v4, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 522
    move-result-object v4

    .line 523
    .line 524
    new-instance v6, Landroid/graphics/Canvas;

    .line 525
    .line 526
    .line 527
    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v9, v6}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 531
    .line 532
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 533
    .line 534
    .line 535
    invoke-direct {v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 536
    .line 537
    .line 538
    invoke-static {v9}, Landroidx/transition/ViewUtils;->c(Landroid/view/View;)F

    .line 539
    move-result v7

    .line 540
    const/4 v4, 0x0

    .line 541
    .line 542
    .line 543
    invoke-static {v9, v4}, Landroidx/transition/ViewUtils;->h(Landroid/view/View;F)V

    .line 544
    .line 545
    .line 546
    invoke-static/range {p1 .. p1}, Landroidx/transition/ViewUtils;->b(Landroid/view/View;)Landroidx/transition/ViewOverlayImpl;

    .line 547
    move-result-object v4

    .line 548
    .line 549
    .line 550
    invoke-interface {v4, v6}, Landroidx/transition/ViewOverlayImpl;->b(Landroid/graphics/drawable/Drawable;)V

    .line 551
    .line 552
    .line 553
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/Transition;->x()Landroidx/transition/PathMotion;

    .line 554
    move-result-object v4

    .line 555
    .line 556
    iget-object v10, v8, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    .line 557
    const/4 v11, 0x0

    .line 558
    .line 559
    aget v12, v10, v11

    .line 560
    sub-int/2addr v2, v12

    .line 561
    int-to-float v2, v2

    .line 562
    const/4 v11, 0x1

    .line 563
    .line 564
    aget v10, v10, v11

    .line 565
    sub-int/2addr v0, v10

    .line 566
    int-to-float v0, v0

    .line 567
    sub-int/2addr v3, v12

    .line 568
    int-to-float v3, v3

    .line 569
    sub-int/2addr v1, v10

    .line 570
    int-to-float v1, v1

    .line 571
    .line 572
    .line 573
    invoke-virtual {v4, v2, v0, v3, v1}, Landroidx/transition/PathMotion;->a(FFFF)Landroid/graphics/Path;

    .line 574
    move-result-object v0

    .line 575
    .line 576
    sget-object v1, Landroidx/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    .line 577
    .line 578
    .line 579
    invoke-static {v1, v0}, Landroidx/transition/PropertyValuesHolderUtils;->a(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    .line 580
    move-result-object v0

    .line 581
    .line 582
    new-array v1, v11, [Landroid/animation/PropertyValuesHolder;

    .line 583
    const/4 v2, 0x0

    .line 584
    .line 585
    aput-object v0, v1, v2

    .line 586
    .line 587
    .line 588
    invoke-static {v6, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 589
    move-result-object v10

    .line 590
    .line 591
    new-instance v11, Landroidx/transition/ChangeBounds$10;

    .line 592
    move-object v0, v11

    .line 593
    .line 594
    move-object/from16 v1, p0

    .line 595
    .line 596
    move-object/from16 v2, p1

    .line 597
    move-object v3, v6

    .line 598
    move-object v4, v9

    .line 599
    move v5, v7

    .line 600
    .line 601
    .line 602
    invoke-direct/range {v0 .. v5}, Landroidx/transition/ChangeBounds$10;-><init>(Landroidx/transition/ChangeBounds;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v10, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 606
    return-object v10

    .line 607
    :goto_c
    return-object v0
.end method
