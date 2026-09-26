.class public abstract Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$q;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$s;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$r;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/google/android/material/snackbar/BaseTransientBottomBar<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final ANIMATION_DURATION:I = 0xfa

.field static final ANIMATION_FADE_DURATION:I = 0xb4

.field private static final ANIMATION_FADE_IN_DURATION:I = 0x96

.field private static final ANIMATION_FADE_OUT_DURATION:I = 0x4b

.field public static final ANIMATION_MODE_FADE:I = 0x1

.field public static final ANIMATION_MODE_SLIDE:I = 0x0

.field private static final ANIMATION_SCALE_FROM_VALUE:F = 0.8f

.field public static final LENGTH_INDEFINITE:I = -0x2

.field public static final LENGTH_LONG:I = 0x0

.field public static final LENGTH_SHORT:I = -0x1

.field static final MSG_DISMISS:I = 0x1

.field static final MSG_SHOW:I

.field private static final SNACKBAR_STYLE_ATTR:[I

.field private static final TAG:Ljava/lang/String;

.field private static final USE_OFFSET_API:Z

.field static final handler:Landroid/os/Handler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private anchor:Lcom/google/android/material/snackbar/BaseTransientBottomBar$q;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private anchorViewLayoutListenerEnabled:Z

.field private behavior:Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

.field private final bottomMarginGestureInsetRunnable:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation
.end field

.field private callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/snackbar/BaseTransientBottomBar$r<",
            "TB;>;>;"
        }
    .end annotation
.end field

.field private final contentViewCallback:Lcom/google/android/material/snackbar/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private duration:I

.field private extraBottomMarginAnchorView:I

.field private extraBottomMarginGestureInset:I

.field private extraBottomMarginWindowInset:I

.field private extraLeftMarginWindowInset:I

.field private extraRightMarginWindowInset:I

.field private gestureInsetBottomIgnored:Z

.field managerCallback:Lcom/google/android/material/snackbar/c$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private pendingShowingView:Z

