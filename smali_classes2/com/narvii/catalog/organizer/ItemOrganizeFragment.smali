.class public Lcom/narvii/catalog/organizer/ItemOrganizeFragment;
.super Lcom/narvii/list/DragSortPageFragment;
.source "ItemOrganizeFragment.java"


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

    .line 44
    invoke-direct {p0}, Lcom/narvii/list/DragSortPageFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/catalog/organizer/ItemOrganizeFragment;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->categoryId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/catalog/organizer/ItemOrganizeFragment;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->uid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/catalog/organizer/ItemOrganizeFragment;)Ljava/util/List;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->oList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/narvii/catalog/organizer/ItemOrganizeFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->oList:Ljava/util/List;

    return-object p1
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

    .line 95
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    if-nez p1, :cond_0

    return-object v0

    .line 99
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Item;

    .line 100
    iget-object v1, v1, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private isDirty()Z
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->oList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 119
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    iget-object v1, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->adapter:Lcom/narvii/catalog/organizer/ItemOrganizeFragment$ItemListAdapter;

    invoke-virtual {v1}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 121
    instance-of v3, v2, Lcom/narvii/model/Item;

    if-eqz v3, :cond_1

    .line 122
    check-cast v2, Lcom/narvii/model/Item;

    invoke-virtual {v2}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 126
    iget-object v2, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->oList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Item;

    .line 127
    invoke-virtual {v3}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 129
    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private submit()V
    .locals 7

    .line 133
    iget-object v0, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->oList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->isDirty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->adapter:Lcom/narvii/catalog/organizer/ItemOrganizeFragment$ItemListAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    .line 140
    invoke-direct {p0, v0}, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->getIds(Ljava/util/List;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v1

    .line 142
    new-instance v2, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 143
    new-instance v3, Lcom/narvii/catalog/organizer/ItemOrganizeFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/narvii/catalog/organizer/ItemOrganizeFragment$1;-><init>(Lcom/narvii/catalog/organizer/ItemOrganizeFragment;Ljava/util/List;)V

    iput-object v3, v2, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 165
    invoke-virtual {v2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 168
    iget-object v0, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->categoryId:Ljava/lang/String;

    const-string v3, "itemIdList"

    if-eqz v0, :cond_2

    .line 169
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/item-category/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->categoryId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/item-position"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 171
    invoke-virtual {v0, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 172
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    goto :goto_0

    .line 174
    :cond_2
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    const-string v5, "/item/reorder"

    invoke-virtual {v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 176
    invoke-virtual {v0, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 177
    iget-object v1, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->uid:Ljava/lang/String;

    const-string v3, "sourceUid"

    invoke-virtual {v0, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 178
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    :goto_0
    const-string v1, "api"

    .line 180
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 181
    iget-object v2, v2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method protected createMainAdapter()Lcom/narvii/list/NVPagedAdapter;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->adapter:Lcom/narvii/catalog/organizer/ItemOrganizeFragment$ItemListAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment$ItemListAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/catalog/organizer/ItemOrganizeFragment$ItemListAdapter;-><init>(Lcom/narvii/catalog/organizer/ItemOrganizeFragment;)V

    iput-object v0, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->adapter:Lcom/narvii/catalog/organizer/ItemOrganizeFragment$ItemListAdapter;

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

    .line 59
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 60
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    const v0, 0x7f0f0ed5

    .line 61
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "categoryId"

    const-string/jumbo v1, "uid"

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->uid:Ljava/lang/String;

    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->categoryId:Ljava/lang/String;

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->uid:Ljava/lang/String;

    .line 67
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->categoryId:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 87
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x104000a

    const/4 v0, 0x0

    .line 89
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    new-instance p2, Lcom/narvii/util/ActionBarIcon;

    .line 90
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0483

    invoke-direct {p2, v0, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 91
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 107
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x104000a

    if-ne v0, v1, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->submit()V

    const/4 p1, 0x1

    return p1

    .line 111
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 74
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 75
    iget-object v0, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->uid:Ljava/lang/String;

    const-string/jumbo v1, "uid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->categoryId:Ljava/lang/String;

    const-string v1, "categoryId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
