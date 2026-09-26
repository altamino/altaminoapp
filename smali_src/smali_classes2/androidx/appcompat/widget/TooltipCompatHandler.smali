.class Landroidx/appcompat/widget/TooltipCompatHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# static fields
.field private static final HOVER_HIDE_TIMEOUT_MS:J = 0x3a98L

.field private static final HOVER_HIDE_TIMEOUT_SHORT_MS:J = 0xbb8L

.field private static final LONG_CLICK_HIDE_TIMEOUT_MS:J = 0x9c4L

.field private static final TAG:Ljava/lang/String; = "TooltipCompatHandler"

.field private static sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

.field private static sPendingHandler:Landroidx/appcompat/widget/TooltipCompatHandler;


# instance fields
.field private final mAnchor:Landroid/view/View;

.field private mAnchorX:I

.field private mAnchorY:I

.field private mFromTouch:Z

.field private final mHideRunnable:Ljava/lang/Runnable;

.field private final mHoverSlop:I

.field private mPopup:Landroidx/appcompat/widget/TooltipPopup;

.field private final mShowRunnable:Ljava/lang/Runnable;

.field private final mTooltipText:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/appcompat/widget/TooltipCompatHandler$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/TooltipCompatHandler$1;-><init>(Landroidx/appcompat/widget/TooltipCompatHandler;)V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mShowRunnable:Ljava/lang/Runnable;

    .line 11
    .line 12
    new-instance v0, Landroidx/appcompat/widget/TooltipCompatHandler$2;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/TooltipCompatHandler$2;-><init>(Landroidx/appcompat/widget/TooltipCompatHandler;)V

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mHideRunnable:Ljava/lang/Runnable;

    .line 18
    .line 19
    iput-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    .line 20
    .line 21
    iput-object p2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mTooltipText:Ljava/lang/CharSequence;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    .line 28
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    .line 32
    invoke-static {p2}, Landroidx/core/view/ViewConfigurationCompat;->c(Landroid/view/ViewConfiguration;)I

    .line 33
    move-result p2

    .line 34
    .line 35
    iput p2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mHoverSlop:I

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Landroidx/appcompat/widget/TooltipCompatHandler;->b()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 45
    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mShowRunnable:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    return-void
.end method

.method private b()V
    .locals 1

    .line 1
    const v0, 0x7fffffff

    iput v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorX:I

    iput v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorY:I

    return-void
.end method

.method private d()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mShowRunnable:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 8
    move-result v2

    .line 9
    int-to-long v2, v2

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    return-void
.end method

.method private static e(Landroidx/appcompat/widget/TooltipCompatHandler;)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroidx/appcompat/widget/TooltipCompatHandler;->sPendingHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {v0}, Landroidx/appcompat/widget/TooltipCompatHandler;->a()V

    .line 8
    .line 9
    :cond_0
    sput-object p0, Landroidx/appcompat/widget/TooltipCompatHandler;->sPendingHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Landroidx/appcompat/widget/TooltipCompatHandler;->d()V

    .line 15
    :cond_1
    return-void
.end method

