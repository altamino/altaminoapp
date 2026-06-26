.class public final Lcom/narvii/video/services/VideoManager$getCoverImage$1;
.super Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;
.source "VideoManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/services/VideoManager;->getCoverImage(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;IIILcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;Z)Lffmpeg/base/MediaEditingConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

.field final synthetic $output:Ljava/io/File;

.field final synthetic $startTime:I

.field final synthetic $tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/video/services/VideoManager;


# direct methods
.method constructor <init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;ILjava/io/File;Ljava/lang/String;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/interfaces/IVideoServiceCallback;",
            "I",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lcom/narvii/video/interfaces/IVideoServiceCallback;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v8, p0

    move-object v1, p1

    .line 308
    iput-object v1, v8, Lcom/narvii/video/services/VideoManager$getCoverImage$1;->this$0:Lcom/narvii/video/services/VideoManager;

    move-object v0, p2

    iput-object v0, v8, Lcom/narvii/video/services/VideoManager$getCoverImage$1;->$callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    move v0, p3

    iput v0, v8, Lcom/narvii/video/services/VideoManager$getCoverImage$1;->$startTime:I

    move-object v0, p4

    iput-object v0, v8, Lcom/narvii/video/services/VideoManager$getCoverImage$1;->$output:Ljava/io/File;

    move-object v0, p5

    iput-object v0, v8, Lcom/narvii/video/services/VideoManager$getCoverImage$1;->$tag:Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    invoke-direct/range {v0 .. v7}, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;-><init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Ljava/lang/String;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 3

    .line 310
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$getCoverImage$1;->$callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/narvii/video/services/VideoManager$getCoverImage$1;->$startTime:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onFramePicturesLoaded(ILjava/io/File;)V

    :cond_0
    return-void
.end method
