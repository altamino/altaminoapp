.class public interface abstract Lcom/narvii/video/interfaces/IAVClipInfoPack;
.super Ljava/lang/Object;
.source "IAVClipInfoPack.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/interfaces/IAVClipInfoPack$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract fadeIn()Z
.end method

.method public abstract fadeOut()Z
.end method

.method public abstract getClipInputName(Z)Ljava/lang/String;
.end method

.method public abstract getStreamInfo()Lcom/narvii/video/model/StreamInfo;
.end method

.method public abstract hasInvisibleFrames()Z
.end method

.method public abstract indexInScene()I
.end method

.method public abstract inputPath()Ljava/lang/String;
.end method

.method public abstract isTrimSectionValid()Z
.end method

.method public abstract speed()D
.end method

.method public abstract trimEndInMs()I
.end method

.method public abstract trimStartInMs()I
.end method

.method public abstract trimStartInMsWithSpeed()I
.end method

.method public abstract trimmedDurationInMs()I
.end method
