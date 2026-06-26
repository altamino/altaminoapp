.class public Lcom/narvii/catalog/CatalogFragment;
.super Lcom/narvii/catalog/CatalogThemeFragment;
.source "CatalogFragment.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/catalog/CatalogFragment$SubmitCatalogAdapter;,
        Lcom/narvii/catalog/CatalogFragment$AIAdapter;,
        Lcom/narvii/catalog/CatalogFragment$MyAllEntryAdapter;,
        Lcom/narvii/catalog/CatalogFragment$SelAdapter;,
        Lcom/narvii/catalog/CatalogFragment$IAdapter;,
        Lcom/narvii/catalog/CatalogFragment$CAdapter;,
        Lcom/narvii/catalog/CatalogFragment$SearchAdapter;,
        Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;,
        Lcom/narvii/catalog/CatalogFragment$MyMergeAdapter;
    }
.end annotation


# static fields
.field static final ADD_TO_REQUEST:I = 0x2

.field static final ALL_ITEMS_REQUEST:I = 0xa

.field private static final DEFAULT_PAGE_SIZE:I = 0x14

.field private static final IS_ALL_CURATION:Ljava/lang/String; = "is_all_curation"

.field public static final MAX_SELECT:I = 0x32

.field static final MERGE_TO_REQUEST:I = 0x3

.field static final MOVE_TO_REQUEST:I = 0x1

.field static final PICK_REQUEST:I = 0x1

.field static final RESULT_PICK:I = 0x2

.field static final SORT_CATEGORY_REQUEST:I = 0x5

.field static final SORT_ITEM_REQUEST:I = 0x4


# instance fields
.field actionMode:Landroid/view/ActionMode;

.field final actionModeCallback:Landroid/view/ActionMode$Callback;

.field adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

.field advanceListener:Landroid/view/View$OnClickListener;

.field advancedOptionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

.field aiadapter:Lcom/narvii/catalog/AllItemAdapter;

.field allEntryAdapter:Lcom/narvii/catalog/CatalogFragment$MyAllEntryAdapter;

.field catalogHelper:Lcom/narvii/catalog/CatalogHelper;

.field category:Lcom/narvii/model/ItemCategory;

.field categoryId:Ljava/lang/String;

.field final categoryListListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/model/api/CategoryListResponse;",
            ">;"
        }
    .end annotation
.end field

.field categoryListResponse:Lcom/narvii/model/api/CategoryListResponse;

.field private curDepth:I

.field emptyView:Landroid/view/View;

.field errorMsg:Ljava/lang/String;

.field isCurationEnabled:Z

.field private isOfficalEmpty:Z

.field itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

.field itemHelper:Lcom/narvii/item/ItemHelper;

.field mergeAdapter:Lcom/narvii/catalog/CatalogFragment$MyMergeAdapter;

.field recentActivityEntryAdapter:Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;

.field refreshAfterResume:Z

.field searchAdapter:Lcom/narvii/catalog/CatalogFragment$SearchAdapter;

.field selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

.field sendBroadcastHelper:Lcom/narvii/poweruser/SendBroadcastHelper;

.field showAll:Z

.field suspendNotification:Z

