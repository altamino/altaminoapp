.class public Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;
.super Lcom/narvii/list/DragSortPageFragment;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/DragSortPageFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->oList:Ljava/util/List;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->changed:Z

    .line 14
    return-void
.end method

.method private saveChanges()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->shareSticlkerAdapater:Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;

    .line 3
    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->storeSection:Lcom/narvii/monetization/store/data/StoreSectionMini;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_4

    .line 11
    .line 12
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->shareSticlkerAdapater:Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->shareSticlkerAdapater:Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x1

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->shareSticlkerAdapater:Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 40
    move-result v1

    .line 41
    .line 42
    if-nez v1, :cond_1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v1, 0x0

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    :goto_0
    move v1, v2

    .line 47
    .line 48
    :goto_1
    iget-object v3, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->oList:Ljava/util/List;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v3

    .line 53
    xor-int/2addr v3, v2

    .line 54
    .line 55
    if-eqz v3, :cond_5

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    goto :goto_3

    .line 59
    .line 60
    :cond_3
    iput-boolean v2, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->changed:Z

    .line 61
    .line 62
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    .line 69
    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 73
    .line 74
    new-instance v2, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$2;

    .line 75
    .line 76
    .line 77
    invoke-direct {v2, p0}, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$2;-><init>(Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;)V

    .line 78
    .line 79
    iput-object v2, v1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 80
    .line 81
    .line 82
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 83
    move-result-object v2

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    .line 90
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    move-result v3

    .line 92
    .line 93
    if-eqz v3, :cond_4

    .line 94
    .line 95
    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    move-result-object v3

    .line 98
    .line 99
    check-cast v3, Lcom/narvii/monetization/store/data/StoreItem;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Lcom/narvii/monetization/store/data/StoreItem;->id()Ljava/lang/String;

    .line 103
    move-result-object v3

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 107
    goto :goto_2

    .line 108
    .line 109
    .line 110
    :cond_4
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    const-string v4, "store/sections/"

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    iget-object v4, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->storeSection:Lcom/narvii/monetization/store/data/StoreSectionMini;

    .line 128
    .line 129
    iget-object v4, v4, Lcom/narvii/monetization/store/data/StoreSectionMini;->storeSectionId:Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string v4, "/items/reorder"

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object v3

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 145
    move-result-object v0

    .line 146
    .line 147
    const-string v3, "objectIdList"

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 151
    move-result-object v0

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 155
    move-result-object v0

    .line 156
    .line 157
    const-string v2, "api"

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 161
    move-result-object v2

    .line 162
    .line 163
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 164
    .line 165
    iget-object v3, v1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v0, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 172
    return-void

    .line 173
    .line 174
    .line 175
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 176
    :cond_6
    :goto_4
    return-void
.end method

.method static bridge synthetic u(Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->oList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic v(Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;)Lcom/narvii/monetization/store/data/StoreSectionMini;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->storeSection:Lcom/narvii/monetization/store/data/StoreSectionMini;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;Lcom/narvii/monetization/store/data/StoreSectionMini;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->storeSection:Lcom/narvii/monetization/store/data/StoreSectionMini;

    return-void
.end method

.method static bridge synthetic x(Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->saveChanges()V

    return-void
.end method


# virtual methods
.method protected createMainAdapter()Lcom/narvii/list/NVPagedAdapter;
    .locals 1

    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->shareSticlkerAdapater:Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;

    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    const v1, 0x7f080369

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    .line 33
    new-instance v0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$1;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$1;-><init>(Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;)V

    .line 37
    .line 38
    .line 39
    const v1, 0x7f120402

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1, v0}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/view/View$OnClickListener;)V

    .line 43
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f120be0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 10
    .line 11
    new-instance v0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;-><init>(Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;Lcom/narvii/app/NVContext;)V

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->shareSticlkerAdapater:Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;

    .line 17
    .line 18
    new-instance v0, Lcom/narvii/monetization/sticker/StickerHelper;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    const-string v0, "olist"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    const-class v0, Lcom/narvii/monetization/store/data/StoreItem;

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->oList:Ljava/util/List;

    .line 40
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onPause()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->changed:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "sticker"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/monetization/sticker/StickerService;

    .line 16
    const/4 v1, 0x1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/StickerService;->refreshSharedStickerPackList(Z)V

    .line 20
    const/4 v0, 0x0

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->changed:Z

    .line 23
    :cond_0
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
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->oList:Ljava/util/List;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "olist"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method
