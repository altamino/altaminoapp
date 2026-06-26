.class public Lcom/narvii/item/ItemHelper;
.super Ljava/lang/Object;
.source "ItemHelper.java"


# static fields
.field public static final PICK_CATEGORY_REQUEST:I = 0x64


# instance fields
.field public nvFragment:Lcom/narvii/app/NVFragment;

.field public source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVFragment;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/narvii/item/ItemHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    return-void
.end method


# virtual methods
.method public addToCategory(Ljava/util/List;Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/ItemCategory;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 89
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/item/ItemHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 90
    new-instance v1, Lcom/narvii/item/ItemHelper$2;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/narvii/item/ItemHelper$2;-><init>(Lcom/narvii/item/ItemHelper;Lcom/narvii/util/Callback;Ljava/lang/String;Ljava/util/List;)V

    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 115
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p3

    .line 116
    invoke-virtual {p3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/item/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/tag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 117
    iget-object v1, p0, Lcom/narvii/item/ItemHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    const-string v2, "account"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 118
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "destinationUid"

    invoke-virtual {p3, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 119
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v1

    .line 120
    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    const-string p2, "itemIdList"

    .line 121
    invoke-virtual {p3, p2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 122
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object p2

    if-eqz p1, :cond_1

    .line 124
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/ItemCategory;

    .line 125
    iget-object v1, v1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_0

    :cond_1
    const-string p1, "categoryIdList"

    .line 128
    invoke-virtual {p3, p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 129
    iget-object p1, p0, Lcom/narvii/item/ItemHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    const-string p2, "api"

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 130
    invoke-virtual {p3}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    iget-object p3, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, p2, p3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 131
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    return-void
.end method

.method public addToMyFavorites(Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 53
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/item/ItemHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/narvii/model/api/CategoryListResponse;

    invoke-direct {v0, v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    new-instance v1, Lcom/narvii/item/ItemHelper$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/item/ItemHelper$1;-><init>(Lcom/narvii/item/ItemHelper;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 75
    iget-object p1, p0, Lcom/narvii/item/ItemHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    const-string p2, "api"

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 76
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    const-string v1, "/item-category"

    invoke-virtual {p2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "user"

    .line 77
    invoke-virtual {p2, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 78
    iget-object v1, p0, Lcom/narvii/item/ItemHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    const-string v2, "account"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 79
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "q"

    invoke-virtual {p2, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 80
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    iget-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, p2, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 81
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    return-void
.end method

.method public submitOfficialCatalog(Lcom/narvii/model/Item;)V
    .locals 4

    .line 135
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/narvii/item/ItemHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 136
    iget-object v1, p0, Lcom/narvii/item/ItemHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0083

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 138
    new-instance v2, Lcom/narvii/item/ItemHelper$3;

    invoke-direct {v2, p0, v1, p1}, Lcom/narvii/item/ItemHelper$3;-><init>(Lcom/narvii/item/ItemHelper;Landroid/view/View;Lcom/narvii/model/Item;)V

    const p1, 0x104000a

    invoke-virtual {v0, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 162
    sget-object p1, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 163
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 164
    new-instance p1, Lcom/narvii/item/ItemHelper$4;

    invoke-direct {p1, p0, v1}, Lcom/narvii/item/ItemHelper$4;-><init>(Lcom/narvii/item/ItemHelper;Landroid/view/View;)V

    const-wide/16 v0, 0x190

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
