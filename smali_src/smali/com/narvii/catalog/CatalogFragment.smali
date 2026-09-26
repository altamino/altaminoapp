.class public Lcom/narvii/catalog/CatalogFragment;
.super Lcom/narvii/catalog/CatalogThemeFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/catalog/CatalogFragment$MyAllEntryAdapter;,
        Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;,
        Lcom/narvii/catalog/CatalogFragment$CAdapter;,
        Lcom/narvii/catalog/CatalogFragment$IAdapter;,
        Lcom/narvii/catalog/CatalogFragment$SelAdapter;,
        Lcom/narvii/catalog/CatalogFragment$SearchAdapter;,
        Lcom/narvii/catalog/CatalogFragment$MyMergeAdapter;,
        Lcom/narvii/catalog/CatalogFragment$AIAdapter;,
        Lcom/narvii/catalog/CatalogFragment$SubmitCatalogAdapter;
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/catalog/CatalogThemeFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/catalog/CatalogFragment$6;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/catalog/CatalogFragment$6;-><init>(Lcom/narvii/catalog/CatalogFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->advanceListener:Landroid/view/View$OnClickListener;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/catalog/CatalogFragment$7;

    .line 13
    .line 14
    const-class v1, Lcom/narvii/model/api/CategoryListResponse;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0, v1}, Lcom/narvii/catalog/CatalogFragment$7;-><init>(Lcom/narvii/catalog/CatalogFragment;Ljava/lang/Class;)V

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->categoryListListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 20
    .line 21
    new-instance v0, Lcom/narvii/catalog/CatalogFragment$8;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/narvii/catalog/CatalogFragment$8;-><init>(Lcom/narvii/catalog/CatalogFragment;)V

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->actionModeCallback:Landroid/view/ActionMode$Callback;

    .line 27
    return-void
.end method

.method private isInAllCuratorFolder()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/catalog/CatalogFragment;->showAll:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private sendPreRequestBeforeReady()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "/item-category"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-string/jumbo v1, "type"

    .line 17
    .line 18
    const-string/jumbo v2, "user"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 22
    .line 23
    const-string v1, "q"

    .line 24
    .line 25
    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 29
    :cond_0
    const/4 v1, 0x0

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    const-string/jumbo v2, "start"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    .line 40
    const/16 v1, 0x64

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    const-string/jumbo v2, "size"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    const-string v1, "api"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->categoryListListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 67
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/catalog/CatalogFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/catalog/CatalogFragment;->curDepth:I

    return p0
.end method

