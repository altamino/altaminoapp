.class public final Lcom/narvii/video/services/VideoManager$cropVideo$1;
.super Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;
.source "VideoManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/services/VideoManager;->cropVideo(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;IILcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;)Lffmpeg/base/MediaEditingConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

.field final synthetic $output:Ljava/io/File;

.field final synthetic $tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/video/services/VideoManager;


# direct methods
.method constructor <init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Ljava/lang/String;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/interfaces/IVideoServiceCallback;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lcom/narvii/video/interfaces/IVideoServiceCallback;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/narvii/video/services/VideoManager$cropVideo$1;->this$0:Lcom/narvii/video/services/VideoManager;

    iput-object p2, p0, Lcom/narvii/video/services/VideoManager$cropVideo$1;->$callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    iput-object p3, p0, Lcom/narvii/video/services/VideoManager$cropVideo$1;->$output:Ljava/io/File;

    iput-object p4, p0, Lcom/narvii/video/services/VideoManager$cropVideo$1;->$tag:Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move-object v3, p6

    move-object v4, p7

    invoke-direct/range {v0 .. v7}, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;-><init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Ljava/lang/String;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
