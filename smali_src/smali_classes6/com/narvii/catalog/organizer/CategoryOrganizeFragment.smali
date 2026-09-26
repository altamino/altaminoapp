.class public Lcom/narvii/catalog/organizer/CategoryOrganizeFragment;
.super Lcom/narvii/list/DragSortListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/catalog/organizer/CategoryOrganizeFragment$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/DragSortListFragment<",
        "Lcom/narvii/model/ItemCategory;",
        ">;"
    }
.end annotation


# instance fields
.field adapter:Lcom/narvii/catalog/organizer/CategoryOrganizeFragment$Adapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/DragSortListFragment;-><init>()V

    .line 4
    return-void
.end method

.method private getIds(Ljava/util/List;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/ItemCategory;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/node/ArrayNode;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    return-object v0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    check-cast v1, Lcom/narvii/model/ItemCategory;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/catalog/organizer/CategoryOrganizeFragment;->createAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVArrayAdapter;

    move-result-object p1

    return-object p1
.end method

.method protected createAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVArrayAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/narvii/list/NVArrayAdapter<",
            "Lcom/narvii/model/ItemCategory;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "categoryList"

    .line 2
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/ItemCategory;

    .line 3
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    new-instance v0, Lcom/narvii/catalog/organizer/CategoryOrganizeFragment$Adapter;

    invoke-direct {v0, p0, p1}, Lcom/narvii/catalog/organizer/CategoryOrganizeFragment$Adapter;-><init>(Lcom/narvii/catalog/organizer/CategoryOrganizeFragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/narvii/catalog/organizer/CategoryOrganizeFragment;->adapter:Lcom/narvii/catalog/organizer/CategoryOrganizeFragment$Adapter;

    return-object v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 8
    .line 9
    .line 10
    const p1, 0x7f120fee

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 18
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    const v0, 0x104000a

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    new-instance p2, Lcom/narvii/util/ActionBarIcon;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    const v1, 0x7f12052e

    .line 21
    .line 22
    .line 23
    invoke-direct {p2, v0, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x2

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 32
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x104000a

    .line 8
    .line 9
    if-ne v0, v1, :cond_2

    .line 10
    .line 11
    const-string p1, "categoryId"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    const-string v0, "categoryList"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    const-class v1, Lcom/narvii/model/ItemCategory;

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/catalog/organizer/CategoryOrganizeFragment;->adapter:Lcom/narvii/catalog/organizer/CategoryOrganizeFragment$Adapter;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v0}, Lcom/narvii/catalog/organizer/CategoryOrganizeFragment;->getIds(Ljava/util/List;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v1}, Lcom/narvii/catalog/organizer/CategoryOrganizeFragment;->getIds(Ljava/util/List;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 45
    move-result v3

    .line 46
    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    move-result-object v3

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    move-result v0

    .line 60
    .line 61
    if-eqz v0, :cond_0

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 68
    move-result-object v3

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, v3}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 72
    .line 73
    new-instance v3, Lcom/narvii/catalog/organizer/CategoryOrganizeFragment$1;

    .line 74
    .line 75
    .line 76
    invoke-direct {v3, p0, v1, p1}, Lcom/narvii/catalog/organizer/CategoryOrganizeFragment$1;-><init>(Lcom/narvii/catalog/organizer/CategoryOrganizeFragment;Ljava/util/List;Ljava/lang/String;)V

    .line 77
    .line 78
    iput-object v3, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 89
    move-result-object v3

    .line 90
    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    const-string v5, "/item-category/"

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string p1, "/position"

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object p1

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 115
    .line 116
    const-string p1, "itemCategoryIdList"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, p1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    const-string v1, "api"

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 129
    move-result-object v1

    .line 130
    .line 131
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 132
    .line 133
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 137
    goto :goto_1

    .line 138
    .line 139
    .line 140
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 141
    :goto_1
    const/4 p1, 0x1

    .line 142
    return p1

    .line 143
    .line 144
    .line 145
    :cond_2
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 146
    move-result p1

    .line 147
    return p1
.end method
