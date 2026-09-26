.class public final Lcom/narvii/scene/TemplateListFragment$TemplateVideoListController;
.super Lcom/narvii/nvplayerview/controller/NVVideoListController;
.source "SourceFile"


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
    .param p1    # Lcom/narvii/scene/TemplateListFragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/nvplayerview/NVVideoView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/TemplateListFragment$TemplateVideoListController;->this$0:Lcom/narvii/scene/TemplateListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/narvii/nvplayerview/controller/NVVideoListController;-><init>(Landroid/content/Context;Lcom/narvii/app/NVContext;Lcom/narvii/nvplayerview/NVVideoView;Lcom/narvii/nvplayer/INVPlayer;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onPlayerError(Lcom/narvii/nvplayer/NVVideoException;)V
    .locals 1
    .param p1    # Lcom/narvii/nvplayer/NVVideoException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/nvplayerview/controller/NVVideoListController;->onPlayerError(Lcom/narvii/nvplayer/NVVideoException;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->videoPlayButton:Lcom/narvii/widget/NVImageView;

    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x4

    .line 6
    .line 7
    if-ne p2, v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mLoadingView:Lcom/narvii/widget/SpinningView;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mLoadingView:Lcom/narvii/widget/SpinningView;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->videoPlayButton:Lcom/narvii/widget/NVImageView;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mErrorView:Landroid/widget/LinearLayout;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 33
    move-result v0

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mErrorView:Landroid/widget/LinearLayout;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 41
    :cond_1
    const/4 v0, 0x3

    .line 42
    .line 43
    if-ne p2, v0, :cond_3

    .line 44
    .line 45
    iget-object p2, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->videoPlayButton:Lcom/narvii/widget/NVImageView;

    .line 46
    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mLoadingView:Lcom/narvii/widget/SpinningView;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 53
    move-result p1

    .line 54
    .line 55
    if-ne p1, v3, :cond_2

    .line 56
    move v1, v2

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mLoadingView:Lcom/narvii/widget/SpinningView;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 65
    move-result p1

    .line 66
    .line 67
    if-eq p1, v3, :cond_3

    .line 68
    .line 69
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mLoadingView:Lcom/narvii/widget/SpinningView;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 73
    :cond_3
    return-void
.end method

.method protected setVolumeImg()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 3
    .line 4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setVolume(F)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->volumeBtn:Lcom/narvii/widget/EasyButton;

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    return-void
.end method
