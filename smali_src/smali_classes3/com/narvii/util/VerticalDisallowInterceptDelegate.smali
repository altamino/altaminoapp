.class public Lcom/narvii/util/VerticalDisallowInterceptDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private confirmed:Z

.field private initialMotionX:F

.field private initialMotionY:F

.field private touchSlop:F

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/util/VerticalDisallowInterceptDelegate;->view:Landroid/view/View;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 19
    move-result p1

    .line 20
    int-to-float p1, p1

    .line 21
    .line 22
    iput p1, p0, Lcom/narvii/util/VerticalDisallowInterceptDelegate;->touchSlop:F

    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/VerticalDisallowInterceptDelegate;->view:Landroid/view/View;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    .line 13
    if-eqz v0, :cond_5

    .line 14
    .line 15
    if-eq v0, v2, :cond_4

    .line 16
    const/4 v3, 0x2

    .line 17
    .line 18
    if-eq v0, v3, :cond_1

    .line 19
    const/4 p1, 0x3

    .line 20
    .line 21
    if-eq v0, p1, :cond_4

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/util/VerticalDisallowInterceptDelegate;->confirmed:Z

    .line 25
    .line 26
    if-nez v0, :cond_6

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 30
    move-result v0

    .line 31
    .line 32
    iget v3, p0, Lcom/narvii/util/VerticalDisallowInterceptDelegate;->initialMotionX:F

    .line 33
    sub-float/2addr v0, v3

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 37
    move-result v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 41
    move-result p1

    .line 42
    .line 43
    iget v3, p0, Lcom/narvii/util/VerticalDisallowInterceptDelegate;->initialMotionY:F

    .line 44
    sub-float/2addr p1, v3

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 48
    move-result p1

    .line 49
    .line 50
    iget v3, p0, Lcom/narvii/util/VerticalDisallowInterceptDelegate;->touchSlop:F

    .line 51
    .line 52
    cmpl-float v4, v0, v3

    .line 53
    .line 54
    if-gez v4, :cond_2

    .line 55
    .line 56
    cmpl-float v3, p1, v3

    .line 57
    .line 58
    if-ltz v3, :cond_6

    .line 59
    .line 60
    :cond_2
    iput-boolean v2, p0, Lcom/narvii/util/VerticalDisallowInterceptDelegate;->confirmed:Z

    .line 61
    .line 62
    iget-object v3, p0, Lcom/narvii/util/VerticalDisallowInterceptDelegate;->view:Landroid/view/View;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 66
    move-result-object v3

    .line 67
    .line 68
    cmpl-float p1, p1, v0

    .line 69
    .line 70
    if-lez p1, :cond_3

    .line 71
    move v1, v2

    .line 72
    .line 73
    .line 74
    :cond_3
    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 75
    goto :goto_0

    .line 76
    .line 77
    :cond_4
    iget-object p1, p0, Lcom/narvii/util/VerticalDisallowInterceptDelegate;->view:Landroid/view/View;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    if-eqz p1, :cond_6

    .line 84
    .line 85
    iget-object p1, p0, Lcom/narvii/util/VerticalDisallowInterceptDelegate;->view:Landroid/view/View;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    .line 92
    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 93
    goto :goto_0

    .line 94
    .line 95
    .line 96
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 97
    move-result v0

    .line 98
    .line 99
    iput v0, p0, Lcom/narvii/util/VerticalDisallowInterceptDelegate;->initialMotionX:F

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 103
    move-result p1

    .line 104
    .line 105
    iput p1, p0, Lcom/narvii/util/VerticalDisallowInterceptDelegate;->initialMotionY:F

    .line 106
    .line 107
    iput-boolean v1, p0, Lcom/narvii/util/VerticalDisallowInterceptDelegate;->confirmed:Z

    .line 108
    .line 109
    iget-object p1, p0, Lcom/narvii/util/VerticalDisallowInterceptDelegate;->view:Landroid/view/View;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 113
    move-result-object p1

    .line 114
    .line 115
    if-eqz p1, :cond_6

    .line 116
    .line 117
    iget-object p1, p0, Lcom/narvii/util/VerticalDisallowInterceptDelegate;->view:Landroid/view/View;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    .line 124
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 125
    :cond_6
    :goto_0
    return-void
.end method
