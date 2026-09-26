.class public Lcom/narvii/item/ItemHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PICK_CATEGORY_REQUEST:I = 0x64


# instance fields
.field public nvFragment:Lcom/narvii/app/NVFragment;

.field public source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/item/ItemHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    .line 6
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

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/item/ItemHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    new-instance v1, Lcom/narvii/item/ItemHelper$2;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, p0, p3, p2, p1}, Lcom/narvii/item/ItemHelper$2;-><init>(Lcom/narvii/item/ItemHelper;Lcom/narvii/util/Callback;Ljava/lang/String;Ljava/util/List;)V

    .line 20
    .line 21
    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 25
    move-result-object p3

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    const-string v3, "/item/"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v3, "/tag"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/narvii/item/ItemHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    .line 57
    .line 58
    const-string v2, "account"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 65
    .line 66
    const-string v2, "destinationUid"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 81
    .line 82
    const-string p2, "itemIdList"

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3, p2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 86
    .line 87
    .line 88
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 89
    move-result-object p2

    .line 90
    .line 91
    if-eqz p1, :cond_1

    .line 92
    .line 93
    .line 94
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 95
    move-result-object p1

    .line 96
    .line 97
    .line 98
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    move-result v1

    .line 100
    .line 101
    if-eqz v1, :cond_1

    .line 102
    .line 103
    .line 104
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    move-result-object v1

    .line 106
    .line 107
    check-cast v1, Lcom/narvii/model/ItemCategory;

    .line 108
    .line 109
    iget-object v1, v1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 113
    goto :goto_0

    .line 114
    .line 115
    :cond_1
    const-string p1, "categoryIdList"

    .line 116
    .line 117
    .line 118
    invoke-virtual {p3, p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 119
    .line 120
    iget-object p1, p0, Lcom/narvii/item/ItemHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    .line 121
    .line 122
    const-string p2, "api"

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    move-result-object p1

    .line 127
    .line 128
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p3}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 132
    move-result-object p2

    .line 133
    .line 134
    iget-object p3, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, p2, p3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 141
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

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/item/ItemHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    const-class v2, Lcom/narvii/model/api/CategoryListResponse;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    .line 18
    new-instance v1, Lcom/narvii/item/ItemHelper$1;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/item/ItemHelper$1;-><init>(Lcom/narvii/item/ItemHelper;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 22
    .line 23
    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/item/ItemHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    .line 26
    .line 27
    const-string p2, "api"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    const-string v1, "/item-category"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 43
    move-result-object p2

    .line 44
    .line 45
    const-string v1, "type"

    .line 46
    .line 47
    const-string v2, "user"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/narvii/item/ItemHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    .line 53
    .line 54
    const-string v2, "account"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 61
    .line 62
    const-string v2, "q"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 73
    move-result-object p2

    .line 74
    .line 75
    iget-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 82
    return-void
.end method

.method public submitOfficialCatalog(Lcom/narvii/model/Item;)V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/item/ItemHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/item/ItemHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    const v2, 0x7f0d0099

    .line 21
    const/4 v3, 0x0

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 29
    .line 30
    new-instance v2, Lcom/narvii/item/ItemHelper$3;

    .line 31
    .line 32
    .line 33
    invoke-direct {v2, p0, v1, p1}, Lcom/narvii/item/ItemHelper$3;-><init>(Lcom/narvii/item/ItemHelper;Landroid/view/View;Lcom/narvii/model/Item;)V

    .line 34
    .line 35
    .line 36
    const p1, 0x104000a

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 40
    .line 41
    const/high16 p1, 0x1040000

    .line 42
    .line 43
    sget-object v2, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 50
    .line 51
    new-instance p1, Lcom/narvii/item/ItemHelper$4;

    .line 52
    .line 53
    .line 54
    invoke-direct {p1, p0, v1}, Lcom/narvii/item/ItemHelper$4;-><init>(Lcom/narvii/item/ItemHelper;Landroid/view/View;)V

    .line 55
    .line 56
    const-wide/16 v0, 0x190

    .line 57
    .line 58
    .line 59
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 60
    return-void
.end method
