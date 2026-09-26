.class public final Lcom/narvii/video/interfaces/IExtraAudioTrackPlugin$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/interfaces/IExtraAudioTrackPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic openSingleAudio$default(Lcom/narvii/video/interfaces/IExtraAudioTrackPlugin;Lcom/narvii/video/model/AVClipInfoPack;ZILjava/lang/Object;)Lcom/narvii/video/interfaces/IEditorAudioPlayer;
    .locals 0

    .line 1
    .line 2
    if-nez p4, :cond_1

    .line 3
    .line 4
    and-int/lit8 p3, p3, 0x2

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    const/4 p2, 0x1

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/narvii/video/interfaces/IExtraAudioTrackPlugin;->openSingleAudio(Lcom/narvii/video/model/AVClipInfoPack;Z)Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    .line 14
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 15
    .line 16
    const-string p1, "Super calls with default arguments not supported in this target, function: openSingleAudio"

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p0
.end method
