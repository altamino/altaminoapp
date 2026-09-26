.class public Lcom/narvii/util/dialog/RealtimeBlurDialog;
.super Lcom/narvii/app/NVDialog;
.source "SourceFile"


# instance fields
.field blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

.field container:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/narvii/lib/R$style;->CustomDialog:I

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/util/dialog/RealtimeBlurDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/narvii/app/NVDialog;-><init>(Landroid/content/Context;I)V

    sget p1, Lcom/narvii/lib/R$layout;->dialog_realtime_blur_layout:I

    .line 3
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    sget p1, Lcom/narvii/lib/R$id;->blur_bg:I

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/github/mmin18/widget/RealtimeBlurView;

    iput-object p1, p0, Lcom/narvii/util/dialog/RealtimeBlurDialog;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    sget p1, Lcom/narvii/lib/R$id;->root:I

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/narvii/util/dialog/RealtimeBlurDialog;->container:Landroid/widget/FrameLayout;

    return-void
.end method

.method private clearView()V
    .locals 3

    .line 1
    .line 2
    :goto_0
    iget-object v0, p0, Lcom/narvii/util/dialog/RealtimeBlurDialog;->container:Landroid/widget/FrameLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/util/dialog/RealtimeBlurDialog;->container:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    move-result v2

    .line 16
    sub-int/2addr v2, v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method public getRealtimeBlurView()Lcom/github/mmin18/widget/RealtimeBlurView;
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/dialog/RealtimeBlurDialog;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    return-object v0
.end method

.method public getViewContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/dialog/RealtimeBlurDialog;->container:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public setContentView(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/narvii/util/dialog/RealtimeBlurDialog;->clearView()V

    .line 2
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

    .line 3
    invoke-direct {p0}, Lcom/narvii/util/dialog/RealtimeBlurDialog;->clearView()V

    iget-object v0, p0, Lcom/narvii/util/dialog/RealtimeBlurDialog;->container:Landroid/widget/FrameLayout;

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/narvii/util/dialog/RealtimeBlurDialog;->clearView()V

    iget-object v0, p0, Lcom/narvii/util/dialog/RealtimeBlurDialog;->container:Landroid/widget/FrameLayout;

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
