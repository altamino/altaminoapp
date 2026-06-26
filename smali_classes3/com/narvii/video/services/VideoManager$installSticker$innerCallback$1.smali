.class public final Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;
.super Ljava/lang/Object;
.source "VideoManager.kt"

# interfaces
.implements Lffmpeg/base/IEditorBaseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/services/VideoManager;->installSticker(Lcom/narvii/model/Sticker;Ljava/lang/String;ZLcom/narvii/video/services/VideoManager$IInstallStickerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $key:Ljava/lang/String;

.field final synthetic $sticker:Lcom/narvii/model/Sticker;

.field final synthetic $stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

.field final synthetic this$0:Lcom/narvii/video/services/VideoManager;


# direct methods
.method constructor <init>(Lcom/narvii/video/services/VideoManager;Ljava/lang/String;Lcom/narvii/video/model/StickerInfoPack;Lcom/narvii/model/Sticker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/narvii/video/model/StickerInfoPack;",
            "Lcom/narvii/model/Sticker;",
            ")V"
        }
    .end annotation

    .line 415
    iput-object p1, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->this$0:Lcom/narvii/video/services/VideoManager;

    iput-object p2, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->$stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

    iput-object p4, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->$sticker:Lcom/narvii/model/Sticker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 2

    .line 433
    invoke-static {p0}, Lffmpeg/base/IEditorBaseCallback$DefaultImpls;->onFail(Lffmpeg/base/IEditorBaseCallback;)V

    .line 434
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->this$0:Lcom/narvii/video/services/VideoManager;

    invoke-static {v0}, Lcom/narvii/video/services/VideoManager;->access$getViewInstallStickerCallbackMap$p(Lcom/narvii/video/services/VideoManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    if-eqz v0, :cond_0

    .line 435
    iget-object v1, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->$sticker:Lcom/narvii/model/Sticker;

    invoke-interface {v0, v1}, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;->onStickerInstallFailed(Lcom/narvii/model/Sticker;)V

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->this$0:Lcom/narvii/video/services/VideoManager;

    invoke-static {v0}, Lcom/narvii/video/services/VideoManager;->access$getPageInstallStickerCallback$p(Lcom/narvii/video/services/VideoManager;)Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->$sticker:Lcom/narvii/model/Sticker;

    invoke-interface {v0, v1}, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;->onStickerInstallFailed(Lcom/narvii/model/Sticker;)V

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->this$0:Lcom/narvii/video/services/VideoManager;

    invoke-static {v0}, Lcom/narvii/video/services/VideoManager;->access$getViewInstallStickerCallbackMap$p(Lcom/narvii/video/services/VideoManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 417
    invoke-static {p0}, Lffmpeg/base/IEditorBaseCallback$DefaultImpls;->onStart(Lffmpeg/base/IEditorBaseCallback;)V

    .line 418
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->this$0:Lcom/narvii/video/services/VideoManager;

    invoke-static {v0}, Lcom/narvii/video/services/VideoManager;->access$getViewInstallStickerCallbackMap$p(Lcom/narvii/video/services/VideoManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    const-string v1, "stickerInfoPack"

    if-eqz v0, :cond_0

    .line 419
    iget-object v2, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->$stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;->onStickerInstallStart(Lcom/narvii/video/model/StickerInfoPack;)V

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->this$0:Lcom/narvii/video/services/VideoManager;

    invoke-static {v0}, Lcom/narvii/video/services/VideoManager;->access$getPageInstallStickerCallback$p(Lcom/narvii/video/services/VideoManager;)Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->$stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;->onStickerInstallStart(Lcom/narvii/video/model/StickerInfoPack;)V

    :cond_1
    return-void
.end method

.method public onSuccess()V
    .locals 4

    .line 424
    invoke-static {p0}, Lffmpeg/base/IEditorBaseCallback$DefaultImpls;->onSuccess(Lffmpeg/base/IEditorBaseCallback;)V

    .line 425
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->this$0:Lcom/narvii/video/services/VideoManager;

    invoke-static {v0}, Lcom/narvii/video/services/VideoManager;->access$getInstalledStickerMap$p(Lcom/narvii/video/services/VideoManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->$stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

    const-string v3, "stickerInfoPack"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->this$0:Lcom/narvii/video/services/VideoManager;

    invoke-static {v0}, Lcom/narvii/video/services/VideoManager;->access$getViewInstallStickerCallbackMap$p(Lcom/narvii/video/services/VideoManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    if-eqz v0, :cond_0

    .line 427
    iget-object v1, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->$stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;->onStickerInstalled(Lcom/narvii/video/model/StickerInfoPack;)V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->this$0:Lcom/narvii/video/services/VideoManager;

    invoke-static {v0}, Lcom/narvii/video/services/VideoManager;->access$getPageInstallStickerCallback$p(Lcom/narvii/video/services/VideoManager;)Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->$stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;->onStickerInstalled(Lcom/narvii/video/model/StickerInfoPack;)V

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->this$0:Lcom/narvii/video/services/VideoManager;

    invoke-static {v0}, Lcom/narvii/video/services/VideoManager;->access$getViewInstallStickerCallbackMap$p(Lcom/narvii/video/services/VideoManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
