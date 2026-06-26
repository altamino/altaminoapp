.class public Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;
.super Lcom/narvii/list/DragSortPageFragment;
.source "ShareStickerManageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/DragSortPageFragment<",
        "Lcom/narvii/monetization/sticker/model/StickerCollection;",
        ">;"
    }
.end annotation


# instance fields
.field changed:Z

.field private oList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/monetization/store/data/StoreItem;",
            ">;"
        }
    .end annotation
.end field

.field shareSticlkerAdapater:Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;

.field stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

.field private storeSection:Lcom/narvii/monetization/store/data/StoreSectionMini;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/narvii/list/DragSortPageFragment;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->oList:Ljava/util/List;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->changed:Z

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->saveChanges()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;)Ljava/util/List;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->oList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;)Lcom/narvii/monetization/store/data/StoreSectionMini;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->storeSection:Lcom/narvii/monetization/store/data/StoreSectionMini;

    return-object p0
.end method

.method static synthetic access$202(Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;Lcom/narvii/monetization/store/data/StoreSectionMini;)Lcom/narvii/monetization/store/data/StoreSectionMini;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->storeSection:Lcom/narvii/monetization/store/data/StoreSectionMini;

    return-object p1
.end method

.method private saveChanges()V
    .locals 5

    .line 114
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->shareSticlkerAdapater:Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->storeSection:Lcom/narvii/monetization/store/data/StoreSectionMini;

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 118
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 119
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->shareSticlkerAdapater:Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->shareSticlkerAdapater:Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 120
    :goto_1
    iget-object v3, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->oList:Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_5

    if-eqz v0, :cond_3

    goto :goto_3

    .line 126
    :cond_3
    iput-boolean v2, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->changed:Z

    .line 128
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 129
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 130
    new-instance v2, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$2;

    invoke-direct {v2, p0}, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$2;-><init>(Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;)V

    iput-object v2, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 138
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v2

    .line 139
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/monetization/store/data/StoreItem;

    .line 140
    invoke-virtual {v3}, Lcom/narvii/monetization/store/data/StoreItem;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_2

    .line 142
    :cond_4
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "store/sections/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->storeSection:Lcom/narvii/monetization/store/data/StoreSectionMini;

    iget-object v4, v4, Lcom/narvii/monetization/store/data/StoreSectionMini;->storeSectionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/items/reorder"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-virtual {v1, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v3, "objectIdList"

    .line 144
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    const-string v2, "api"

    .line 145
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 146
    iget-object v3, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 147
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    return-void

    .line 122
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_6
    :goto_4
    return-void
.end method


# virtual methods
.method protected createMainAdapter()Lcom/narvii/list/NVPagedAdapter;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->shareSticlkerAdapater:Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;

    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 73
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 76
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080264

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0f03aa

    .line 77
    new-instance v1, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$1;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$1;-><init>(Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 62
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0f0b1c

    .line 63
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 64
    new-instance v0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;

    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;-><init>(Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->shareSticlkerAdapater:Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;

    .line 65
    new-instance v0, Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    if-eqz p1, :cond_0

    const-string v0, "olist"

    .line 67
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/monetization/store/data/StoreItem;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->oList:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 100
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onPause()V

    .line 101
    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->changed:Z

    if-eqz v0, :cond_0

    const-string v0, "sticker"

    .line 102
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/sticker/StickerService;

    const/4 v1, 0x1

    .line 103
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/StickerService;->refreshSharedStickerPackList(Z)V

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->changed:Z

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 88
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 89
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->oList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "olist"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
