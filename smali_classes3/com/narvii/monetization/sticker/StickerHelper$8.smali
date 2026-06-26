.class Lcom/narvii/monetization/sticker/StickerHelper$8;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "StickerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/StickerHelper;->saveAsFavorite(Ljava/lang/String;Ljava/lang/String;)V
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

.field final synthetic val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/StickerHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerHelper$8;->this$0:Lcom/narvii/monetization/sticker/StickerHelper;

    iput-object p3, p0, Lcom/narvii/monetization/sticker/StickerHelper$8;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

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

    .line 426
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 427
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerHelper$8;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 428
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerHelper$8;->this$0:Lcom/narvii/monetization/sticker/StickerHelper;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 423
    check-cast p2, Lcom/narvii/monetization/sticker/model/StickerResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/sticker/StickerHelper$8;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/sticker/model/StickerResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/sticker/model/StickerResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 433
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 434
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerHelper$8;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    if-eqz p2, :cond_0

    .line 435
    iget-object p1, p2, Lcom/narvii/monetization/sticker/model/StickerResponse;->sticker:Lcom/narvii/model/Sticker;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 436
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerHelper$8;->this$0:Lcom/narvii/monetization/sticker/StickerHelper;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/StickerHelper;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    iget-object p2, p2, Lcom/narvii/monetization/sticker/model/StickerResponse;->sticker:Lcom/narvii/model/Sticker;

    iget-object p2, p2, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/narvii/monetization/sticker/StickerService;->refreshStickerCollection(Ljava/lang/String;)V

    .line 439
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerHelper$8;->this$0:Lcom/narvii/monetization/sticker/StickerHelper;

    const p2, 0x7f0f008d

    invoke-static {p1, p2}, Lcom/narvii/monetization/sticker/StickerHelper;->access$100(Lcom/narvii/monetization/sticker/StickerHelper;I)V

    return-void
.end method
