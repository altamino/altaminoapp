.class public Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
.super Lcom/google/android/material/button/MaterialButton;
.source "SourceFile"

# interfaces
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$i;,
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$k;,
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$h;,
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$l;,
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;,
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$j;
    }
.end annotation


# static fields
.field private static final ANIM_STATE_HIDING:I = 0x1

.field private static final ANIM_STATE_NONE:I = 0x0

.field private static final ANIM_STATE_SHOWING:I = 0x2

.field private static final DEF_STYLE_RES:I

.field static final HEIGHT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final PADDING_END:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final PADDING_START:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final WIDTH:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private animState:I

.field private animateShowBeforeLayout:Z

.field private final behavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
            "Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;",
            ">;"
        }
    .end annotation
.end field

.field private final changeVisibilityTracker:Lcom/google/android/material/floatingactionbutton/a;

.field private final collapsedSize:I

.field private final extendStrategy:Lcom/google/android/material/floatingactionbutton/f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private extendedPaddingEnd:I

.field private extendedPaddingStart:I

.field private final hideStrategy:Lcom/google/android/material/floatingactionbutton/f;

.field private isExtended:Z

.field private isTransforming:Z

.field protected originalTextCsl:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final showStrategy:Lcom/google/android/material/floatingactionbutton/f;

.field private final shrinkStrategy:Lcom/google/android/material/floatingactionbutton/f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    sget v0, Ld3/k;->Widget_MaterialComponents_ExtendedFloatingActionButton_Icon:I

    .line 3
    .line 4
    sput v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->DEF_STYLE_RES:I

    .line 5
    .line 6
    new-instance v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$d;

    .line 7
    .line 8
    const-string v1, "width"

    .line 9
    .line 10
    const-class v2, Ljava/lang/Float;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v2, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$d;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 14
    .line 15
    sput-object v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->WIDTH:Landroid/util/Property;

    .line 16
    .line 17
    new-instance v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;

    .line 18
    .line 19
    const-string v1, "height"

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v2, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 23
    .line 24
    sput-object v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->HEIGHT:Landroid/util/Property;

    .line 25
    .line 26
    new-instance v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$f;

    .line 27
    .line 28
    const-string v1, "paddingStart"

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v2, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$f;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 32
    .line 33
    sput-object v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->PADDING_START:Landroid/util/Property;

    .line 34
    .line 35
    new-instance v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$g;

    .line 36
    .line 37
    const-string v1, "paddingEnd"

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v2, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$g;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 41
    .line 42
    sput-object v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->PADDING_END:Landroid/util/Property;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget v0, Ld3/b;->extendedFloatingActionButtonStyle:I

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    sget v9, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->DEF_STYLE_RES:I

    move-object/from16 v1, p1

    .line 3
    invoke-static {v1, v7, v8, v9}, Lr3/a;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v7, v8}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v10, 0x0

    iput v10, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->animState:I

    .line 4
    new-instance v1, Lcom/google/android/material/floatingactionbutton/a;

    invoke-direct {v1}, Lcom/google/android/material/floatingactionbutton/a;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->changeVisibilityTracker:Lcom/google/android/material/floatingactionbutton/a;

    .line 5
    new-instance v11, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$k;

    invoke-direct {v11, v0, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$k;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/a;)V

    iput-object v11, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->showStrategy:Lcom/google/android/material/floatingactionbutton/f;

    .line 6
    new-instance v12, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$i;

    invoke-direct {v12, v0, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$i;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/a;)V

    iput-object v12, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hideStrategy:Lcom/google/android/material/floatingactionbutton/f;

    const/4 v13, 0x1

    iput-boolean v13, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isExtended:Z

    iput-boolean v10, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isTransforming:Z

    iput-boolean v10, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->animateShowBeforeLayout:Z

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    .line 8
    new-instance v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;

    invoke-direct {v1, v14, v7}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->behavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 9
    sget-object v3, Ld3/l;->ExtendedFloatingActionButton:[I

    new-array v6, v10, [I

    move-object v1, v14

    move-object/from16 v2, p2

    move/from16 v4, p3

    move v5, v9

    .line 10
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/s;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 11
    sget v2, Ld3/l;->ExtendedFloatingActionButton_showMotionSpec:I

    .line 12
    invoke-static {v14, v1, v2}, Le3/h;->c(Landroid/content/Context;Landroid/content/res/TypedArray;I)Le3/h;

    move-result-object v2

    .line 13
    sget v3, Ld3/l;->ExtendedFloatingActionButton_hideMotionSpec:I

    .line 14
    invoke-static {v14, v1, v3}, Le3/h;->c(Landroid/content/Context;Landroid/content/res/TypedArray;I)Le3/h;

    move-result-object v3

    .line 15
    sget v4, Ld3/l;->ExtendedFloatingActionButton_extendMotionSpec:I

    .line 16
    invoke-static {v14, v1, v4}, Le3/h;->c(Landroid/content/Context;Landroid/content/res/TypedArray;I)Le3/h;

    move-result-object v4

    .line 17
    sget v5, Ld3/l;->ExtendedFloatingActionButton_shrinkMotionSpec:I

    .line 18
    invoke-static {v14, v1, v5}, Le3/h;->c(Landroid/content/Context;Landroid/content/res/TypedArray;I)Le3/h;

    move-result-object v5

    .line 19
    sget v6, Ld3/l;->ExtendedFloatingActionButton_collapsedSize:I

    const/4 v15, -0x1

    .line 20
    invoke-virtual {v1, v6, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->collapsedSize:I

    .line 21
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->I(Landroid/view/View;)I

    move-result v6

    iput v6, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendedPaddingStart:I

    .line 22
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->H(Landroid/view/View;)I

    move-result v6

    iput v6, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendedPaddingEnd:I

    .line 23
    new-instance v6, Lcom/google/android/material/floatingactionbutton/a;

    invoke-direct {v6}, Lcom/google/android/material/floatingactionbutton/a;-><init>()V

    .line 24
    new-instance v15, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$h;

    new-instance v10, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$a;

    invoke-direct {v10, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$a;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)V

    invoke-direct {v15, v0, v6, v10, v13}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$h;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/a;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$l;Z)V

    iput-object v15, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendStrategy:Lcom/google/android/material/floatingactionbutton/f;

    .line 25
    new-instance v10, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$h;

    new-instance v13, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$b;

    invoke-direct {v13, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$b;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)V

    const/4 v7, 0x0

    invoke-direct {v10, v0, v6, v13, v7}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$h;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/a;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$l;Z)V

    iput-object v10, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrinkStrategy:Lcom/google/android/material/floatingactionbutton/f;

    .line 26
    invoke-interface {v11, v2}, Lcom/google/android/material/floatingactionbutton/f;->f(Le3/h;)V

    .line 27
    invoke-interface {v12, v3}, Lcom/google/android/material/floatingactionbutton/f;->f(Le3/h;)V

    .line 28
    invoke-interface {v15, v4}, Lcom/google/android/material/floatingactionbutton/f;->f(Le3/h;)V

    .line 29
    invoke-interface {v10, v5}, Lcom/google/android/material/floatingactionbutton/f;->f(Le3/h;)V

    .line 30
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 31
    sget-object v1, Lcom/google/android/material/shape/k;->PILL:Lcom/google/android/material/shape/c;

    move-object/from16 v2, p2

    .line 32
    invoke-static {v14, v2, v8, v9, v1}, Lcom/google/android/material/shape/k;->g(Landroid/content/Context;Landroid/util/AttributeSet;IILcom/google/android/material/shape/c;)Lcom/google/android/material/shape/k$b;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/google/android/material/shape/k$b;->m()Lcom/google/android/material/shape/k;

    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setShapeAppearanceModel(Lcom/google/android/material/shape/k;)V

    .line 35
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->z()V

    return-void
.end method

.method private A()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->X(Landroid/view/View;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->x()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->animateShowBeforeLayout:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method static synthetic j(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendedPaddingStart:I

    .line 3
    return p0
.end method

.method static synthetic k(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendedPaddingEnd:I

    .line 3
    return p0
.end method

.method static synthetic l(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->x()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic m(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->w()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic n(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Lcom/google/android/material/floatingactionbutton/f;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrinkStrategy:Lcom/google/android/material/floatingactionbutton/f;

    .line 3
    return-object p0
.end method

.method static synthetic o(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Lcom/google/android/material/floatingactionbutton/f;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hideStrategy:Lcom/google/android/material/floatingactionbutton/f;

    .line 3
    return-object p0
.end method

.method static synthetic p(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/f;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$j;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->y(Lcom/google/android/material/floatingactionbutton/f;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$j;)V

    .line 4
    return-void
.end method

.method static synthetic q(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Lcom/google/android/material/floatingactionbutton/f;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendStrategy:Lcom/google/android/material/floatingactionbutton/f;

    .line 3
    return-object p0
.end method

.method static synthetic r(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Lcom/google/android/material/floatingactionbutton/f;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->showStrategy:Lcom/google/android/material/floatingactionbutton/f;

    .line 3
    return-object p0
.end method

.method static synthetic s(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isExtended:Z

    .line 3
    return p0
.end method

.method static synthetic t(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isExtended:Z

    .line 3
    return p1
.end method

.method static synthetic u(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isTransforming:Z

    .line 3
    return p1
.end method

.method static synthetic v(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->animState:I

    .line 3
    return p1
.end method

.method private w()Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->animState:I

    .line 11
    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    move v1, v2

    .line 14
    :cond_0
    return v1

    .line 15
    .line 16
    :cond_1
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->animState:I

    .line 17
    const/4 v3, 0x2

    .line 18
    .line 19
    if-eq v0, v3, :cond_2

    .line 20
    move v1, v2

    .line 21
    :cond_2
    return v1
.end method

.method private x()Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->animState:I

    .line 11
    const/4 v3, 0x2

    .line 12
    .line 13
    if-ne v0, v3, :cond_0

    .line 14
    move v1, v2

    .line 15
    :cond_0
    return v1

    .line 16
    .line 17
    :cond_1
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->animState:I

    .line 18
    .line 19
    if-eq v0, v2, :cond_2

    .line 20
    move v1, v2

    .line 21
    :cond_2
    return v1
.end method

.method private y(Lcom/google/android/material/floatingactionbutton/f;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$j;)V
    .locals 2
    .param p1    # Lcom/google/android/material/floatingactionbutton/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/f;->b()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->A()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/f;->g()V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, p2}, Lcom/google/android/material/floatingactionbutton/f;->e(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$j;)V

    .line 20
    return-void

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0, v0}, Landroid/view/View;->measure(II)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/f;->d()Landroid/animation/AnimatorSet;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    new-instance v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$c;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$c;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/f;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$j;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/f;->j()Ljava/util/List;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result p2

    .line 49
    .line 50
    if-eqz p2, :cond_2

    .line 51
    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object p2

    .line 55
    .line 56
    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 60
    goto :goto_0

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 64
    return-void
.end method

.method private z()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->originalTextCsl:Landroid/content/res/ColorStateList;

    .line 7
    return-void
.end method


# virtual methods
.method protected B(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 4
    return-void
.end method

.method public getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
            "Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->behavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    return-object v0
.end method

.method getCollapsedPadding()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCollapsedSize()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getIconSize()I

    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    .line 11
    div-int/lit8 v0, v0, 0x2

    .line 12
    return v0
.end method

.method getCollapsedSize()I
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->collapsedSize:I

    .line 3
    .line 4
    if-gez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->I(Landroid/view/View;)I

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->H(Landroid/view/View;)I

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 16
    move-result v0

    .line 17
    .line 18
    mul-int/lit8 v0, v0, 0x2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getIconSize()I

    .line 22
    move-result v1

    .line 23
    add-int/2addr v0, v1

    .line 24
    :cond_0
    return v0
.end method

.method public getExtendMotionSpec()Le3/h;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendStrategy:Lcom/google/android/material/floatingactionbutton/f;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/f;->a()Le3/h;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getHideMotionSpec()Le3/h;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hideStrategy:Lcom/google/android/material/floatingactionbutton/f;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/f;->a()Le3/h;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getShowMotionSpec()Le3/h;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->showStrategy:Lcom/google/android/material/floatingactionbutton/f;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/f;->a()Le3/h;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getShrinkMotionSpec()Le3/h;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrinkStrategy:Lcom/google/android/material/floatingactionbutton/f;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/f;->a()Le3/h;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/material/button/MaterialButton;->onAttachedToWindow()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isExtended:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isExtended:Z

    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrinkStrategy:Lcom/google/android/material/floatingactionbutton/f;

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/f;->g()V

    .line 32
    :cond_0
    return-void
.end method

.method public setAnimateShowBeforeLayout(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->animateShowBeforeLayout:Z

    return-void
.end method

.method public setExtendMotionSpec(Le3/h;)V
    .locals 1
    .param p1    # Le3/h;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendStrategy:Lcom/google/android/material/floatingactionbutton/f;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/google/android/material/floatingactionbutton/f;->f(Le3/h;)V

    .line 6
    return-void
.end method

.method public setExtendMotionSpecResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1}, Le3/h;->d(Landroid/content/Context;I)Le3/h;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setExtendMotionSpec(Le3/h;)V

    .line 12
    return-void
.end method

.method public setExtended(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isExtended:Z

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendStrategy:Lcom/google/android/material/floatingactionbutton/f;

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrinkStrategy:Lcom/google/android/material/floatingactionbutton/f;

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/f;->b()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    return-void

    .line 20
    .line 21
    .line 22
    :cond_2
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/f;->g()V

    .line 23
    return-void
.end method

.method public setHideMotionSpec(Le3/h;)V
    .locals 1
    .param p1    # Le3/h;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hideStrategy:Lcom/google/android/material/floatingactionbutton/f;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/google/android/material/floatingactionbutton/f;->f(Le3/h;)V

    .line 6
    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1}, Le3/h;->d(Landroid/content/Context;I)Le3/h;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setHideMotionSpec(Le3/h;)V

    .line 12
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isExtended:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isTransforming:Z

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->I(Landroid/view/View;)I

    .line 15
    move-result p1

    .line 16
    .line 17
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendedPaddingStart:I

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->H(Landroid/view/View;)I

    .line 21
    move-result p1

    .line 22
    .line 23
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendedPaddingEnd:I

    .line 24
    :cond_0
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 4
    .line 5
    iget-boolean p2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isExtended:Z

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-boolean p2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isTransforming:Z

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendedPaddingStart:I

    .line 14
    .line 15
    iput p3, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendedPaddingEnd:I

    .line 16
    :cond_0
    return-void
.end method

.method public setShowMotionSpec(Le3/h;)V
    .locals 1
    .param p1    # Le3/h;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->showStrategy:Lcom/google/android/material/floatingactionbutton/f;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/google/android/material/floatingactionbutton/f;->f(Le3/h;)V

    .line 6
    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1}, Le3/h;->d(Landroid/content/Context;I)Le3/h;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setShowMotionSpec(Le3/h;)V

    .line 12
    return-void
.end method

.method public setShrinkMotionSpec(Le3/h;)V
    .locals 1
    .param p1    # Le3/h;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrinkStrategy:Lcom/google/android/material/floatingactionbutton/f;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/google/android/material/floatingactionbutton/f;->f(Le3/h;)V

    .line 6
    return-void
.end method

.method public setShrinkMotionSpecResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1}, Le3/h;->d(Landroid/content/Context;I)Le3/h;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setShrinkMotionSpec(Le3/h;)V

    .line 12
    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->z()V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-super {p0, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->z()V

    return-void
.end method
