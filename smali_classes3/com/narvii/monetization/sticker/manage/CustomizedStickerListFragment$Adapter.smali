.class Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "CustomizedStickerListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVArrayAdapter<",
        "Lcom/narvii/model/Sticker;",
        ">;"
    }
.end annotation


# instance fields
.field error:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/Sticker;",
            ">;)V"
        }
    .end annotation

    .line 305
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;

    .line 306
    invoke-direct {p0, p2, p3}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/Sticker;",
            ">;",
            "Ljava/util/List<",
            "Lcom/narvii/model/Sticker;",
            ">;)V"
        }
    .end annotation

    .line 309
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;

    .line 310
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->stickerList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;->error:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 384
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Sticker;

    const v0, 0x7f0b044a

    .line 385
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090aa9

    .line 386
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;

    .line 387
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->collectionId:Ljava/lang/String;

    iget-object v1, p1, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;->setStickerImageUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object p3, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;

    iget-boolean p3, p3, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->editing:Z

    const v0, 0x7f09033c

    invoke-static {p2, v0, p3}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 389
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    invoke-virtual {p1}, Lcom/narvii/model/Sticker;->isDisabled()Z

    move-result p1

    const p3, 0x7f090359

    invoke-static {p2, p3, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    return-object p2
.end method

.method public isListShown()Z
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->stickerList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;->error:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onAttach()V
    .locals 0

    .line 301
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 302
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;->sendRequest()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;

    iget-boolean v0, v0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->editing:Z

    if-eqz v0, :cond_1

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09033c

    if-ne v0, v1, :cond_1

    .line 339
    instance-of p1, p3, Lcom/narvii/model/Sticker;

    if-eqz p1, :cond_0

    .line 340
    check-cast p3, Lcom/narvii/model/Sticker;

    .line 341
    invoke-virtual {p0, p3}, Lcom/narvii/list/NVArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 342
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->deleteList:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 347
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 1

    .line 333
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 325
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->stickerList:Ljava/util/ArrayList;

    .line 326
    iput-object p2, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;->error:Ljava/lang/String;

    .line 327
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;->sendRequest()V

    .line 328
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public sendRequest()V
    .locals 4

    const-string v0, "api"

    .line 351
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 352
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/sticker-collection"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "type"

    const-string v3, "my-favorite-collection"

    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "includeStickers"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    .line 353
    new-instance v2, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter$1;

    const-class v3, Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter$1;-><init>(Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method
