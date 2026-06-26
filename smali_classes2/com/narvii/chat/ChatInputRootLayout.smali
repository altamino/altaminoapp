.class public Lcom/narvii/chat/ChatInputRootLayout;
.super Landroid/widget/LinearLayout;
.source "ChatInputRootLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private initialMotionX:F

.field private initialMotionY:F

.field private isRequestDisallowParentInterceptProcessed:Z

.field private touchSlop:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0}, Lcom/narvii/chat/ChatInputRootLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0}, Lcom/narvii/chat/ChatInputRootLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0}, Lcom/narvii/chat/ChatInputRootLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 41
    invoke-direct {p0}, Lcom/narvii/chat/ChatInputRootLayout;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 45
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/narvii/chat/ChatInputRootLayout;->touchSlop:F

    .line 47
    invoke-virtual {p0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    goto/16 :goto_2

    .line 67
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/narvii/chat/ChatInputRootLayout;->initialMotionX:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/narvii/chat/ChatInputRootLayout;->initialMotionY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 69
    iget v4, p0, Lcom/narvii/chat/ChatInputRootLayout;->touchSlop:F

    cmpl-float v5, v0, v4

    if-gez v5, :cond_1

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_7

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/narvii/chat/ChatInputRootLayout;->isRequestDisallowParentInterceptProcessed:Z

    if-nez v4, :cond_7

    cmpl-float v0, v3, v0

    if-lez v0, :cond_2

    .line 71
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 75
    :goto_0
    iput-boolean v2, p0, Lcom/narvii/chat/ChatInputRootLayout;->isRequestDisallowParentInterceptProcessed:Z

    goto :goto_2

    .line 80
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 81
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 83
    :cond_4
    iput-boolean v1, p0, Lcom/narvii/chat/ChatInputRootLayout;->isRequestDisallowParentInterceptProcessed:Z

    goto :goto_2

    .line 58
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/narvii/chat/ChatInputRootLayout;->initialMotionX:F

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/narvii/chat/ChatInputRootLayout;->initialMotionY:F

    .line 60
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 61
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 62
    iget v0, p0, Lcom/narvii/chat/ChatInputRootLayout;->initialMotionX:F

    iget v3, p0, Lcom/narvii/chat/ChatInputRootLayout;->touchSlop:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v3, v4

    cmpl-float v3, v0, v3

    if-lez v3, :cond_6

    .line 63
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v5, p0, Lcom/narvii/chat/ChatInputRootLayout;->touchSlop:F

    mul-float v5, v5, v4

    sub-float/2addr v3, v5

    cmpg-float v0, v0, v3

    if-gez v0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/narvii/chat/ChatInputRootLayout;->isRequestDisallowParentInterceptProcessed:Z

    .line 88
    :cond_7
    :goto_2
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method
