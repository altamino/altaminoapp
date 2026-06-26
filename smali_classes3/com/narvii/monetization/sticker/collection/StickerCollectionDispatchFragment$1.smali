.class Lcom/narvii/monetization/sticker/collection/StickerCollectionDispatchFragment$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "StickerCollectionDispatchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/collection/StickerCollectionDispatchFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDispatchFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/collection/StickerCollectionDispatchFragment;Ljava/lang/Class;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDispatchFragment$1;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDispatchFragment;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    check-cast p2, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDispatchFragment$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    iget-object p1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDispatchFragment$1;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDispatchFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDispatchFragment$1;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDispatchFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, p2, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-nez p1, :cond_1

    .line 36
    iget-object p1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDispatchFragment$1;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDispatchFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void

    .line 39
    :cond_1
    invoke-static {p1}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->intent(Lcom/narvii/monetization/sticker/model/StickerCollection;)Landroid/content/Intent;

    move-result-object p1

    .line 40
    iget-object v0, p2, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "response"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    iget-object p2, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDispatchFragment$1;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDispatchFragment;

    const-string v0, "Source"

    invoke-virtual {p2, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    iget-object p2, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDispatchFragment$1;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDispatchFragment;

    invoke-virtual {p2, p1}, Lcom/narvii/app/FragmentWrapperFragment;->setWrapFragment(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method
