.class public final Lcom/narvii/video/interfaces/IPreviewPlayer$DefaultImpls;
.super Ljava/lang/Object;
.source "IPreviewPlayer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/interfaces/IPreviewPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic addAudioClip$default(Lcom/narvii/video/interfaces/IPreviewPlayer;Lcom/narvii/video/model/AVClipInfoPack;ZILjava/lang/Object;)Ljava/util/ArrayList;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 61
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->addAudioClip(Lcom/narvii/video/model/AVClipInfoPack;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: addAudioClip"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic addSticker$default(Lcom/narvii/video/interfaces/IPreviewPlayer;Lcom/narvii/video/model/StickerInfoPack;ZILjava/lang/Object;)Ljava/util/ArrayList;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 80
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->addSticker(Lcom/narvii/video/model/StickerInfoPack;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: addSticker"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getCurrentAudioPositionInClip$default(Lcom/narvii/video/interfaces/IPreviewPlayer;IILjava/lang/Object;)I
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 184
    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentAudioPositionInClip(I)I

    move-result p0

    return p0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getCurrentAudioPositionInClip"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getCurrentAudioPositionInTimeline$default(Lcom/narvii/video/interfaces/IPreviewPlayer;IILjava/lang/Object;)I
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 194
    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentAudioPositionInTimeline(I)I

    move-result p0

    return p0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getCurrentAudioPositionInTimeline"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getCurrentAudioRawPositionInClip$default(Lcom/narvii/video/interfaces/IPreviewPlayer;IILjava/lang/Object;)I
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 189
    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentAudioRawPositionInClip(I)I

    move-result p0

    return p0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getCurrentAudioRawPositionInClip"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic isAudioPlaying$default(Lcom/narvii/video/interfaces/IPreviewPlayer;IILjava/lang/Object;)Z
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    .line 145
    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->isAudioPlaying(I)Z

    move-result p0

    return p0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: isAudioPlaying"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic resetVideoClipList$default(Lcom/narvii/video/interfaces/IPreviewPlayer;Ljava/util/ArrayList;IIILjava/lang/Object;)Lcom/narvii/video/model/AVClipInfoPack;
    .locals 1

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 39
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetVideoClipList(Ljava/util/ArrayList;II)Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object p0

    return-object p0

    .line 0
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: resetVideoClipList"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic setActiveVideoClip$default(Lcom/narvii/video/interfaces/IPreviewPlayer;IIILjava/lang/Object;)Lcom/narvii/video/model/AVClipInfoPack;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 44
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->setActiveVideoClip(II)Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object p0

    return-object p0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setActiveVideoClip"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
