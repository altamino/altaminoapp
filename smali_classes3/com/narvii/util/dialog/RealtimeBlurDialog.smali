.class public Lcom/narvii/util/dialog/RealtimeBlurDialog;
.super Lcom/narvii/app/NVDialog;
.source "RealtimeBlurDialog.java"


# instance fields
.field blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

.field container:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 22
    sget v0, Lcom/narvii/lib/R$style;->CustomDialog:I

    invoke-direct {p0, p1, v0}, Lcom/narvii/util/dialog/RealtimeBlurDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/narvii/app/NVDialog;-><init>(Landroid/content/Context;I)V

    .line 27
    sget p1, Lcom/narvii/lib/R$layout;->dialog_realtime_blur_layout:I

    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 28
    sget p1, Lcom/narvii/lib/R$id;->blur_bg:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/github/mmin18/widget/RealtimeBlurView;

    iput-object p1, p0, Lcom/narvii/util/dialog/RealtimeBlurDialog;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 29
    sget p1, Lcom/narvii/lib/R$id;->root:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/narvii/util/dialog/RealtimeBlurDialog;->container:Landroid/widget/FrameLayout;

    return-void
.end method

.method private clearView()V
    .locals 3

    .line 33
    :goto_0
    iget-object v0, p0, Lcom/narvii/util/dialog/RealtimeBlurDialog;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/narvii/util/dialog/RealtimeBlurDialog;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getRealtimeBlurView()Lcom/github/mmin18/widget/RealtimeBlurView;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/narvii/util/dialog/RealtimeBlurDialog;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    return-object v0
.end method

.method public getViewContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/narvii/util/dialog/RealtimeBlurDialog;->container:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public setContentView(I)V
    .locals 3

    .line 40
    invoke-direct {p0}, Lcom/narvii/util/dialog/RealtimeBlurDialog;->clearView()V

    .line 41
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/util/dialog/RealtimeBlurDialog;->container:Landroid/widget/FrameLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/narvii/util/dialog/RealtimeBlurDialog;->clearView()V

    .line 47
    iget-object v0, p0, Lcom/narvii/util/dialog/RealtimeBlurDialog;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/narvii/util/dialog/RealtimeBlurDialog;->clearView()V

    .line 53
    iget-object v0, p0, Lcom/narvii/util/dialog/RealtimeBlurDialog;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
