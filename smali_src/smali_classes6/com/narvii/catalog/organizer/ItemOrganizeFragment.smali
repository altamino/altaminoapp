.class public Lcom/narvii/catalog/organizer/ItemOrganizeFragment;
.super Lcom/narvii/list/DragSortPageFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/catalog/organizer/ItemOrganizeFragment$ItemListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/DragSortPageFragment<",
        "Lcom/narvii/model/Item;",
        ">;"
    }
.end annotation


# static fields
.field private static final TRANSLATION_TOO_LARGE_LIMIT:I = 0x32


# instance fields
.field adapter:Lcom/narvii/catalog/organizer/ItemOrganizeFragment$ItemListAdapter;

.field private categoryId:Ljava/lang/String;

.field private oList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Item;",
            ">;"
        }
    .end annotation
.end field

.field private uid:Ljava/lang/String;


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

.method private isDirty()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->oList:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->adapter:Lcom/narvii/catalog/organizer/ItemOrganizeFragment$ItemListAdapter;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v2

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    instance-of v3, v2, Lcom/narvii/model/Item;

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    check-cast v2, Lcom/narvii/model/Item;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    iget-object v2, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->oList:Ljava/util/List;

    .line 53
    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    .line 59
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result v3

    .line 61
    .line 62
    if-eqz v3, :cond_3

    .line 63
    .line 64
    .line 65
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object v3

    .line 67
    .line 68
    check-cast v3, Lcom/narvii/model/Item;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    .line 72
    move-result-object v3

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    goto :goto_1

    .line 77
    .line 78
    .line 79
    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 80
    move-result v0

    .line 81
    .line 82
    xor-int/lit8 v0, v0, 0x1

    .line 83
    return v0
.end method

.method private submit()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->oList:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->isDirty()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 15
    return-void

    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->adapter:Lcom/narvii/catalog/organizer/ItemOrganizeFragment$ItemListAdapter;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v0}, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->getIds(Ljava/util/List;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    new-instance v2, Lcom/narvii/util/dialog/ProgressDialog;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, v3}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    new-instance v3, Lcom/narvii/catalog/organizer/ItemOrganizeFragment$1;

    .line 37
    .line 38
    .line 39
    invoke-direct {v3, p0, v0}, Lcom/narvii/catalog/organizer/ItemOrganizeFragment$1;-><init>(Lcom/narvii/catalog/organizer/ItemOrganizeFragment;Ljava/util/List;)V

    .line 40
    .line 41
    iput-object v3, v2, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->categoryId:Ljava/lang/String;

    .line 47
    .line 48
    const-string v3, "itemIdList"

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 58
    move-result-object v4

    .line 59
    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    const-string v6, "/item-category/"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    iget-object v6, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->categoryId:Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v6, "/item-position"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v5

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 92
    move-result-object v0

    .line 93
    goto :goto_0

    .line 94
    .line 95
    .line 96
    :cond_2
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 101
    move-result-object v4

    .line 102
    .line 103
    const-string v5, "/item/reorder"

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 110
    .line 111
    const-string v1, "sourceUid"

    .line 112
    .line 113
    iget-object v3, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->uid:Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    :goto_0
    const-string v1, "api"

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    move-result-object v1

    .line 127
    .line 128
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 129
    .line 130
    iget-object v2, v2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 134
    return-void
.end method

.method static bridge synthetic u(Lcom/narvii/catalog/organizer/ItemOrganizeFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->categoryId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic v(Lcom/narvii/catalog/organizer/ItemOrganizeFragment;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->oList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/narvii/catalog/organizer/ItemOrganizeFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->uid:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/narvii/catalog/organizer/ItemOrganizeFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->oList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected createMainAdapter()Lcom/narvii/list/NVPagedAdapter;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->adapter:Lcom/narvii/catalog/organizer/ItemOrganizeFragment$ItemListAdapter;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment$ItemListAdapter;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/narvii/catalog/organizer/ItemOrganizeFragment$ItemListAdapter;-><init>(Lcom/narvii/catalog/organizer/ItemOrganizeFragment;)V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->adapter:Lcom/narvii/catalog/organizer/ItemOrganizeFragment$ItemListAdapter;

    .line 12
    :cond_0
    return-object v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 8
    .line 9
    .line 10
    const v0, 0x7f120fee

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    const-string v0, "categoryId"

    .line 20
    .line 21
    const-string v1, "uid"

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    iput-object v1, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->uid:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    iput-object p1, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->categoryId:Ljava/lang/String;

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    iput-object p1, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->uid:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    iput-object p1, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->categoryId:Ljava/lang/String;

    .line 49
    :goto_0
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
    .locals 2

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
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->submit()V

    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "uid"

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->uid:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "categoryId"

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->categoryId:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method
