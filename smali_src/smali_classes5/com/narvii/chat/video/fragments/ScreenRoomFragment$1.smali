.class Lcom/narvii/chat/video/fragments/ScreenRoomFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$1;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$1;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$1;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->w(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getGlVideoView()Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$1;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$1;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    const v2, 0x7f0a0f96

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    check-cast v1, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$1;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    .line 53
    invoke-static {v2}, Lcom/narvii/util/Utils;->isLandscape(Landroid/content/Context;)Z

    .line 54
    move-result v2

    .line 55
    .line 56
    xor-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v0, v2}, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->setGlVideoView(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Z)V

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$1;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->w(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->isBuffering()Z

    .line 69
    move-result v0

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v0}, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->onBuffering(Z)V

    .line 73
    .line 74
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$1;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->w(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentUserSeeked()Z

    .line 82
    move-result v0

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v0}, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->onUserSeeked(Z)V

    .line 86
    .line 87
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$1;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    .line 88
    .line 89
    .line 90
    invoke-static {v0}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->w(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->notifyVideoPlayChanged()V

    .line 95
    .line 96
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$1;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    .line 97
    .line 98
    .line 99
    invoke-static {v0}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->x(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    if-eqz v0, :cond_1

    .line 103
    .line 104
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$1;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    .line 105
    .line 106
    .line 107
    invoke-static {v0}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->x(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updateProgress()V

    .line 112
    :cond_1
    return-void
.end method
