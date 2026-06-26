.class Lcom/narvii/chat/video/fragments/ScreenRoomFragment$1;
.super Ljava/lang/Object;
.source "ScreenRoomFragment.java"

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

    .line 117
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$1;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$1;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$1;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->access$000(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)Lcom/narvii/chat/screenroom/ScreenRoomService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getGlVideoView()Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$1;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$1;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090c71

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;

    .line 127
    iget-object v2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$1;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/Utils;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->setGlVideoView(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Z)V

    .line 129
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$1;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->access$000(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)Lcom/narvii/chat/screenroom/ScreenRoomService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->isBuffering()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->onBuffering(Z)V

    .line 130
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$1;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->access$000(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)Lcom/narvii/chat/screenroom/ScreenRoomService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentUserSeeked()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->onUserSeeked(Z)V

    .line 131
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$1;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->access$000(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)Lcom/narvii/chat/screenroom/ScreenRoomService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->notifyVideoPlayChanged()V

    .line 133
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$1;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->access$100(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$1;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->access$100(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updateProgress()V

    :cond_1
    return-void
.end method
