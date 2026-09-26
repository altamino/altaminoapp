.class public final Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onRenderedFirstFrame$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->onRenderedFirstFrame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;


# direct methods
.method constructor <init>(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onRenderedFirstFrame$1;->this$0:Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onRenderedFirstFrame$1;->run$lambda$0(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;)V

    return-void
.end method

.method private static final run$lambda$0(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;)V
    .locals 3

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->access$getPlayer$p(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;)Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    const-string v2, "player"

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 18
    move-object v0, v1

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->isPlaying()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->access$getPlayer$p(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;)Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move-object v1, v0

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {v1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getPlayerState()I

    .line 39
    move-result v0

    .line 40
    const/4 v1, 0x4

    .line 41
    .line 42
    if-eq v0, v1, :cond_2

    .line 43
    const/4 v0, 0x0

    .line 44
    .line 45
    .line 46
    invoke-static {p0, v0}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->access$setTime(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;Z)V

    .line 47
    :cond_2
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onRenderedFirstFrame$1;->this$0:Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->access$getHandler$p(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;)Landroid/os/Handler;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "handler"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onRenderedFirstFrame$1;->this$0:Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;

    .line 17
    .line 18
    new-instance v2, Lcom/narvii/editor/cropping/dynamic/c;

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, v1}, Lcom/narvii/editor/cropping/dynamic/c;-><init>(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    return-void
.end method