.field private final targetParent:Landroid/view/ViewGroup;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected final view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    sput-boolean v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->USE_OFFSET_API:Z

    .line 4
    .line 5
    sget v0, Ld3/b;->snackbarStyle:I

    .line 6
    .line 7
    .line 8
    filled-new-array {v0}, [I

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sput-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->SNACKBAR_STYLE_ATTR:[I

    .line 12
    .line 13
    const-class v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    sput-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v0, Landroid/os/Handler;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    new-instance v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    .line 28
    .line 29
    .line 30
    invoke-direct {v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 34
    .line 35
    sput-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->handler:Landroid/os/Handler;

    .line 36
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/a;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/material/snackbar/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->anchorViewLayoutListenerEnabled:Z

    .line 7
    .line 8
    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$i;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$i;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 12
    .line 13
    iput-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->bottomMarginGestureInsetRunnable:Ljava/lang/Runnable;

    .line 14
    .line 15
    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 19
    .line 20
    iput-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lcom/google/android/material/snackbar/c$b;

    .line 21
    .line 22
    if-eqz p2, :cond_3

    .line 23
    .line 24
    if-eqz p3, :cond_2

    .line 25
    .line 26
    if-eqz p4, :cond_1

    .line 27
    .line 28
    iput-object p2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->targetParent:Landroid/view/ViewGroup;

    .line 29
    .line 30
    iput-object p4, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->contentViewCallback:Lcom/google/android/material/snackbar/a;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->context:Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lcom/google/android/material/internal/s;->a(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 39
    move-result-object p4

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->A()I

    .line 43
    move-result v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p4, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    check-cast p2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;

    .line 50
    .line 51
    iput-object p2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;

    .line 52
    .line 53
    .line 54
    invoke-static {p2, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->b(Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 55
    .line 56
    instance-of p4, p3, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 57
    .line 58
    if-eqz p4, :cond_0

    .line 59
    move-object p4, p3

    .line 60
    .line 61
    check-cast p4, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->getActionTextColorAlpha()F

    .line 65
    move-result v0

    .line 66
    .line 67
    .line 68
    invoke-virtual {p4, v0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->c(F)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->getMaxInlineActionWidth()I

    .line 72
    move-result v0

    .line 73
    .line 74
    .line 75
    invoke-virtual {p4, v0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->setMaxInlineActionWidth(I)V

    .line 76
    .line 77
    .line 78
    :cond_0
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 79
    const/4 p3, 0x1

    .line 80
    .line 81
    .line 82
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->w0(Landroid/view/View;I)V

    .line 83
    .line 84
    .line 85
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->F0(Landroid/view/View;I)V

    .line 86
    .line 87
    .line 88
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->D0(Landroid/view/View;Z)V

    .line 89
    .line 90
    new-instance p3, Lcom/google/android/material/snackbar/BaseTransientBottomBar$j;

    .line 91
    .line 92
    .line 93
    invoke-direct {p3, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$j;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 94
    .line 95
    .line 96
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->L0(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 97
    .line 98
    new-instance p3, Lcom/google/android/material/snackbar/BaseTransientBottomBar$k;

    .line 99
    .line 100
    .line 101
    invoke-direct {p3, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$k;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 102
    .line 103
    .line 104
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->u0(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 105
    .line 106
    const-string p2, "accessibility"

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    move-result-object p1

    .line 111
    .line 112
    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 113
    .line 114
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 115
    return-void

    .line 116
    .line 117
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 118
    .line 119
    const-string p2, "Transient bottom bar must have non-null callback"

    .line 120
    .line 121
    .line 122
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 123
    throw p1

    .line 124
    .line 125
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 126
    .line 127
    const-string p2, "Transient bottom bar must have non-null content"

    .line 128
    .line 129
    .line 130
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 131
    throw p1

    .line 132
    .line 133
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 134
    .line 135
    const-string p2, "Transient bottom bar must have non-null parent"

    .line 136
    .line 137
    .line 138
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 139
    throw p1
.end method

.method private B()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 19
    .line 20
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 21
    add-int/2addr v0, v1

    .line 22
    :cond_0
    return v0
.end method

.method private C()I
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    aget v0, v0, v1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 17
    move-result v1

    .line 18
    add-int/2addr v0, v1

    .line 19
    return v0
.end method

.method private G()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    instance-of v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method private M()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->r()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iput v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->extraBottomMarginAnchorView:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->Y()V

    .line 10
    return-void
.end method

.method private O(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->behavior:Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->x()Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    :cond_0
    instance-of v1, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    move-object v1, v0

    .line 14
    .line 15
    check-cast v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    .line 16
    .line 17
    .line 18
    invoke-static {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->j(Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 19
    .line 20
    :cond_1
    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$n;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$n;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->f(Lcom/google/android/material/behavior/SwipeDismissBehavior$c;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->o(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->v()Landroid/view/View;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    const/16 v0, 0x50

    .line 38
    .line 39
    iput v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 40
    :cond_2
    return-void
.end method

.method private Q()Z
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->extraBottomMarginGestureInset:I

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->gestureInsetBottomIgnored:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->G()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method private T()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->P()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->p()V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->L()V

    .line 28
    :goto_0
    return-void
.end method

.method private U()V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v1, v0, [F

    .line 4
    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->u([F)Landroid/animation/ValueAnimator;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    new-array v2, v0, [F

    .line 13
    .line 14
    .line 15
    fill-array-data v2, :array_1

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->y([F)Landroid/animation/ValueAnimator;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    new-instance v3, Landroid/animation/AnimatorSet;

    .line 22
    .line 23
    .line 24
    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 25
    .line 26
    new-array v0, v0, [Landroid/animation/Animator;

    .line 27
    const/4 v4, 0x0

    .line 28
    .line 29
    aput-object v1, v0, v4

    .line 30
    const/4 v1, 0x1

    .line 31
    .line 32
    aput-object v2, v0, v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 36
    .line 37
    const-wide/16 v0, 0x96

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 41
    .line 42
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$p;

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$p;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 52
    return-void

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private V(I)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    .line 6
    fill-array-data v0, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->u([F)Landroid/animation/ValueAnimator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-wide/16 v1, 0x4b

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 16
    .line 17
    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$a;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$a;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 27
    return-void

    .line 28
    nop

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private W()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->B()I

    .line 4
    move-result v0

    .line 5
    .line 6
    sget-boolean v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->USE_OFFSET_API:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->e0(Landroid/view/View;I)V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;

    .line 17
    int-to-float v2, v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 21
    .line 22
    :goto_0
    new-instance v1, Landroid/animation/ValueAnimator;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 26
    const/4 v2, 0x0

    .line 27
    .line 28
    .line 29
    filled-new-array {v0, v2}, [I

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 34
    .line 35
    sget-object v2, Le3/a;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 39
    .line 40
    const-wide/16 v2, 0xfa

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 44
    .line 45
    new-instance v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$d;

    .line 46
    .line 47
    .line 48
    invoke-direct {v2, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$d;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 52
    .line 53
    new-instance v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    .line 54
    .line 55
    .line 56
    invoke-direct {v2, p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 63
    return-void
.end method

.method private X(I)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/animation/ValueAnimator;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->B()I

    .line 10
    move-result v2

    .line 11
    .line 12
    .line 13
    filled-new-array {v1, v2}, [I

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 18
    .line 19
    sget-object v1, Le3/a;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 23
    .line 24
    const-wide/16 v1, 0xfa

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$f;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$f;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 36
    .line 37
    new-instance p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$g;

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$g;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 47
    return-void
.end method

.method private Y()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9
    .line 10
    if-eqz v1, :cond_4

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->a(Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;)Landroid/graphics/Rect;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    goto :goto_1

    .line 20
    .line 21
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    return-void

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->v()Landroid/view/View;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    iget v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->extraBottomMarginAnchorView:I

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_2
    iget v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->extraBottomMarginWindowInset:I

    .line 40
    .line 41
    :goto_0
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;

    .line 44
    .line 45
    .line 46
    invoke-static {v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->a(Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;)Landroid/graphics/Rect;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 50
    add-int/2addr v2, v1

    .line 51
    .line 52
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 53
    .line 54
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;

    .line 55
    .line 56
    .line 57
    invoke-static {v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->a(Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;)Landroid/graphics/Rect;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 61
    .line 62
    iget v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->extraLeftMarginWindowInset:I

    .line 63
    add-int/2addr v1, v2

    .line 64
    .line 65
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 66
    .line 67
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;

    .line 68
    .line 69
    .line 70
    invoke-static {v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->a(Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;)Landroid/graphics/Rect;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 74
    .line 75
    iget v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->extraRightMarginWindowInset:I

    .line 76
    add-int/2addr v1, v2

    .line 77
    .line 78
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 79
    .line 80
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;

    .line 81
    .line 82
    .line 83
    invoke-static {v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->a(Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;)Landroid/graphics/Rect;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 87
    .line 88
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 89
    .line 90
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 94
    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 96
    .line 97
    const/16 v1, 0x1d

    .line 98
    .line 99
    if-lt v0, v1, :cond_3

    .line 100
    .line 101
    .line 102
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->Q()Z

    .line 103
    move-result v0

    .line 104
    .line 105
    if-eqz v0, :cond_3

    .line 106
    .line 107
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;

    .line 108
    .line 109
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->bottomMarginGestureInsetRunnable:Ljava/lang/Runnable;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 113
    .line 114
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;

    .line 115
    .line 116
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->bottomMarginGestureInsetRunnable:Ljava/lang/Runnable;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 120
    :cond_3
    return-void

    .line 121
    .line 122
    :cond_4
    :goto_1
    sget-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->TAG:Ljava/lang/String;

    .line 123
    .line 124
    const-string v1, "Unable to update margins because layout params are not MarginLayoutParams"

    .line 125
    .line 126
    .line 127
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)Landroid/content/Context;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->context:Landroid/content/Context;

    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->z()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic c(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->U()V

    .line 4
    return-void
.end method

.method static synthetic d(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->W()V

    .line 4
    return-void
.end method

.method static synthetic e(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)Lcom/google/android/material/snackbar/a;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->contentViewCallback:Lcom/google/android/material/snackbar/a;

    .line 3
    return-object p0
.end method

.method static synthetic f()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->USE_OFFSET_API:Z

    return v0
.end method

.method static synthetic g(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->anchorViewLayoutListenerEnabled:Z

    .line 3
    return p0
.end method

.method static synthetic h(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->M()V

    .line 4
    return-void
.end method

.method static synthetic i(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->C()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic j(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->extraBottomMarginGestureInset:I

    .line 3
    return p0
.end method

.method static synthetic k()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->extraBottomMarginWindowInset:I

    .line 3
    return p1
.end method

.method static synthetic m(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->extraLeftMarginWindowInset:I

    .line 3
    return p1
.end method

.method static synthetic n(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->extraRightMarginWindowInset:I

    .line 3
    return p1
.end method

.method static synthetic o(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->Y()V

    .line 4
    return-void
.end method

.method private q(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->getAnimationMode()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->V(I)V

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->X(I)V

    .line 17
    :goto_0
    return-void
.end method

.method private r()I
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->v()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x2

    .line 10
    .line 11
    new-array v1, v0, [I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->v()Landroid/view/View;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 19
    const/4 v2, 0x1

    .line 20
    .line 21
    aget v1, v1, v2

    .line 22
    .line 23
    new-array v0, v0, [I

    .line 24
    .line 25
    iget-object v3, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->targetParent:Landroid/view/ViewGroup;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 29
    .line 30
    aget v0, v0, v2

    .line 31
    .line 32
    iget-object v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->targetParent:Landroid/view/ViewGroup;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 36
    move-result v2

    .line 37
    add-int/2addr v0, v2

    .line 38
    sub-int/2addr v0, v1

    .line 39
    return v0
.end method

.method private varargs u([F)Landroid/animation/ValueAnimator;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    sget-object v0, Le3/a;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$b;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$b;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 18
    return-object p1
.end method

.method private varargs y([F)Landroid/animation/ValueAnimator;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    sget-object v0, Le3/a;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$c;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$c;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 18
    return-object p1
.end method

.method private z()I
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->context:Landroid/content/Context;

    .line 3
    .line 4
    const-string v1, "window"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Landroid/view/WindowManager;

    .line 11
    .line 12
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 23
    .line 24
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 25
    return v0
.end method


# virtual methods
.method protected A()I
    .locals 1
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->D()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget v0, Ld3/h;->mtrl_layout_snackbar:I

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    sget v0, Ld3/h;->design_layout_snackbar:I

    .line 12
    :goto_0
    return v0
.end method

.method protected D()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->context:Landroid/content/Context;

    .line 3
    .line 4
    sget-object v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->SNACKBAR_STYLE_ATTR:[I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, -0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 14
    move-result v3

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    .line 19
    if-eq v3, v2, :cond_0

    .line 20
    const/4 v1, 0x1

    .line 21
    :cond_0
    return v1
.end method

.method final E(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->P()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->q(I)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->K(I)V

    .line 22
    :goto_0
    return-void
.end method

.method public F()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/material/snackbar/c;->c()Lcom/google/android/material/snackbar/c;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lcom/google/android/material/snackbar/c$b;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/c;->e(Lcom/google/android/material/snackbar/c$b;)Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method H()V
    .locals 2

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1d

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Landroidx/core/view/w0;->a(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Landroidx/appcompat/widget/x;->a(Landroid/graphics/Insets;)I

    .line 22
    move-result v0

    .line 23
    .line 24
    iput v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->extraBottomMarginGestureInset:I

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->Y()V

    .line 28
    :cond_0
    return-void
.end method

.method I()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->F()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->handler:Landroid/os/Handler;

    .line 9
    .line 10
    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$m;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$m;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    :cond_0
    return-void
.end method

.method J()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->pendingShowingView:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->T()V

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->pendingShowingView:Z

    .line 11
    :cond_0
    return-void
.end method

.method K(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/material/snackbar/c;->c()Lcom/google/android/material/snackbar/c;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lcom/google/android/material/snackbar/c$b;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/c;->h(Lcom/google/android/material/snackbar/c$b;)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    move-result v0

    .line 18
    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 20
    .line 21
    :goto_0
    if-ltz v0, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    .line 24
    .line 25
    .line 26
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$r;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$r;->a(Ljava/lang/Object;I)V

    .line 33
    .line 34
    add-int/lit8 v0, v0, -0x1

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    check-cast p1, Landroid/view/ViewGroup;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 53
    :cond_1
    return-void
.end method

.method L()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/material/snackbar/c;->c()Lcom/google/android/material/snackbar/c;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lcom/google/android/material/snackbar/c$b;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/c;->i(Lcom/google/android/material/snackbar/c$b;)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    move-result v0

    .line 18
    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 20
    .line 21
    :goto_0
    if-ltz v0, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    .line 24
    .line 25
    .line 26
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$r;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$r;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    add-int/lit8 v0, v0, -0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method public N(I)Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->duration:I

    return-object p0
.end method

.method P()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v1, 0x0

    .line 21
    :goto_0
    return v1
.end method

.method public R()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/material/snackbar/c;->c()Lcom/google/android/material/snackbar/c;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->w()I

    .line 8
    move-result v1

    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lcom/google/android/material/snackbar/c$b;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/snackbar/c;->m(ILcom/google/android/material/snackbar/c$b;)V

    .line 14
    return-void
.end method

.method final S()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->O(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->targetParent:Landroid/view/ViewGroup;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->c(Landroid/view/ViewGroup;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->M()V

    .line 34
    .line 35
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;

    .line 36
    const/4 v1, 0x4

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->X(Landroid/view/View;)Z

    .line 45
    move-result v0

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->T()V

    .line 51
    return-void

    .line 52
    :cond_2
    const/4 v0, 0x1

    .line 53
    .line 54
    iput-boolean v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->pendingShowingView:Z

    .line 55
    return-void
.end method

.method p()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;

    .line 3
    .line 4
    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$o;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$o;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method

.method public s()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->t(I)V

    .line 5
    return-void
.end method

.method protected t(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/material/snackbar/c;->c()Lcom/google/android/material/snackbar/c;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lcom/google/android/material/snackbar/c$b;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/google/android/material/snackbar/c;->b(Lcom/google/android/material/snackbar/c$b;I)V

    .line 10
    return-void
.end method

.method public v()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->anchor:Lcom/google/android/material/snackbar/BaseTransientBottomBar$q;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$q;->a()Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    :goto_0
    return-object v0
.end method

.method public w()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->duration:I

    return v0
.end method

.method protected x()Lcom/google/android/material/behavior/SwipeDismissBehavior;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/behavior/SwipeDismissBehavior<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;-><init>()V

    .line 6
    return-object v0
.end method
