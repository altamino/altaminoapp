.class public Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;
.super Lcom/narvii/app/NVFragment;
.source "StickerBaseDetailFragment.java"


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

    .line 48
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    return-void
.end method

.method private getStickerCollectionInfo(Ljava/lang/String;)V
    .locals 4

    const-string v0, "api"

    .line 228
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 229
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sticker-collection/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "includeStickers"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 230
    new-instance v1, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment$2;

    const-class v2, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    invoke-direct {v1, p0, v2}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment$2;-><init>(Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;Ljava/lang/Class;)V

    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private isLocalMood()Z
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->sticker:Lcom/narvii/model/Sticker;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    const-string v1, "ndcsticker://e/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 4

    .line 240
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 241
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 242
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isUserCreated()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-virtual {v1, p1}, Lcom/narvii/monetization/sticker/StickerHelper;->isCreatedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isShared()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-eqz p1, :cond_4

    .line 243
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isLocalMood()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isNormal()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_4

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 244
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->collectionLayout:Landroid/view/View;

    const-string v3, "hideCollectionInfo"

    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v0, 0x8

    :cond_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->collectionLayout:Landroid/view/View;

    new-instance v1, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment$3;-><init>(Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->collectionIcon:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/monetization/sticker/widget/StickerImageView;->setStickerImageUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090aae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 254
    invoke-virtual {v0, p1}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 256
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090a6d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;

    .line 257
    invoke-virtual {v0, p1}, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 259
    instance-of v0, p1, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;

    .line 260
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->subTitle:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 261
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->stickerCollectionOwnStatusController:Lcom/narvii/monetization/StickerCollectionOwnStatusController;

    invoke-virtual {v0, p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    goto :goto_1

    .line 263
    :cond_4
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->collectionLayout:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

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

    .line 215
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->isMyOwned()Z

    move-result v0

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

    .line 71
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    new-instance p1, Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-direct {p1, p0}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    const-string p1, "sticker"

    .line 73
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/Sticker;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Sticker;

    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->sticker:Lcom/narvii/model/Sticker;

    const/4 p1, 0x0

    .line 74
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 75
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 142
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x7f0f06d5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 143
    invoke-interface {p1, v1, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    const v2, 0x7f080369

    .line 144
    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p2

    const/4 v2, 0x2

    .line 145
    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const p2, 0x7f0f0080

    .line 146
    invoke-interface {p1, v1, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const p2, 0x7f0f0348

    .line 147
    invoke-interface {p1, v1, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const p2, 0x7f0f0094

    .line 148
    invoke-interface {p1, v1, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b02ec

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onDeleteOpClicked()V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 185
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 206
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 196
    :sswitch_0
    new-instance p1, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    invoke-direct {p1, p0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 197
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->attachObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    move-result-object p1

    .line 198
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    return v1

    .line 193
    :sswitch_1
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->onDeleteOpClicked()V

    return v1

    .line 201
    :sswitch_2
    new-instance p1, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    invoke-direct {p1, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 202
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->attachObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->build()Lcom/narvii/poweruser/AdvancedOptionDialog;

    move-result-object p1

    .line 203
    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->show()V

    return v1

    .line 187
    :sswitch_3
    new-instance p1, Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-direct {p1, p0}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 188
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->sticker:Lcom/narvii/model/Sticker;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p1, v0}, Lcom/narvii/monetization/sticker/StickerHelper;->saveAsFavorite(Lcom/narvii/model/Sticker;)V

    :cond_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0x7f0f0080 -> :sswitch_3
        0x7f0f0094 -> :sswitch_2
        0x7f0f0348 -> :sswitch_1
        0x7f0f06d5 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7

    .line 153
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 154
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->canBeFlagged()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->summary:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->canBeFlagged()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const-string v3, "account"

    .line 155
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/account/AccountService;

    if-eqz v0, :cond_3

    .line 158
    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 159
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->isMyOwned()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 163
    :goto_1
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/account/AccountService;

    .line 164
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/model/User;->isCurator()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 167
    :goto_2
    iget-object v4, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->sticker:Lcom/narvii/model/Sticker;

    if-nez v4, :cond_5

    goto :goto_3

    .line 169
    :cond_5
    invoke-virtual {v4}, Lcom/narvii/model/Sticker;->isLocalMood()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->sticker:Lcom/narvii/model/Sticker;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 170
    iget-object v4, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v4, :cond_6

    invoke-virtual {v4, v5}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    iget-object v6, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {v4, v6}, Lcom/narvii/monetization/sticker/StickerHelper;->isStickerCollectionValid(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_3

    .line 172
    :cond_6
    iget-object v4, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->summary:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v4, :cond_7

    invoke-virtual {v4, v5}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    iget-object v5, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->summary:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {v4, v5}, Lcom/narvii/monetization/sticker/StickerHelper;->isStickerCollectionValid(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :goto_3
    const v1, 0x7f0f0080

    .line 177
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f0f0348

    .line 178
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->isDeleteOpVisible()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f0f06d5

    .line 179
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0f0094

    .line 180
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 87
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090207

    .line 88
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/ChatStickerView;

    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->chatStickerView:Lcom/narvii/widget/ChatStickerView;

    const p2, 0x7f090722

    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/EmojioneView;

    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->moodStickerView:Lcom/narvii/widget/EmojioneView;

    const p2, 0x7f090b23

    .line 90
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->subTitle:Landroid/widget/TextView;

    const p2, 0x7f0900a2

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->aminoPlus:Landroid/view/View;

    const p2, 0x7f09074b

    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->name:Landroid/widget/TextView;

    const p2, 0x7f09027a

    .line 94
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/monetization/sticker/widget/StickerImageView;

    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->collectionIcon:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    const p2, 0x7f09027b

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->collectionLayout:Landroid/view/View;

    .line 97
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->collectionLayout:Landroid/view/View;

    const p2, 0x7f090ace

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/StoreItemStatusView;

    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 98
    new-instance p1, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment$1;

    iget-object v3, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->ignoreGlobalScope()Z

    move-result v5

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment$1;-><init>(Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;ZZ)V

    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->stickerCollectionOwnStatusController:Lcom/narvii/monetization/StickerCollectionOwnStatusController;

    .line 105
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->sticker:Lcom/narvii/model/Sticker;

    if-eqz p1, :cond_0

    .line 106
    iget-object p2, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->name:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/narvii/model/Sticker;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->isLocalMood()Z

    move-result p1

    const/4 p2, 0x0

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    .line 110
    new-instance p1, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 111
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->chatStickerView:Lcom/narvii/widget/ChatStickerView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 112
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->moodStickerView:Lcom/narvii/widget/EmojioneView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->sticker:Lcom/narvii/model/Sticker;

    iget-object p1, p1, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 114
    iget-object p2, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->moodStickerView:Lcom/narvii/widget/EmojioneView;

    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/narvii/util/StringUtils;->hex2bytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v0}, Lcom/narvii/widget/EmojioneView;->setEmoji(Ljava/lang/String;)V

    goto :goto_2

    .line 117
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->sticker:Lcom/narvii/model/Sticker;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 118
    iget-object p1, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object p1, v1

    .line 120
    :goto_0
    iget-object v2, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->chatStickerView:Lcom/narvii/widget/ChatStickerView;

    iget-object v3, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->sticker:Lcom/narvii/model/Sticker;

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, v3, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v1, p1, p2}, Lcom/narvii/widget/ChatStickerView;->setStickerImage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 121
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->chatStickerView:Lcom/narvii/widget/ChatStickerView;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->sticker:Lcom/narvii/model/Sticker;

    if-nez v1, :cond_4

    const/16 p2, 0x8

    :cond_4
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 122
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->moodStickerView:Lcom/narvii/widget/EmojioneView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->sticker:Lcom/narvii/model/Sticker;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 125
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->getStickerCollectionInfo(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected useSticker()V
    .locals 0

    return-void
.end method
