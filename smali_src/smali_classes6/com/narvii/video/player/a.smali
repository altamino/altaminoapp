.class public final synthetic Lcom/narvii/video/player/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/interfaces/OnSeekingPositionListener;


# instance fields
.field public final synthetic a:Lcom/narvii/video/player/NvScenePlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/video/player/NvScenePlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/player/a;->a:Lcom/narvii/video/player/NvScenePlayer;

    return-void
.end method


# virtual methods
.method public final onSeekingPositionChanged(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/video/player/a;->a:Lcom/narvii/video/player/NvScenePlayer;

    invoke-static {v0, p1, p2}, Lcom/narvii/video/player/NvScenePlayer;->a(Lcom/narvii/video/player/NvScenePlayer;J)V

    return-void
.end method
