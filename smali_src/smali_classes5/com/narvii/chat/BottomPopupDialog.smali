.class public abstract Lcom/narvii/chat/BottomPopupDialog;
.super Lcom/narvii/app/NVDialog;
.source "SourceFile"


# instance fields
.field private container:Landroid/view/View;

.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isAnimating:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const v0, 0x7f13015d

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/chat/BottomPopupDialog;->ctx:Lcom/narvii/app/NVContext;

    .line 14
    return-void
.end method

.method public static synthetic a(Lcom/narvii/chat/BottomPopupDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/BottomPopupDialog;->setupView$lambda$0(Lcom/narvii/chat/BottomPopupDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$dismiss$s-437093072(Lcom/narvii/chat/BottomPopupDialog;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 4
    return-void
.end method

.method public static synthetic b(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/chat/BottomPopupDialog;->setupView$lambda$1(Landroid/view/View;)V

    return-void
.end method

.method private static final setupView$lambda$0(Lcom/narvii/chat/BottomPopupDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/chat/BottomPopupDialog;->dismiss()V

    .line 9
    return-void
.end method

.method private static final setupView$lambda$1(Landroid/view/View;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public backgroundColor()I
    .locals 1

    .line 1
    .line 2
    const-string v0, "#66000000"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public dismiss()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/BottomPopupDialog;->container:Landroid/view/View;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    const-string v2, "container"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    move-object v0, v1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 21
    return-void

    .line 22
    .line 23
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/chat/BottomPopupDialog;->isAnimating:Z

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    return-void

    .line 27
    .line 28
    .line 29
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    const v3, 0x7f01005e

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    new-instance v3, Lcom/narvii/chat/BottomPopupDialog$dismiss$1;

    .line 40
    .line 41
    .line 42
    invoke-direct {v3, p0}, Lcom/narvii/chat/BottomPopupDialog$dismiss$1;-><init>(Lcom/narvii/chat/BottomPopupDialog;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 46
    .line 47
    iget-object v3, p0, Lcom/narvii/chat/BottomPopupDialog;->container:Landroid/view/View;

    .line 48
    .line 49
    if-nez v3, :cond_3

    .line 50
    .line 51
    .line 52
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    move-object v1, v3

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 58
    const/4 v0, 0x1

    .line 59
    .line 60
    iput-boolean v0, p0, Lcom/narvii/chat/BottomPopupDialog;->isAnimating:Z

    .line 61
    return-void
.end method

.method protected final setupView(I)Landroid/view/View;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/monetization/store/view/TippingDialogFrameLayout;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/BottomPopupDialog;->ctx:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    const-string v2, "getContext(...)"

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/narvii/monetization/store/view/TippingDialogFrameLayout;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/chat/BottomPopupDialog;->backgroundColor()I

    .line 20
    move-result v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 24
    .line 25
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 26
    const/4 v2, -0x1

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    .line 34
    new-instance v1, Landroid/view/View;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/narvii/chat/BottomPopupDialog;->ctx:Lcom/narvii/app/NVContext;

    .line 37
    .line 38
    .line 39
    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    const v3, 0x7f0a0316

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    .line 50
    .line 51
    new-instance v3, Lcom/narvii/chat/a;

    .line 52
    .line 53
    .line 54
    invoke-direct {v3, p0}, Lcom/narvii/chat/a;-><init>(Lcom/narvii/chat/BottomPopupDialog;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    .line 59
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 60
    .line 61
    .line 62
    invoke-direct {v3, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    .line 72
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 73
    move-result-object v1

    .line 74
    const/4 v2, 0x0

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    const-string v1, "inflate(...)"

    .line 81
    .line 82
    .line 83
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    iput-object p1, p0, Lcom/narvii/chat/BottomPopupDialog;->container:Landroid/view/View;

    .line 86
    const/4 v1, 0x0

    .line 87
    .line 88
    const-string v2, "container"

    .line 89
    .line 90
    if-nez p1, :cond_0

    .line 91
    .line 92
    .line 93
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 94
    move-object p1, v1

    .line 95
    .line 96
    :cond_0
    new-instance v3, Lcom/narvii/chat/b;

    .line 97
    .line 98
    .line 99
    invoke-direct {v3}, Lcom/narvii/chat/b;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    iget-object p1, p0, Lcom/narvii/chat/BottomPopupDialog;->container:Landroid/view/View;

    .line 105
    .line 106
    if-nez p1, :cond_1

    .line 107
    .line 108
    .line 109
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 110
    move-object p1, v1

    .line 111
    .line 112
    .line 113
    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 117
    .line 118
    iget-object p1, p0, Lcom/narvii/chat/BottomPopupDialog;->container:Landroid/view/View;

    .line 119
    .line 120
    if-nez p1, :cond_2

    .line 121
    .line 122
    .line 123
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 124
    goto :goto_0

    .line 125
    :cond_2
    move-object v1, p1

    .line 126
    :goto_0
    return-object v1
.end method

.method public show()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/chat/BottomPopupDialog;->isAnimating:Z

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/chat/BottomPopupDialog;->container:Landroid/view/View;

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    const-string v3, "container"

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 17
    move-object v1, v2

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    const v1, 0x7f010059

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/chat/BottomPopupDialog;->container:Landroid/view/View;

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move-object v2, v1

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 44
    return-void
.end method
