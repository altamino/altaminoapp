.class public final Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg7/b;


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->this$0:Lcom/narvii/video/services/VideoManager;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->$key:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->$stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->$sticker:Lcom/narvii/model/Sticker;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lg7/b$a;->a(Lg7/b;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->this$0:Lcom/narvii/video/services/VideoManager;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/video/services/VideoManager;->access$getViewInstallStickerCallbackMap$p(Lcom/narvii/video/services/VideoManager;)Ljava/util/HashMap;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->$key:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->$sticker:Lcom/narvii/model/Sticker;

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1}, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;->onStickerInstallFailed(Lcom/narvii/model/Sticker;)V

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->this$0:Lcom/narvii/video/services/VideoManager;

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/narvii/video/services/VideoManager;->access$getPageInstallStickerCallback$p(Lcom/narvii/video/services/VideoManager;)Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->$sticker:Lcom/narvii/model/Sticker;

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, v1}, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;->onStickerInstallFailed(Lcom/narvii/model/Sticker;)V

    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->this$0:Lcom/narvii/video/services/VideoManager;

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lcom/narvii/video/services/VideoManager;->access$getViewInstallStickerCallbackMap$p(Lcom/narvii/video/services/VideoManager;)Ljava/util/HashMap;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->$key:Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lg7/b$a;->b(Lg7/b;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->this$0:Lcom/narvii/video/services/VideoManager;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/video/services/VideoManager;->access$getViewInstallStickerCallbackMap$p(Lcom/narvii/video/services/VideoManager;)Ljava/util/HashMap;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->$key:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    .line 18
    .line 19
    const-string v1, "$stickerInfoPack"

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->$stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v2}, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;->onStickerInstallStart(Lcom/narvii/video/model/StickerInfoPack;)V

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->this$0:Lcom/narvii/video/services/VideoManager;

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/narvii/video/services/VideoManager;->access$getPageInstallStickerCallback$p(Lcom/narvii/video/services/VideoManager;)Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v2, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->$stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

    .line 40
    .line 41
    .line 42
    invoke-static {v2, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v2}, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;->onStickerInstallStart(Lcom/narvii/video/model/StickerInfoPack;)V

    .line 46
    :cond_1
    return-void
.end method

.method public onSuccess()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lg7/b$a;->c(Lg7/b;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->this$0:Lcom/narvii/video/services/VideoManager;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/video/services/VideoManager;->access$getInstalledStickerMap$p(Lcom/narvii/video/services/VideoManager;)Ljava/util/HashMap;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->$key:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->$stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

    .line 14
    .line 15
    const-string v3, "$stickerInfoPack"

    .line 16
    .line 17
    .line 18
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->this$0:Lcom/narvii/video/services/VideoManager;

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/narvii/video/services/VideoManager;->access$getViewInstallStickerCallbackMap$p(Lcom/narvii/video/services/VideoManager;)Ljava/util/HashMap;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->$key:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    check-cast v0, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->$stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v1}, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;->onStickerInstalled(Lcom/narvii/video/model/StickerInfoPack;)V

    .line 46
    .line 47
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->this$0:Lcom/narvii/video/services/VideoManager;

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Lcom/narvii/video/services/VideoManager;->access$getPageInstallStickerCallback$p(Lcom/narvii/video/services/VideoManager;)Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    iget-object v1, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->$stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, v1}, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;->onStickerInstalled(Lcom/narvii/video/model/StickerInfoPack;)V

    .line 62
    .line 63
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->this$0:Lcom/narvii/video/services/VideoManager;

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Lcom/narvii/video/services/VideoManager;->access$getViewInstallStickerCallbackMap$p(Lcom/narvii/video/services/VideoManager;)Ljava/util/HashMap;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    iget-object v1, p0, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;->$key:Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method
