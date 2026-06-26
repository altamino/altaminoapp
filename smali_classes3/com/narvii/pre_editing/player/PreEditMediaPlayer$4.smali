.class final Lcom/narvii/pre_editing/player/PreEditMediaPlayer$4;
.super Ljava/lang/Object;
.source "PreEditMediaPlayer.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pre_editing/player/PreEditMediaPlayer;-><init>(Landroid/content/Context;Lcom/narvii/nvplayerview/NVVideoView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;


# direct methods
.method constructor <init>(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$4;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const-string p1, "event"

    .line 108
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    .line 109
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$4;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    invoke-static {p1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getPlayer$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result p1

    xor-int/2addr p1, p2

    const/16 v1, 0x32

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$4;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    invoke-virtual {p1, v1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->start(I)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$4;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    invoke-virtual {p1, v1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->pause(I)V

    .line 115
    :goto_0
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$4;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    invoke-static {p1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getCallback$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$4;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    invoke-static {v1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getPlayer$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;->onPlayPauseStateChanged(Z)V

    :cond_1
    return p2
.end method
