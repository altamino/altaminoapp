.class public interface abstract Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/widget/ClipFastSwitchingPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ClipFastSwitchingEventCallback"
.end annotation


# virtual methods
.method public abstract onClipDeleted()V
.end method

.method public abstract onClipListReordered(Ljava/util/ArrayList;I)V
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onClipSwitched(Lcom/narvii/video/model/AVClipInfoPack;)V
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onOptionCropSelected()V
.end method

.method public abstract onOptionMusicSelected()V
.end method

.method public abstract onOptionSpeedSelected()V
.end method

.method public abstract onOptionTrimSelected()V
.end method

.method public abstract onVolumeChanged(F)V
.end method
