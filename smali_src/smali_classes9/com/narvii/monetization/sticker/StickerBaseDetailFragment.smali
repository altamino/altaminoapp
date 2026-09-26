.class public Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"


# instance fields
.field aminoPlus:Landroid/view/View;

.field chatStickerView:Lcom/narvii/widget/ChatStickerView;

.field collectionIcon:Lcom/narvii/monetization/sticker/widget/StickerImageView;

.field collectionLayout:Landroid/view/View;

.field collectionName:Landroid/widget/TextView;

.field moodStickerView:Lcom/narvii/widget/EmojioneView;

.field name:Landroid/widget/TextView;

.field protected sticker:Lcom/narvii/model/Sticker;

.field stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

.field stickerCollectionOwnStatusController:Lcom/narvii/monetization/StickerCollectionOwnStatusController;

.field stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

.field storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

.field subTitle:Landroid/widget/TextView;

.field summary:Lcom/narvii/monetization/sticker/model/StickerCollection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    return-void
.end method

.method private getStickerCollectionInfo(Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    const-string v0, "api"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    const-string v3, "sticker-collection/"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    const-string v1, "includeStickers"

    .line 36
    .line 37
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    new-instance v1, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment$2;

    .line 48
    .line 49
    const-class v2, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, p0, v2}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment$2;-><init>(Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;Ljava/lang/Class;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 56
    return-void
.end method

.method private isLocalMood()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->sticker:Lcom/narvii/model/Sticker;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "ndcsticker://e/"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method static bridge synthetic n(Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    return-void
.end method

.method private setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 4

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isUserCreated()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lcom/narvii/monetization/sticker/StickerHelper;->isCreatedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isShared()Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    :cond_0
    const/4 v1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move v1, v0

    .line 32
    .line 33
    :goto_0
    const/16 v2, 0x8

    .line 34
    .line 35
    if-eqz p1, :cond_4

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isLocalMood()Z

    .line 39
    move-result v3

    .line 40
    .line 41
    if-nez v3, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isNormal()Z

    .line 45
    move-result v3

    .line 46
    .line 47
    if-nez v3, :cond_2

    .line 48
    .line 49
    if-eqz v1, :cond_4

    .line 50
    :cond_2
    const/4 v1, 0x0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 54
    move-result v1

    .line 55
    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->collectionLayout:Landroid/view/View;

    .line 59
    .line 60
    const-string v3, "hideCollectionInfo"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 64
    move-result v3

    .line 65
    .line 66
    if-eqz v3, :cond_3

    .line 67
    move v0, v2

    .line 68
    .line 69
    .line 70
    :cond_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->collectionLayout:Landroid/view/View;

    .line 73
    .line 74
    new-instance v1, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment$3;

    .line 75
    .line 76
    .line 77
    invoke-direct {v1, p0, p1}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment$3;-><init>(Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    .line 82
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->collectionIcon:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    iget-object v2, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->icon:Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1, v2}, Lcom/narvii/monetization/sticker/widget/StickerImageView;->setStickerImageUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    .line 98
    const v1, 0x7f0a0da8

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    check-cast v0, Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, p1}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    .line 114
    const v1, 0x7f0a0d59

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    move-result-object v0

    .line 119
    .line 120
    check-cast v0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, p1}, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 124
    .line 125
    instance-of v0, p1, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;

    .line 126
    .line 127
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->subTitle:Landroid/widget/TextView;

    .line 128
    .line 129
    .line 130
    invoke-static {v1, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 131
    .line 132
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->stickerCollectionOwnStatusController:Lcom/narvii/monetization/StickerCollectionOwnStatusController;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 136
    goto :goto_1

    .line 137
    .line 138
    :cond_4
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->collectionLayout:Landroid/view/View;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 142
    :goto_1
    return-void
.end method


# virtual methods
.method protected attachObject()Lcom/narvii/model/NVObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected ignoreGlobalScope()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isDeleteOpVisible()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->isMyOwned()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method protected isFromComment()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isMyOwned()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/monetization/sticker/StickerHelper;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 11
    .line 12
    const-string p1, "sticker"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    const-class v0, Lcom/narvii/model/Sticker;

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    check-cast p1, Lcom/narvii/model/Sticker;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->sticker:Lcom/narvii/model/Sticker;

    .line 27
    const/4 p1, 0x0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 31
    const/4 p1, 0x1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 35
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    const v0, 0x7f120781

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, p2, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    const v2, 0x7f08047b

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 19
    move-result-object v0

    .line 20
    const/4 v2, 0x2

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 24
    .line 25
    .line 26
    const v0, 0x7f120089

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, p2, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 30
    .line 31
    .line 32
    const v0, 0x7f1203a0

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, p2, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 36
    .line 37
    .line 38
    const v0, 0x7f12009d

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, p2, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 42
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d0321

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method protected onDeleteOpClicked()V
    .locals 0

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
    const/4 v1, 0x1

    .line 6
    .line 7
    .line 8
    sparse-switch v0, :sswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    .line 15
    :sswitch_0
    new-instance p1, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, p0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->attachObject()Lcom/narvii/model/NVObject;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    .line 34
    return v1

    .line 35
    .line 36
    .line 37
    :sswitch_1
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->onDeleteOpClicked()V

    .line 38
    return v1

    .line 39
    .line 40
    :sswitch_2
    new-instance p1, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 41
    .line 42
    .line 43
    invoke-direct {p1, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->attachObject()Lcom/narvii/model/NVObject;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->build()Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->show()V

    .line 59
    return v1

    .line 60
    .line 61
    :sswitch_3
    new-instance p1, Lcom/narvii/monetization/sticker/StickerHelper;

    .line 62
    .line 63
    .line 64
    invoke-direct {p1, p0}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 65
    .line 66
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->sticker:Lcom/narvii/model/Sticker;

    .line 67
    .line 68
    if-eqz v0, :cond_0

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Lcom/narvii/monetization/sticker/StickerHelper;->saveAsFavorite(Lcom/narvii/model/Sticker;)V

    .line 72
    :cond_0
    return v1

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    :sswitch_data_0
    .sparse-switch
        0x7f120089 -> :sswitch_3
        0x7f12009d -> :sswitch_2
        0x7f1203a0 -> :sswitch_1
        0x7f120781 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->canBeFlagged()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->summary:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->canBeFlagged()Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    :cond_1
    move v0, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    move v0, v1

    .line 29
    .line 30
    :goto_0
    const-string v3, "account"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    move-result-object v4

    .line 35
    .line 36
    check-cast v4, Lcom/narvii/account/AccountService;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->isMyOwned()Z

    .line 45
    move-result v0

    .line 46
    .line 47
    if-nez v0, :cond_3

    .line 48
    move v0, v2

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    move v0, v1

    .line 51
    .line 52
    .line 53
    :goto_1
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    check-cast v3, Lcom/narvii/account/AccountService;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 60
    move-result-object v4

    .line 61
    .line 62
    if-eqz v4, :cond_4

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 66
    move-result-object v3

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/narvii/model/User;->isCurator()Z

    .line 70
    move-result v3

    .line 71
    .line 72
    if-eqz v3, :cond_4

    .line 73
    move v3, v2

    .line 74
    goto :goto_2

    .line 75
    :cond_4
    move v3, v1

    .line 76
    .line 77
    :goto_2
    iget-object v4, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->sticker:Lcom/narvii/model/Sticker;

    .line 78
    .line 79
    if-nez v4, :cond_5

    .line 80
    :goto_3
    move v1, v2

    .line 81
    goto :goto_4

    .line 82
    .line 83
    .line 84
    :cond_5
    invoke-virtual {v4}, Lcom/narvii/model/Sticker;->isLocalMood()Z

    .line 85
    move-result v4

    .line 86
    .line 87
    if-nez v4, :cond_7

    .line 88
    .line 89
    iget-object v4, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->sticker:Lcom/narvii/model/Sticker;

    .line 90
    const/4 v5, 0x0

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v5}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 94
    move-result v4

    .line 95
    .line 96
    if-eqz v4, :cond_7

    .line 97
    .line 98
    iget-object v4, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 99
    .line 100
    if-eqz v4, :cond_6

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v5}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 104
    move-result v4

    .line 105
    .line 106
    if-eqz v4, :cond_6

    .line 107
    .line 108
    iget-object v4, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 109
    .line 110
    iget-object v6, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v6}, Lcom/narvii/monetization/sticker/StickerHelper;->isStickerCollectionValid(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    .line 114
    move-result v4

    .line 115
    .line 116
    if-eqz v4, :cond_6

    .line 117
    goto :goto_3

    .line 118
    .line 119
    :cond_6
    iget-object v4, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->summary:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 120
    .line 121
    if-eqz v4, :cond_7

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4, v5}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 125
    move-result v4

    .line 126
    .line 127
    if-eqz v4, :cond_7

    .line 128
    .line 129
    iget-object v4, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 130
    .line 131
    iget-object v5, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->summary:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4, v5}, Lcom/narvii/monetization/sticker/StickerHelper;->isStickerCollectionValid(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    .line 135
    move-result v4

    .line 136
    .line 137
    if-eqz v4, :cond_7

    .line 138
    goto :goto_3

    .line 139
    .line 140
    .line 141
    :cond_7
    :goto_4
    const v2, 0x7f120089

    .line 142
    .line 143
    .line 144
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 145
    move-result-object v2

    .line 146
    .line 147
    .line 148
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 149
    .line 150
    .line 151
    const v1, 0x7f1203a0

    .line 152
    .line 153
    .line 154
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 155
    move-result-object v1

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->isDeleteOpVisible()Z

    .line 159
    move-result v2

    .line 160
    .line 161
    .line 162
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 163
    .line 164
    .line 165
    const v1, 0x7f120781

    .line 166
    .line 167
    .line 168
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 169
    move-result-object v1

    .line 170
    .line 171
    .line 172
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 173
    .line 174
    .line 175
    const v0, 0x7f12009d

    .line 176
    .line 177
    .line 178
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 179
    move-result-object p1

    .line 180
    .line 181
    .line 182
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 183
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a02bf

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Lcom/narvii/widget/ChatStickerView;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->chatStickerView:Lcom/narvii/widget/ChatStickerView;

    .line 15
    .line 16
    .line 17
    const p2, 0x7f0a098b

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    check-cast p2, Lcom/narvii/widget/EmojioneView;

    .line 24
    .line 25
    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->moodStickerView:Lcom/narvii/widget/EmojioneView;

    .line 26
    .line 27
    .line 28
    const p2, 0x7f0a0e08

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    check-cast p2, Landroid/widget/TextView;

    .line 35
    .line 36
    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->subTitle:Landroid/widget/TextView;

    .line 37
    .line 38
    .line 39
    const p2, 0x7f0a010a

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object p2

    .line 44
    .line 45
    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->aminoPlus:Landroid/view/View;

    .line 46
    .line 47
    .line 48
    const p2, 0x7f0a09d3

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object p2

    .line 53
    .line 54
    check-cast p2, Landroid/widget/TextView;

    .line 55
    .line 56
    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->name:Landroid/widget/TextView;

    .line 57
    .line 58
    .line 59
    const p2, 0x7f0a0343

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object p2

    .line 64
    .line 65
    check-cast p2, Lcom/narvii/monetization/sticker/widget/StickerImageView;

    .line 66
    .line 67
    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->collectionIcon:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    .line 68
    .line 69
    .line 70
    const p2, 0x7f0a0344

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->collectionLayout:Landroid/view/View;

    .line 77
    .line 78
    .line 79
    const p2, 0x7f0a0dc9

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    move-result-object p1

    .line 84
    move-object v3, p1

    .line 85
    .line 86
    check-cast v3, Lcom/narvii/monetization/StoreItemStatusView;

    .line 87
    .line 88
    iput-object v3, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 89
    .line 90
    new-instance p1, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment$1;

    .line 91
    const/4 v4, 0x0

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->ignoreGlobalScope()Z

    .line 95
    move-result v5

    .line 96
    move-object v0, p1

    .line 97
    move-object v1, p0

    .line 98
    move-object v2, p0

    .line 99
    .line 100
    .line 101
    invoke-direct/range {v0 .. v5}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment$1;-><init>(Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;ZZ)V

    .line 102
    .line 103
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->stickerCollectionOwnStatusController:Lcom/narvii/monetization/StickerCollectionOwnStatusController;

    .line 104
    .line 105
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->sticker:Lcom/narvii/model/Sticker;

    .line 106
    .line 107
    if-eqz p1, :cond_0

    .line 108
    .line 109
    iget-object p2, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->name:Landroid/widget/TextView;

    .line 110
    .line 111
    iget-object p1, p1, Lcom/narvii/model/Sticker;->name:Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->isLocalMood()Z

    .line 118
    move-result p1

    .line 119
    const/4 p2, 0x0

    .line 120
    .line 121
    const/16 v0, 0x8

    .line 122
    .line 123
    if-eqz p1, :cond_1

    .line 124
    .line 125
    new-instance p1, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 129
    move-result-object v1

    .line 130
    .line 131
    .line 132
    invoke-direct {p1, v1}, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;-><init>(Landroid/content/Context;)V

    .line 133
    .line 134
    .line 135
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 136
    .line 137
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->chatStickerView:Lcom/narvii/widget/ChatStickerView;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 141
    .line 142
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->moodStickerView:Lcom/narvii/widget/EmojioneView;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 146
    .line 147
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->sticker:Lcom/narvii/model/Sticker;

    .line 148
    .line 149
    iget-object p1, p1, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    .line 150
    .line 151
    const/16 p2, 0xf

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 155
    move-result-object p1

    .line 156
    .line 157
    iget-object p2, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->moodStickerView:Lcom/narvii/widget/EmojioneView;

    .line 158
    .line 159
    new-instance v0, Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    invoke-static {p1}, Lcom/narvii/util/StringUtils;->hex2bytes(Ljava/lang/String;)[B

    .line 163
    move-result-object p1

    .line 164
    .line 165
    .line 166
    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p2, v0}, Lcom/narvii/widget/EmojioneView;->setEmoji(Ljava/lang/String;)V

    .line 170
    goto :goto_2

    .line 171
    .line 172
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->sticker:Lcom/narvii/model/Sticker;

    .line 173
    const/4 v1, 0x0

    .line 174
    .line 175
    if-eqz p1, :cond_2

    .line 176
    .line 177
    iget-object v2, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 178
    goto :goto_0

    .line 179
    :cond_2
    move-object v2, v1

    .line 180
    .line 181
    :goto_0
    iget-object v3, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->chatStickerView:Lcom/narvii/widget/ChatStickerView;

    .line 182
    .line 183
    if-nez p1, :cond_3

    .line 184
    goto :goto_1

    .line 185
    .line 186
    :cond_3
    iget-object v1, p1, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    :goto_1
    invoke-virtual {v3, v1, v2, p2}, Lcom/narvii/widget/ChatStickerView;->setStickerImage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 190
    .line 191
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->chatStickerView:Lcom/narvii/widget/ChatStickerView;

    .line 192
    .line 193
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->sticker:Lcom/narvii/model/Sticker;

    .line 194
    .line 195
    if-nez v1, :cond_4

    .line 196
    move p2, v0

    .line 197
    .line 198
    .line 199
    :cond_4
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 200
    .line 201
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->moodStickerView:Lcom/narvii/widget/EmojioneView;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 205
    .line 206
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->sticker:Lcom/narvii/model/Sticker;

    .line 207
    .line 208
    if-eqz p1, :cond_5

    .line 209
    .line 210
    iget-object p1, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 211
    .line 212
    if-eqz p1, :cond_5

    .line 213
    .line 214
    .line 215
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->getStickerCollectionInfo(Ljava/lang/String;)V

    .line 216
    :cond_5
    :goto_2
    return-void
.end method

.method protected useSticker()V
    .locals 0

    return-void
.end method
