.class Lcom/narvii/monetization/sticker/StickerHelper$9;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerHelper$9;->this$0:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerHelper$9;->val$collectionId:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/monetization/sticker/StickerHelper$9;->val$stickerCallback:Lcom/narvii/util/Callback;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerHelper$9;->this$0:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/monetization/sticker/StickerHelper;->a(Lcom/narvii/monetization/sticker/StickerHelper;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerHelper$9;->this$0:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 17
    move-result-object p1

    .line 18
    const/4 p2, 0x0

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p3, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 26
    return-void
.end method

.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerHelper$9;->this$0:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerHelper$9;->val$collectionId:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper$9;->val$stickerCallback:Lcom/narvii/util/Callback;

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0, p2, v1}, Lcom/narvii/monetization/sticker/StickerHelper;->b(Lcom/narvii/monetization/sticker/StickerHelper;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 10
    return-void
.end method

.method public onProgress(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method
