.class Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$1;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static safedk_Activity_startActivity_1c49a06a0ef633f5c4105ccd8986fc08(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "p0"    # Landroid/app/Activity;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # Landroid/os/Bundle;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

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

    .line 1
    .line 2
    const-string v0, "com.narvii.optionmenu.OptionMenuFragment"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2, v0}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string p2, "animating"

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 13
    .line 14
    iget-object p2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$1;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    .line 15
    .line 16
    iget-object p2, p2, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/narvii/nvplayerview/NVVideoView;->getScaleType()I

    .line 20
    move-result p2

    .line 21
    .line 22
    const-string v0, "scale_type"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 26
    .line 27
    iget-object p2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$1;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    .line 28
    .line 29
    iget-object p2, p2, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/narvii/nvplayerview/NVVideoView;->getRatio()F

    .line 33
    move-result p2

    .line 34
    .line 35
    const-string v0, "ratio"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 39
    .line 40
    iget-object p2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$1;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    .line 41
    .line 42
    iget-object p2, p2, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mContext:Landroid/app/Activity;

    .line 43
    .line 44
    instance-of v0, p2, Lcom/narvii/app/NVActivity;

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    check-cast p2, Lcom/narvii/app/NVActivity;

    .line 49
    .line 50
    const-string v0, "__communityId"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, v0}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;)I

    .line 54
    move-result p2

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    .line 59
    iget-object p2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$1;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    .line 60
    .line 61
    iget-object p2, p2, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mContext:Landroid/app/Activity;

    .line 62
    .line 63
    check-cast p2, Lcom/narvii/app/NVActivity;

    .line 64
    const/4 v0, 0x0

    .line 65
    .line 66
    const-string v1, "preview"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v1, v0}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 70
    move-result p2

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    .line 75
    :cond_0
    iget-object p2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$1;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    .line 76
    .line 77
    iget-object v0, p2, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mContext:Landroid/app/Activity;

    .line 78
    .line 79
    iget-object p2, p2, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Lcom/narvii/nvplayerview/NVVideoView;->getRenderView()Lcom/narvii/nvplayerview/IRenderView;

    .line 83
    move-result-object p2

    .line 84
    .line 85
    check-cast p2, Landroid/view/View;

    .line 86
    .line 87
    const-string v1, "renderView"

    .line 88
    .line 89
    .line 90
    invoke-static {v0, p2, v1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    .line 91
    move-result-object p2

    .line 92
    .line 93
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$1;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    .line 94
    .line 95
    iget-object v0, v0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mContext:Landroid/app/Activity;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 99
    move-result-object p2

    .line 100
    .line 101
    .line 102
    invoke-static {v0, p1, p2}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$1;->safedk_Activity_startActivity_1c49a06a0ef633f5c4105ccd8986fc08(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 103
    return-void
.end method
