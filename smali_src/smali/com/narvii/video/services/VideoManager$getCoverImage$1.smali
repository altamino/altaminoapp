.class public final Lcom/narvii/video/services/VideoManager$getCoverImage$1;
.super Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/services/VideoManager;->getCoverImage(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;IIILcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;Z)Lg7/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

.field final synthetic $startTime:I


# direct methods
.method constructor <init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Ljava/lang/String;I)V
    .locals 8

    .line 1
    .line 2
    iput-object p2, p0, Lcom/narvii/video/services/VideoManager$getCoverImage$1;->$callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    .line 3
    .line 4
    iput p5, p0, Lcom/narvii/video/services/VideoManager$getCoverImage$1;->$startTime:I

    .line 5
    const/4 v5, 0x0

    .line 6
    .line 7
    const/16 v6, 0x8

    .line 8
    const/4 v7, 0x0

    .line 9
    move-object v0, p0

    .line 10
    move-object v1, p1

    .line 11
    move-object v2, p2

    .line 12
    move-object v3, p3

    .line 13
    move-object v4, p4

    .line 14
    .line 15
    .line 16
    invoke-direct/range {v0 .. v7}, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;-><init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Ljava/lang/String;FILkotlin/jvm/internal/k;)V

    .line 17
    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$getCoverImage$1;->$callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/video/services/VideoManager$getCoverImage$1;->$startTime:I

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onFramePicturesLoaded(ILjava/io/File;)V

    .line 11
    :cond_0
    return-void
.end method
