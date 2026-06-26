.class Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$3;
.super Ljava/lang/Object;
.source "NVVideoListDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 683
    iput-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$3;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 686
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$3;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    iget-object v1, v0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    .line 687
    iget-object v0, v0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 688
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$3;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    iget-object v1, v0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v1, v0}, Lcom/narvii/nvplayer/INVPlayer;->setVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V

    .line 689
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$3;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    invoke-virtual {v0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->shouldPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$3;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    iget-object v0, v0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method