.field uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 98
    invoke-direct {p0}, Lcom/narvii/catalog/CatalogThemeFragment;-><init>()V

    .line 588
    new-instance v0, Lcom/narvii/catalog/CatalogFragment$6;

    invoke-direct {v0, p0}, Lcom/narvii/catalog/CatalogFragment$6;-><init>(Lcom/narvii/catalog/CatalogFragment;)V

    iput-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->advanceListener:Landroid/view/View$OnClickListener;

    .line 803
    new-instance v0, Lcom/narvii/catalog/CatalogFragment$7;

    const-class v1, Lcom/narvii/model/api/CategoryListResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/catalog/CatalogFragment$7;-><init>(Lcom/narvii/catalog/CatalogFragment;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->categoryListListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 1443
    new-instance v0, Lcom/narvii/catalog/CatalogFragment$8;

    invoke-direct {v0, p0}, Lcom/narvii/catalog/CatalogFragment$8;-><init>(Lcom/narvii/catalog/CatalogFragment;)V

    iput-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->actionModeCallback:Landroid/view/ActionMode$Callback;

    return-void
.end method

.method static synthetic access$002(Lcom/narvii/catalog/CatalogFragment;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/narvii/catalog/CatalogFragment;->isOfficalEmpty:Z

    return p1
.end method

.method static synthetic access$100(Lcom/narvii/catalog/CatalogFragment;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/narvii/catalog/CatalogFragment;->updateTitle()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/catalog/CatalogFragment;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/narvii/catalog/CatalogFragment;->sendPreRequestBeforeReady()V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/catalog/CatalogFragment;)I
    .locals 0

    .line 98
    iget p0, p0, Lcom/narvii/catalog/CatalogFragment;->curDepth:I

    return p0
.end method

.method static synthetic access$400(Lcom/narvii/catalog/CatalogFragment;)Z
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/narvii/catalog/CatalogFragment;->isInAllCuratorFolder()Z

    move-result p0

    return p0
.end method

.method private isInAllCuratorFolder()Z
    .locals 1

    .line 1440
    iget-boolean v0, p0, Lcom/narvii/catalog/CatalogFragment;->showAll:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private sendPreRequestBeforeReady()V
    .locals 3

    .line 421
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/item-category"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 422
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "user"

    .line 423
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 424
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    const-string v2, "q"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    :cond_0
    const/4 v1, 0x0

    .line 426
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const/16 v1, 0x64

    .line 427
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "size"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 428
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 429
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 430
    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->categoryListListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private updateTitle()V
    .locals 2

    const-string v0, "title"

    .line 304
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 306
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->category:Lcom/narvii/model/ItemCategory;

    if-nez v0, :cond_3

    .line 307
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isAllEntry()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f1198

    .line 308
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    goto :goto_1

    .line 309
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/catalog/CatalogFragment;->showAll:Z

    if-eqz v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    if-nez v0, :cond_1

    const v0, 0x7f0f00eb

    goto :goto_0

    :cond_1
    const v0, 0x7f0f00ec

    :goto_0
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    goto :goto_1

    :cond_2
    const v0, 0x7f0f0196

    .line 312
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    goto :goto_1

    .line 315
    :cond_3
    iget-object v0, v0, Lcom/narvii/model/ItemCategory;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 318
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->fromMyCatalog()Z

    move-result v1

    if-eqz v1, :cond_5

    const v0, 0x7f0f0bee

    .line 319
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 321
    :cond_5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public addItemList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Item;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1653
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1654
    :cond_0
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->category:Lcom/narvii/model/ItemCategory;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 1657
    :cond_1
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 1658
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Item;

    .line 1659
    iget-object v2, v2, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_0

    .line 1661
    :cond_2
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v1

    .line 1662
    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->category:Lcom/narvii/model/ItemCategory;

    iget-object v2, v2, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 1663
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 1664
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/item/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Item;

    iget-object p1, p1, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/tag"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string p1, "itemIdList"

    .line 1665
    invoke-virtual {v2, p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string p1, "categoryIdList"

    .line 1666
    invoke-virtual {v2, p1, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1667
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    if-eqz p1, :cond_3

    const-string v0, "sourceUid"

    .line 1668
    invoke-virtual {v2, v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1669
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    const-string v0, "destinationUid"

    invoke-virtual {v2, v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1671
    :cond_3
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 1672
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1673
    new-instance v1, Lcom/narvii/catalog/CatalogFragment$11;

    invoke-direct {v1, p0}, Lcom/narvii/catalog/CatalogFragment$11;-><init>(Lcom/narvii/catalog/CatalogFragment;)V

    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 1681
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string v1, "api"

    .line 1683
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 1684
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v1, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_4
    :goto_1
    return-void
.end method

.method addSubCategory()V
    .locals 4

    .line 632
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/narvii/catalog/category/CategoryPostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 633
    new-instance v1, Lcom/narvii/catalog/category/CategoryPost;

    invoke-direct {v1}, Lcom/narvii/catalog/category/CategoryPost;-><init>()V

    .line 634
    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 635
    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    invoke-virtual {v2}, Lcom/narvii/catalog/CategoryListAdapter;->getRootCategory()Lcom/narvii/model/ItemCategory;

    move-result-object v2

    if-nez v2, :cond_0

    .line 637
    iget-object v3, p0, Lcom/narvii/catalog/CatalogFragment;->categoryListResponse:Lcom/narvii/model/api/CategoryListResponse;

    if-eqz v3, :cond_0

    .line 638
    invoke-virtual {v3}, Lcom/narvii/model/api/CategoryListResponse;->getRootCategory()Lcom/narvii/model/ItemCategory;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    return-void

    :cond_1
    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    .line 644
    :cond_2
    iget-object v2, v2, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    :goto_0
    iput-object v2, v1, Lcom/narvii/catalog/category/CategoryPost;->parentCategoryId:Ljava/lang/String;

    goto :goto_1

    .line 646
    :cond_3
    iput-object v2, v1, Lcom/narvii/catalog/category/CategoryPost;->parentCategoryId:Ljava/lang/String;

    .line 648
    :goto_1
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "post"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 649
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public addTo(Lcom/narvii/model/ItemCategory;)V
    .locals 7

    .line 1616
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    invoke-virtual {v1}, Lcom/narvii/list/select/SelectableAdapter;->selections()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1617
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1619
    :cond_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v1

    .line 1620
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Item;

    .line 1621
    iget-object v3, v3, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_0

    .line 1623
    :cond_1
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v2

    .line 1624
    iget-object v3, p1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 1625
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    .line 1626
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/item/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Item;

    iget-object v0, v0, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/tag"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v0, "itemIdList"

    .line 1627
    invoke-virtual {v3, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v0, "categoryIdList"

    .line 1628
    invoke-virtual {v3, v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1629
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "sourceUid"

    .line 1630
    invoke-virtual {v3, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1631
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    const-string v1, "destinationUid"

    invoke-virtual {v3, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1633
    :cond_2
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 1635
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1636
    new-instance v2, Lcom/narvii/catalog/CatalogFragment$10;

    invoke-direct {v2, p0, p1}, Lcom/narvii/catalog/CatalogFragment$10;-><init>(Lcom/narvii/catalog/CatalogFragment;Lcom/narvii/model/ItemCategory;)V

    iput-object v2, v1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 1645
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string p1, "api"

    .line 1647
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 1648
    iget-object v1, v1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 6

    .line 841
    new-instance v0, Lcom/narvii/list/StaticViewAdapter;

    invoke-direct {v0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/View;

    .line 842
    new-instance v3, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 844
    new-instance v2, Lcom/narvii/catalog/CatalogFragment$IAdapter;

    invoke-direct {v2, p0}, Lcom/narvii/catalog/CatalogFragment$IAdapter;-><init>(Lcom/narvii/catalog/CatalogFragment;)V

    iput-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    .line 845
    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    iget-object v3, v2, Lcom/narvii/item/list/ItemGridExAdapter;->itemHelper:Lcom/narvii/item/ItemHelper;

    iget-object v5, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    if-nez v5, :cond_0

    const-string v5, "Catalog"

    goto :goto_0

    :cond_0
    const-string v5, "User Catalog"

    :goto_0
    iput-object v5, v3, Lcom/narvii/item/ItemHelper;->source:Ljava/lang/String;

    iput-object v5, v2, Lcom/narvii/item/list/ItemGridExAdapter;->detailOpenSource:Ljava/lang/String;

    .line 846
    new-instance v2, Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    invoke-direct {v2, p0}, Lcom/narvii/catalog/CatalogFragment$SelAdapter;-><init>(Lcom/narvii/catalog/CatalogFragment;)V

    iput-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    .line 847
    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    iget-object v3, p0, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    invoke-virtual {v2, v3}, Lcom/narvii/list/ProxyAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 848
    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    iget-object v3, p0, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    invoke-virtual {v2, v3}, Lcom/narvii/list/select/SelectableAdapter;->setListener(Lcom/narvii/list/select/SelectableListener;)V

    .line 849
    new-instance v2, Lcom/narvii/list/DivideColumnAdapter;

    invoke-direct {v2, p0}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 850
    iget-object v3, p0, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v5}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 851
    invoke-virtual {v2, v1}, Lcom/narvii/list/DivideColumnAdapter;->setSupportLongClick(Z)V

    .line 853
    new-instance v3, Lcom/narvii/catalog/CatalogFragment$SearchAdapter;

    invoke-direct {v3, p0}, Lcom/narvii/catalog/CatalogFragment$SearchAdapter;-><init>(Lcom/narvii/catalog/CatalogFragment;)V

    iput-object v3, p0, Lcom/narvii/catalog/CatalogFragment;->searchAdapter:Lcom/narvii/catalog/CatalogFragment$SearchAdapter;

    .line 854
    new-instance v3, Lcom/narvii/catalog/CatalogFragment$CAdapter;

    iget-object v5, p0, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    invoke-direct {v3, p0, v5}, Lcom/narvii/catalog/CatalogFragment$CAdapter;-><init>(Lcom/narvii/catalog/CatalogFragment;Lcom/narvii/catalog/CatalogItemAdapter;)V

    iput-object v3, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    if-nez p1, :cond_1

    const-string p1, "__categoryResponse"

    .line 856
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v3, Lcom/narvii/catalog/SubCategoryResponse;

    invoke-static {p1, v3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/catalog/SubCategoryResponse;

    if-eqz p1, :cond_1

    .line 858
    iget-object v3, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    invoke-virtual {v3, p1}, Lcom/narvii/catalog/CategoryListAdapter;->setResponse(Lcom/narvii/catalog/SubCategoryResponse;)V

    .line 861
    :cond_1
    new-instance p1, Lcom/narvii/list/DividerAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 862
    iget-object v3, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    const/4 v5, 0x2

    invoke-virtual {p1, v3, v5}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 864
    new-instance v3, Lcom/narvii/catalog/CatalogFragment$MyMergeAdapter;

    invoke-direct {v3, p0}, Lcom/narvii/catalog/CatalogFragment$MyMergeAdapter;-><init>(Lcom/narvii/catalog/CatalogFragment;)V

    iput-object v3, p0, Lcom/narvii/catalog/CatalogFragment;->mergeAdapter:Lcom/narvii/catalog/CatalogFragment$MyMergeAdapter;

    .line 865
    invoke-virtual {v3, v0, v4}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    const-string v0, "__embed"

    .line 866
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 867
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->searchAdapter:Lcom/narvii/catalog/CatalogFragment$SearchAdapter;

    invoke-virtual {v3, v0, v4}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 869
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isRootCategory()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isAllEntry()Z

    move-result v0

    if-nez v0, :cond_3

    .line 870
    new-instance v0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;-><init>(Lcom/narvii/catalog/CatalogFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->recentActivityEntryAdapter:Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;

    .line 871
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->recentActivityEntryAdapter:Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;

    invoke-virtual {v3, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 873
    :cond_3
    invoke-virtual {v3, p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 874
    invoke-virtual {v3, v2, v4}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 876
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    if-nez p1, :cond_4

    .line 877
    new-instance p1, Lcom/narvii/catalog/CatalogFragment$AIAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/catalog/CatalogFragment$AIAdapter;-><init>(Lcom/narvii/catalog/CatalogFragment;)V

    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->aiadapter:Lcom/narvii/catalog/AllItemAdapter;

    .line 878
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->aiadapter:Lcom/narvii/catalog/AllItemAdapter;

    invoke-virtual {v3, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 880
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 881
    new-instance p1, Lcom/narvii/catalog/CatalogFragment$MyAllEntryAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/catalog/CatalogFragment$MyAllEntryAdapter;-><init>(Lcom/narvii/catalog/CatalogFragment;)V

    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->allEntryAdapter:Lcom/narvii/catalog/CatalogFragment$MyAllEntryAdapter;

    .line 882
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->allEntryAdapter:Lcom/narvii/catalog/CatalogFragment$MyAllEntryAdapter;

    invoke-virtual {v3, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 886
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogThemeFragment;->isGoldTheme()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/narvii/catalog/CatalogFragment;->isCurationEnabled:Z

    if-eqz p1, :cond_5

    .line 887
    new-instance p1, Lcom/narvii/catalog/CatalogFragment$SubmitCatalogAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/catalog/CatalogFragment$SubmitCatalogAdapter;-><init>(Lcom/narvii/catalog/CatalogFragment;)V

    invoke-virtual {v3, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 889
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-object v3
.end method

.method public delete(Z)V
    .locals 7

    .line 1726
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    invoke-virtual {v1}, Lcom/narvii/list/select/SelectableAdapter;->selections()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1727
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1730
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1731
    new-instance v2, Lcom/narvii/catalog/CatalogFragment$13;

    invoke-direct {v2, p0, v0}, Lcom/narvii/catalog/CatalogFragment$13;-><init>(Lcom/narvii/catalog/CatalogFragment;Ljava/util/ArrayList;)V

    iput-object v2, p1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 1751
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v2

    .line 1752
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/Item;

    .line 1753
    iget-object v4, v4, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_0

    .line 1755
    :cond_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    .line 1756
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/item/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Item;

    iget-object v0, v0, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/batch-delete"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v0, "itemIdList"

    .line 1757
    invoke-virtual {v3, v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1758
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "sourceUid"

    .line 1759
    invoke-virtual {v3, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    :cond_2
    const-string v0, "api"

    .line 1761
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 1762
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    iget-object v2, p1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 1763
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    goto :goto_2

    .line 1765
    :cond_3
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1766
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const v0, 0x7f0f01a5

    .line 1767
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_4
    const v2, 0x7f0f01a6

    new-array v3, v3, [Ljava/lang/Object;

    .line 1769
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_1
    const/high16 v0, 0x1040000

    .line 1771
    sget-object v1, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0f0348

    .line 1772
    new-instance v1, Lcom/narvii/catalog/CatalogFragment$14;

    invoke-direct {v1, p0}, Lcom/narvii/catalog/CatalogFragment$14;-><init>(Lcom/narvii/catalog/CatalogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1778
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_2
    return-void
.end method

.method public depth()I
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isReady()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->categoryListResponse:Lcom/narvii/model/api/CategoryListResponse;

    if-eqz v0, :cond_2

    .line 176
    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/narvii/model/api/CategoryListResponse;->getCategory(Ljava/lang/String;)Lcom/narvii/model/ItemCategory;

    move-result-object v0

    if-nez v0, :cond_1

    .line 178
    iget v0, p0, Lcom/narvii/catalog/CatalogFragment;->curDepth:I

    return v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 180
    iget-object v0, v0, Lcom/narvii/model/ItemCategory;->parentCategoryId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 181
    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->categoryListResponse:Lcom/narvii/model/api/CategoryListResponse;

    invoke-virtual {v2, v0}, Lcom/narvii/model/api/CategoryListResponse;->getCategory(Ljava/lang/String;)Lcom/narvii/model/ItemCategory;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method editCategory()V
    .locals 6

    .line 653
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/narvii/catalog/category/CategoryPostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 655
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    const-string v2, "category"

    const-string v3, "categoryId"

    if-nez v1, :cond_2

    .line 656
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    invoke-virtual {v1}, Lcom/narvii/catalog/CategoryListAdapter;->getRootCategory()Lcom/narvii/model/ItemCategory;

    move-result-object v1

    if-nez v1, :cond_0

    .line 658
    iget-object v4, p0, Lcom/narvii/catalog/CatalogFragment;->categoryListResponse:Lcom/narvii/model/api/CategoryListResponse;

    if-eqz v4, :cond_0

    .line 659
    invoke-virtual {v4}, Lcom/narvii/model/api/CategoryListResponse;->getRootCategory()Lcom/narvii/model/ItemCategory;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    return-void

    .line 665
    :cond_1
    new-instance v4, Lcom/narvii/catalog/category/CategoryPost;

    invoke-direct {v4, v1}, Lcom/narvii/catalog/category/CategoryPost;-><init>(Lcom/narvii/model/ItemCategory;)V

    .line 666
    iget-object v5, v1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 669
    :cond_2
    new-instance v4, Lcom/narvii/catalog/category/CategoryPost;

    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->category:Lcom/narvii/model/ItemCategory;

    invoke-direct {v4, v1}, Lcom/narvii/catalog/category/CategoryPost;-><init>(Lcom/narvii/model/ItemCategory;)V

    .line 670
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->category:Lcom/narvii/model/ItemCategory;

    iget-object v1, v1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 671
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->category:Lcom/narvii/model/ItemCategory;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 673
    :goto_0
    invoke-static {v4}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "post"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method fromMyCatalog()Z
    .locals 1

    const-string v0, "fromMyCatalog"

    .line 763
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method fromOfficialCatalog()Z
    .locals 2

    const-string v0, "fromOfficialCatalog"

    .line 767
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "categoryId"

    .line 770
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "uid"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method getPreviewMedia()Lcom/narvii/model/Media;
    .locals 1

    const/4 v0, 0x0

    .line 777
    invoke-virtual {p0, v0}, Lcom/narvii/catalog/CatalogFragment;->getPreviewMedia(Z)Lcom/narvii/model/Media;

    move-result-object v0

    return-object v0
.end method

.method getPreviewMedia(Z)Lcom/narvii/model/Media;
    .locals 2

    .line 781
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->category:Lcom/narvii/model/ItemCategory;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/model/ItemCategory;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 782
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->category:Lcom/narvii/model/ItemCategory;

    invoke-virtual {p1}, Lcom/narvii/model/ItemCategory;->firstMedia()Lcom/narvii/model/Media;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "previewMedia"

    .line 784
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/Media;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    if-eqz v0, :cond_1

    return-object v0

    .line 788
    :cond_1
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    if-eqz v0, :cond_3

    .line 789
    invoke-virtual {v0}, Lcom/narvii/catalog/CategoryListAdapter;->getRootCategory()Lcom/narvii/model/ItemCategory;

    move-result-object v0

    if-nez p1, :cond_2

    if-eqz v0, :cond_2

    .line 790
    invoke-virtual {v0}, Lcom/narvii/model/ItemCategory;->firstMedia()Lcom/narvii/model/Media;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 791
    invoke-virtual {v0}, Lcom/narvii/model/ItemCategory;->firstMedia()Lcom/narvii/model/Media;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz v0, :cond_3

    .line 794
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    iget-object p1, p1, Lcom/narvii/catalog/CategoryListAdapter;->previewMap:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    .line 795
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 796
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Item;

    invoke-virtual {p1}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public isAllEntry()Z
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 161
    iget-boolean v0, p0, Lcom/narvii/catalog/CatalogFragment;->isCurationEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 162
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isReady()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->categoryListResponse:Lcom/narvii/model/api/CategoryListResponse;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/narvii/model/api/CategoryListResponse;->allEntriesItemCategory:Lcom/narvii/model/ItemCategory;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    iget-object v0, v0, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 164
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_3
    return v2
.end method

.method isCurator()Z
    .locals 2

    .line 753
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "account"

    .line 754
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 755
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 756
    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method isMine()Z
    .locals 2

    const-string v0, "account"

    .line 748
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 749
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->categoryListResponse:Lcom/narvii/model/api/CategoryListResponse;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/narvii/catalog/CatalogFragment;->showAll:Z

    if-eqz v0, :cond_2

    const-string v0, "is_all_curation"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->categoryListResponse:Lcom/narvii/model/api/CategoryListResponse;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public isRootCategory()Z
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->category:Lcom/narvii/model/ItemCategory;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method launchModerationHistory()V
    .locals 3

    .line 621
    const-class v0, Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 622
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 624
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->categoryListResponse:Lcom/narvii/model/api/CategoryListResponse;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/narvii/model/api/CategoryListResponse;->getRootCategory()Lcom/narvii/model/ItemCategory;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    const-string v2, "objectId"

    .line 626
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0xd

    const-string v2, "objectType"

    .line 627
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 628
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public mergeTo(Lcom/narvii/model/ItemCategory;)V
    .locals 3

    .line 1783
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/item-category/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/merge"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 1784
    iget-object v1, p1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    const-string v2, "destinationCategoryId"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1785
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 1787
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1788
    new-instance v2, Lcom/narvii/catalog/CatalogFragment$15;

    invoke-direct {v2, p0, p1}, Lcom/narvii/catalog/CatalogFragment$15;-><init>(Lcom/narvii/catalog/CatalogFragment;Lcom/narvii/model/ItemCategory;)V

    iput-object v2, v1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 1798
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string p1, "api"

    .line 1800
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 1801
    iget-object v1, v1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public moveTo(Lcom/narvii/model/ItemCategory;)V
    .locals 6

    .line 1575
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 1578
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    invoke-virtual {v1}, Lcom/narvii/list/select/SelectableAdapter;->selections()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1579
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 1581
    :cond_1
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v1

    .line 1582
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Item;

    .line 1583
    iget-object v3, v3, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_0

    .line 1585
    :cond_2
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 1586
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/item-category/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/item-move"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v3, "itemIdList"

    .line 1587
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1588
    iget-object v1, p1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    const-string v3, "destinationCategoryId"

    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1589
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    .line 1591
    new-instance v2, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1592
    new-instance v3, Lcom/narvii/catalog/CatalogFragment$9;

    invoke-direct {v3, p0, p1, v0}, Lcom/narvii/catalog/CatalogFragment$9;-><init>(Lcom/narvii/catalog/CatalogFragment;Lcom/narvii/model/ItemCategory;Ljava/util/ArrayList;)V

    iput-object v3, v2, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 1609
    invoke-virtual {v2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string p1, "api"

    .line 1611
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 1612
    iget-object v0, v2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 4

    .line 285
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onActiveChanged(Z)V

    .line 286
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isRootCategory()Z

    move-result v0

    const-string v1, "liveLayer"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isAllEntry()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    const-string v1, "catalog"

    .line 288
    invoke-virtual {v0, v1, p1}, Lcom/narvii/livelayer/LiveLayerService;->reportBrowsing(Ljava/lang/String;Z)V

    goto :goto_0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->fromOfficialCatalog()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->fromMyCatalog()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 291
    :cond_1
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    .line 292
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 293
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->fromOfficialCatalog()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isCurated"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "item-category/"

    if-eqz p1, :cond_2

    .line 295
    sget-object p1, Lcom/narvii/livelayer/LiveLayerService;->ACTION_BROWSING:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2, v1}, Lcom/narvii/livelayer/LiveLayerService;->reportActive(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 297
    :cond_2
    sget-object p1, Lcom/narvii/livelayer/LiveLayerService;->ACTION_BROWSING:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2, v1}, Lcom/narvii/livelayer/LiveLayerService;->reportInactive(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 278
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 279
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 280
    invoke-direct {p0}, Lcom/narvii/catalog/CatalogFragment;->updateTitle()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const-string v0, "categoryList"

    const/4 v1, -0x1

    const/16 v2, 0x64

    if-ne p1, v2, :cond_1

    if-ne p2, v1, :cond_1

    if-eqz p3, :cond_1

    .line 1529
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/narvii/model/ItemCategory;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    const-string p2, "itemId"

    .line 1530
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1531
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/narvii/item/list/ItemGridExAdapter;->addToCategory(Ljava/util/List;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x1

    const-string v3, "category"

    if-ne p1, v2, :cond_2

    if-ne p2, v1, :cond_2

    if-eqz p3, :cond_2

    .line 1536
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/narvii/model/ItemCategory;

    invoke-static {v4, v5}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/ItemCategory;

    invoke-virtual {p0, v4}, Lcom/narvii/catalog/CatalogFragment;->moveTo(Lcom/narvii/model/ItemCategory;)V

    :cond_2
    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    if-ne p2, v1, :cond_3

    if-eqz p3, :cond_3

    .line 1539
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/narvii/model/ItemCategory;

    invoke-static {v4, v5}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/ItemCategory;

    invoke-virtual {p0, v4}, Lcom/narvii/catalog/CatalogFragment;->addTo(Lcom/narvii/model/ItemCategory;)V

    :cond_3
    const/4 v4, 0x3

    if-ne p1, v4, :cond_4

    if-ne p2, v1, :cond_4

    if-eqz p3, :cond_4

    .line 1542
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/narvii/model/ItemCategory;

    invoke-static {v3, v4}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/ItemCategory;

    invoke-virtual {p0, v3}, Lcom/narvii/catalog/CatalogFragment;->mergeTo(Lcom/narvii/model/ItemCategory;)V

    :cond_4
    const/4 v3, 0x4

    const-string v4, "itemList"

    if-ne p1, v3, :cond_5

    if-ne p2, v1, :cond_5

    if-eqz p3, :cond_5

    .line 1545
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v5, Lcom/narvii/model/Item;

    invoke-static {v3, v5}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1547
    iget-object v5, p0, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    invoke-virtual {v5, v3}, Lcom/narvii/catalog/CatalogFragment$IAdapter;->updateList(Ljava/util/List;)V

    :cond_5
    const/4 v3, 0x5

    if-ne p1, v3, :cond_6

    if-ne p2, v1, :cond_6

    if-eqz p3, :cond_6

    .line 1551
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcom/narvii/model/ItemCategory;

    invoke-static {v0, v3}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1552
    iget-object v3, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    invoke-virtual {v3, v0}, Lcom/narvii/catalog/CategoryListAdapter;->updateList(Ljava/util/List;)V

    .line 1553
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Lcom/narvii/catalog/CatalogFragment$CAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_6
    const/16 v0, 0xa

    if-ne p1, v0, :cond_7

    if-nez p2, :cond_7

    .line 1557
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_7
    const/16 v0, 0xb

    if-ne p1, v0, :cond_8

    if-ne p2, v1, :cond_8

    if-eqz p3, :cond_8

    const-string v0, "item"

    .line 1561
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1562
    const-class v3, Lcom/narvii/model/Item;

    invoke-static {v0, v3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Item;

    if-eqz v0, :cond_8

    .line 1564
    iget-object v3, p0, Lcom/narvii/catalog/CatalogFragment;->itemHelper:Lcom/narvii/item/ItemHelper;

    invoke-virtual {v3, v0}, Lcom/narvii/item/ItemHelper;->submitOfficialCatalog(Lcom/narvii/model/Item;)V

    :cond_8
    if-ne p1, v2, :cond_9

    if-eqz p3, :cond_9

    if-ne p2, v1, :cond_9

    .line 1568
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/Item;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1569
    invoke-virtual {p0, v0}, Lcom/narvii/catalog/CatalogFragment;->addItemList(Ljava/util/List;)V

    .line 1571
    :cond_9
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 198
    const-class v0, Lcom/narvii/model/api/CategoryListResponse;

    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "categoryListResponse"

    const-string v2, "category"

    const-string v3, "showAll"

    const-string v4, "depth"

    const-string v5, "categoryId"

    const-string/jumbo v6, "uid"

    if-nez p1, :cond_0

    .line 202
    invoke-virtual {p0, v6}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 203
    invoke-virtual {p0, v5}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    .line 204
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/narvii/catalog/CatalogFragment;->curDepth:I

    .line 205
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/narvii/catalog/CatalogFragment;->showAll:Z

    .line 206
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/narvii/model/ItemCategory;

    invoke-static {v2, v3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/ItemCategory;

    iput-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->category:Lcom/narvii/model/ItemCategory;

    .line 207
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/api/CategoryListResponse;

    iput-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->categoryListResponse:Lcom/narvii/model/api/CategoryListResponse;

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 210
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    .line 211
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/narvii/catalog/CatalogFragment;->curDepth:I

    .line 212
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/narvii/catalog/CatalogFragment;->showAll:Z

    .line 213
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/narvii/model/ItemCategory;

    invoke-static {v2, v3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/ItemCategory;

    iput-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->category:Lcom/narvii/model/ItemCategory;

    .line 214
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/api/CategoryListResponse;

    iput-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->categoryListResponse:Lcom/narvii/model/api/CategoryListResponse;

    .line 216
    :goto_0
    new-instance v0, Lcom/narvii/item/ItemHelper;

    invoke-direct {v0, p0}, Lcom/narvii/item/ItemHelper;-><init>(Lcom/narvii/app/NVFragment;)V

    iput-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->itemHelper:Lcom/narvii/item/ItemHelper;

    .line 217
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->itemHelper:Lcom/narvii/item/ItemHelper;

    const-string v1, "Official Catalog"

    iput-object v1, v0, Lcom/narvii/item/ItemHelper;->source:Ljava/lang/String;

    .line 218
    new-instance v0, Lcom/narvii/catalog/CatalogHelper;

    invoke-direct {v0, p0}, Lcom/narvii/catalog/CatalogHelper;-><init>(Lcom/narvii/app/NVFragment;)V

    iput-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->catalogHelper:Lcom/narvii/catalog/CatalogHelper;

    .line 219
    new-instance v0, Lcom/narvii/poweruser/SendBroadcastHelper;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/SendBroadcastHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->sendBroadcastHelper:Lcom/narvii/poweruser/SendBroadcastHelper;

    .line 221
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v0, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "catalog"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "curationEnabled"

    aput-object v3, v1, v2

    .line 222
    invoke-virtual {v0, v1}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleBoolean([Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/catalog/CatalogFragment;->isCurationEnabled:Z

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const p2, 0x7f0f0fa2

    const/4 v0, 0x0

    .line 468
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    const v1, 0x7f080309

    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const p2, 0x7f0f0197

    .line 469
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const p2, 0x7f0f0199

    .line 470
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const p2, 0x7f0f01a7

    .line 471
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const p2, 0x7f0f01aa

    .line 472
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const p2, 0x7f0f0ed7

    .line 473
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const p2, 0x7f0f01b6

    .line 474
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const p2, 0x7f0f0094

    .line 475
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 435
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 436
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 437
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 4

    .line 724
    iget-boolean v0, p0, Lcom/narvii/catalog/CatalogFragment;->suspendNotification:Z

    if-eqz v0, :cond_0

    return-void

    .line 726
    :cond_0
    iget v0, p1, Lcom/narvii/notification/Notification;->objectType:I

    const/4 v1, 0x0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_3

    iget-object v0, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 727
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string/jumbo v3, "update"

    if-ne v0, v3, :cond_2

    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v3, v0, Lcom/narvii/model/ItemCategory;

    if-eqz v3, :cond_2

    .line 728
    check-cast v0, Lcom/narvii/model/ItemCategory;

    iput-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->category:Lcom/narvii/model/ItemCategory;

    .line 729
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->category:Lcom/narvii/model/ItemCategory;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/narvii/model/ItemCategory;->label:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 730
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->update()V

    return-void

    .line 733
    :cond_2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v3, "delete"

    if-ne v0, v3, :cond_3

    .line 734
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void

    .line 738
    :cond_3
    iget v0, p1, Lcom/narvii/notification/Notification;->objectType:I

    if-ne v0, v2, :cond_5

    iget-object p1, p1, Lcom/narvii/notification/Notification;->uid:Ljava/lang/String;

    invoke-static {p1}, Lcom/narvii/model/User;->eliminateZeroUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 739
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 740
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/narvii/catalog/CatalogFragment$CAdapter;->refresh(ILcom/narvii/util/Callback;)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    .line 742
    iput-boolean p1, p0, Lcom/narvii/catalog/CatalogFragment;->refreshAfterResume:Z

    :cond_5
    :goto_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    .line 511
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f0f0fa2

    if-ne v0, v2, :cond_3

    .line 513
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 514
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    invoke-virtual {p1}, Lcom/narvii/catalog/CategoryListAdapter;->getRootCategory()Lcom/narvii/model/ItemCategory;

    move-result-object p1

    goto :goto_0

    .line 516
    :cond_0
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->category:Lcom/narvii/model/ItemCategory;

    .line 518
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isAllEntry()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 519
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->categoryListResponse:Lcom/narvii/model/api/CategoryListResponse;

    iget-object p1, p1, Lcom/narvii/model/api/CategoryListResponse;->allEntriesItemCategory:Lcom/narvii/model/ItemCategory;

    :cond_1
    if-eqz p1, :cond_2

    .line 522
    invoke-static {p0, p1}, Lcom/narvii/share/ShareDialog;->getShareDialogFromWikiFolder(Lcom/narvii/app/NVContext;Lcom/narvii/model/ItemCategory;)Lcom/narvii/share/ShareDialog;

    move-result-object p1

    const-string v0, "Catalog"

    invoke-virtual {p1, v0}, Lcom/narvii/share/ShareDialog;->setSource(Ljava/lang/String;)Lcom/narvii/share/ShareDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/share/ShareDialog;->show()V

    :cond_2
    return v1

    .line 526
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0f0199

    if-eq v0, v2, :cond_14

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0f0197

    if-ne v0, v2, :cond_4

    goto/16 :goto_1

    .line 530
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0f01a7

    if-ne v0, v2, :cond_5

    .line 531
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->editCategory()V

    return v1

    .line 534
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0f01aa

    if-ne v0, v2, :cond_6

    .line 535
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/list/select/SelectableAdapter;->startSelect(Ljava/util/List;)V

    return v1

    .line 538
    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v3, 0x7f0f0ed7

    if-ne v0, v3, :cond_7

    .line 539
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->reorder()V

    return v1

    .line 542
    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v3, 0x7f0f01b2

    if-ne v0, v3, :cond_8

    .line 543
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->reviewSubmission()V

    return v1

    .line 546
    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v3, 0x7f0f01b6

    if-ne v0, v3, :cond_9

    .line 547
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->catalogHelper:Lcom/narvii/catalog/CatalogHelper;

    invoke-virtual {p1}, Lcom/narvii/catalog/CatalogHelper;->openSubmitFavoritePicker()V

    return v1

    .line 550
    :cond_9
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v3, 0x7f0f0094

    if-ne v0, v3, :cond_13

    .line 551
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 552
    iget-object v3, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    invoke-virtual {v3}, Lcom/narvii/catalog/CategoryListAdapter;->getType()I

    move-result v3

    const-string v4, "account"

    .line 553
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/account/AccountService;

    .line 554
    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 556
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->depth()I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_b

    const/4 v5, 0x2

    if-eq v3, v5, :cond_a

    if-ne v3, v1, :cond_b

    :cond_a
    invoke-virtual {v4}, Lcom/narvii/model/User;->isCurator()Z

    move-result v5

    if-eqz v5, :cond_b

    const v5, 0x7f0f0097

    .line 557
    iget-object v7, p0, Lcom/narvii/catalog/CatalogFragment;->advanceListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5, v7}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->addItem(ILandroid/view/View$OnClickListener;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 563
    :cond_b
    invoke-virtual {v4}, Lcom/narvii/model/User;->isCurator()Z

    move-result v5

    if-eqz v5, :cond_c

    const v5, 0x7f0f01a3

    .line 564
    iget-object v7, p0, Lcom/narvii/catalog/CatalogFragment;->advanceListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5, v7}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->addItem(ILandroid/view/View$OnClickListener;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 566
    :cond_c
    invoke-virtual {v4}, Lcom/narvii/model/User;->isCurator()Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    invoke-virtual {v5}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    invoke-virtual {v5}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v1, :cond_e

    :cond_d
    iget-object v5, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    iget-object v5, v5, Lcom/narvii/catalog/CategoryListAdapter;->categoryList:Ljava/util/List;

    if-eqz v5, :cond_f

    .line 567
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v1, :cond_f

    :cond_e
    const v5, 0x7f0f0ed5

    .line 568
    iget-object v7, p0, Lcom/narvii/catalog/CatalogFragment;->advanceListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5, v7}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->addItem(ILandroid/view/View$OnClickListener;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 570
    :cond_f
    invoke-virtual {v4}, Lcom/narvii/model/User;->isLeader()Z

    move-result v5

    if-eqz v5, :cond_10

    new-instance v5, Lcom/narvii/util/PackageUtils;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/narvii/util/PackageUtils;->acmBroadcast()Z

    move-result v5

    if-eqz v5, :cond_10

    const v5, 0x7f0f017b

    .line 571
    iget-object v7, p0, Lcom/narvii/catalog/CatalogFragment;->advanceListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5, v7}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->addItem(ILandroid/view/View$OnClickListener;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 573
    :cond_10
    invoke-virtual {v4}, Lcom/narvii/model/User;->isCurator()Z

    move-result v5

    if-eqz v5, :cond_11

    const v5, 0x7f0f00a9

    .line 574
    iget-object v7, p0, Lcom/narvii/catalog/CatalogFragment;->advanceListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5, v7}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->addItem(ILandroid/view/View$OnClickListener;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    :cond_11
    if-ne v3, v6, :cond_12

    .line 576
    invoke-virtual {v4}, Lcom/narvii/model/User;->isCurator()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    .line 577
    invoke-virtual {v3}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    invoke-virtual {v3}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_12

    .line 578
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->advanceListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->addItem(ILandroid/view/View$OnClickListener;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 582
    :cond_12
    invoke-virtual {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->build()Lcom/narvii/poweruser/AdvancedOptionDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->advancedOptionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 583
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->advancedOptionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->show()V

    .line 585
    :cond_13
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 527
    :cond_14
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->addSubCategory()V

    return v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 11

    .line 480
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 481
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isReady()Z

    move-result v0

    .line 482
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isAllEntry()Z

    move-result v1

    .line 483
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isMine()Z

    move-result v2

    .line 484
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->depth()I

    move-result v3

    .line 485
    iget-object v4, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    invoke-virtual {v4}, Lcom/narvii/catalog/CategoryListAdapter;->getType()I

    move-result v4

    const v5, 0x7f0f0fa2

    .line 486
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_0

    iget-object v9, p0, Lcom/narvii/catalog/CatalogFragment;->categoryListResponse:Lcom/narvii/model/api/CategoryListResponse;

    if-eqz v9, :cond_0

    iget-object v9, v9, Lcom/narvii/model/api/CategoryListResponse;->allEntriesItemCategory:Lcom/narvii/model/ItemCategory;

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-eqz v1, :cond_1

    .line 488
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    const v5, 0x7f0f0199

    .line 490
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v9, 0x3

    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    if-ge v3, v9, :cond_3

    if-eqz v3, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v8, :cond_3

    :cond_2
    if-eqz v2, :cond_3

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    :goto_1
    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v5, 0x7f0f0197

    .line 493
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v0, :cond_5

    if-nez v1, :cond_5

    if-nez v3, :cond_5

    if-eq v4, v6, :cond_4

    if-ne v4, v8, :cond_5

    :cond_4
    if-eqz v2, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0f01a7

    .line 496
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v0, :cond_6

    if-nez v1, :cond_6

    if-eqz v2, :cond_6

    const/4 v6, 0x1

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 497
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isRootCategory()Z

    move-result v5

    if-eqz v5, :cond_7

    const v5, 0x7f0f01c1

    goto :goto_4

    :cond_7
    const v5, 0x7f0f03cd

    :goto_4
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    const v3, 0x7f0f01aa

    .line 498
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v0, :cond_8

    if-nez v1, :cond_8

    if-ne v4, v9, :cond_8

    if-eqz v2, :cond_8

    const/4 v4, 0x1

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    :goto_5
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0f0ed7

    .line 500
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v0, :cond_b

    if-nez v1, :cond_b

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    .line 501
    invoke-virtual {v2}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    invoke-virtual {v2}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v8, :cond_a

    :cond_9
    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    iget-object v2, v2, Lcom/narvii/catalog/CategoryListAdapter;->categoryList:Ljava/util/List;

    if-eqz v2, :cond_b

    .line 502
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v8, :cond_b

    :cond_a
    const/4 v2, 0x1

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    .line 500
    :goto_6
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const-string v2, "account"

    .line 503
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/account/AccountService;

    .line 504
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v2

    const v3, 0x7f0f01b6

    .line 505
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v0, :cond_c

    if-nez v1, :cond_c

    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->fromOfficialCatalog()Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    goto :goto_7

    :cond_c
    const/4 v4, 0x0

    :goto_7
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0f0094

    .line 506
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz v0, :cond_d

    if-nez v1, :cond_d

    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    if-nez v0, :cond_d

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/narvii/model/User;->isCurator()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v7, 0x1

    :cond_d
    invoke-interface {p1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 244
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onRefresh()V

    .line 245
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->allEntryAdapter:Lcom/narvii/catalog/CatalogFragment$MyAllEntryAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0, v2, v1}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->recentActivityEntryAdapter:Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isAllEntry()Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->recentActivityEntryAdapter:Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;

    invoke-virtual {v0, v2, v1}, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 260
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 261
    iget-boolean v0, p0, Lcom/narvii/catalog/CatalogFragment;->refreshAfterResume:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/narvii/catalog/CatalogFragment$CAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 263
    iput-boolean v1, p0, Lcom/narvii/catalog/CatalogFragment;->refreshAfterResume:Z

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "account"

    .line 267
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 268
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "disableCatalogGuideline"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogThemeFragment;->showGuideline()V

    goto :goto_0

    .line 271
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogThemeFragment;->dismissGuideline()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 233
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 234
    iget-boolean v0, p0, Lcom/narvii/catalog/CatalogFragment;->showAll:Z

    const-string v1, "showAll"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 235
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    const-string v1, "categoryId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget v0, p0, Lcom/narvii/catalog/CatalogFragment;->curDepth:I

    const-string v1, "depth"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    const-string/jumbo v1, "uid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 328
    invoke-super {p0, p1, p2}, Lcom/narvii/catalog/CatalogThemeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 329
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->update()V

    .line 332
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogThemeFragment;->isGoldTheme()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0b007c

    .line 333
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->emptyView:Landroid/view/View;

    .line 334
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->emptyView:Landroid/view/View;

    const p2, 0x7f0901a3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 335
    new-instance p2, Lcom/narvii/catalog/CatalogFragment$1;

    invoke-direct {p2, p0}, Lcom/narvii/catalog/CatalogFragment$1;-><init>(Lcom/narvii/catalog/CatalogFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    :cond_0
    const p1, 0x7f0b007b

    .line 349
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->emptyView:Landroid/view/View;

    .line 350
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->emptyView:Landroid/view/View;

    const p2, 0x7f0903ed

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 351
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/16 p2, 0xc8

    .line 353
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 354
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/Utils;->getScreenSize(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object p2

    .line 355
    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p2, v0

    float-to-int p2, p2

    .line 357
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 358
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 360
    :cond_2
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->emptyView:Landroid/view/View;

    const p2, 0x7f09030e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 361
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment;->emptyView:Landroid/view/View;

    const v0, 0x7f09006d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 362
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isMine()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isAllEntry()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 363
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isMine()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->depth()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    :cond_5
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 364
    new-instance v0, Lcom/narvii/catalog/CatalogFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/catalog/CatalogFragment$2;-><init>(Lcom/narvii/catalog/CatalogFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    new-instance p1, Lcom/narvii/catalog/CatalogFragment$3;

    invoke-direct {p1, p0}, Lcom/narvii/catalog/CatalogFragment$3;-><init>(Lcom/narvii/catalog/CatalogFragment;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    :goto_2
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->emptyView:Landroid/view/View;

    if-eqz p1, :cond_6

    const p2, 0x7f090b15

    .line 388
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 390
    new-instance p2, Lcom/narvii/catalog/CatalogFragment$4;

    invoke-direct {p2, p0}, Lcom/narvii/catalog/CatalogFragment$4;-><init>(Lcom/narvii/catalog/CatalogFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    :cond_6
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->emptyView:Landroid/view/View;

    if-eqz p1, :cond_7

    const p2, 0x7f0903ea

    .line 400
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 402
    new-instance p2, Lcom/narvii/catalog/CatalogFragment$5;

    invoke-direct {p2, p0}, Lcom/narvii/catalog/CatalogFragment$5;-><init>(Lcom/narvii/catalog/CatalogFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    :cond_7
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isReady()Z

    move-result p1

    if-nez p1, :cond_8

    .line 411
    invoke-direct {p0}, Lcom/narvii/catalog/CatalogFragment;->sendPreRequestBeforeReady()V

    :cond_8
    return-void
.end method

.method public remove()V
    .locals 6

    .line 1688
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    invoke-virtual {v1}, Lcom/narvii/list/select/SelectableAdapter;->selections()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1689
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1691
    :cond_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v1

    .line 1692
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Item;

    .line 1693
    iget-object v3, v3, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_0

    .line 1695
    :cond_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 1696
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/item-category/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/item-remove"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v3, "itemIdList"

    .line 1697
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1698
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v3, "sourceUid"

    .line 1699
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1701
    :cond_2
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    .line 1703
    new-instance v2, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1704
    new-instance v3, Lcom/narvii/catalog/CatalogFragment$12;

    invoke-direct {v3, p0, v0}, Lcom/narvii/catalog/CatalogFragment$12;-><init>(Lcom/narvii/catalog/CatalogFragment;Ljava/util/ArrayList;)V

    iput-object v3, v2, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 1719
    invoke-virtual {v2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string v0, "api"

    .line 1721
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 1722
    iget-object v2, v2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method reorder()V
    .locals 4

    .line 678
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    invoke-virtual {v0}, Lcom/narvii/catalog/CategoryListAdapter;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/narvii/catalog/CatalogFragment;->showAll:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 696
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->sortCategory()V

    goto :goto_2

    .line 680
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 681
    const-class v0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 683
    :cond_2
    const-class v0, Lcom/narvii/catalog/organizer/SubItemOrganizeFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    .line 686
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    invoke-virtual {v1}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v1

    .line 687
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_3

    const/4 v2, 0x0

    .line 688
    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 690
    :cond_3
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "itemList"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    const-string v2, "categoryId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x4

    .line 693
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_4
    :goto_2
    return-void
.end method

.method reviewSubmission()V
    .locals 1

    .line 701
    const-class v0, Lcom/narvii/catalog/review/CatalogSubmissionFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 702
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected setListContentBgWhenHasPageBackground()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method sortCategory()V
    .locals 3

    .line 706
    const-class v0, Lcom/narvii/catalog/organizer/CategoryOrganizeFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 708
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 709
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    invoke-virtual {v1}, Lcom/narvii/catalog/CategoryListAdapter;->getRootCategory()Lcom/narvii/model/ItemCategory;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 713
    :cond_0
    iget-object v1, v1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    :cond_1
    const-string v2, "categoryId"

    .line 717
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 718
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    iget-object v1, v1, Lcom/narvii/catalog/CategoryListAdapter;->categoryList:Ljava/util/List;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "categoryList"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x5

    .line 719
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method update()V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    const v1, 0x7f0901a5

    .line 442
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 444
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->depth()I

    move-result v1

    if-nez v1, :cond_1

    .line 445
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isMine()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0f01a1

    goto :goto_0

    :cond_0
    const v1, 0x7f0f01a9

    :goto_0
    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const v1, 0x7f0f0198

    .line 447
    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isAllEntry()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 453
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    if-eqz v0, :cond_4

    .line 454
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    .line 455
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 456
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/NVObject;

    .line 457
    instance-of v1, v0, Lcom/narvii/model/Item;

    if-eqz v1, :cond_4

    .line 458
    iget-object v1, p0, Lcom/narvii/catalog/CatalogThemeFragment;->backgroundImageView:Lcom/narvii/widget/NVImageView;

    check-cast v0, Lcom/narvii/model/Item;

    invoke-virtual {v0}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    goto :goto_2

    .line 462
    :cond_3
    iget-object v0, p0, Lcom/narvii/catalog/CatalogThemeFragment;->backgroundImageView:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->getPreviewMedia()Lcom/narvii/model/Media;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    :cond_4
    :goto_2
    return-void
.end method
