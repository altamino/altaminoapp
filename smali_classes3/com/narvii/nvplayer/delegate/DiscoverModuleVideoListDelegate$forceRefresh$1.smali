.class final Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate$forceRefresh$1;
.super Ljava/lang/Object;
.source "DiscoverModuleVideoListDelegate.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;->forceRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;


# direct methods
.method constructor <init>(Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate$forceRefresh$1;->this$0:Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate$forceRefresh$1;->this$0:Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;

    invoke-static {v0}, Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;->access$getActive$p(Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate$forceRefresh$1;->this$0:Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;

    invoke-static {v0}, Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;->access$shouldRemoveVideo(Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate$forceRefresh$1;->this$0:Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;

    invoke-static {v0}, Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;->access$getMPlayer$p(Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object v0

    const-string v1, "mPlayer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 18
    iget-object v0, p0, Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate$forceRefresh$1;->this$0:Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;->access$setMPlayerPosition$p(Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;I)V

    .line 19
    iget-object v0, p0, Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate$forceRefresh$1;->this$0:Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;

    invoke-virtual {v0}, Lcom/narvii/nvplayer/delegate/StoryFeedListVideoDelegate;->removeVideoView()V

    .line 20
    iget-object v0, p0, Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate$forceRefresh$1;->this$0:Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;

    invoke-static {v0}, Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;->access$getListView$p(Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;)Lcom/narvii/nvplayerview/delegate/IVideoListView;

    move-result-object v0

    new-instance v1, Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate$forceRefresh$1$1;

    invoke-direct {v1, p0}, Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate$forceRefresh$1$1;-><init>(Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate$forceRefresh$1;)V

    invoke-interface {v0, v1}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