.method static bridge synthetic u(Lcom/narvii/catalog/CatalogFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/catalog/CatalogFragment;->isOfficalEmpty:Z

    return-void
.end method

.method private updateTitle()V
    .locals 2

    .line 1
    .line 2
    const-string/jumbo v0, "title"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_4

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->category:Lcom/narvii/model/ItemCategory;

    .line 11
    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isAllEntry()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    .line 21
    const v0, 0x7f1212a0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/catalog/CatalogFragment;->showAll:Z

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    .line 36
    const v0, 0x7f120129

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_1
    const v0, 0x7f12012a

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 44
    goto :goto_1

    .line 45
    .line 46
    .line 47
    :cond_2
    const v0, 0x7f1201e5

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_3
    iget-object v0, v0, Lcom/narvii/model/ItemCategory;->label:Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    goto :goto_1

    .line 58
    .line 59
    .line 60
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->fromMyCatalog()Z

    .line 61
    move-result v1

    .line 62
    .line 63
    if-eqz v1, :cond_5

    .line 64
    .line 65
    .line 66
    const v0, 0x7f120d19

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    goto :goto_1

    .line 75
    .line 76
    .line 77
    :cond_5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    :goto_1
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/catalog/CatalogFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/catalog/CatalogFragment;->isInAllCuratorFolder()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic w(Lcom/narvii/catalog/CatalogFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/catalog/CatalogFragment;->sendPreRequestBeforeReady()V

    return-void
.end method

.method static bridge synthetic x(Lcom/narvii/catalog/CatalogFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/catalog/CatalogFragment;->updateTitle()V

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

    .line 1
    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_1

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->category:Lcom/narvii/model/ItemCategory;

    .line 13
    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    iget-object v0, v0, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v2

    .line 37
    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    check-cast v2, Lcom/narvii/model/Item;

    .line 45
    .line 46
    iget-object v2, v2, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 50
    goto :goto_0

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->category:Lcom/narvii/model/ItemCategory;

    .line 57
    .line 58
    iget-object v2, v2, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 69
    move-result-object v3

    .line 70
    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    const-string v5, "/item/"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const/4 v5, 0x0

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    check-cast p1, Lcom/narvii/model/Item;

    .line 87
    .line 88
    iget-object p1, p1, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string p1, "/tag"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 104
    .line 105
    const-string p1, "itemIdList"

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 109
    .line 110
    const-string p1, "categoryIdList"

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, p1, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 114
    .line 115
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 116
    .line 117
    if-eqz p1, :cond_3

    .line 118
    .line 119
    const-string/jumbo v0, "sourceUid"

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 123
    .line 124
    const-string p1, "destinationUid"

    .line 125
    .line 126
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 130
    .line 131
    .line 132
    :cond_3
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 133
    move-result-object p1

    .line 134
    .line 135
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 139
    move-result-object v1

    .line 140
    .line 141
    .line 142
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 143
    .line 144
    new-instance v1, Lcom/narvii/catalog/CatalogFragment$11;

    .line 145
    .line 146
    .line 147
    invoke-direct {v1, p0}, Lcom/narvii/catalog/CatalogFragment$11;-><init>(Lcom/narvii/catalog/CatalogFragment;)V

    .line 148
    .line 149
    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 153
    .line 154
    const-string v1, "api"

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 158
    move-result-object v1

    .line 159
    .line 160
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 161
    .line 162
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 166
    :cond_4
    :goto_1
    return-void
.end method

.method addSubCategory()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    const-class v2, Lcom/narvii/catalog/category/CategoryPostActivity;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    .line 13
    new-instance v1, Lcom/narvii/catalog/category/CategoryPost;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1}, Lcom/narvii/catalog/category/CategoryPost;-><init>()V

    .line 17
    .line 18
    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    .line 19
    .line 20
    if-nez v2, :cond_2

    .line 21
    .line 22
    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/narvii/catalog/CategoryListAdapter;->getRootCategory()Lcom/narvii/model/ItemCategory;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    iget-object v3, p0, Lcom/narvii/catalog/CatalogFragment;->categoryListResponse:Lcom/narvii/model/api/CategoryListResponse;

    .line 31
    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/narvii/model/api/CategoryListResponse;->getRootCategory()Lcom/narvii/model/ItemCategory;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    :cond_0
    if-nez v2, :cond_1

    .line 39
    return-void

    .line 40
    .line 41
    :cond_1
    iget-object v2, v2, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 42
    .line 43
    iput-object v2, v1, Lcom/narvii/catalog/category/CategoryPost;->parentCategoryId:Ljava/lang/String;

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_2
    iput-object v2, v1, Lcom/narvii/catalog/category/CategoryPost;->parentCategoryId:Ljava/lang/String;

    .line 47
    .line 48
    :goto_0
    const-string v2, "post"

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    invoke-static {p0, v0}, Lcom/narvii/catalog/CatalogFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 59
    return-void
.end method

.method public addTo(Lcom/narvii/model/ItemCategory;)V
    .locals 7

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/narvii/list/select/SelectableAdapter;->selections()Ljava/util/List;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    return-void

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v3

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    check-cast v3, Lcom/narvii/model/Item;

    .line 39
    .line 40
    iget-object v3, v3, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    iget-object v3, p1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 61
    move-result-object v4

    .line 62
    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    const-string v6, "/item/"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const/4 v6, 0x0

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    check-cast v0, Lcom/narvii/model/Item;

    .line 79
    .line 80
    iget-object v0, v0, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v0, "/tag"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 96
    .line 97
    const-string v0, "itemIdList"

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 101
    .line 102
    const-string v0, "categoryIdList"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 106
    .line 107
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 108
    .line 109
    if-eqz v0, :cond_2

    .line 110
    .line 111
    const-string/jumbo v1, "sourceUid"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 115
    .line 116
    const-string v0, "destinationUid"

    .line 117
    .line 118
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 122
    .line 123
    .line 124
    :cond_2
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 131
    move-result-object v2

    .line 132
    .line 133
    .line 134
    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 135
    .line 136
    new-instance v2, Lcom/narvii/catalog/CatalogFragment$10;

    .line 137
    .line 138
    .line 139
    invoke-direct {v2, p0, p1}, Lcom/narvii/catalog/CatalogFragment$10;-><init>(Lcom/narvii/catalog/CatalogFragment;Lcom/narvii/model/ItemCategory;)V

    .line 140
    .line 141
    iput-object v2, v1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 145
    .line 146
    const-string p1, "api"

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 150
    move-result-object p1

    .line 151
    .line 152
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 153
    .line 154
    iget-object v1, v1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 158
    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 6

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/list/StaticViewAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    new-array v2, v1, [Landroid/view/View;

    .line 9
    .line 10
    new-instance v3, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v4

    .line 15
    .line 16
    .line 17
    invoke-direct {v3, v4}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v4, 0x0

    .line 19
    .line 20
    aput-object v3, v2, v4

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 24
    .line 25
    new-instance v2, Lcom/narvii/catalog/CatalogFragment$IAdapter;

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, p0}, Lcom/narvii/catalog/CatalogFragment$IAdapter;-><init>(Lcom/narvii/catalog/CatalogFragment;)V

    .line 29
    .line 30
    iput-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    .line 31
    .line 32
    iget-object v3, v2, Lcom/narvii/item/list/ItemGridExAdapter;->itemHelper:Lcom/narvii/item/ItemHelper;

    .line 33
    .line 34
    iget-object v5, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 35
    .line 36
    if-nez v5, :cond_0

    .line 37
    .line 38
    const-string v5, "Catalog"

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    const-string v5, "User Catalog"

    .line 42
    .line 43
    :goto_0
    iput-object v5, v3, Lcom/narvii/item/ItemHelper;->source:Ljava/lang/String;

    .line 44
    .line 45
    iput-object v5, v2, Lcom/narvii/item/list/ItemGridExAdapter;->detailOpenSource:Ljava/lang/String;

    .line 46
    .line 47
    new-instance v2, Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    .line 48
    .line 49
    .line 50
    invoke-direct {v2, p0}, Lcom/narvii/catalog/CatalogFragment$SelAdapter;-><init>(Lcom/narvii/catalog/CatalogFragment;)V

    .line 51
    .line 52
    iput-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    .line 53
    .line 54
    iget-object v3, p0, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v3}, Lcom/narvii/list/ProxyAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    .line 59
    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    .line 60
    .line 61
    iget-object v3, p0, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v3}, Lcom/narvii/list/select/SelectableAdapter;->setListener(Lcom/narvii/list/select/SelectableListener;)V

    .line 65
    .line 66
    new-instance v2, Lcom/narvii/list/DivideColumnAdapter;

    .line 67
    .line 68
    .line 69
    invoke-direct {v2, p0}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 70
    .line 71
    iget-object v3, p0, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    .line 72
    const/4 v5, 0x3

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v3, v5}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v1}, Lcom/narvii/list/DivideColumnAdapter;->setSupportLongClick(Z)V

    .line 79
    .line 80
    new-instance v3, Lcom/narvii/catalog/CatalogFragment$SearchAdapter;

    .line 81
    .line 82
    .line 83
    invoke-direct {v3, p0}, Lcom/narvii/catalog/CatalogFragment$SearchAdapter;-><init>(Lcom/narvii/catalog/CatalogFragment;)V

    .line 84
    .line 85
    iput-object v3, p0, Lcom/narvii/catalog/CatalogFragment;->searchAdapter:Lcom/narvii/catalog/CatalogFragment$SearchAdapter;

    .line 86
    .line 87
    new-instance v3, Lcom/narvii/catalog/CatalogFragment$CAdapter;

    .line 88
    .line 89
    iget-object v5, p0, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    .line 90
    .line 91
    .line 92
    invoke-direct {v3, p0, v5}, Lcom/narvii/catalog/CatalogFragment$CAdapter;-><init>(Lcom/narvii/catalog/CatalogFragment;Lcom/narvii/catalog/CatalogItemAdapter;)V

    .line 93
    .line 94
    iput-object v3, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    .line 95
    .line 96
    if-nez p1, :cond_1

    .line 97
    .line 98
    const-string p1, "__categoryResponse"

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    const-class v3, Lcom/narvii/catalog/SubCategoryResponse;

    .line 105
    .line 106
    .line 107
    invoke-static {p1, v3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    check-cast p1, Lcom/narvii/catalog/SubCategoryResponse;

    .line 111
    .line 112
    if-eqz p1, :cond_1

    .line 113
    .line 114
    iget-object v3, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, p1}, Lcom/narvii/catalog/CategoryListAdapter;->setResponse(Lcom/narvii/catalog/SubCategoryResponse;)V

    .line 118
    .line 119
    :cond_1
    new-instance p1, Lcom/narvii/list/DividerAdapter;

    .line 120
    .line 121
    .line 122
    invoke-direct {p1, p0}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 123
    .line 124
    iget-object v3, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    .line 125
    const/4 v5, 0x2

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v3, v5}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 129
    .line 130
    new-instance v3, Lcom/narvii/catalog/CatalogFragment$MyMergeAdapter;

    .line 131
    .line 132
    .line 133
    invoke-direct {v3, p0}, Lcom/narvii/catalog/CatalogFragment$MyMergeAdapter;-><init>(Lcom/narvii/catalog/CatalogFragment;)V

    .line 134
    .line 135
    iput-object v3, p0, Lcom/narvii/catalog/CatalogFragment;->mergeAdapter:Lcom/narvii/catalog/CatalogFragment$MyMergeAdapter;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v0, v4}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 139
    .line 140
    const-string v0, "__embed"

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 144
    move-result v0

    .line 145
    .line 146
    if-nez v0, :cond_2

    .line 147
    .line 148
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->searchAdapter:Lcom/narvii/catalog/CatalogFragment$SearchAdapter;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3, v0, v4}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 152
    .line 153
    .line 154
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isRootCategory()Z

    .line 155
    move-result v0

    .line 156
    .line 157
    if-eqz v0, :cond_3

    .line 158
    .line 159
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 163
    move-result v0

    .line 164
    .line 165
    if-eqz v0, :cond_3

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isAllEntry()Z

    .line 169
    move-result v0

    .line 170
    .line 171
    if-nez v0, :cond_3

    .line 172
    .line 173
    new-instance v0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;

    .line 174
    .line 175
    .line 176
    invoke-direct {v0, p0, p0}, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;-><init>(Lcom/narvii/catalog/CatalogFragment;Lcom/narvii/app/NVContext;)V

    .line 177
    .line 178
    iput-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->recentActivityEntryAdapter:Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 182
    .line 183
    .line 184
    :cond_3
    invoke-virtual {v3, p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3, v2, v4}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 188
    .line 189
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    .line 190
    .line 191
    if-nez p1, :cond_4

    .line 192
    .line 193
    new-instance p1, Lcom/narvii/catalog/CatalogFragment$AIAdapter;

    .line 194
    .line 195
    .line 196
    invoke-direct {p1, p0}, Lcom/narvii/catalog/CatalogFragment$AIAdapter;-><init>(Lcom/narvii/catalog/CatalogFragment;)V

    .line 197
    .line 198
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->aiadapter:Lcom/narvii/catalog/AllItemAdapter;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 202
    .line 203
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 207
    move-result p1

    .line 208
    .line 209
    if-eqz p1, :cond_4

    .line 210
    .line 211
    new-instance p1, Lcom/narvii/catalog/CatalogFragment$MyAllEntryAdapter;

    .line 212
    .line 213
    .line 214
    invoke-direct {p1, p0}, Lcom/narvii/catalog/CatalogFragment$MyAllEntryAdapter;-><init>(Lcom/narvii/catalog/CatalogFragment;)V

    .line 215
    .line 216
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->allEntryAdapter:Lcom/narvii/catalog/CatalogFragment$MyAllEntryAdapter;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v3, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 220
    .line 221
    .line 222
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogThemeFragment;->isGoldTheme()Z

    .line 223
    move-result p1

    .line 224
    .line 225
    if-eqz p1, :cond_5

    .line 226
    .line 227
    iget-boolean p1, p0, Lcom/narvii/catalog/CatalogFragment;->isCurationEnabled:Z

    .line 228
    .line 229
    if-eqz p1, :cond_5

    .line 230
    .line 231
    new-instance p1, Lcom/narvii/catalog/CatalogFragment$SubmitCatalogAdapter;

    .line 232
    .line 233
    .line 234
    invoke-direct {p1, p0}, Lcom/narvii/catalog/CatalogFragment$SubmitCatalogAdapter;-><init>(Lcom/narvii/catalog/CatalogFragment;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v3, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 238
    .line 239
    .line 240
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 241
    move-result-object p1

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, v3}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 245
    return-object v3
.end method

