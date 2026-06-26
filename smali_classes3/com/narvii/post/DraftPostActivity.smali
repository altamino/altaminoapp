.class public abstract Lcom/narvii/post/DraftPostActivity;
.super Lcom/narvii/post/BasePostActivity;
.source "DraftPostActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/narvii/post/PostObject;",
        ">",
        "Lcom/narvii/post/BasePostActivity<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field private final autoSaveDraft:Ljava/lang/Runnable;

.field protected draftId:Ljava/lang/String;

.field protected draftManager:Lcom/narvii/post/DraftManager;

.field private fromDraft:Z

.field private isFansOnlyBefore:Z

.field protected isPosted:Z

.field protected params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field protected post:Lcom/narvii/post/PostObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private promptDraftSaved:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/narvii/post/BasePostActivity;-><init>()V

    .line 309
    new-instance v0, Lcom/narvii/post/DraftPostActivity$4;

    invoke-direct {v0, p0}, Lcom/narvii/post/DraftPostActivity$4;-><init>(Lcom/narvii/post/DraftPostActivity;)V

    iput-object v0, p0, Lcom/narvii/post/DraftPostActivity;->autoSaveDraft:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/post/DraftPostActivity;Lcom/fasterxml/jackson/databind/node/ObjectNode;)I
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/narvii/post/DraftPostActivity;->deleteReusableDrafts(Lcom/fasterxml/jackson/databind/node/ObjectNode;)I

    move-result p0

    return p0
.end method

.method private deleteDraft(Ljava/lang/String;)V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    if-nez v0, :cond_0

    return-void

    .line 239
    :cond_0
    invoke-virtual {v0, p1}, Lcom/narvii/post/DraftManager;->deleteDraft(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0, p1}, Lcom/narvii/post/DraftPostActivity;->onDraftDeleted(Ljava/lang/String;)V

    return-void
.end method

