.class public Lcom/narvii/catalog/organizer/SubItemOrganizeFragment;
.super Lcom/narvii/list/DragSortPageFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/catalog/organizer/SubItemOrganizeFragment$ItemListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/DragSortPageFragment<",
        "Lcom/narvii/model/Item;",
        ">;"
    }
.end annotation


# instance fields
.field adapter:Lcom/narvii/catalog/organizer/SubItemOrganizeFragment$ItemListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/DragSortPageFragment;-><init>()V

    .line 4
    return-void
.end method

.method private getIds(Ljava/util/List;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Item;",
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
    check-cast v1, Lcom/narvii/model/Item;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

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
.method protected createMainAdapter()Lcom/narvii/list/NVPagedAdapter;
    .locals 1

    iget-object v0, p0, Lcom/narvii/catalog/organizer/SubItemOrganizeFragment;->adapter:Lcom/narvii/catalog/organizer/SubItemOrganizeFragment$ItemListAdapter;

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
    .line 19
    new-instance p1, Lcom/narvii/catalog/organizer/SubItemOrganizeFragment$ItemListAdapter;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p0}, Lcom/narvii/catalog/organizer/SubItemOrganizeFragment$ItemListAdapter;-><init>(Lcom/narvii/catalog/organizer/SubItemOrganizeFragment;)V

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/catalog/organizer/SubItemOrganizeFragment;->adapter:Lcom/narvii/catalog/organizer/SubItemOrganizeFragment$ItemListAdapter;

    .line 25
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
    .locals 7

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
    if-ne v0, v1, :cond_3

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
    const-string v0, "uid"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    const-string v1, "itemList"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    const-class v2, Lcom/narvii/model/Item;

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    iget-object v2, p0, Lcom/narvii/catalog/organizer/SubItemOrganizeFragment;->adapter:Lcom/narvii/catalog/organizer/SubItemOrganizeFragment$ItemListAdapter;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, v1}, Lcom/narvii/catalog/organizer/SubItemOrganizeFragment;->getIds(Ljava/util/List;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, v2}, Lcom/narvii/catalog/organizer/SubItemOrganizeFragment;->getIds(Ljava/util/List;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 51
    move-result v4

    .line 52
    .line 53
    if-nez v4, :cond_2

    .line 54
    .line 55
    .line 56
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    move-result-object v4

    .line 62
    .line 63
    .line 64
    invoke-static {v1, v4}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    move-result v1

    .line 66
    .line 67
    if-eqz v1, :cond_0

    .line 68
    goto :goto_1

    .line 69
    .line 70
    :cond_0
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 74
    move-result-object v4

    .line 75
    .line 76
    .line 77
    invoke-direct {v1, v4}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 78
    .line 79
    new-instance v4, Lcom/narvii/catalog/organizer/SubItemOrganizeFragment$1;

    .line 80
    .line 81
    .line 82
    invoke-direct {v4, p0, v2, p1, v0}, Lcom/narvii/catalog/organizer/SubItemOrganizeFragment$1;-><init>(Lcom/narvii/catalog/organizer/SubItemOrganizeFragment;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    iput-object v4, v1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 88
    .line 89
    const-string v2, "itemIdList"

    .line 90
    .line 91
    if-eqz p1, :cond_1

    .line 92
    .line 93
    .line 94
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 99
    move-result-object v4

    .line 100
    .line 101
    new-instance v5, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    const-string v6, "/item-category/"

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string p1, "/item-position"

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 131
    move-result-object p1

    .line 132
    goto :goto_0

    .line 133
    .line 134
    .line 135
    :cond_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 136
    move-result-object p1

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 140
    move-result-object v4

    .line 141
    .line 142
    const-string v5, "/item/reorder"

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 149
    .line 150
    const-string v2, "sourceUid"

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 157
    move-result-object p1

    .line 158
    .line 159
    :goto_0
    const-string v0, "api"

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    move-result-object v0

    .line 164
    .line 165
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 166
    .line 167
    iget-object v1, v1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 171
    goto :goto_2

    .line 172
    .line 173
    .line 174
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 175
    :goto_2
    const/4 p1, 0x1

    .line 176
    return p1

    .line 177
    .line 178
    .line 179
    :cond_3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 180
    move-result p1

    .line 181
    return p1
.end method
