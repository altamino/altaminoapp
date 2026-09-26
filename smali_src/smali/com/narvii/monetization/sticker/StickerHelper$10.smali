.class Lcom/narvii/monetization/sticker/StickerHelper$10;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/StickerHelper;->createSticker(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/monetization/sticker/model/StickerResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/StickerHelper;

.field final synthetic val$collectionId:Ljava/lang/String;

.field final synthetic val$stickerCallback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/StickerHelper;Ljava/lang/Class;Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerHelper$10;->this$0:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/monetization/sticker/StickerHelper$10;->val$collectionId:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/narvii/monetization/sticker/StickerHelper$10;->val$stickerCallback:Lcom/narvii/util/Callback;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 10
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerHelper$10;->this$0:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/monetization/sticker/StickerHelper;->a(Lcom/narvii/monetization/sticker/StickerHelper;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerHelper$10;->this$0:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 20
    move-result-object p1

    .line 21
    const/4 p2, 0x0

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 29
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/narvii/monetization/sticker/model/StickerResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/sticker/StickerHelper$10;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/sticker/model/StickerResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/sticker/model/StickerResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 3
    iget-object p1, p2, Lcom/narvii/monetization/sticker/model/StickerResponse;->sticker:Lcom/narvii/model/Sticker;

    iget-object p2, p0, Lcom/narvii/monetization/sticker/StickerHelper$10;->this$0:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 4
    invoke-static {p2}, Lcom/narvii/monetization/sticker/StickerHelper;->a(Lcom/narvii/monetization/sticker/StickerHelper;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/narvii/monetization/sticker/StickerHelper$10;->this$0:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 5
    iget-object p2, p2, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string/jumbo v0, "sticker"

    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/monetization/sticker/StickerService;

    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerHelper$10;->val$collectionId:Ljava/lang/String;

    .line 6
    invoke-virtual {p2, v0, p1}, Lcom/narvii/monetization/sticker/StickerService;->addSticker(Ljava/lang/String;Lcom/narvii/model/Sticker;)V

    iget-object p2, p0, Lcom/narvii/monetization/sticker/StickerHelper$10;->this$0:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 7
    iget-object p2, p2, Lcom/narvii/monetization/sticker/StickerHelper;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    invoke-virtual {p2, p1}, Lcom/narvii/sticker/StickerCacheService;->downloadSticker(Lcom/narvii/model/Sticker;)V

    iget-object p2, p0, Lcom/narvii/monetization/sticker/StickerHelper$10;->val$stickerCallback:Lcom/narvii/util/Callback;

    if-eqz p2, :cond_1

    .line 8
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