.method public static f(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Landroidx/appcompat/widget/TooltipCompatHandler;->sPendingHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    .line 8
    .line 9
    if-ne v0, p0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Landroidx/appcompat/widget/TooltipCompatHandler;->e(Landroidx/appcompat/widget/TooltipCompatHandler;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    sget-object p1, Landroidx/appcompat/widget/TooltipCompatHandler;->sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object v0, p1, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    .line 25
    .line 26
    if-ne v0, p0, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/appcompat/widget/TooltipCompatHandler;->c()V

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 33
    const/4 p1, 0x0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_2
    new-instance v0, Landroidx/appcompat/widget/TooltipCompatHandler;

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/TooltipCompatHandler;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 46
    :goto_0
    return-void
.end method

.method private h(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 4
    move-result v0

    .line 5
    float-to-int v0, v0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 9
    move-result p1

    .line 10
    float-to-int p1, p1

    .line 11
    .line 12
    iget v1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorX:I

    .line 13
    .line 14
    sub-int v1, v0, v1

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 18
    move-result v1

    .line 19
    .line 20
    iget v2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mHoverSlop:I

    .line 21
    .line 22
    if-gt v1, v2, :cond_0

    .line 23
    .line 24
    iget v1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorY:I

    .line 25
    .line 26
    sub-int v1, p1, v1

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 30
    move-result v1

    .line 31
    .line 32
    iget v2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mHoverSlop:I

    .line 33
    .line 34
    if-gt v1, v2, :cond_0

    .line 35
    const/4 p1, 0x0

    .line 36
    return p1

    .line 37
    .line 38
    :cond_0
    iput v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorX:I

    .line 39
    .line 40
    iput p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorY:I

    .line 41
    const/4 p1, 0x1

    .line 42
    return p1
.end method


# virtual methods
.method c()V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Landroidx/appcompat/widget/TooltipCompatHandler;->sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-ne v0, p0, :cond_1

    .line 6
    .line 7
    sput-object v1, Landroidx/appcompat/widget/TooltipCompatHandler;->sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/appcompat/widget/TooltipPopup;->c()V

    .line 15
    .line 16
    iput-object v1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Landroidx/appcompat/widget/TooltipCompatHandler;->b()V

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    const-string v0, "TooltipCompatHandler"

    .line 28
    .line 29
    const-string v2, "sActiveHandler.mPopup == null"

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    :cond_1
    :goto_0
    sget-object v0, Landroidx/appcompat/widget/TooltipCompatHandler;->sPendingHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    .line 35
    .line 36
    if-ne v0, p0, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Landroidx/appcompat/widget/TooltipCompatHandler;->e(Landroidx/appcompat/widget/TooltipCompatHandler;)V

    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    .line 42
    .line 43
    iget-object v1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mHideRunnable:Ljava/lang/Runnable;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 47
    return-void
.end method

.method g(Z)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->W(Landroid/view/View;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroidx/appcompat/widget/TooltipCompatHandler;->e(Landroidx/appcompat/widget/TooltipCompatHandler;)V

    .line 14
    .line 15
    sget-object v0, Landroidx/appcompat/widget/TooltipCompatHandler;->sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/appcompat/widget/TooltipCompatHandler;->c()V

    .line 21
    .line 22
    :cond_1
    sput-object p0, Landroidx/appcompat/widget/TooltipCompatHandler;->sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    .line 23
    .line 24
    iput-boolean p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mFromTouch:Z

    .line 25
    .line 26
    new-instance v1, Landroidx/appcompat/widget/TooltipPopup;

    .line 27
    .line 28
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, p1}, Landroidx/appcompat/widget/TooltipPopup;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    iput-object v1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    .line 38
    .line 39
    iget-object v2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    .line 40
    .line 41
    iget v3, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorX:I

    .line 42
    .line 43
    iget v4, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorY:I

    .line 44
    .line 45
    iget-boolean v5, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mFromTouch:Z

    .line 46
    .line 47
    iget-object v6, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mTooltipText:Ljava/lang/CharSequence;

    .line 48
    .line 49
    .line 50
    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/widget/TooltipPopup;->e(Landroid/view/View;IIZLjava/lang/CharSequence;)V

    .line 51
    .line 52
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 56
    .line 57
    iget-boolean p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mFromTouch:Z

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    const-wide/16 v0, 0x9c4

    .line 62
    goto :goto_1

    .line 63
    .line 64
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    .line 65
    .line 66
    .line 67
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->P(Landroid/view/View;)I

    .line 68
    move-result p1

    .line 69
    const/4 v0, 0x1

    .line 70
    and-int/2addr p1, v0

    .line 71
    .line 72
    if-ne p1, v0, :cond_3

    .line 73
    .line 74
    .line 75
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 76
    move-result p1

    .line 77
    int-to-long v0, p1

    .line 78
    .line 79
    const-wide/16 v2, 0xbb8

    .line 80
    .line 81
    :goto_0
    sub-long v0, v2, v0

    .line 82
    goto :goto_1

    .line 83
    .line 84
    .line 85
    :cond_3
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 86
    move-result p1

    .line 87
    int-to-long v0, p1

    .line 88
    .line 89
    const-wide/16 v2, 0x3a98

    .line 90
    goto :goto_0

    .line 91
    .line 92
    :goto_1
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    .line 93
    .line 94
    iget-object v2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mHideRunnable:Ljava/lang/Runnable;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 98
    .line 99
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    .line 100
    .line 101
    iget-object v2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mHideRunnable:Ljava/lang/Runnable;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-boolean p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mFromTouch:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    return v0

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    const-string v1, "accessibility"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 28
    move-result v1

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 34
    move-result p1

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    return v0

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 41
    move-result p1

    .line 42
    const/4 v1, 0x7

    .line 43
    .line 44
    if-eq p1, v1, :cond_3

    .line 45
    .line 46
    const/16 p2, 0xa

    .line 47
    .line 48
    if-eq p1, p2, :cond_2

    .line 49
    goto :goto_0

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-direct {p0}, Landroidx/appcompat/widget/TooltipCompatHandler;->b()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/appcompat/widget/TooltipCompatHandler;->c()V

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_3
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 62
    move-result p1

    .line 63
    .line 64
    if-eqz p1, :cond_4

    .line 65
    .line 66
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    .line 67
    .line 68
    if-nez p1, :cond_4

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, p2}, Landroidx/appcompat/widget/TooltipCompatHandler;->h(Landroid/view/MotionEvent;)Z

    .line 72
    move-result p1

    .line 73
    .line 74
    if-eqz p1, :cond_4

    .line 75
    .line 76
    .line 77
    invoke-static {p0}, Landroidx/appcompat/widget/TooltipCompatHandler;->e(Landroidx/appcompat/widget/TooltipCompatHandler;)V

    .line 78
    :cond_4
    :goto_0
    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 4
    move-result v0

    .line 5
    .line 6
    div-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorX:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 12
    move-result p1

    .line 13
    .line 14
    div-int/lit8 p1, p1, 0x2

    .line 15
    .line 16
    iput p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorY:I

    .line 17
    const/4 p1, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/TooltipCompatHandler;->g(Z)V

    .line 21
    return p1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/TooltipCompatHandler;->c()V

    .line 4
    return-void
.end method
