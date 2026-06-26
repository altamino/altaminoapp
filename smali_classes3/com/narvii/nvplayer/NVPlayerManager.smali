.class public Lcom/narvii/nvplayer/NVPlayerManager;
.super Ljava/lang/Object;
.source "NVPlayerManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNVPlayer(Landroid/content/Context;)Lcom/narvii/nvplayer/INVPlayer;
    .locals 0

    if-eqz p0, :cond_0

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getInstance(Landroid/content/Context;)Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    move-result-object p0

    return-object p0
.end method
