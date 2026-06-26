.class public final Lcom/narvii/scene/TemplateListFragment$TemplateDemoVideoListDelegate;
.super Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;
.source "TemplateListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/scene/TemplateListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TemplateDemoVideoListDelegate"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTemplateListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemplateListFragment.kt\ncom/narvii/scene/TemplateListFragment$TemplateDemoVideoListDelegate\n*L\n1#1,475:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/TemplateListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/scene/TemplateListFragment;Lcom/narvii/app/NVContext;Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    iput-object p1, p0, Lcom/narvii/scene/TemplateListFragment$TemplateDemoVideoListDelegate;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-direct {p0, p2, p3}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;-><init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected addVideoView(Landroid/view/ViewGroup;Lcom/narvii/nvplayerview/NVVideoView;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 417
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->addVideoView(Landroid/view/ViewGroup;Lcom/narvii/nvplayerview/NVVideoView;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_0

    .line 418
    sget p2, Lcom/narvii/mediaeditor/R$id;->video_play_button:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    if-eqz p1, :cond_0

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected getVisibilityPercentage()I
    .locals 1

    const/16 v0, 0x3c

    return v0
.end method

.method protected initVideoController(Landroid/content/Context;Lcom/narvii/app/NVContext;Lcom/narvii/nvplayerview/NVVideoView;Lcom/narvii/nvplayer/INVPlayer;)Lcom/narvii/nvplayerview/controller/IVideoController;
    .locals 7

    .line 403
    new-instance v6, Lcom/narvii/scene/TemplateListFragment$TemplateVideoListController;

    iget-object v1, p0, Lcom/narvii/scene/TemplateListFragment$TemplateDemoVideoListDelegate;->this$0:Lcom/narvii/scene/TemplateListFragment;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/narvii/scene/TemplateListFragment$TemplateVideoListController;-><init>(Lcom/narvii/scene/TemplateListFragment;Landroid/content/Context;Lcom/narvii/app/NVContext;Lcom/narvii/nvplayerview/NVVideoView;Lcom/narvii/nvplayer/INVPlayer;)V

    return-object v6
.end method

.method protected initVideoView()V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/narvii/nvplayerview/NVVideoView;->init(Lcom/narvii/nvplayerview/ISurfaceListener;I)V

    return-void
.end method

.method public refreshPlayerPosition()V
    .locals 1

    .line 407
    invoke-virtual {p0}, Lcom/narvii/scene/TemplateListFragment$TemplateDemoVideoListDelegate;->shouldPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    invoke-super {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->refreshPlayerPosition()V

    :cond_0
    return-void
.end method

.method public removeVideoView()V
    .locals 2

    .line 422
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->getVideoView()Lcom/narvii/nvplayerview/NVVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    sget v1, Lcom/narvii/mediaeditor/R$id;->video_play_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 425
    :cond_0
    invoke-super {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->removeVideoView()V

    return-void
.end method

.method protected shouldPlay()Z
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment$TemplateDemoVideoListDelegate;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-virtual {v0}, Lcom/narvii/scene/TemplateListFragment;->getAutoPlaying()Z

    move-result v0

    return v0
.end method

.method protected vertical()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
