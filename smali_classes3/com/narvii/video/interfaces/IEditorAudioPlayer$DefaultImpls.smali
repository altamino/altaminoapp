.class public final Lcom/narvii/video/interfaces/IEditorAudioPlayer$DefaultImpls;
.super Ljava/lang/Object;
.source "IEditorAudioPlayer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/interfaces/IEditorAudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic setConcatenatingDataSource$default(Lcom/narvii/video/interfaces/IEditorAudioPlayer;Ljava/util/List;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 18
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->setConcatenatingDataSource(Ljava/util/List;Z)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setConcatenatingDataSource"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic setDataSource$default(Lcom/narvii/video/interfaces/IEditorAudioPlayer;Lcom/narvii/video/model/AVClipInfoPack;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 16
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->setDataSource(Lcom/narvii/video/model/AVClipInfoPack;Z)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setDataSource"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
