.class public abstract Lcom/narvii/chat/BottomPopupDialog;
.super Lcom/narvii/app/NVDialog;
.source "BottomPopupDialog.kt"


# instance fields
.field private container:Landroid/view/View;

.field private final ctx:Lcom/narvii/app/NVContext;

.field private isAnimating:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1000ce

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    iput-object p1, p0, Lcom/narvii/chat/BottomPopupDialog;->ctx:Lcom/narvii/app/NVContext;

    return-void
.end method

.method public static final synthetic access$dismiss$s-984875575(Lcom/narvii/chat/BottomPopupDialog;)V
    .locals 0

    .line 17
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public backgroundColor()I
    .locals 1

    const-string v0, "#66000000"

    .line 41
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public dismiss()V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/narvii/chat/BottomPopupDialog;->container:Landroid/view/View;

    const/4 v1, 0x0

    const-string v2, "container"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void

    .line 56
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/chat/BottomPopupDialog;->isAnimating:Z

    if-eqz v0, :cond_1

    return-void

    .line 59
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f010040

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 60
    new-instance v3, Lcom/narvii/chat/BottomPopupDialog$dismiss$1;

    invoke-direct {v3, p0}, Lcom/narvii/chat/BottomPopupDialog$dismiss$1;-><init>(Lcom/narvii/chat/BottomPopupDialog;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 69
    iget-object v3, p0, Lcom/narvii/chat/BottomPopupDialog;->container:Landroid/view/View;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/narvii/chat/BottomPopupDialog;->isAnimating:Z

    return-void

    .line 69
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method protected final setupView(I)Landroid/view/View;
    .locals 4

    .line 23
    new-instance v0, Lcom/narvii/monetization/store/view/TippingDialogFrameLayout;

    iget-object v1, p0, Lcom/narvii/chat/BottomPopupDialog;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ctx.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/narvii/monetization/store/view/TippingDialogFrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {p0}, Lcom/narvii/chat/BottomPopupDialog;->backgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 25
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    new-instance v1, Landroid/view/View;

    iget-object v3, p0, Lcom/narvii/chat/BottomPopupDialog;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090255

    .line 28
    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    .line 29
    new-instance v3, Lcom/narvii/chat/BottomPopupDialog$setupView$1;

    invoke-direct {v3, p0}, Lcom/narvii/chat/BottomPopupDialog$setupView$1;-><init>(Lcom/narvii/chat/BottomPopupDialog;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v1, "LayoutInflater.from(cont\u2026flate(layoutId, v, false)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/BottomPopupDialog;->container:Landroid/view/View;

    .line 33
    iget-object p1, p0, Lcom/narvii/chat/BottomPopupDialog;->container:Landroid/view/View;

    const/4 v1, 0x0

    const-string v2, "container"

    if-eqz p1, :cond_2

    sget-object v3, Lcom/narvii/chat/BottomPopupDialog$setupView$2;->INSTANCE:Lcom/narvii/chat/BottomPopupDialog$setupView$2;

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object p1, p0, Lcom/narvii/chat/BottomPopupDialog;->container:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 36
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 38
    iget-object p1, p0, Lcom/narvii/chat/BottomPopupDialog;->container:Landroid/view/View;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 34
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public show()V
    .locals 4

    .line 44
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/narvii/chat/BottomPopupDialog;->isAnimating:Z

    .line 46
    iget-object v1, p0, Lcom/narvii/chat/BottomPopupDialog;->container:Landroid/view/View;

    const/4 v2, 0x0

    const-string v3, "container"

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 47
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01003b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/narvii/chat/BottomPopupDialog;->container:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 46
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method
