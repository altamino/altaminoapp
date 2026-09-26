.class public final Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1$onSuccess$1;
.super Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

.field final synthetic this$0:Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;


# direct methods
.method constructor <init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;)V
    .locals 8

    .line 1
    .line 2
    iput-object p2, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1$onSuccess$1;->$callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    .line 3
    .line 4
    iput-object p4, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1$onSuccess$1;->this$0:Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;

    .line 5
    const/4 v4, 0x0

    .line 6
    .line 7
    const/high16 v5, 0x3f000000    # 0.5f

    .line 8
    const/4 v6, 0x4

    .line 9
    const/4 v7, 0x0

    .line 10
    move-object v0, p0

    .line 11
    move-object v1, p1

    .line 12
    move-object v2, p2

    .line 13
    move-object v3, p3

    .line 14
    .line 15
    .line 16
    invoke-direct/range {v0 .. v7}, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;-><init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Ljava/lang/String;FILkotlin/jvm/internal/k;)V

    .line 17
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->onFinish()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1$onSuccess$1;->this$0:Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->access$onTaskStopped(Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;)V

    .line 9
    return-void
.end method

.method public onProgress(F)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1$onSuccess$1;->$callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/high16 v1, 0x3f000000    # 0.5f

    .line 7
    mul-float/2addr p1, v1

    .line 8
    add-float/2addr p1, v1

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, p1, v1}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onProgress(FLjava/lang/String;)V

    .line 13
    :cond_0
    return-void
.end method
