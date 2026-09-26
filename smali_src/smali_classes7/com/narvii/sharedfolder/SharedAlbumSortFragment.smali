.class public Lcom/narvii/sharedfolder/SharedAlbumSortFragment;
.super Lcom/narvii/list/DragSortPageFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/DragSortPageFragment<",
        "Lcom/narvii/model/SharedAlbum;",
        ">;"
    }
.end annotation


# instance fields
.field adapter:Lcom/narvii/sharedfolder/SharedAlbumSortAdapter;


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


# virtual methods
.method protected createMainAdapter()Lcom/narvii/list/NVPagedAdapter;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumSortFragment;->adapter:Lcom/narvii/sharedfolder/SharedAlbumSortAdapter;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/sharedfolder/SharedAlbumSortAdapter;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/narvii/sharedfolder/SharedAlbumSortAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumSortFragment;->adapter:Lcom/narvii/sharedfolder/SharedAlbumSortAdapter;

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
    .locals 4

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
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumSortFragment;->adapter:Lcom/narvii/sharedfolder/SharedAlbumSortAdapter;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    const/4 p1, 0x1

    .line 25
    return p1

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v2

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    check-cast v2, Lcom/narvii/model/SharedAlbum;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/narvii/model/SharedAlbum;->id()Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 53
    goto :goto_0

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 61
    move-result-object v2

    .line 62
    .line 63
    const-string v3, "shared-folder/folders/reorder"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 67
    .line 68
    const-string v2, "folderIdList"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 72
    .line 73
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 77
    move-result-object v2

    .line 78
    .line 79
    .line 80
    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 81
    .line 82
    new-instance v2, Lcom/narvii/sharedfolder/SharedAlbumSortFragment$1;

    .line 83
    .line 84
    .line 85
    invoke-direct {v2, p0}, Lcom/narvii/sharedfolder/SharedAlbumSortFragment$1;-><init>(Lcom/narvii/sharedfolder/SharedAlbumSortFragment;)V

    .line 86
    .line 87
    iput-object v2, v1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 91
    .line 92
    const-string v2, "api"

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    move-result-object v2

    .line 97
    .line 98
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    iget-object v1, v1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 108
    .line 109
    .line 110
    :cond_2
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 111
    move-result p1

    .line 112
    return p1
.end method
