.class public final Lcom/narvii/scene/TemplateListFragment$TemplateVideoListController;
.super Lcom/narvii/nvplayerview/controller/NVVideoListController;
.source "TemplateListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/scene/TemplateListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TemplateVideoListController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/TemplateListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/scene/TemplateListFragment;Landroid/content/Context;Lcom/narvii/app/NVContext;Lcom/narvii/nvplayerview/NVVideoView;Lcom/narvii/nvplayer/INVPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/nvplayerview/NVVideoView;",
            "Lcom/narvii/nvplayer/INVPlayer;",
            ")V"
        }
    .end annotation

    .line 434
    iput-object p1, p0, Lcom/narvii/scene/TemplateListFragment$TemplateVideoListController;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/narvii/nvplayerview/controller/NVVideoListController;-><init>(Landroid/content/Context;Lcom/narvii/app/NVContext;Lcom/narvii/nvplayerview/NVVideoView;Lcom/narvii/nvplayer/INVPlayer;)V

    return-void
.end method


# virtual methods
.method public onPlayerError(Lcom/narvii/nvplayer/NVVideoException;)V
    .locals 1

    .line 461
    invoke-super {p0, p1}, Lcom/narvii/nvplayerview/controller/NVVideoListController;->onPlayerError(Lcom/narvii/nvplayer/NVVideoException;)V

    .line 462
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->videoPlayButton:Lcom/narvii/widget/NVImageView;

    const-string v0, "videoPlayButton"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 7

    const/16 v0, 0x8

    const/4 v1, 0x0

    const-string v2, "videoPlayButton"

    const/4 v3, 0x4

    const-string v4, "mLoadingView"

    const/4 v5, 0x2

    if-ne p2, v5, :cond_1

    .line 443
    iget-object v5, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mLoadingView:Lcom/narvii/widget/SpinningView;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_0

    .line 444
    iget-object v5, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mLoadingView:Lcom/narvii/widget/SpinningView;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 445
    iget-object v5, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->videoPlayButton:Lcom/narvii/widget/NVImageView;

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 447
    :cond_0
    iget-object v5, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mErrorView:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_1

    const-string v6, "mErrorView"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 448
    iget-object v5, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mErrorView:Landroid/widget/LinearLayout;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    const/4 v5, 0x3

    if-ne p2, v5, :cond_3

    .line 453
    iget-object p2, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->videoPlayButton:Lcom/narvii/widget/NVImageView;

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mLoadingView:Lcom/narvii/widget/SpinningView;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v3, :cond_2

    const/4 v0, 0x0

    :cond_2
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 454
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mLoadingView:Lcom/narvii/widget/SpinningView;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, v3, :cond_3

    .line 455
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mLoadingView:Lcom/narvii/widget/SpinningView;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method protected setVolumeImg()V
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setVolume(F)V

    .line 438
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->volumeBtn:Lcom/narvii/widget/EasyButton;

    const-string v1, "volumeBtn"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
