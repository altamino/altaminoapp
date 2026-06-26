.class public final Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1$onSuccess$1;
.super Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;
.source "VideoManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;


# direct methods
.method constructor <init>(Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;F)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/interfaces/IVideoServiceCallback;",
            "Ljava/io/File;",
            "F)V"
        }
    .end annotation

    .line 196
    iput-object p1, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1$onSuccess$1;->this$0:Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;

    iget-object v1, p1, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;->this$0:Lcom/narvii/video/services/VideoManager;

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;-><init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Ljava/lang/String;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 201
    invoke-super {p0}, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->onFinish()V

    .line 202
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1$onSuccess$1;->this$0:Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;

    invoke-static {v0}, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;->access$onTaskStopped(Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;)V

    return-void
.end method

.method public onProgress(F)V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1$onSuccess$1;->this$0:Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;

    iget-object v0, v0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;->$callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    if-eqz v0, :cond_0

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3f333333    # 0.7f

    mul-float p1, p1, v2

    add-float/2addr p1, v1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onProgress(FLjava/lang/String;)V

    :cond_0
    return-void
.end method
