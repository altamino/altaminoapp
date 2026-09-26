.class public final Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static onComplete(Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;)V
    .locals 0
    .param p0    # Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static onError(Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "msg"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onPlayPauseStateChanged(Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;Z)V
    .locals 0
    .param p0    # Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static onPrepared(Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;)V
    .locals 0
    .param p0    # Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static onProgressUpdate(Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;J)V
    .locals 0
    .param p0    # Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method
