.class public final Lcom/narvii/pre_editing/player/PreEditMediaPlayer$3;
.super Ljava/lang/Object;
.source "PreEditMediaPlayer.kt"

# interfaces
.implements Lcom/narvii/nvplayerview/ISurfaceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pre_editing/player/PreEditMediaPlayer;-><init>(Landroid/content/Context;Lcom/narvii/nvplayerview/NVVideoView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;


# direct methods
.method constructor <init>(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$3;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceCreated(Landroid/view/Surface;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$3;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    invoke-static {v0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getPlayer$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 104
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$3;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->start(I)V

    return-void
.end method

.method public synthetic surfaceDestroyed(Landroid/view/Surface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/narvii/nvplayerview/ISurfaceListener$-CC;->$default$surfaceDestroyed(Lcom/narvii/nvplayerview/ISurfaceListener;Landroid/view/Surface;)V

    return-void
.end method

.method public synthetic surfaceSizeChanged(Landroid/view/Surface;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/narvii/nvplayerview/ISurfaceListener$-CC;->$default$surfaceSizeChanged(Lcom/narvii/nvplayerview/ISurfaceListener;Landroid/view/Surface;II)V

    return-void
.end method
