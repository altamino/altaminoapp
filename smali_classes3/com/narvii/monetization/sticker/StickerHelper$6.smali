.class Lcom/narvii/monetization/sticker/StickerHelper$6;
.super Ljava/lang/Object;
.source "StickerHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/StickerHelper;->deleteDisabledSticker(Ljava/lang/String;Lcom/narvii/model/Sticker;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/StickerHelper;

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$collectionId:Ljava/lang/String;

.field final synthetic val$sticker:Lcom/narvii/model/Sticker;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/StickerHelper;Lcom/narvii/util/Callback;Ljava/lang/String;Lcom/narvii/model/Sticker;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerHelper$6;->this$0:Lcom/narvii/monetization/sticker/StickerHelper;

    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerHelper$6;->val$callback:Lcom/narvii/util/Callback;

    iput-object p3, p0, Lcom/narvii/monetization/sticker/StickerHelper$6;->val$collectionId:Ljava/lang/String;

    iput-object p4, p0, Lcom/narvii/monetization/sticker/StickerHelper$6;->val$sticker:Lcom/narvii/model/Sticker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 357
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerHelper$6;->this$0:Lcom/narvii/monetization/sticker/StickerHelper;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 358
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerHelper$6;->val$callback:Lcom/narvii/util/Callback;

    iput-object v0, p1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 359
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 360
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/narvii/monetization/sticker/StickerHelper$6;->val$collectionId:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/narvii/monetization/sticker/StickerHelper$6;->val$sticker:Lcom/narvii/model/Sticker;

    invoke-virtual {v2}, Lcom/narvii/model/Sticker;->id()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "sticker-collection/%s/stickers/%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper$6;->this$0:Lcom/narvii/monetization/sticker/StickerHelper;

    iget-object v1, v1, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 362
    iget-object p1, p1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v1, v0, p1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method
