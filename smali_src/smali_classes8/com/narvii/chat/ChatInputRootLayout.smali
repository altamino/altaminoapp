.class public Lcom/narvii/chat/ChatInputRootLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

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

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/narvii/chat/ChatInputRootLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lcom/narvii/chat/ChatInputRootLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0}, Lcom/narvii/chat/ChatInputRootLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 8
    invoke-direct {p0}, Lcom/narvii/chat/ChatInputRootLayout;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 12
    move-result v0

    .line 13
    int-to-float v0, v0

    .line 14
    .line 15
    iput v0, p0, Lcom/narvii/chat/ChatInputRootLayout;->touchSlop:F

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    if-eq v0, v2, :cond_3

    .line 11
    const/4 v3, 0x2

    .line 12
    .line 13
    if-eq v0, v3, :cond_0

    .line 14
    const/4 v2, 0x3

    .line 15
    .line 16
    if-eq v0, v2, :cond_3

    .line 17
    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 22
    move-result v0

    .line 23
    .line 24
    iget v3, p0, Lcom/narvii/chat/ChatInputRootLayout;->initialMotionX:F

    .line 25
    sub-float/2addr v0, v3

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 29
    move-result v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 33
    move-result v3

    .line 34
    .line 35
    iget v4, p0, Lcom/narvii/chat/ChatInputRootLayout;->initialMotionY:F

    .line 36
    sub-float/2addr v3, v4

    .line 37
    .line 38
    .line 39
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 40
    move-result v3

    .line 41
    .line 42
    iget v4, p0, Lcom/narvii/chat/ChatInputRootLayout;->touchSlop:F

    .line 43
    .line 44
    cmpl-float v5, v0, v4

    .line 45
    .line 46
    if-gez v5, :cond_1

    .line 47
    .line 48
    cmpl-float v4, v3, v4

    .line 49
    .line 50
    if-ltz v4, :cond_7

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 54
    move-result-object v4

    .line 55
    .line 56
    if-eqz v4, :cond_7

    .line 57
    .line 58
    iget-boolean v4, p0, Lcom/narvii/chat/ChatInputRootLayout;->isRequestDisallowParentInterceptProcessed:Z

    .line 59
    .line 60
    if-nez v4, :cond_7

    .line 61
    .line 62
    cmpl-float v0, v3, v0

    .line 63
    .line 64
    if-lez v0, :cond_2

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 72
    goto :goto_0

    .line 73
    .line 74
    .line 75
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    .line 79
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 80
    .line 81
    :goto_0
    iput-boolean v2, p0, Lcom/narvii/chat/ChatInputRootLayout;->isRequestDisallowParentInterceptProcessed:Z

    .line 82
    goto :goto_2

    .line 83
    .line 84
    .line 85
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    if-eqz v0, :cond_4

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    .line 95
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 96
    .line 97
    :cond_4
    iput-boolean v1, p0, Lcom/narvii/chat/ChatInputRootLayout;->isRequestDisallowParentInterceptProcessed:Z

    .line 98
    goto :goto_2

    .line 99
    .line 100
    .line 101
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 102
    move-result v0

    .line 103
    .line 104
    iput v0, p0, Lcom/narvii/chat/ChatInputRootLayout;->initialMotionX:F

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 108
    move-result v0

    .line 109
    .line 110
    iput v0, p0, Lcom/narvii/chat/ChatInputRootLayout;->initialMotionY:F

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    if-eqz v0, :cond_7

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    .line 123
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 124
    .line 125
    iget v0, p0, Lcom/narvii/chat/ChatInputRootLayout;->initialMotionX:F

    .line 126
    .line 127
    iget v3, p0, Lcom/narvii/chat/ChatInputRootLayout;->touchSlop:F

    .line 128
    .line 129
    const/high16 v4, 0x40000000    # 2.0f

    .line 130
    mul-float/2addr v3, v4

    .line 131
    .line 132
    cmpl-float v3, v0, v3

    .line 133
    .line 134
    if-lez v3, :cond_6

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 138
    move-result v3

    .line 139
    int-to-float v3, v3

    .line 140
    .line 141
    iget v5, p0, Lcom/narvii/chat/ChatInputRootLayout;->touchSlop:F

    .line 142
    mul-float/2addr v5, v4

    .line 143
    sub-float/2addr v3, v5

    .line 144
    .line 145
    cmpg-float v0, v0, v3

    .line 146
    .line 147
    if-gez v0, :cond_6

    .line 148
    goto :goto_1

    .line 149
    :cond_6
    move v2, v1

    .line 150
    .line 151
    :goto_1
    iput-boolean v2, p0, Lcom/narvii/chat/ChatInputRootLayout;->isRequestDisallowParentInterceptProcessed:Z

    .line 152
    .line 153
    .line 154
    :cond_7
    :goto_2
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 155
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :catch_0
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method