.method public delete(Z)V
    .locals 7

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/narvii/list/select/SelectableAdapter;->selections()Ljava/util/List;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    return-void

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    .line 21
    if-eqz p1, :cond_3

    .line 22
    .line 23
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    new-instance v2, Lcom/narvii/catalog/CatalogFragment$13;

    .line 33
    .line 34
    .line 35
    invoke-direct {v2, p0, v0}, Lcom/narvii/catalog/CatalogFragment$13;-><init>(Lcom/narvii/catalog/CatalogFragment;Ljava/util/ArrayList;)V

    .line 36
    .line 37
    iput-object v2, p1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 45
    move-result-object v3

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v4

    .line 50
    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v4

    .line 56
    .line 57
    check-cast v4, Lcom/narvii/model/Item;

    .line 58
    .line 59
    iget-object v4, v4, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v4}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 63
    goto :goto_0

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 67
    move-result-object v3

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 71
    move-result-object v4

    .line 72
    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    const-string v6, "/item/"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    check-cast v0, Lcom/narvii/model/Item;

    .line 88
    .line 89
    iget-object v0, v0, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v0, "/batch-delete"

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 105
    .line 106
    const-string v0, "itemIdList"

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 110
    .line 111
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 112
    .line 113
    if-eqz v0, :cond_2

    .line 114
    .line 115
    const-string/jumbo v1, "sourceUid"

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 119
    .line 120
    :cond_2
    const-string v0, "api"

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    move-result-object v0

    .line 125
    .line 126
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 130
    move-result-object v1

    .line 131
    .line 132
    iget-object v2, p1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 139
    goto :goto_2

    .line 140
    .line 141
    :cond_3
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 145
    move-result-object v2

    .line 146
    .line 147
    .line 148
    invoke-direct {p1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 152
    move-result v2

    .line 153
    const/4 v3, 0x1

    .line 154
    .line 155
    if-ne v2, v3, :cond_4

    .line 156
    .line 157
    .line 158
    const v0, 0x7f1201f4

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 162
    goto :goto_1

    .line 163
    .line 164
    :cond_4
    new-array v2, v3, [Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 168
    move-result v0

    .line 169
    .line 170
    .line 171
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    move-result-object v0

    .line 173
    .line 174
    aput-object v0, v2, v1

    .line 175
    .line 176
    .line 177
    const v0, 0x7f1201f5

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 181
    move-result-object v0

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 185
    .line 186
    :goto_1
    const/high16 v0, 0x1040000

    .line 187
    .line 188
    sget-object v1, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 192
    .line 193
    new-instance v0, Lcom/narvii/catalog/CatalogFragment$14;

    .line 194
    .line 195
    .line 196
    invoke-direct {v0, p0}, Lcom/narvii/catalog/CatalogFragment$14;-><init>(Lcom/narvii/catalog/CatalogFragment;)V

    .line 197
    .line 198
    .line 199
    const v1, 0x7f1203a0

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 206
    :goto_2
    return-void
.end method

.method public depth()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isReady()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->categoryListResponse:Lcom/narvii/model/api/CategoryListResponse;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lcom/narvii/model/api/CategoryListResponse;->getCategory(Ljava/lang/String;)Lcom/narvii/model/ItemCategory;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    iget v0, p0, Lcom/narvii/catalog/CatalogFragment;->curDepth:I

    .line 27
    return v0

    .line 28
    .line 29
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object v0, v0, Lcom/narvii/model/ItemCategory;->parentCategoryId:Ljava/lang/String;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->categoryListResponse:Lcom/narvii/model/api/CategoryListResponse;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v0}, Lcom/narvii/model/api/CategoryListResponse;->getCategory(Ljava/lang/String;)Lcom/narvii/model/ItemCategory;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    return v1

    .line 44
    :cond_3
    const/4 v0, -0x1

    .line 45
    return v0
.end method

.method editCategory()V
    .locals 6

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    const-class v2, Lcom/narvii/catalog/category/CategoryPostActivity;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    .line 14
    .line 15
    const-string v2, "category"

    .line 16
    .line 17
    const-string v3, "categoryId"

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/narvii/catalog/CategoryListAdapter;->getRootCategory()Lcom/narvii/model/ItemCategory;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    iget-object v4, p0, Lcom/narvii/catalog/CatalogFragment;->categoryListResponse:Lcom/narvii/model/api/CategoryListResponse;

    .line 30
    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Lcom/narvii/model/api/CategoryListResponse;->getRootCategory()Lcom/narvii/model/ItemCategory;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    :cond_0
    if-nez v1, :cond_1

    .line 38
    return-void

    .line 39
    .line 40
    :cond_1
    new-instance v4, Lcom/narvii/catalog/category/CategoryPost;

    .line 41
    .line 42
    .line 43
    invoke-direct {v4, v1}, Lcom/narvii/catalog/category/CategoryPost;-><init>(Lcom/narvii/model/ItemCategory;)V

    .line 44
    .line 45
    iget-object v5, v1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_2
    new-instance v4, Lcom/narvii/catalog/category/CategoryPost;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->category:Lcom/narvii/model/ItemCategory;

    .line 61
    .line 62
    .line 63
    invoke-direct {v4, v1}, Lcom/narvii/catalog/category/CategoryPost;-><init>(Lcom/narvii/model/ItemCategory;)V

    .line 64
    .line 65
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->category:Lcom/narvii/model/ItemCategory;

    .line 66
    .line 67
    iget-object v1, v1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    .line 72
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->category:Lcom/narvii/model/ItemCategory;

    .line 73
    .line 74
    .line 75
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    .line 81
    :goto_0
    const-string v1, "post"

    .line 82
    .line 83
    .line 84
    invoke-static {v4}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    move-result-object v2

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    invoke-static {p0, v0}, Lcom/narvii/catalog/CatalogFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 92
    return-void
.end method

.method fromMyCatalog()Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "fromMyCatalog"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method fromOfficialCatalog()Z
    .locals 2

    .line 1
    .line 2
    const-string v0, "fromOfficialCatalog"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    return v1

    .line 11
    .line 12
    :cond_0
    const-string v0, "categoryId"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const-string/jumbo v0, "uid"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    return v1

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    return v0
.end method

.method public getPostEntryLift()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lcom/narvii/wallet/optinads/OptinAdsUtil;->getBannerLift(Lcom/narvii/app/NVContext;I)I

    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method getPreviewMedia()Lcom/narvii/model/Media;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/narvii/catalog/CatalogFragment;->getPreviewMedia(Z)Lcom/narvii/model/Media;

    move-result-object v0

    return-object v0
.end method

.method getPreviewMedia(Z)Lcom/narvii/model/Media;
    .locals 2

    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->category:Lcom/narvii/model/ItemCategory;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/narvii/model/ItemCategory;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->category:Lcom/narvii/model/ItemCategory;

    .line 3
    invoke-virtual {p1}, Lcom/narvii/model/ItemCategory;->firstMedia()Lcom/narvii/model/Media;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "previewMedia"

    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/Media;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Lcom/narvii/catalog/CategoryListAdapter;->getRootCategory()Lcom/narvii/model/ItemCategory;

    move-result-object v0

    if-nez p1, :cond_2

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/narvii/model/ItemCategory;->firstMedia()Lcom/narvii/model/Media;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/narvii/model/ItemCategory;->firstMedia()Lcom/narvii/model/Media;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    .line 8
    iget-object p1, p1, Lcom/narvii/catalog/CategoryListAdapter;->previewMap:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 10
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/narvii/catalog/CatalogFragment;->isCurationEnabled:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v1, v2

    .line 21
    :goto_0
    return v1

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isReady()Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->categoryListResponse:Lcom/narvii/model/api/CategoryListResponse;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v0, v0, Lcom/narvii/model/api/CategoryListResponse;->allEntriesItemCategory:Lcom/narvii/model/ItemCategory;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object v3, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v0

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move v1, v2

    .line 48
    :goto_1
    return v1

    .line 49
    :cond_3
    return v2
.end method

.method isCurator()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "account"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    const/4 v1, 0x1

    .line 27
    :cond_0
    return v1
.end method

.method isMine()Z
    .locals 2

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public isReady()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->categoryListResponse:Lcom/narvii/model/api/CategoryListResponse;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    move v1, v2

    .line 12
    :cond_0
    return v1

    .line 13
    .line 14
    :cond_1
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    .line 15
    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/narvii/catalog/CatalogFragment;->showAll:Z

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    const-string v0, "is_all_curation"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    return v2

    .line 30
    .line 31
    :cond_2
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->categoryListResponse:Lcom/narvii/model/api/CategoryListResponse;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    move v1, v2

    .line 35
    :cond_3
    return v1
.end method

.method public isRootCategory()Z
    .locals 1

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

    .line 1
    .line 2
    const-class v0, Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->categoryListResponse:Lcom/narvii/model/api/CategoryListResponse;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/narvii/model/api/CategoryListResponse;->getRootCategory()Lcom/narvii/model/ItemCategory;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    iget-object v1, v1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    .line 24
    :cond_1
    :goto_0
    const-string v2, "objectId"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    const-string v1, "objectType"

    .line 30
    .line 31
    const/16 v2, 0xd

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    invoke-static {p0, v0}, Lcom/narvii/catalog/CatalogFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 38
    return-void
.end method

.method public mergeTo(Lcom/narvii/model/ItemCategory;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    const-string v2, "/item-category/"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "/merge"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    iget-object v1, p1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 39
    .line 40
    const-string v2, "destinationCategoryId"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 57
    .line 58
    new-instance v2, Lcom/narvii/catalog/CatalogFragment$15;

    .line 59
    .line 60
    .line 61
    invoke-direct {v2, p0, p1}, Lcom/narvii/catalog/CatalogFragment$15;-><init>(Lcom/narvii/catalog/CatalogFragment;Lcom/narvii/model/ItemCategory;)V

    .line 62
    .line 63
    iput-object v2, v1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 67
    .line 68
    const-string p1, "api"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 75
    .line 76
    iget-object v1, v1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 80
    return-void
.end method

.method public moveTo(Lcom/narvii/model/ItemCategory;)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/narvii/list/select/SelectableAdapter;->selections()Ljava/util/List;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    return-void

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v3

    .line 36
    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    check-cast v3, Lcom/narvii/model/Item;

    .line 44
    .line 45
    iget-object v3, v3, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 49
    goto :goto_0

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    const-string v5, "/item-category/"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    iget-object v5, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v5, "/item-move"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v4

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 85
    .line 86
    const-string v3, "itemIdList"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 90
    .line 91
    iget-object v1, p1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 92
    .line 93
    const-string v3, "destinationCategoryId"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 100
    move-result-object v1

    .line 101
    .line 102
    new-instance v2, Lcom/narvii/util/dialog/ProgressDialog;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 106
    move-result-object v3

    .line 107
    .line 108
    .line 109
    invoke-direct {v2, v3}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 110
    .line 111
    new-instance v3, Lcom/narvii/catalog/CatalogFragment$9;

    .line 112
    .line 113
    .line 114
    invoke-direct {v3, p0, p1, v0}, Lcom/narvii/catalog/CatalogFragment$9;-><init>(Lcom/narvii/catalog/CatalogFragment;Lcom/narvii/model/ItemCategory;Ljava/util/ArrayList;)V

    .line 115
    .line 116
    iput-object v3, v2, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 120
    .line 121
    const-string p1, "api"

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    move-result-object p1

    .line 126
    .line 127
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 128
    .line 129
    iget-object v0, v2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 133
    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onActiveChanged(Z)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isRootCategory()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    const-string v1, "liveLayer"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isAllEntry()Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    .line 32
    .line 33
    const-string v1, "catalog"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, p1}, Lcom/narvii/livelayer/LiveLayerService;->reportBrowsing(Ljava/lang/String;Z)V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->fromOfficialCatalog()Z

    .line 45
    move-result v0

    .line 46
    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->fromMyCatalog()Z

    .line 51
    move-result v0

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    .line 60
    .line 61
    new-instance v1, Ljava/util/HashMap;

    .line 62
    .line 63
    .line 64
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->fromOfficialCatalog()Z

    .line 68
    move-result v2

    .line 69
    .line 70
    .line 71
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 72
    move-result-object v2

    .line 73
    .line 74
    const-string v3, "isCurated"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    const-string v2, "item-category/"

    .line 80
    .line 81
    if-eqz p1, :cond_2

    .line 82
    .line 83
    sget-object p1, Lcom/narvii/livelayer/LiveLayerService;->ACTION_BROWSING:Ljava/lang/String;

    .line 84
    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object v2

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p1, v2, v1}, Lcom/narvii/livelayer/LiveLayerService;->reportActive(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 104
    goto :goto_0

    .line 105
    .line 106
    :cond_2
    sget-object p1, Lcom/narvii/livelayer/LiveLayerService;->ACTION_BROWSING:Ljava/lang/String;

    .line 107
    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object v2

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, p1, v2, v1}, Lcom/narvii/livelayer/LiveLayerService;->reportInactive(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 127
    :cond_3
    :goto_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/catalog/CatalogFragment;->updateTitle()V

    .line 11
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .line 1
    .line 2
    const/16 v0, 0x64

    .line 3
    .line 4
    const-string v1, "categoryList"

    .line 5
    .line 6
    const-class v2, Lcom/narvii/model/ItemCategory;

    .line 7
    const/4 v3, -0x1

    .line 8
    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    if-ne p2, v3, :cond_1

    .line 12
    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    const-string p2, "itemId"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1, p2}, Lcom/narvii/item/list/ItemGridExAdapter;->addToCategory(Ljava/util/List;Ljava/lang/String;)V

    .line 39
    :cond_0
    return-void

    .line 40
    :cond_1
    const/4 v0, 0x1

    .line 41
    .line 42
    const-string v4, "category"

    .line 43
    .line 44
    if-ne p1, v0, :cond_2

    .line 45
    .line 46
    if-ne p2, v3, :cond_2

    .line 47
    .line 48
    if-eqz p3, :cond_2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v5

    .line 53
    .line 54
    .line 55
    invoke-static {v5, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 56
    move-result-object v5

    .line 57
    .line 58
    check-cast v5, Lcom/narvii/model/ItemCategory;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v5}, Lcom/narvii/catalog/CatalogFragment;->moveTo(Lcom/narvii/model/ItemCategory;)V

    .line 62
    :cond_2
    const/4 v5, 0x2

    .line 63
    .line 64
    if-ne p1, v5, :cond_3

    .line 65
    .line 66
    if-ne p2, v3, :cond_3

    .line 67
    .line 68
    if-eqz p3, :cond_3

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object v5

    .line 73
    .line 74
    .line 75
    invoke-static {v5, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 76
    move-result-object v5

    .line 77
    .line 78
    check-cast v5, Lcom/narvii/model/ItemCategory;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v5}, Lcom/narvii/catalog/CatalogFragment;->addTo(Lcom/narvii/model/ItemCategory;)V

    .line 82
    :cond_3
    const/4 v5, 0x3

    .line 83
    .line 84
    if-ne p1, v5, :cond_4

    .line 85
    .line 86
    if-ne p2, v3, :cond_4

    .line 87
    .line 88
    if-eqz p3, :cond_4

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    move-result-object v4

    .line 93
    .line 94
    .line 95
    invoke-static {v4, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 96
    move-result-object v4

    .line 97
    .line 98
    check-cast v4, Lcom/narvii/model/ItemCategory;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v4}, Lcom/narvii/catalog/CatalogFragment;->mergeTo(Lcom/narvii/model/ItemCategory;)V

    .line 102
    :cond_4
    const/4 v4, 0x4

    .line 103
    .line 104
    const-string v5, "itemList"

    .line 105
    .line 106
    const-class v6, Lcom/narvii/model/Item;

    .line 107
    .line 108
    if-ne p1, v4, :cond_5

    .line 109
    .line 110
    if-ne p2, v3, :cond_5

    .line 111
    .line 112
    if-eqz p3, :cond_5

    .line 113
    .line 114
    .line 115
    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    move-result-object v4

    .line 117
    .line 118
    .line 119
    invoke-static {v4, v6}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 120
    move-result-object v4

    .line 121
    .line 122
    if-eqz v4, :cond_5

    .line 123
    .line 124
    iget-object v7, p0, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v7, v4}, Lcom/narvii/catalog/CatalogFragment$IAdapter;->updateList(Ljava/util/List;)V

    .line 128
    :cond_5
    const/4 v4, 0x5

    .line 129
    .line 130
    if-ne p1, v4, :cond_6

    .line 131
    .line 132
    if-ne p2, v3, :cond_6

    .line 133
    .line 134
    if-eqz p3, :cond_6

    .line 135
    .line 136
    .line 137
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    move-result-object v1

    .line 139
    .line 140
    .line 141
    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 142
    move-result-object v1

    .line 143
    .line 144
    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v1}, Lcom/narvii/catalog/CategoryListAdapter;->updateList(Ljava/util/List;)V

    .line 148
    .line 149
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    .line 150
    const/4 v2, 0x0

    .line 151
    const/4 v4, 0x0

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v2, v4}, Lcom/narvii/catalog/CatalogFragment$CAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 155
    .line 156
    :cond_6
    const/16 v1, 0xa

    .line 157
    .line 158
    if-ne p1, v1, :cond_7

    .line 159
    .line 160
    if-nez p2, :cond_7

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 164
    .line 165
    :cond_7
    const/16 v1, 0xb

    .line 166
    .line 167
    if-ne p1, v1, :cond_8

    .line 168
    .line 169
    if-ne p2, v3, :cond_8

    .line 170
    .line 171
    if-eqz p3, :cond_8

    .line 172
    .line 173
    const-string v1, "item"

    .line 174
    .line 175
    .line 176
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    move-result-object v1

    .line 178
    .line 179
    .line 180
    invoke-static {v1, v6}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 181
    move-result-object v1

    .line 182
    .line 183
    check-cast v1, Lcom/narvii/model/Item;

    .line 184
    .line 185
    if-eqz v1, :cond_8

    .line 186
    .line 187
    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->itemHelper:Lcom/narvii/item/ItemHelper;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, v1}, Lcom/narvii/item/ItemHelper;->submitOfficialCatalog(Lcom/narvii/model/Item;)V

    .line 191
    .line 192
    :cond_8
    if-ne p1, v0, :cond_9

    .line 193
    .line 194
    if-eqz p3, :cond_9

    .line 195
    .line 196
    if-ne p2, v3, :cond_9

    .line 197
    .line 198
    .line 199
    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 200
    move-result-object v0

    .line 201
    .line 202
    .line 203
    invoke-static {v0, v6}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 204
    move-result-object v0

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0, v0}, Lcom/narvii/catalog/CatalogFragment;->addItemList(Ljava/util/List;)V

    .line 208
    .line 209
    .line 210
    :cond_9
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 211
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-class v0, Lcom/narvii/model/api/CategoryListResponse;

    .line 6
    .line 7
    const-string v1, "categoryListResponse"

    .line 8
    .line 9
    const-class v2, Lcom/narvii/model/ItemCategory;

    .line 10
    .line 11
    const-string v3, "category"

    .line 12
    .line 13
    const-string/jumbo v4, "showAll"

    .line 14
    .line 15
    const-string v5, "depth"

    .line 16
    .line 17
    const-string v6, "categoryId"

    .line 18
    .line 19
    const-string/jumbo v7, "uid"

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v7}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v7

    .line 26
    .line 27
    iput-object v7, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v6}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v6

    .line 32
    .line 33
    iput-object v6, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v5}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 37
    move-result v5

    .line 38
    .line 39
    iput v5, p0, Lcom/narvii/catalog/CatalogFragment;->curDepth:I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 43
    move-result v4

    .line 44
    .line 45
    iput-boolean v4, p0, Lcom/narvii/catalog/CatalogFragment;->showAll:Z

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    .line 52
    invoke-static {v3, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    check-cast v2, Lcom/narvii/model/ItemCategory;

    .line 56
    .line 57
    iput-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->category:Lcom/narvii/model/ItemCategory;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    .line 64
    invoke-static {v1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    check-cast v0, Lcom/narvii/model/api/CategoryListResponse;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->categoryListResponse:Lcom/narvii/model/api/CategoryListResponse;

    .line 70
    goto :goto_0

    .line 71
    .line 72
    .line 73
    :cond_0
    invoke-virtual {p1, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object v7

    .line 75
    .line 76
    iput-object v7, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object v6

    .line 81
    .line 82
    iput-object v6, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 86
    move-result v5

    .line 87
    .line 88
    iput v5, p0, Lcom/narvii/catalog/CatalogFragment;->curDepth:I

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 92
    move-result v4

    .line 93
    .line 94
    iput-boolean v4, p0, Lcom/narvii/catalog/CatalogFragment;->showAll:Z

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    move-result-object v3

    .line 99
    .line 100
    .line 101
    invoke-static {v3, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 102
    move-result-object v2

    .line 103
    .line 104
    check-cast v2, Lcom/narvii/model/ItemCategory;

    .line 105
    .line 106
    iput-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->category:Lcom/narvii/model/ItemCategory;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    move-result-object v1

    .line 111
    .line 112
    .line 113
    invoke-static {v1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    check-cast v0, Lcom/narvii/model/api/CategoryListResponse;

    .line 117
    .line 118
    iput-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->categoryListResponse:Lcom/narvii/model/api/CategoryListResponse;

    .line 119
    .line 120
    :goto_0
    new-instance v0, Lcom/narvii/item/ItemHelper;

    .line 121
    .line 122
    .line 123
    invoke-direct {v0, p0}, Lcom/narvii/item/ItemHelper;-><init>(Lcom/narvii/app/NVFragment;)V

    .line 124
    .line 125
    iput-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->itemHelper:Lcom/narvii/item/ItemHelper;

    .line 126
    .line 127
    const-string v1, "Official Catalog"

    .line 128
    .line 129
    iput-object v1, v0, Lcom/narvii/item/ItemHelper;->source:Ljava/lang/String;

    .line 130
    .line 131
    new-instance v0, Lcom/narvii/catalog/CatalogHelper;

    .line 132
    .line 133
    .line 134
    invoke-direct {v0, p0}, Lcom/narvii/catalog/CatalogHelper;-><init>(Lcom/narvii/app/NVFragment;)V

    .line 135
    .line 136
    iput-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->catalogHelper:Lcom/narvii/catalog/CatalogHelper;

    .line 137
    .line 138
    new-instance v0, Lcom/narvii/poweruser/SendBroadcastHelper;

    .line 139
    .line 140
    .line 141
    invoke-direct {v0, p0}, Lcom/narvii/poweruser/SendBroadcastHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 142
    .line 143
    iput-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->sendBroadcastHelper:Lcom/narvii/poweruser/SendBroadcastHelper;

    .line 144
    .line 145
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 146
    .line 147
    .line 148
    invoke-direct {v0, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 149
    .line 150
    const-string v1, "catalog"

    .line 151
    .line 152
    const-string v2, "curationEnabled"

    .line 153
    .line 154
    .line 155
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 156
    move-result-object v1

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleBoolean([Ljava/lang/String;)Z

    .line 160
    move-result v0

    .line 161
    .line 162
    iput-boolean v0, p0, Lcom/narvii/catalog/CatalogFragment;->isCurationEnabled:Z

    .line 163
    .line 164
    if-nez p1, :cond_2

    .line 165
    .line 166
    const-string p1, "nostat"

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 170
    move-result p1

    .line 171
    .line 172
    if-nez p1, :cond_2

    .line 173
    .line 174
    const-string/jumbo p1, "statistics"

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 178
    move-result-object p1

    .line 179
    .line 180
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 181
    .line 182
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 183
    .line 184
    if-nez v0, :cond_1

    .line 185
    .line 186
    const-string v0, "Official Catalog Page Opened"

    .line 187
    goto :goto_1

    .line 188
    .line 189
    :cond_1
    const-string v0, "User Catalog Page Opened"

    .line 190
    .line 191
    .line 192
    :goto_1
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 193
    move-result-object p1

    .line 194
    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    const-string v0, " Total"

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    move-result-object v0

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 214
    move-result-object p1

    .line 215
    .line 216
    const-string v0, "Source"

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 220
    move-result-object v0

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 224
    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    const p2, 0x7f1210ad

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    .line 11
    const v1, 0x7f080413

    .line 12
    .line 13
    .line 14
    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 15
    .line 16
    .line 17
    const p2, 0x7f1201e6

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 21
    .line 22
    .line 23
    const p2, 0x7f1201e8

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 27
    .line 28
    .line 29
    const p2, 0x7f1201f6

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 33
    .line 34
    .line 35
    const p2, 0x7f1201f9

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 39
    .line 40
    .line 41
    const p2, 0x7f120ff0

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 45
    .line 46
    .line 47
    const p2, 0x7f120205

    .line 48
    .line 49
    .line 50
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 51
    .line 52
    .line 53
    const p2, 0x7f12009d

    .line 54
    .line 55
    .line 56
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 57
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 12
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 5

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/catalog/CatalogFragment;->suspendNotification:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget v0, p1, Lcom/narvii/notification/Notification;->objectType:I

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    const/16 v2, 0xd

    .line 11
    .line 12
    if-ne v0, v2, :cond_3

    .line 13
    .line 14
    iget-object v0, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 25
    .line 26
    const-string/jumbo v3, "update"

    .line 27
    .line 28
    if-ne v0, v3, :cond_2

    .line 29
    .line 30
    iget-object v3, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 31
    .line 32
    instance-of v4, v3, Lcom/narvii/model/ItemCategory;

    .line 33
    .line 34
    if-eqz v4, :cond_2

    .line 35
    .line 36
    check-cast v3, Lcom/narvii/model/ItemCategory;

    .line 37
    .line 38
    iput-object v3, p0, Lcom/narvii/catalog/CatalogFragment;->category:Lcom/narvii/model/ItemCategory;

    .line 39
    .line 40
    if-nez v3, :cond_1

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_1
    iget-object v1, v3, Lcom/narvii/model/ItemCategory;->label:Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->update()V

    .line 50
    return-void

    .line 51
    .line 52
    :cond_2
    const-string v3, "delete"

    .line 53
    .line 54
    if-ne v0, v3, :cond_3

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 58
    return-void

    .line 59
    .line 60
    :cond_3
    iget v0, p1, Lcom/narvii/notification/Notification;->objectType:I

    .line 61
    .line 62
    if-ne v0, v2, :cond_5

    .line 63
    .line 64
    iget-object p1, p1, Lcom/narvii/notification/Notification;->uid:Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    invoke-static {p1}, Lcom/narvii/model/User;->eliminateZeroUid(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    move-result p1

    .line 75
    .line 76
    if-eqz p1, :cond_5

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 80
    move-result p1

    .line 81
    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    .line 85
    const/4 v0, 0x0

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0, v1}, Lcom/narvii/catalog/CatalogFragment$CAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 89
    goto :goto_1

    .line 90
    :cond_4
    const/4 p1, 0x1

    .line 91
    .line 92
    iput-boolean p1, p0, Lcom/narvii/catalog/CatalogFragment;->refreshAfterResume:Z

    .line 93
    :cond_5
    :goto_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f1210ad

    .line 8
    const/4 v2, 0x1

    .line 9
    .line 10
    if-ne v0, v1, :cond_3

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/catalog/CategoryListAdapter;->getRootCategory()Lcom/narvii/model/ItemCategory;

    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->category:Lcom/narvii/model/ItemCategory;

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isAllEntry()Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->categoryListResponse:Lcom/narvii/model/api/CategoryListResponse;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/narvii/model/api/CategoryListResponse;->allEntriesItemCategory:Lcom/narvii/model/ItemCategory;

    .line 34
    .line 35
    :cond_1
    if-eqz p1, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-static {p0, p1}, Lcom/narvii/share/ShareDialog;->getShareDialogFromWikiFolder(Lcom/narvii/app/NVContext;Lcom/narvii/model/ItemCategory;)Lcom/narvii/share/ShareDialog;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    const-string v0, "Catalog"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lcom/narvii/share/ShareDialog;->setSource(Ljava/lang/String;)Lcom/narvii/share/ShareDialog;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/narvii/share/ShareDialog;->show()V

    .line 49
    :cond_2
    return v2

    .line 50
    .line 51
    .line 52
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 53
    move-result v0

    .line 54
    .line 55
    .line 56
    const v1, 0x7f1201e8

    .line 57
    .line 58
    if-eq v0, v1, :cond_14

    .line 59
    .line 60
    .line 61
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 62
    move-result v0

    .line 63
    .line 64
    .line 65
    const v1, 0x7f1201e6

    .line 66
    .line 67
    if-ne v0, v1, :cond_4

    .line 68
    .line 69
    goto/16 :goto_1

    .line 70
    .line 71
    .line 72
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 73
    move-result v0

    .line 74
    .line 75
    .line 76
    const v1, 0x7f1201f6

    .line 77
    .line 78
    if-ne v0, v1, :cond_5

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->editCategory()V

    .line 82
    return v2

    .line 83
    .line 84
    .line 85
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 86
    move-result v0

    .line 87
    .line 88
    .line 89
    const v1, 0x7f1201f9

    .line 90
    .line 91
    if-ne v0, v1, :cond_6

    .line 92
    .line 93
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    .line 94
    const/4 v0, 0x0

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v0}, Lcom/narvii/list/select/SelectableAdapter;->startSelect(Ljava/util/List;)V

    .line 98
    return v2

    .line 99
    .line 100
    .line 101
    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 102
    move-result v0

    .line 103
    .line 104
    .line 105
    const v3, 0x7f120ff0

    .line 106
    .line 107
    if-ne v0, v3, :cond_7

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->reorder()V

    .line 111
    return v2

    .line 112
    .line 113
    .line 114
    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 115
    move-result v0

    .line 116
    .line 117
    .line 118
    const v3, 0x7f120201

    .line 119
    .line 120
    if-ne v0, v3, :cond_8

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->reviewSubmission()V

    .line 124
    return v2

    .line 125
    .line 126
    .line 127
    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 128
    move-result v0

    .line 129
    .line 130
    .line 131
    const v3, 0x7f120205

    .line 132
    .line 133
    if-ne v0, v3, :cond_9

    .line 134
    .line 135
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->catalogHelper:Lcom/narvii/catalog/CatalogHelper;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/narvii/catalog/CatalogHelper;->openSubmitFavoritePicker()V

    .line 139
    return v2

    .line 140
    .line 141
    .line 142
    :cond_9
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 143
    move-result v0

    .line 144
    .line 145
    .line 146
    const v3, 0x7f12009d

    .line 147
    .line 148
    if-ne v0, v3, :cond_13

    .line 149
    .line 150
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 151
    .line 152
    .line 153
    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 154
    .line 155
    iget-object v3, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3}, Lcom/narvii/catalog/CategoryListAdapter;->getType()I

    .line 159
    move-result v3

    .line 160
    .line 161
    const-string v4, "account"

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 165
    move-result-object v4

    .line 166
    .line 167
    check-cast v4, Lcom/narvii/account/AccountService;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 171
    move-result-object v4

    .line 172
    .line 173
    if-eqz v4, :cond_12

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->depth()I

    .line 177
    move-result v5

    .line 178
    const/4 v6, 0x3

    .line 179
    .line 180
    if-ge v5, v6, :cond_b

    .line 181
    const/4 v5, 0x2

    .line 182
    .line 183
    if-eq v3, v5, :cond_a

    .line 184
    .line 185
    if-ne v3, v2, :cond_b

    .line 186
    .line 187
    .line 188
    :cond_a
    invoke-virtual {v4}, Lcom/narvii/model/User;->isCurator()Z

    .line 189
    move-result v5

    .line 190
    .line 191
    if-eqz v5, :cond_b

    .line 192
    .line 193
    .line 194
    const v5, 0x7f1200a0

    .line 195
    .line 196
    iget-object v7, p0, Lcom/narvii/catalog/CatalogFragment;->advanceListener:Landroid/view/View$OnClickListener;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v5, v7}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->addItem(ILandroid/view/View$OnClickListener;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 200
    .line 201
    .line 202
    :cond_b
    invoke-virtual {v4}, Lcom/narvii/model/User;->isCurator()Z

    .line 203
    move-result v5

    .line 204
    .line 205
    if-eqz v5, :cond_c

    .line 206
    .line 207
    .line 208
    const v5, 0x7f1201f2

    .line 209
    .line 210
    iget-object v7, p0, Lcom/narvii/catalog/CatalogFragment;->advanceListener:Landroid/view/View$OnClickListener;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v5, v7}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->addItem(ILandroid/view/View$OnClickListener;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 214
    .line 215
    .line 216
    :cond_c
    invoke-virtual {v4}, Lcom/narvii/model/User;->isCurator()Z

    .line 217
    move-result v5

    .line 218
    .line 219
    if-eqz v5, :cond_f

    .line 220
    .line 221
    iget-object v5, p0, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v5}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 225
    move-result-object v5

    .line 226
    .line 227
    if-eqz v5, :cond_d

    .line 228
    .line 229
    iget-object v5, p0, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v5}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 233
    move-result-object v5

    .line 234
    .line 235
    .line 236
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 237
    move-result v5

    .line 238
    .line 239
    if-gt v5, v2, :cond_e

    .line 240
    .line 241
    :cond_d
    iget-object v5, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    .line 242
    .line 243
    iget-object v5, v5, Lcom/narvii/catalog/CategoryListAdapter;->categoryList:Ljava/util/List;

    .line 244
    .line 245
    if-eqz v5, :cond_f

    .line 246
    .line 247
    .line 248
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 249
    move-result v5

    .line 250
    .line 251
    if-le v5, v2, :cond_f

    .line 252
    .line 253
    .line 254
    :cond_e
    const v5, 0x7f120fee

    .line 255
    .line 256
    iget-object v7, p0, Lcom/narvii/catalog/CatalogFragment;->advanceListener:Landroid/view/View$OnClickListener;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, v5, v7}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->addItem(ILandroid/view/View$OnClickListener;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 260
    .line 261
    .line 262
    :cond_f
    invoke-virtual {v4}, Lcom/narvii/model/User;->isLeader()Z

    .line 263
    move-result v5

    .line 264
    .line 265
    if-eqz v5, :cond_10

    .line 266
    .line 267
    new-instance v5, Lcom/narvii/util/PackageUtils;

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 271
    move-result-object v7

    .line 272
    .line 273
    .line 274
    invoke-direct {v5, v7}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v5}, Lcom/narvii/util/PackageUtils;->acmBroadcast()Z

    .line 278
    move-result v5

    .line 279
    .line 280
    if-eqz v5, :cond_10

    .line 281
    .line 282
    .line 283
    const v5, 0x7f1201c7

    .line 284
    .line 285
    iget-object v7, p0, Lcom/narvii/catalog/CatalogFragment;->advanceListener:Landroid/view/View$OnClickListener;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0, v5, v7}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->addItem(ILandroid/view/View$OnClickListener;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 289
    .line 290
    .line 291
    :cond_10
    invoke-virtual {v4}, Lcom/narvii/model/User;->isCurator()Z

    .line 292
    move-result v5

    .line 293
    .line 294
    if-eqz v5, :cond_11

    .line 295
    .line 296
    .line 297
    const v5, 0x7f1200b2

    .line 298
    .line 299
    iget-object v7, p0, Lcom/narvii/catalog/CatalogFragment;->advanceListener:Landroid/view/View$OnClickListener;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0, v5, v7}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->addItem(ILandroid/view/View$OnClickListener;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 303
    .line 304
    :cond_11
    if-ne v3, v6, :cond_12

    .line 305
    .line 306
    .line 307
    invoke-virtual {v4}, Lcom/narvii/model/User;->isCurator()Z

    .line 308
    move-result v3

    .line 309
    .line 310
    if-eqz v3, :cond_12

    .line 311
    .line 312
    iget-object v3, p0, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v3}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 316
    move-result-object v3

    .line 317
    .line 318
    if-eqz v3, :cond_12

    .line 319
    .line 320
    iget-object v3, p0, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v3}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 324
    move-result-object v3

    .line 325
    .line 326
    .line 327
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 328
    move-result v3

    .line 329
    .line 330
    if-le v3, v2, :cond_12

    .line 331
    .line 332
    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->advanceListener:Landroid/view/View$OnClickListener;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0, v1, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->addItem(ILandroid/view/View$OnClickListener;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 336
    .line 337
    .line 338
    :cond_12
    invoke-virtual {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->build()Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 339
    move-result-object v0

    .line 340
    .line 341
    iput-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->advancedOptionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->show()V

    .line 345
    .line 346
    .line 347
    :cond_13
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 348
    move-result p1

    .line 349
    return p1

    .line 350
    .line 351
    .line 352
    :cond_14
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->addSubCategory()V

    .line 353
    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isReady()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isAllEntry()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isMine()Z

    .line 15
    move-result v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->depth()I

    .line 19
    move-result v3

    .line 20
    .line 21
    iget-object v4, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4}, Lcom/narvii/catalog/CategoryListAdapter;->getType()I

    .line 25
    move-result v4

    .line 26
    .line 27
    .line 28
    const v5, 0x7f1210ad

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 32
    move-result-object v6

    .line 33
    const/4 v7, 0x0

    .line 34
    const/4 v8, 0x1

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget-object v9, p0, Lcom/narvii/catalog/CatalogFragment;->categoryListResponse:Lcom/narvii/model/api/CategoryListResponse;

    .line 39
    .line 40
    if-eqz v9, :cond_0

    .line 41
    .line 42
    iget-object v9, v9, Lcom/narvii/model/api/CategoryListResponse;->allEntriesItemCategory:Lcom/narvii/model/ItemCategory;

    .line 43
    .line 44
    if-eqz v9, :cond_0

    .line 45
    move v9, v8

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v9, v7

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 56
    move-result-object v5

    .line 57
    .line 58
    .line 59
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 60
    .line 61
    .line 62
    :cond_1
    const v5, 0x7f1201e8

    .line 63
    .line 64
    .line 65
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 66
    move-result-object v5

    .line 67
    const/4 v6, 0x2

    .line 68
    const/4 v9, 0x3

    .line 69
    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    if-nez v1, :cond_3

    .line 73
    .line 74
    if-ge v3, v9, :cond_3

    .line 75
    .line 76
    if-eqz v3, :cond_3

    .line 77
    .line 78
    if-eq v4, v6, :cond_2

    .line 79
    .line 80
    if-ne v4, v8, :cond_3

    .line 81
    .line 82
    :cond_2
    if-eqz v2, :cond_3

    .line 83
    move v10, v8

    .line 84
    goto :goto_1

    .line 85
    :cond_3
    move v10, v7

    .line 86
    .line 87
    .line 88
    :goto_1
    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 89
    .line 90
    .line 91
    const v5, 0x7f1201e6

    .line 92
    .line 93
    .line 94
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 95
    move-result-object v5

    .line 96
    .line 97
    if-eqz v0, :cond_5

    .line 98
    .line 99
    if-nez v1, :cond_5

    .line 100
    .line 101
    if-nez v3, :cond_5

    .line 102
    .line 103
    if-eq v4, v6, :cond_4

    .line 104
    .line 105
    if-ne v4, v8, :cond_5

    .line 106
    .line 107
    :cond_4
    if-eqz v2, :cond_5

    .line 108
    move v3, v8

    .line 109
    goto :goto_2

    .line 110
    :cond_5
    move v3, v7

    .line 111
    .line 112
    .line 113
    :goto_2
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 114
    .line 115
    .line 116
    const v3, 0x7f1201f6

    .line 117
    .line 118
    .line 119
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 120
    move-result-object v5

    .line 121
    .line 122
    if-eqz v0, :cond_6

    .line 123
    .line 124
    if-nez v1, :cond_6

    .line 125
    .line 126
    if-eqz v2, :cond_6

    .line 127
    move v6, v8

    .line 128
    goto :goto_3

    .line 129
    :cond_6
    move v6, v7

    .line 130
    .line 131
    .line 132
    :goto_3
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 133
    .line 134
    .line 135
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 136
    move-result-object v3

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isRootCategory()Z

    .line 140
    move-result v5

    .line 141
    .line 142
    if-eqz v5, :cond_7

    .line 143
    .line 144
    .line 145
    const v5, 0x7f120210

    .line 146
    goto :goto_4

    .line 147
    .line 148
    .line 149
    :cond_7
    const v5, 0x7f120438

    .line 150
    .line 151
    .line 152
    :goto_4
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 153
    .line 154
    .line 155
    const v3, 0x7f1201f9

    .line 156
    .line 157
    .line 158
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 159
    move-result-object v3

    .line 160
    .line 161
    if-eqz v0, :cond_8

    .line 162
    .line 163
    if-nez v1, :cond_8

    .line 164
    .line 165
    if-ne v4, v9, :cond_8

    .line 166
    .line 167
    if-eqz v2, :cond_8

    .line 168
    move v4, v8

    .line 169
    goto :goto_5

    .line 170
    :cond_8
    move v4, v7

    .line 171
    .line 172
    .line 173
    :goto_5
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 174
    .line 175
    .line 176
    const v3, 0x7f120ff0

    .line 177
    .line 178
    .line 179
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 180
    move-result-object v3

    .line 181
    .line 182
    if-eqz v0, :cond_b

    .line 183
    .line 184
    if-nez v1, :cond_b

    .line 185
    .line 186
    if-eqz v2, :cond_b

    .line 187
    .line 188
    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 192
    move-result-object v2

    .line 193
    .line 194
    if-eqz v2, :cond_9

    .line 195
    .line 196
    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 200
    move-result-object v2

    .line 201
    .line 202
    .line 203
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 204
    move-result v2

    .line 205
    .line 206
    if-gt v2, v8, :cond_a

    .line 207
    .line 208
    :cond_9
    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    .line 209
    .line 210
    iget-object v2, v2, Lcom/narvii/catalog/CategoryListAdapter;->categoryList:Ljava/util/List;

    .line 211
    .line 212
    if-eqz v2, :cond_b

    .line 213
    .line 214
    .line 215
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 216
    move-result v2

    .line 217
    .line 218
    if-le v2, v8, :cond_b

    .line 219
    :cond_a
    move v2, v8

    .line 220
    goto :goto_6

    .line 221
    :cond_b
    move v2, v7

    .line 222
    .line 223
    .line 224
    :goto_6
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 225
    .line 226
    const-string v2, "account"

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 230
    move-result-object v2

    .line 231
    .line 232
    check-cast v2, Lcom/narvii/account/AccountService;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 236
    move-result-object v2

    .line 237
    .line 238
    .line 239
    const v3, 0x7f120205

    .line 240
    .line 241
    .line 242
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 243
    move-result-object v3

    .line 244
    .line 245
    if-eqz v0, :cond_c

    .line 246
    .line 247
    if-nez v1, :cond_c

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->fromOfficialCatalog()Z

    .line 251
    move-result v4

    .line 252
    .line 253
    if-eqz v4, :cond_c

    .line 254
    move v4, v8

    .line 255
    goto :goto_7

    .line 256
    :cond_c
    move v4, v7

    .line 257
    .line 258
    .line 259
    :goto_7
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 260
    .line 261
    .line 262
    const v3, 0x7f12009d

    .line 263
    .line 264
    .line 265
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 266
    move-result-object p1

    .line 267
    .line 268
    if-eqz v0, :cond_d

    .line 269
    .line 270
    if-nez v1, :cond_d

    .line 271
    .line 272
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 273
    .line 274
    if-nez v0, :cond_d

    .line 275
    .line 276
    if-eqz v2, :cond_d

    .line 277
    .line 278
    .line 279
    invoke-virtual {v2}, Lcom/narvii/model/User;->isCurator()Z

    .line 280
    move-result v0

    .line 281
    .line 282
    if-eqz v0, :cond_d

    .line 283
    move v7, v8

    .line 284
    .line 285
    .line 286
    :cond_d
    invoke-interface {p1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 287
    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onRefresh()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->allEntryAdapter:Lcom/narvii/catalog/CatalogFragment$MyAllEntryAdapter;

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->recentActivityEntryAdapter:Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isAllEntry()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->recentActivityEntryAdapter:Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 28
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/catalog/CatalogFragment;->refreshAfterResume:Z

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/narvii/catalog/CatalogFragment$CAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 15
    .line 16
    iput-boolean v1, p0, Lcom/narvii/catalog/CatalogFragment;->refreshAfterResume:Z

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    const-string v0, "account"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    const-string v2, "disableCatalogGuideline"

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 48
    move-result v0

    .line 49
    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogThemeFragment;->showGuideline()V

    .line 54
    goto :goto_0

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogThemeFragment;->dismissGuideline()V

    .line 58
    :cond_2
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string/jumbo v0, "showAll"

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/narvii/catalog/CatalogFragment;->showAll:Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    .line 12
    const-string v0, "categoryId"

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    const-string v0, "depth"

    .line 20
    .line 21
    iget v1, p0, Lcom/narvii/catalog/CatalogFragment;->curDepth:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 25
    .line 26
    const-string/jumbo v0, "uid"

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/catalog/CatalogThemeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->update()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogThemeFragment;->isGoldTheme()Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    .line 15
    const p1, 0x7f0d0092

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->emptyView:Landroid/view/View;

    .line 22
    .line 23
    .line 24
    const p2, 0x7f0a0254

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    new-instance p2, Lcom/narvii/catalog/CatalogFragment$1;

    .line 31
    .line 32
    .line 33
    invoke-direct {p2, p0}, Lcom/narvii/catalog/CatalogFragment$1;-><init>(Lcom/narvii/catalog/CatalogFragment;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    .line 38
    goto/16 :goto_4

    .line 39
    .line 40
    .line 41
    :cond_0
    const p1, 0x7f0d0091

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->emptyView:Landroid/view/View;

    .line 48
    .line 49
    .line 50
    const p2, 0x7f0a04eb

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 62
    move-result p2

    .line 63
    .line 64
    if-eqz p2, :cond_1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 68
    move-result-object p2

    .line 69
    .line 70
    if-eqz p2, :cond_1

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 74
    move-result-object p2

    .line 75
    .line 76
    .line 77
    invoke-static {p2}, Lcom/narvii/util/Utils;->getScreenSize(Landroid/app/Activity;)Landroid/graphics/Point;

    .line 78
    move-result-object p2

    .line 79
    .line 80
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 81
    int-to-float p2, p2

    .line 82
    .line 83
    const/high16 v0, 0x40400000    # 3.0f

    .line 84
    div-float/2addr p2, v0

    .line 85
    float-to-int p2, p2

    .line 86
    goto :goto_0

    .line 87
    .line 88
    :cond_1
    const/16 p2, 0xc8

    .line 89
    .line 90
    :goto_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 91
    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 95
    .line 96
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 97
    .line 98
    :cond_2
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->emptyView:Landroid/view/View;

    .line 99
    .line 100
    .line 101
    const p2, 0x7f0a03e1

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment;->emptyView:Landroid/view/View;

    .line 108
    .line 109
    .line 110
    const v0, 0x7f0a00a6

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    move-result-object p2

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isMine()Z

    .line 118
    move-result v0

    .line 119
    const/4 v1, 0x0

    .line 120
    .line 121
    const/16 v2, 0x8

    .line 122
    .line 123
    if-nez v0, :cond_4

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isAllEntry()Z

    .line 127
    move-result v0

    .line 128
    .line 129
    if-eqz v0, :cond_3

    .line 130
    goto :goto_1

    .line 131
    :cond_3
    move v0, v2

    .line 132
    goto :goto_2

    .line 133
    :cond_4
    :goto_1
    move v0, v1

    .line 134
    .line 135
    .line 136
    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isMine()Z

    .line 140
    move-result v0

    .line 141
    .line 142
    if-eqz v0, :cond_5

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->depth()I

    .line 146
    move-result v0

    .line 147
    .line 148
    if-eqz v0, :cond_5

    .line 149
    goto :goto_3

    .line 150
    :cond_5
    move v1, v2

    .line 151
    .line 152
    .line 153
    :goto_3
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    .line 155
    new-instance v0, Lcom/narvii/catalog/CatalogFragment$2;

    .line 156
    .line 157
    .line 158
    invoke-direct {v0, p0}, Lcom/narvii/catalog/CatalogFragment$2;-><init>(Lcom/narvii/catalog/CatalogFragment;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    .line 163
    new-instance p1, Lcom/narvii/catalog/CatalogFragment$3;

    .line 164
    .line 165
    .line 166
    invoke-direct {p1, p0}, Lcom/narvii/catalog/CatalogFragment$3;-><init>(Lcom/narvii/catalog/CatalogFragment;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    .line 171
    :goto_4
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->emptyView:Landroid/view/View;

    .line 172
    .line 173
    if-eqz p1, :cond_6

    .line 174
    .line 175
    .line 176
    const p2, 0x7f0a0dfa

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 180
    move-result-object p1

    .line 181
    .line 182
    if-eqz p1, :cond_6

    .line 183
    .line 184
    new-instance p2, Lcom/narvii/catalog/CatalogFragment$4;

    .line 185
    .line 186
    .line 187
    invoke-direct {p2, p0}, Lcom/narvii/catalog/CatalogFragment$4;-><init>(Lcom/narvii/catalog/CatalogFragment;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    .line 192
    :cond_6
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment;->emptyView:Landroid/view/View;

    .line 193
    .line 194
    if-eqz p1, :cond_7

    .line 195
    .line 196
    .line 197
    const p2, 0x7f0a04e9

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 201
    move-result-object p1

    .line 202
    .line 203
    if-eqz p1, :cond_7

    .line 204
    .line 205
    new-instance p2, Lcom/narvii/catalog/CatalogFragment$5;

    .line 206
    .line 207
    .line 208
    invoke-direct {p2, p0}, Lcom/narvii/catalog/CatalogFragment$5;-><init>(Lcom/narvii/catalog/CatalogFragment;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    .line 213
    .line 214
    :cond_7
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isReady()Z

    .line 215
    move-result p1

    .line 216
    .line 217
    if-nez p1, :cond_8

    .line 218
    .line 219
    .line 220
    invoke-direct {p0}, Lcom/narvii/catalog/CatalogFragment;->sendPreRequestBeforeReady()V

    .line 221
    :cond_8
    return-void
.end method

.method public remove()V
    .locals 6

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/narvii/list/select/SelectableAdapter;->selections()Ljava/util/List;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    return-void

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v3

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    check-cast v3, Lcom/narvii/model/Item;

    .line 39
    .line 40
    iget-object v3, v3, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 52
    move-result-object v3

    .line 53
    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    const-string v5, "/item-category/"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    iget-object v5, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v5, "/item-remove"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v4

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 80
    .line 81
    const-string v3, "itemIdList"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 85
    .line 86
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 87
    .line 88
    if-eqz v1, :cond_2

    .line 89
    .line 90
    const-string/jumbo v3, "sourceUid"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 94
    .line 95
    .line 96
    :cond_2
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    new-instance v2, Lcom/narvii/util/dialog/ProgressDialog;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 103
    move-result-object v3

    .line 104
    .line 105
    .line 106
    invoke-direct {v2, v3}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 107
    .line 108
    new-instance v3, Lcom/narvii/catalog/CatalogFragment$12;

    .line 109
    .line 110
    .line 111
    invoke-direct {v3, p0, v0}, Lcom/narvii/catalog/CatalogFragment$12;-><init>(Lcom/narvii/catalog/CatalogFragment;Ljava/util/ArrayList;)V

    .line 112
    .line 113
    iput-object v3, v2, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 117
    .line 118
    const-string v0, "api"

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    move-result-object v0

    .line 123
    .line 124
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 125
    .line 126
    iget-object v2, v2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 130
    return-void
.end method

.method reorder()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/catalog/CategoryListAdapter;->getType()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/narvii/catalog/CatalogFragment;->showAll:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->sortCategory()V

    .line 18
    goto :goto_2

    .line 19
    .line 20
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    const-class v0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 32
    move-result-object v0

    .line 33
    goto :goto_1

    .line 34
    .line 35
    :cond_2
    const-class v0, Lcom/narvii/catalog/organizer/SubItemOrganizeFragment;

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    :goto_1
    if-eqz v0, :cond_4

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 51
    move-result v2

    .line 52
    .line 53
    const/16 v3, 0x14

    .line 54
    .line 55
    if-le v2, v3, :cond_3

    .line 56
    const/4 v2, 0x0

    .line 57
    .line 58
    .line 59
    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    :cond_3
    const-string v2, "itemList"

    .line 63
    .line 64
    .line 65
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    .line 71
    const-string/jumbo v1, "uid"

    .line 72
    .line 73
    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    .line 78
    const-string v1, "categoryId"

    .line 79
    .line 80
    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const/4 v1, 0x4

    .line 85
    .line 86
    .line 87
    invoke-static {p0, v0, v1}, Lcom/narvii/catalog/CatalogFragment;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 88
    :cond_4
    :goto_2
    return-void
.end method

.method reviewSubmission()V
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/narvii/catalog/review/CatalogSubmissionFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Lcom/narvii/catalog/CatalogFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 10
    return-void
.end method

.method protected setListContentBgWhenHasPageBackground()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method sortCategory()V
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/narvii/catalog/organizer/CategoryOrganizeFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/narvii/catalog/CategoryListAdapter;->getRootCategory()Lcom/narvii/model/ItemCategory;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    return-void

    .line 20
    .line 21
    :cond_0
    iget-object v1, v1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 22
    .line 23
    :cond_1
    const-string v2, "categoryId"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/narvii/catalog/CategoryListAdapter;->categoryList:Ljava/util/List;

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    const-string v2, "categoryList"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const/4 v1, 0x5

    .line 41
    .line 42
    .line 43
    invoke-static {p0, v0, v1}, Lcom/narvii/catalog/CatalogFragment;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 44
    return-void
.end method

.method update()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->emptyView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0a0256

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Landroid/widget/TextView;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->depth()I

    .line 19
    move-result v1

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isMine()Z

    .line 25
    move-result v1

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    .line 30
    const v1, 0x7f1201f0

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    goto :goto_1

    .line 36
    .line 37
    .line 38
    :cond_0
    const v1, 0x7f1201f8

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    goto :goto_2

    .line 44
    .line 45
    .line 46
    :cond_1
    const v1, 0x7f1201e7

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->isAllEntry()Z

    .line 57
    move-result v0

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    .line 62
    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 79
    move-result v0

    .line 80
    .line 81
    if-lez v0, :cond_4

    .line 82
    .line 83
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 87
    move-result-object v0

    .line 88
    const/4 v1, 0x0

    .line 89
    .line 90
    .line 91
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    check-cast v0, Lcom/narvii/model/NVObject;

    .line 95
    .line 96
    instance-of v1, v0, Lcom/narvii/model/Item;

    .line 97
    .line 98
    if-eqz v1, :cond_4

    .line 99
    .line 100
    iget-object v1, p0, Lcom/narvii/catalog/CatalogThemeFragment;->backgroundImageView:Lcom/narvii/widget/NVImageView;

    .line 101
    .line 102
    check-cast v0, Lcom/narvii/model/Item;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 110
    goto :goto_3

    .line 111
    .line 112
    :cond_3
    iget-object v0, p0, Lcom/narvii/catalog/CatalogThemeFragment;->backgroundImageView:Lcom/narvii/widget/NVImageView;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment;->getPreviewMedia()Lcom/narvii/model/Media;

    .line 116
    move-result-object v1

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 120
    :cond_4
    :goto_3
    return-void
.end method
