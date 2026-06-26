.class final Lcom/narvii/video/player/NvScenePlayer$seekingPositionListener$1;
.super Ljava/lang/Object;
.source "NvScenePlayer.kt"

# interfaces
.implements Lcom/narvii/video/interfaces/OnSeekingPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/player/NvScenePlayer;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/player/NvScenePlayer;


# direct methods
.method constructor <init>(Lcom/narvii/video/player/NvScenePlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/player/NvScenePlayer$seekingPositionListener$1;->this$0:Lcom/narvii/video/player/NvScenePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSeekingPositionChanged(J)V
    .locals 0

    .line 29
    iget-object p1, p0, Lcom/narvii/video/player/NvScenePlayer$seekingPositionListener$1;->this$0:Lcom/narvii/video/player/NvScenePlayer;

    invoke-static {p1}, Lcom/narvii/video/player/NvScenePlayer;->access$isWaitingPlay$p(Lcom/narvii/video/player/NvScenePlayer;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 30
    iget-object p1, p0, Lcom/narvii/video/player/NvScenePlayer$seekingPositionListener$1;->this$0:Lcom/narvii/video/player/NvScenePlayer;

    invoke-static {p1}, Lcom/narvii/video/player/NvScenePlayer;->access$startPlay(Lcom/narvii/video/player/NvScenePlayer;)V

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/player/NvScenePlayer$seekingPositionListener$1;->this$0:Lcom/narvii/video/player/NvScenePlayer;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/video/player/NvScenePlayer;->access$setWaitingPlay$p(Lcom/narvii/video/player/NvScenePlayer;Z)V

    return-void
.end method
