.class public interface abstract Lcom/narvii/chat/audio/Mixer$MixerListener;
.super Ljava/lang/Object;
.source "Mixer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/audio/Mixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MixerListener"
.end annotation


# virtual methods
.method public abstract onLevelIndicator(F)V
.end method

.method public abstract onMixedBuffer([SII)V
.end method
