.class Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "StickerCollectionHistoryListFragment.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/monetization/sticker/model/StickerCollection;",
        "Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;",
        ">;",
        "Lcom/narvii/notification/NotificationListener;"
    }
.end annotation


# instance fields
.field stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

.field final synthetic this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;

    .line 202
    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 203
    new-instance p1, Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-direct {p1, p2}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;Lcom/narvii/monetization/sticker/model/StickerCollection;Z)V
    .locals 0

    .line 197
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;->changeActive(Lcom/narvii/monetization/sticker/model/StickerCollection;Z)V

    return-void
.end method

.method private changeActive(Lcom/narvii/monetization/sticker/model/StickerCollection;Z)V
    .locals 9

    .line 274
    new-instance v3, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 275
    invoke-virtual {v3}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string v0, "api"

    .line 276
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/narvii/util/http/ApiService;

    .line 277
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sticker-collection/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v2, "/activate"

    goto :goto_0

    :cond_0
    const-string v2, "/deactivate"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v7

    new-instance v8, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;

    const-class v2, Lcom/narvii/model/api/ApiResponse;

    move-object v0, v8

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/monetization/sticker/model/StickerCollection;Z)V

    invoke-virtual {v6, v7, v8}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 218
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/sticker-collection"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "type"

    const-string v1, "my-collection"

    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/monetization/sticker/model/StickerCollection;",
            ">;"
        }
    .end annotation

    .line 208
    const-class v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    return-object v0
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/monetization/sticker/model/StickerCollection;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/monetization/sticker/model/StickerCollection;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 307
    instance-of v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const v0, 0x7f0b0649

    .line 308
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;

    .line 310
    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 311
    invoke-virtual {p2, p1}, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;->setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    const p3, 0x7f090b23

    .line 313
    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 314
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    iget-object v2, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;

    iget-object v2, v2, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getOwnTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f090056

    .line 317
    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    .line 318
    invoke-virtual {p3, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 319
    iget-boolean v1, p1, Lcom/narvii/model/StoreItemBaseObject;->isActivated:Z

    invoke-virtual {p3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 320
    new-instance v1, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$2;

    invoke-direct {v1, p0, p1}, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$2;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    invoke-virtual {p3, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p3, 0x7f0903bb

    .line 328
    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 329
    iget-object v1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-virtual {v1, p1}, Lcom/narvii/monetization/sticker/StickerHelper;->isCreatedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->notAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {p3, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 330
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09027b

    .line 332
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_1
    return-object v1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 260
    instance-of v0, p3, Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    if-eqz p5, :cond_0

    .line 261
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p2

    const p4, 0x7f09027b

    if-ne p2, p4, :cond_0

    .line 262
    iget-object p2, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    check-cast p3, Lcom/narvii/monetization/sticker/model/StickerCollection;

    const-string p4, "Added History"

    invoke-virtual {p2, p3, p4}, Lcom/narvii/monetization/sticker/StickerHelper;->onClickStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Ljava/lang/String;)V

    return p1

    :cond_0
    if-eqz p5, :cond_1

    .line 265
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p2

    const p4, 0x7f0903bb

    if-ne p2, p4, :cond_1

    .line 266
    iget-object p2, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    check-cast p3, Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {p2, p3}, Lcom/narvii/monetization/sticker/StickerHelper;->onClickEditStickerCollectionButton(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    :cond_1
    return p1

    .line 270
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 1

    const/4 v0, 0x0

    .line 340
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 197
    check-cast p2, Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;I)V
    .locals 0

    .line 224
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 225
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 227
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 228
    iget-object p3, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-virtual {p3, p2}, Lcom/narvii/monetization/sticker/StickerHelper;->isCreatedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 229
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->access$002(Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;Z)Z

    goto :goto_0

    .line 234
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->access$002(Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;Z)Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;",
            ">;"
        }
    .end annotation

    .line 213
    const-class v0, Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;

    return-object v0
.end method
