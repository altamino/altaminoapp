.class Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$1;
.super Ljava/lang/Object;
.source "NVVideoListDelegate.java"

# interfaces
.implements Lcom/narvii/nvplayerview/listener/VideoViewClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;


# direct methods
.method constructor <init>(Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$1;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public interceptClickEvent(Lcom/narvii/model/NVObject;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onVideoViewClicked(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;)V
    .locals 2

    const-string v0, "com.narvii.optionmenu.OptionMenuFragment"

    .line 488
    invoke-static {p1, p2, v0}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "animating"

    const/4 v0, 0x1

    .line 489
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 490
    iget-object p2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$1;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    iget-object p2, p2, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {p2}, Lcom/narvii/nvplayerview/NVVideoView;->getScaleType()I

    move-result p2

    const-string v0, "scale_type"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 491
    iget-object p2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$1;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    iget-object p2, p2, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {p2}, Lcom/narvii/nvplayerview/NVVideoView;->getRatio()F

    move-result p2

    const-string v0, "ratio"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 492
    iget-object p2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$1;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    iget-object p2, p2, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mContext:Landroid/app/Activity;

    instance-of v0, p2, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_0

    .line 493
    check-cast p2, Lcom/narvii/app/NVActivity;

    const-string v0, "__communityId"

    invoke-virtual {p2, v0}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 494
    iget-object p2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$1;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    iget-object p2, p2, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mContext:Landroid/app/Activity;

    check-cast p2, Lcom/narvii/app/NVActivity;

    const/4 v0, 0x0

    const-string v1, "preview"

    invoke-virtual {p2, v1, v0}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 496
    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_1

    .line 497
    iget-object p2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$1;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    iget-object v0, p2, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mContext:Landroid/app/Activity;

    iget-object p2, p2, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {p2}, Lcom/narvii/nvplayerview/NVVideoView;->getRenderView()Lcom/narvii/nvplayerview/IRenderView;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    const-string v1, "renderView"

    invoke-static {v0, p2, v1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object p2

    .line 498
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$1;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    iget-object v0, v0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mContext:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 500
    :cond_1
    iget-object p2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$1;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    iget-object p2, p2, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mContext:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
