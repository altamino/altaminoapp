.class public final Lcom/narvii/pre_editing/player/PreEditMediaPlayer$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$2;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public surfaceCreated(Landroid/view/Surface;)V
    .locals 1
    .param p1    # Landroid/view/Surface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$2;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getPlayer$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Landroidx/media3/exoplayer/ExoPlayer;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->setVideoSurface(Landroid/view/Surface;)V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$2;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 12
    const/4 v0, 0x5

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->start(I)V

    .line 16
    return-void
.end method

.method public synthetic surfaceDestroyed(Landroid/view/Surface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/nvplayerview/a;->b(Lcom/narvii/nvplayerview/ISurfaceListener;Landroid/view/Surface;)V

    return-void
.end method

.method public synthetic surfaceSizeChanged(Landroid/view/Surface;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/nvplayerview/a;->c(Lcom/narvii/nvplayerview/ISurfaceListener;Landroid/view/Surface;II)V

    return-void
.end method
