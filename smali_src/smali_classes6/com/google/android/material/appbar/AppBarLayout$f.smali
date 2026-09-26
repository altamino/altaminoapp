.class public Lcom/google/android/material/appbar/AppBarLayout$f;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# static fields
.field static final COLLAPSIBLE_FLAGS:I = 0xa

.field static final FLAG_QUICK_RETURN:I = 0x5

.field static final FLAG_SNAP:I = 0x11

.field private static final SCROLL_EFFECT_COMPRESS:I = 0x1

.field private static final SCROLL_EFFECT_NONE:I = 0x0

.field public static final SCROLL_FLAG_ENTER_ALWAYS:I = 0x4

.field public static final SCROLL_FLAG_ENTER_ALWAYS_COLLAPSED:I = 0x8

.field public static final SCROLL_FLAG_EXIT_UNTIL_COLLAPSED:I = 0x2

.field public static final SCROLL_FLAG_NO_SCROLL:I = 0x0

.field public static final SCROLL_FLAG_SCROLL:I = 0x1

.field public static final SCROLL_FLAG_SNAP:I = 0x10

.field public static final SCROLL_FLAG_SNAP_MARGINS:I = 0x20


# instance fields
.field private scrollEffect:Lcom/google/android/material/appbar/AppBarLayout$d;

.field scrollFlags:I

.field scrollInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$f;->scrollFlags:I

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$f;->scrollFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$f;->scrollFlags:I

    .line 2
    sget-object v0, Ld3/l;->AppBarLayout_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 3
    sget v0, Ld3/l;->AppBarLayout_Layout_layout_scrollFlags:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$f;->scrollFlags:I

    .line 4
    sget v0, Ld3/l;->AppBarLayout_Layout_layout_scrollEffect:I

    .line 5
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout$f;->a(I)Lcom/google/android/material/appbar/AppBarLayout$d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout$f;->f(Lcom/google/android/material/appbar/AppBarLayout$d;)V

    .line 7
    sget v0, Ld3/l;->AppBarLayout_Layout_layout_scrollInterpolator:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 9
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$f;->scrollInterpolator:Landroid/view/animation/Interpolator;

    .line 10
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$f;->scrollFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$f;->scrollFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$f;->scrollFlags:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/appbar/AppBarLayout$f;)V
    .locals 1
    .param p1    # Lcom/google/android/material/appbar/AppBarLayout$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$f;->scrollFlags:I

    .line 17
    iget v0, p1, Lcom/google/android/material/appbar/AppBarLayout$f;->scrollFlags:I

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$f;->scrollFlags:I

    .line 18
    iget-object p1, p1, Lcom/google/android/material/appbar/AppBarLayout$f;->scrollInterpolator:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$f;->scrollInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private a(I)Lcom/google/android/material/appbar/AppBarLayout$d;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    const/4 p1, 0x0

    .line 5
    return-object p1

    .line 6
    .line 7
    :cond_0
    new-instance p1, Lcom/google/android/material/appbar/AppBarLayout$e;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Lcom/google/android/material/appbar/AppBarLayout$e;-><init>()V

    .line 11
    return-object p1
.end method


# virtual methods
.method public b()Lcom/google/android/material/appbar/AppBarLayout$d;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$f;->scrollEffect:Lcom/google/android/material/appbar/AppBarLayout$d;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$f;->scrollFlags:I

    return v0
.end method

.method public d()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$f;->scrollInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method e()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$f;->scrollFlags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    and-int/lit8 v0, v0, 0xa

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public f(Lcom/google/android/material/appbar/AppBarLayout$d;)V
    .locals 0
    .param p1    # Lcom/google/android/material/appbar/AppBarLayout$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$f;->scrollEffect:Lcom/google/android/material/appbar/AppBarLayout$d;

    return-void
.end method
