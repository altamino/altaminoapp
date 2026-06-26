.class Lcom/narvii/monetization/sticker/StickerHelper$9;
.super Ljava/lang/Object;
.source "StickerHelper.java"

# interfaces
.implements Lcom/narvii/photos/PhotoUploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/StickerHelper;->onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/StickerHelper;

.field final synthetic val$collectionId:Ljava/lang/String;

.field final synthetic val$stickerCallback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/StickerHelper;Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerHelper$9;->this$0:Lcom/narvii/monetization/sticker/StickerHelper;

    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerHelper$9;->val$collectionId:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/monetization/sticker/StickerHelper$9;->val$stickerCallback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 527
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerHelper$9;->this$0:Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/StickerHelper;->access$300(Lcom/narvii/monetization/sticker/StickerHelper;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 528
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerHelper$9;->this$0:Lcom/narvii/monetization/sticker/StickerHelper;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p3, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 522
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerHelper$9;->this$0:Lcom/narvii/monetization/sticker/StickerHelper;

    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerHelper$9;->val$collectionId:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper$9;->val$stickerCallback:Lcom/narvii/util/Callback;

    invoke-static {p1, v0, p2, v1}, Lcom/narvii/monetization/sticker/StickerHelper;->access$200(Lcom/narvii/monetization/sticker/StickerHelper;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public onProgress(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method
