.class Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;
.super Lcom/narvii/detail/DetailAdapter;
.source "StickerCollectionDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/detail/DetailAdapter<",
        "Lcom/narvii/monetization/sticker/model/StickerCollection;",
        "Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;",
        ">;"
    }
.end annotation


# instance fields
.field stated:Z

.field final synthetic this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    .line 322
    invoke-direct {p0, p2}, Lcom/narvii/detail/DetailAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 1

    .line 402
    sget-object v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    sget-object v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->DETAIL:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 397
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sticker-collection/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    invoke-virtual {v2}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "includeStickers"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method protected getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 425
    sget-object v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_0

    const p1, 0x7f0b0647

    .line 426
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 427
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    invoke-static {p3}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->access$100(Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;)I

    move-result p3

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-object p1

    .line 430
    :cond_0
    sget-object v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->DETAIL:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_4

    const p1, 0x7f0b0645

    .line 431
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 432
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    check-cast p2, Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz p2, :cond_3

    const p3, 0x7f090aae

    .line 434
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 435
    invoke-virtual {p3, p2}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    const p3, 0x7f090279

    .line 437
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 438
    invoke-virtual {p2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 439
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 440
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    invoke-static {p3, v2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    goto :goto_0

    .line 443
    :cond_1
    new-instance v1, Lcom/narvii/util/text/NVText;

    invoke-direct {v1, v0}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 444
    new-instance v0, Lcom/narvii/util/text/DefaultTagClickListener;

    invoke-direct {v0}, Lcom/narvii/util/text/DefaultTagClickListener;-><init>()V

    .line 445
    invoke-virtual {v1, v0}, Lcom/narvii/util/text/NVText;->markAllEntries(Lcom/narvii/util/text/OnTagClickListener;)I

    .line 446
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 447
    invoke-static {}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getInstance()Lcom/narvii/util/text/LinkTouchMovementMethod;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 448
    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p3, v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 449
    invoke-static {p3, v3}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    :goto_0
    const p3, 0x7f090ace

    .line 452
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/monetization/StoreItemStatusView;

    .line 454
    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    iget-object v1, v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->storeItemOwnStatusController:Lcom/narvii/monetization/StoreItemOwnStatusController;

    if-nez v1, :cond_2

    .line 455
    new-instance v1, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter$1;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v4

    invoke-direct {v1, p0, v4, p3}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter$1;-><init>(Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;)V

    iput-object v1, v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->storeItemOwnStatusController:Lcom/narvii/monetization/StoreItemOwnStatusController;

    .line 468
    :cond_2
    iget-object p3, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    iget-object p3, p3, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->storeItemOwnStatusController:Lcom/narvii/monetization/StoreItemOwnStatusController;

    invoke-virtual {p3, p2}, Lcom/narvii/monetization/StoreItemOwnStatusController;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    const p3, 0x7f090c0e

    .line 470
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 471
    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    const v1, 0x7f0f111b

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    iget-wide v5, p2, Lcom/narvii/monetization/sticker/model/StickerCollection;->usedCount:J

    invoke-virtual {v4, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->access$200(Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;)Lcom/narvii/monetization/sticker/StickerHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/narvii/monetization/sticker/StickerHelper;->showStickerCollectionUsedTimes(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    move-result p2

    invoke-static {p3, p2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    :cond_3
    return-object p1

    .line 476
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/detail/DetailAdapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected getCellTypes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/detail/DetailAdapter$CellType;",
            ">;)V"
        }
    .end annotation

    .line 408
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->getCellTypes(Ljava/util/List;)V

    .line 409
    sget-object v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    sget-object v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->DETAIL:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 381
    invoke-super {p0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 382
    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->access$000(Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;)V

    return-void
.end method

.method public objectType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/monetization/sticker/model/StickerCollection;",
            ">;"
        }
    .end annotation

    .line 387
    const-class v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    return-object v0
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 415
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "update"

    if-ne v0, v1, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-static {v0, p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getUpdatedStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Lcom/narvii/monetization/sticker/model/StickerCollection;)Lcom/narvii/monetization/sticker/model/StickerCollection;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 417
    iget-object v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->setObject(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 318
    check-cast p2, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;)V

    return-void
.end method

.method protected onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;)V
    .locals 0

    .line 375
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V

    .line 376
    iget-object p1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->requestFinished:Z

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;",
            ">;"
        }
    .end annotation

    .line 392
    const-class v0, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    return-object v0
.end method

.method public bridge synthetic setObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 318
    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->setObject(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    return-void
.end method

.method public setObject(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 1

    .line 327
    new-instance v0, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    invoke-direct {v0}, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;-><init>()V

    .line 328
    iput-object p1, v0, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 329
    invoke-virtual {p0, v0}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->setResponse(Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;)V

    return-void
.end method

.method public bridge synthetic setResponse(Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 318
    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->setResponse(Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;)V

    return-void
.end method

.method public setResponse(Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;)V
    .locals 5

    const-string v0, "Source"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 338
    iget-object v2, p1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v2, :cond_2

    .line 339
    invoke-virtual {v2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isUserCreated()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 340
    iget-object v2, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 343
    :cond_0
    const-class v2, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    invoke-static {v2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 344
    iget-object v3, p1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {v3}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    iget-object p1, p1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "prefetch"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter;->source:Ljava/lang/String;

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    invoke-virtual {p0, v2}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    .line 348
    iget-object p1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 349
    iget-object p1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_1
    :goto_0
    return-void

    .line 354
    :cond_2
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->setResponse(Lcom/narvii/model/api/ObjectResponse;)V

    .line 356
    iget-object v2, p1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isShared()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 357
    iget-object v2, p1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    new-instance v3, Lcom/narvii/util/FilterHelper;

    invoke-direct {v3, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v4, p1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    iget-object v4, v4, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, v2, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    .line 360
    :cond_3
    iget-object v2, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    iget-object v2, v2, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->stickerListAdapter:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$StickerListAdapter;

    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    iget-object v3, p1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v3, :cond_4

    .line 361
    iget-object v3, v3, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/narvii/list/NVArrayAdapter;->setList(Ljava/util/ArrayList;)V

    .line 364
    :cond_4
    iget-boolean v2, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->stated:Z

    if-nez v2, :cond_5

    const/4 v2, 0x1

    .line 365
    iput-boolean v2, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->stated:Z

    :cond_5
    return-void
.end method