.method private deleteReusableDrafts(Lcom/fasterxml/jackson/databind/node/ObjectNode;)I
    .locals 4

    .line 245
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    invoke-virtual {v0}, Lcom/narvii/post/DraftManager;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    if-eqz p1, :cond_1

    .line 248
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    move-object v3, p1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p0, v3}, Lcom/narvii/post/DraftPostActivity;->getReusableDraft(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/post/DraftInfo;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_3

    .line 252
    :cond_2
    iget-object v3, v3, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/narvii/post/DraftPostActivity;->deleteDraft(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    return v2
.end method

.method private showFansOnlySwitchDialog()V
    .locals 6

    .line 379
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    instance-of v1, v0, Lcom/narvii/influencer/FansOnlyPost;

    if-nez v1, :cond_0

    return-void

    .line 382
    :cond_0
    check-cast v0, Lcom/narvii/influencer/FansOnlyPost;

    invoke-interface {v0}, Lcom/narvii/influencer/FansOnlyPost;->isFansOnly()Z

    move-result v0

    .line 383
    new-instance v1, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0688

    const v3, 0x7f0b0169

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    const v5, 0x7f0b0169

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 384
    :goto_0
    invoke-virtual {v1, v2, v4, v5}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(III)V

    const v2, 0x7f0f0714

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    .line 385
    :cond_2
    invoke-virtual {v1, v2, v4, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(III)V

    .line 386
    new-instance v0, Lcom/narvii/post/-$$Lambda$DraftPostActivity$MDAHYz33qIKL4ROA4N2GY2mMUPA;

    invoke-direct {v0, p0}, Lcom/narvii/post/-$$Lambda$DraftPostActivity$MDAHYz33qIKL4ROA4N2GY2mMUPA;-><init>(Lcom/narvii/post/DraftPostActivity;)V

    invoke-virtual {v1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 390
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void
.end method


# virtual methods
.method protected autoSaveDraftInterval()I
    .locals 1

    const/16 v0, 0x2710

    return v0
.end method

.method public abstract buildDraftParams()Lcom/fasterxml/jackson/databind/node/ObjectNode;
.end method

.method protected clickFansOnly()V
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    instance-of v1, v0, Lcom/narvii/influencer/FansOnlyPost;

    if-nez v1, :cond_0

    return-void

    .line 374
    :cond_0
    check-cast v0, Lcom/narvii/influencer/FansOnlyPost;

    invoke-interface {v0}, Lcom/narvii/influencer/FansOnlyPost;->isFansOnly()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 375
    invoke-virtual {p0, v0}, Lcom/narvii/post/DraftPostActivity;->fanOnlyStatusChanged(Z)V

    return-void
.end method

.method public abstract draftType()Ljava/lang/String;
.end method

.method protected fanOnlyStatusChanged(Z)V
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v0, Lcom/narvii/influencer/FansOnlyPost;

    invoke-interface {v0, p1}, Lcom/narvii/influencer/FansOnlyPost;->setFansOnly(Z)V

    .line 395
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->updateInfluencerView()V

    return-void
.end method

.method public finish()V
    .locals 4

    .line 203
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->finish()V

    .line 204
    iget-boolean v0, p0, Lcom/narvii/post/DraftPostActivity;->isPosted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 205
    invoke-direct {p0, v0}, Lcom/narvii/post/DraftPostActivity;->deleteDraft(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-direct {p0, v0}, Lcom/narvii/post/DraftPostActivity;->deleteReusableDrafts(Lcom/fasterxml/jackson/databind/node/ObjectNode;)I

    goto :goto_2

    :cond_0
    const-string v0, "draftId"

    .line 207
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 208
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->saveUnpostedDraftInFinish()Z

    move-result v0

    if-nez v0, :cond_4

    .line 209
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->savePost()Lcom/narvii/post/PostObject;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 211
    invoke-interface {v0}, Lcom/narvii/post/PostObject;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    .line 213
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/narvii/post/DraftPostActivity;->deleteDraft(Ljava/lang/String;)V

    .line 214
    iput-boolean v1, p0, Lcom/narvii/post/BasePostActivity;->discardDraft:Z

    goto :goto_2

    :cond_3
    const-string v2, "post"

    .line 216
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->postClazz()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/post/PostObject;

    if-eqz v2, :cond_4

    .line 217
    invoke-interface {v0, v2}, Lcom/narvii/post/PostObject;->isSame(Lcom/narvii/post/PostObject;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 218
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/narvii/post/DraftPostActivity;->deleteDraft(Ljava/lang/String;)V

    .line 219
    iput-boolean v1, p0, Lcom/narvii/post/BasePostActivity;->discardDraft:Z

    :cond_4
    :goto_2
    return-void
.end method

.method protected getInfluencerLockLayout()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getReusableDraft(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/post/DraftInfo;
    .locals 4

    if-eqz p1, :cond_1

    .line 263
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 264
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object p1

    .line 265
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    invoke-virtual {v0}, Lcom/narvii/post/DraftManager;->list()Ljava/util/List;

    move-result-object v0

    .line 266
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/post/DraftInfo;

    .line 267
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->draftType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/narvii/post/DraftInfo;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected isMeInfluencer()Z
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {v0}, Lcom/narvii/model/User;->isInfluencer()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$showFansOnlySwitchDialog$2$DraftPostActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 388
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/post/DraftPostActivity;->fanOnlyStatusChanged(Z)V

    return-void
.end method

.method public synthetic lambda$updateInfluencerView$0$DraftPostActivity(Landroid/view/View;)V
    .locals 0

    .line 354
    invoke-direct {p0}, Lcom/narvii/post/DraftPostActivity;->showFansOnlySwitchDialog()V

    return-void
.end method

.method public synthetic lambda$updateInfluencerView$1$DraftPostActivity(Landroid/view/View;)V
    .locals 0

    .line 356
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->clickFansOnly()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 62
    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "draft"

    .line 63
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/post/DraftManager;

    iput-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    const-string v0, "account"

    .line 64
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/post/DraftPostActivity;->accountService:Lcom/narvii/account/AccountService;

    const-string v0, "post"

    const-string v1, "draftId"

    if-nez p1, :cond_3

    .line 67
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 68
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 69
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->postClazz()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/post/PostObject;

    iput-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    goto :goto_1

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    invoke-virtual {v0, p1}, Lcom/narvii/post/DraftManager;->getInfo(Ljava/lang/String;)Lcom/narvii/post/DraftInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 72
    iget-object p1, p1, Lcom/narvii/post/DraftInfo;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez p1, :cond_2

    :cond_1
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p1

    :cond_2
    iput-object p1, p0, Lcom/narvii/post/DraftPostActivity;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 73
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->postClazz()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/post/DraftManager;->readPost(Ljava/lang/String;Ljava/lang/Class;)Lcom/narvii/post/PostObject;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    goto :goto_1

    .line 76
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    const-string v1, "params"

    .line 77
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/post/DraftPostActivity;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v1, "_containsPost"

    .line 79
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 80
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->postClazz()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/post/PostObject;

    iput-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    goto :goto_0

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 82
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->postClazz()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/narvii/post/DraftManager;->readPost(Ljava/lang/String;Ljava/lang/Class;)Lcom/narvii/post/PostObject;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    :cond_5
    :goto_0
    const-string v0, "promptDraftSaved"

    .line 85
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/post/DraftPostActivity;->promptDraftSaved:Z

    :goto_1
    return-void
.end method

.method protected onDraftDeleted(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onDraftSavedSuccess(Lcom/narvii/post/PostObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 177
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onPause()V

    .line 178
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->saveDraft()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 91
    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 93
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 94
    iput-boolean v0, p0, Lcom/narvii/post/DraftPostActivity;->isPosted:Z

    .line 95
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->finish()V

    return-void

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    if-nez v1, :cond_4

    const/4 p1, 0x0

    .line 100
    iput-boolean p1, p0, Lcom/narvii/post/DraftPostActivity;->fromDraft:Z

    .line 101
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->buildDraftParams()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 102
    invoke-virtual {p0, v0}, Lcom/narvii/post/DraftPostActivity;->getReusableDraft(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/post/DraftInfo;

    move-result-object v1

    if-nez v1, :cond_2

    if-nez v0, :cond_1

    .line 104
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/narvii/post/DraftPostActivity;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 105
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->draftType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    invoke-virtual {p1, v1, v0, v2}, Lcom/narvii/post/DraftManager;->createDraft(Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/narvii/post/PostObject;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 106
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    invoke-virtual {p0, p1}, Lcom/narvii/post/DraftPostActivity;->updateView(Lcom/narvii/post/PostObject;)V

    .line 107
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    invoke-virtual {p0, p1}, Lcom/narvii/post/DraftPostActivity;->onPostLoaded(Lcom/narvii/post/PostObject;)V

    goto :goto_1

    .line 109
    :cond_2
    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->postClazz()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/post/PostObject;

    .line 110
    iget-object v3, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v4, v1, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->postClazz()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/narvii/post/DraftManager;->readPost(Ljava/lang/String;Ljava/lang/Class;)Lcom/narvii/post/PostObject;

    move-result-object v3

    .line 111
    iget-object v4, v1, Lcom/narvii/post/DraftInfo;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v4, :cond_3

    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v4

    :cond_3
    iput-object v4, p0, Lcom/narvii/post/DraftPostActivity;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 112
    invoke-virtual {p0, v3}, Lcom/narvii/post/DraftPostActivity;->updateView(Lcom/narvii/post/PostObject;)V

    .line 114
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0f0d93

    .line 115
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f0f0d92

    .line 116
    new-instance v6, Lcom/narvii/post/DraftPostActivity$1;

    invoke-direct {v6, p0, v1, v3}, Lcom/narvii/post/DraftPostActivity$1;-><init>(Lcom/narvii/post/DraftPostActivity;Lcom/narvii/post/DraftInfo;Lcom/narvii/post/PostObject;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0f0d91

    .line 127
    new-instance v3, Lcom/narvii/post/DraftPostActivity$2;

    invoke-direct {v3, p0, v0, v2}, Lcom/narvii/post/DraftPostActivity$2;-><init>(Lcom/narvii/post/DraftPostActivity;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/narvii/post/PostObject;)V

    invoke-virtual {v4, v1, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0f0193

    .line 141
    sget-object v1, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 142
    new-instance v0, Lcom/narvii/post/DraftPostActivity$3;

    invoke-direct {v0, p0}, Lcom/narvii/post/DraftPostActivity$3;-><init>(Lcom/narvii/post/DraftPostActivity;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 148
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 149
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_1

    .line 152
    :cond_4
    iput-boolean v0, p0, Lcom/narvii/post/DraftPostActivity;->fromDraft:Z

    .line 153
    invoke-virtual {p0, p1}, Lcom/narvii/post/DraftPostActivity;->updateView(Lcom/narvii/post/PostObject;)V

    .line 154
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    invoke-virtual {p0, p1}, Lcom/narvii/post/DraftPostActivity;->onPostLoaded(Lcom/narvii/post/PostObject;)V

    .line 157
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->updateInfluencerView()V

    return-void
.end method

.method public onPostFail(Lcom/narvii/post/PostHelper;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 336
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/post/BasePostActivity;->onPostFail(Lcom/narvii/post/PostHelper;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 323
    invoke-super {p0, p1, p2}, Lcom/narvii/post/BasePostActivity;->onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V

    const/4 p1, 0x1

    .line 324
    iput-boolean p1, p0, Lcom/narvii/post/DraftPostActivity;->isPosted:Z

    .line 325
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->finish()V

    return-void
.end method

.method protected onPostLoaded(Lcom/narvii/post/PostObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 276
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->autoSaveDraftInterval()I

    move-result v0

    if-lez v0, :cond_0

    .line 277
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->autoSaveDraft:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 278
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->autoSaveDraft:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->autoSaveDraftInterval()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 280
    :cond_0
    instance-of v0, p1, Lcom/narvii/influencer/FansOnlyPost;

    if-eqz v0, :cond_3

    .line 281
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->isEdit()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/narvii/post/DraftPostActivity;->fromDraft:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 284
    :cond_1
    check-cast p1, Lcom/narvii/influencer/FansOnlyPost;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/narvii/influencer/FansOnlyPost;->setFansOnly(Z)V

    goto :goto_1

    .line 282
    :cond_2
    :goto_0
    check-cast p1, Lcom/narvii/influencer/FansOnlyPost;

    invoke-interface {p1}, Lcom/narvii/influencer/FansOnlyPost;->isFansOnly()Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/post/DraftPostActivity;->isFansOnlyBefore:Z

    :cond_3
    :goto_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 162
    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 163
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    const-string v1, "draftId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "params"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0x249f0

    if-ge v1, v2, :cond_1

    const-string v1, "post"

    .line 168
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "_containsPost"

    .line 169
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 172
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/post/DraftPostActivity;->promptDraftSaved:Z

    const-string v1, "promptDraftSaved"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 183
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onStart()V

    .line 184
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->autoSaveDraftInterval()I

    move-result v0

    if-lez v0, :cond_0

    .line 185
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->autoSaveDraft:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 186
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->autoSaveDraft:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->autoSaveDraftInterval()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    invoke-virtual {v1, v0}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 191
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->finish()V

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 197
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onStop()V

    .line 198
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->autoSaveDraft:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected saveDraft()V
    .locals 3

    .line 290
    iget-boolean v0, p0, Lcom/narvii/post/DraftPostActivity;->isPosted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/post/BasePostActivity;->discardDraft:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 291
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->savePost()Lcom/narvii/post/PostObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/narvii/post/DraftManager;->savePost(Ljava/lang/String;Lcom/narvii/post/PostObject;)Z

    move-result v0

    .line 292
    iget-boolean v1, p0, Lcom/narvii/post/DraftPostActivity;->promptDraftSaved:Z

    or-int/2addr v1, v0

    iput-boolean v1, p0, Lcom/narvii/post/DraftPostActivity;->promptDraftSaved:Z

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    invoke-virtual {p0, v0}, Lcom/narvii/post/DraftPostActivity;->onDraftSavedSuccess(Lcom/narvii/post/PostObject;)V

    .line 296
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/post/DraftPostActivity;->promptDraftSaved:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0d94

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    :cond_1
    return-void
.end method

.method protected saveUnpostedDraftInFinish()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected shouldShowFansOnlySwitchDialog()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected showFansOnlyLabel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected updateInfluencerView()V
    .locals 3

    .line 340
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->getInfluencerLockLayout()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 344
    :cond_0
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    instance-of v1, v1, Lcom/narvii/influencer/FansOnlyPost;

    const/16 v2, 0x8

    if-eqz v1, :cond_5

    .line 345
    iget-boolean v1, p0, Lcom/narvii/post/DraftPostActivity;->isFansOnlyBefore:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->isMeInfluencer()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 349
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->showFansOnlyLabel()Z

    move-result v1

    if-nez v1, :cond_2

    .line 350
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 353
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->shouldShowFansOnlySwitchDialog()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 354
    new-instance v1, Lcom/narvii/post/-$$Lambda$DraftPostActivity$VyxBkfL3QVPDLod9gZi6aZlMHMM;

    invoke-direct {v1, p0}, Lcom/narvii/post/-$$Lambda$DraftPostActivity$VyxBkfL3QVPDLod9gZi6aZlMHMM;-><init>(Lcom/narvii/post/DraftPostActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 356
    :cond_3
    new-instance v1, Lcom/narvii/post/-$$Lambda$DraftPostActivity$hwiEt3MwpVP8CYMMIZFtfpHBn4E;

    invoke-direct {v1, p0}, Lcom/narvii/post/-$$Lambda$DraftPostActivity$hwiEt3MwpVP8CYMMIZFtfpHBn4E;-><init>(Lcom/narvii/post/DraftPostActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const/4 v1, 0x0

    .line 358
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f090598

    .line 359
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 360
    instance-of v1, v0, Lcom/narvii/influencer/InfluencerPostIndicator;

    if-eqz v1, :cond_4

    .line 361
    check-cast v0, Lcom/narvii/influencer/InfluencerPostIndicator;

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v1, Lcom/narvii/influencer/FansOnlyPost;

    invoke-interface {v1}, Lcom/narvii/influencer/FansOnlyPost;->isFansOnly()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/influencer/InfluencerPostIndicator;->setIsFansOnly(Z)V

    :cond_4
    return-void

    .line 346
    :cond_5
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected updateView(Lcom/narvii/post/PostObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 330
    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->updateView(Lcom/narvii/post/PostObject;)V

    .line 331
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->updateInfluencerView()V

    return-void
.end method
