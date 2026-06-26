.class public interface abstract Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;
.super Ljava/lang/Object;
.source "IEditorAudioPlayer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/interfaces/IEditorAudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IAudioEventListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract onAudioCompleted()V
.end method

.method public abstract onAudioError()V
.end method

.method public abstract onAudioPrepared()V
.end method
