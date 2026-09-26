.class public abstract Lcom/narvii/post/DraftPostActivity;
.super Lcom/narvii/post/BasePostActivity;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/post/BasePostActivity;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/post/DraftPostActivity$4;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/post/DraftPostActivity$4;-><init>(Lcom/narvii/post/DraftPostActivity;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/post/DraftPostActivity;->autoSaveDraft:Ljava/lang/Runnable;

    .line 11
    return-void
.end method

.method private deleteDraft(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Lcom/narvii/post/DraftManager;->deleteDraft(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/narvii/post/DraftPostActivity;->onDraftDeleted(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method private deleteReusableDrafts(Lcom/fasterxml/jackson/databind/node/ObjectNode;)I
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/post/DraftManager;->list()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    .line 14
    :goto_0
    if-ge v1, v0, :cond_3

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->size()I

    .line 20
    move-result v3

    .line 21
    .line 22
    if-nez v3, :cond_0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    move-object v3, p1

    .line 25
    goto :goto_2

    .line 26
    :cond_1
    :goto_1
    const/4 v3, 0x0

    .line 27
    .line 28
    .line 29
    :goto_2
    invoke-virtual {p0, v3}, Lcom/narvii/post/DraftPostActivity;->getReusableDraft(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/post/DraftInfo;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    if-nez v3, :cond_2

    .line 33
    goto :goto_3

    .line 34
    .line 35
    :cond_2
    iget-object v3, v3, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, v3}, Lcom/narvii/post/DraftPostActivity;->deleteDraft(Ljava/lang/String;)V

    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    add-int/lit8 v1, v1, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_3
    :goto_3
    return v2
.end method

.method private synthetic lambda$showFansOnlySwitchDialog$2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    const/4 p1, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/post/DraftPostActivity;->fanOnlyStatusChanged(Z)V

    .line 9
    return-void
.end method

.method private synthetic lambda$updateInfluencerView$0(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/post/DraftPostActivity;->showFansOnlySwitchDialog()V

    .line 4
    return-void
.end method

.method private synthetic lambda$updateInfluencerView$1(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->clickFansOnly()V

    .line 4
    return-void
.end method

.method private showFansOnlySwitchDialog()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/influencer/FansOnlyPost;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    check-cast v0, Lcom/narvii/influencer/FansOnlyPost;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Lcom/narvii/influencer/FansOnlyPost;->isFansOnly()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    new-instance v1, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    const v2, 0x7f0d0187

    .line 26
    const/4 v3, 0x0

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    move v4, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move v4, v3

    .line 32
    .line 33
    .line 34
    :goto_0
    const v5, 0x7f120736

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v5, v3, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(III)V

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    move v2, v3

    .line 41
    .line 42
    .line 43
    :cond_2
    const v0, 0x7f1207b9

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v0, v3, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(III)V

    .line 47
    .line 48
    new-instance v0, Lcom/narvii/post/b;

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, p0}, Lcom/narvii/post/b;-><init>(Lcom/narvii/post/DraftPostActivity;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 58
    return-void
.end method

.method public static synthetic u(Lcom/narvii/post/DraftPostActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/post/DraftPostActivity;->lambda$updateInfluencerView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v(Lcom/narvii/post/DraftPostActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/post/DraftPostActivity;->lambda$showFansOnlySwitchDialog$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic w(Lcom/narvii/post/DraftPostActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/post/DraftPostActivity;->lambda$updateInfluencerView$1(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic x(Lcom/narvii/post/DraftPostActivity;Lcom/fasterxml/jackson/databind/node/ObjectNode;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/post/DraftPostActivity;->deleteReusableDrafts(Lcom/fasterxml/jackson/databind/node/ObjectNode;)I

    move-result p0

    return p0
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/influencer/FansOnlyPost;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    check-cast v0, Lcom/narvii/influencer/FansOnlyPost;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Lcom/narvii/influencer/FansOnlyPost;->isFansOnly()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    xor-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/narvii/post/DraftPostActivity;->fanOnlyStatusChanged(Z)V

    .line 19
    return-void
.end method

.method public abstract draftType()Ljava/lang/String;
.end method

.method protected fanOnlyStatusChanged(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 3
    .line 4
    check-cast v0, Lcom/narvii/influencer/FansOnlyPost;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/narvii/influencer/FansOnlyPost;->setFansOnly(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->updateInfluencerView()V

    .line 11
    return-void
.end method

.method public finish()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->finish()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/post/DraftPostActivity;->isPosted:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/narvii/post/DraftPostActivity;->deleteDraft(Ljava/lang/String;)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v0}, Lcom/narvii/post/DraftPostActivity;->deleteReusableDrafts(Lcom/fasterxml/jackson/databind/node/ObjectNode;)I

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_0
    const-string v0, "draftId"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    if-nez v0, :cond_3

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->saveUnpostedDraftInFinish()Z

    .line 36
    move-result v0

    .line 37
    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->savePost()Lcom/narvii/post/PostObject;

    .line 42
    move-result-object v0

    .line 43
    const/4 v1, 0x1

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-interface {v0}, Lcom/narvii/post/PostObject;->isEmpty()Z

    .line 49
    move-result v2

    .line 50
    .line 51
    if-eqz v2, :cond_1

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_1
    const-string v2, "post"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->postClazz()Ljava/lang/Class;

    .line 62
    move-result-object v3

    .line 63
    .line 64
    .line 65
    invoke-static {v2, v3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    check-cast v2, Lcom/narvii/post/PostObject;

    .line 69
    .line 70
    if-eqz v2, :cond_3

    .line 71
    .line 72
    .line 73
    invoke-interface {v0, v2}, Lcom/narvii/post/PostObject;->isSame(Lcom/narvii/post/PostObject;)Z

    .line 74
    move-result v0

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, v0}, Lcom/narvii/post/DraftPostActivity;->deleteDraft(Ljava/lang/String;)V

    .line 82
    .line 83
    iput-boolean v1, p0, Lcom/narvii/post/BasePostActivity;->discardDraft:Z

    .line 84
    goto :goto_1

    .line 85
    .line 86
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, v0}, Lcom/narvii/post/DraftPostActivity;->deleteDraft(Ljava/lang/String;)V

    .line 90
    .line 91
    iput-boolean v1, p0, Lcom/narvii/post/BasePostActivity;->discardDraft:Z

    .line 92
    :cond_3
    :goto_1
    return-void
.end method

.method protected getInfluencerLockLayout()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getReusableDraft(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/post/DraftInfo;
    .locals 4

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-lez v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/post/DraftManager;->list()Ljava/util/List;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    check-cast v1, Lcom/narvii/post/DraftInfo;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->draftType()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    iget-object v3, v1, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v2

    .line 45
    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    iget-object v2, v1, Lcom/narvii/post/DraftInfo;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 49
    .line 50
    .line 51
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    .line 55
    invoke-static {v2, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    move-result v2

    .line 57
    .line 58
    if-eqz v2, :cond_0

    .line 59
    return-object v1

    .line 60
    :cond_1
    const/4 p1, 0x0

    .line 61
    return-object p1
.end method

.method protected isMeInfluencer()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->accountService:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/model/User;->isInfluencer()Z

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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "draft"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/post/DraftManager;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 14
    .line 15
    const-string v0, "account"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/post/DraftPostActivity;->accountService:Lcom/narvii/account/AccountService;

    .line 24
    .line 25
    const-string v0, "post"

    .line 26
    .line 27
    const-string v1, "draftId"

    .line 28
    .line 29
    if-nez p1, :cond_3

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    iput-object p1, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 36
    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->postClazz()Ljava/lang/Class;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    check-cast p1, Lcom/narvii/post/PostObject;

    .line 52
    .line 53
    iput-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 54
    goto :goto_1

    .line 55
    .line 56
    :cond_0
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Lcom/narvii/post/DraftManager;->getInfo(Ljava/lang/String;)Lcom/narvii/post/DraftInfo;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    iget-object p1, p1, Lcom/narvii/post/DraftInfo;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 65
    .line 66
    if-nez p1, :cond_2

    .line 67
    .line 68
    .line 69
    :cond_1
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    :cond_2
    iput-object p1, p0, Lcom/narvii/post/DraftPostActivity;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 73
    .line 74
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->postClazz()Ljava/lang/Class;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0, v1}, Lcom/narvii/post/DraftManager;->readPost(Ljava/lang/String;Ljava/lang/Class;)Lcom/narvii/post/PostObject;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    iput-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 87
    goto :goto_1

    .line 88
    .line 89
    .line 90
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object v1

    .line 92
    .line 93
    iput-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 94
    .line 95
    const-string v1, "params"

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    move-result-object v1

    .line 100
    .line 101
    .line 102
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    iput-object v1, p0, Lcom/narvii/post/DraftPostActivity;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 106
    .line 107
    const-string v1, "_containsPost"

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 111
    move-result v1

    .line 112
    .line 113
    if-eqz v1, :cond_4

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    move-result-object v0

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->postClazz()Ljava/lang/Class;

    .line 121
    move-result-object v1

    .line 122
    .line 123
    .line 124
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    check-cast v0, Lcom/narvii/post/PostObject;

    .line 128
    .line 129
    iput-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 130
    goto :goto_0

    .line 131
    .line 132
    :cond_4
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 133
    .line 134
    if-eqz v0, :cond_5

    .line 135
    .line 136
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->postClazz()Ljava/lang/Class;

    .line 140
    move-result-object v2

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v0, v2}, Lcom/narvii/post/DraftManager;->readPost(Ljava/lang/String;Ljava/lang/Class;)Lcom/narvii/post/PostObject;

    .line 144
    move-result-object v0

    .line 145
    .line 146
    iput-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 147
    .line 148
    :cond_5
    :goto_0
    const-string v0, "promptDraftSaved"

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 152
    move-result p1

    .line 153
    .line 154
    iput-boolean p1, p0, Lcom/narvii/post/DraftPostActivity;->promptDraftSaved:Z

    .line 155
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onPause()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->saveDraft()V

    .line 7
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/narvii/post/DraftPostActivity;->isPosted:Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->finish()V

    .line 14
    return-void

    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 17
    .line 18
    if-nez v1, :cond_4

    .line 19
    const/4 p1, 0x0

    .line 20
    .line 21
    iput-boolean p1, p0, Lcom/narvii/post/DraftPostActivity;->fromDraft:Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->buildDraftParams()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/narvii/post/DraftPostActivity;->getReusableDraft(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/post/DraftInfo;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 37
    move-result-object p1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move-object p1, v0

    .line 40
    .line 41
    :goto_0
    iput-object p1, p0, Lcom/narvii/post/DraftPostActivity;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 42
    .line 43
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->draftType()Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v1, v0, v2}, Lcom/narvii/post/DraftManager;->createDraft(Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/narvii/post/PostObject;)Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    iput-object p1, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 56
    .line 57
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1}, Lcom/narvii/post/DraftPostActivity;->updateView(Lcom/narvii/post/PostObject;)V

    .line 61
    .line 62
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lcom/narvii/post/DraftPostActivity;->onPostLoaded(Lcom/narvii/post/PostObject;)V

    .line 66
    goto :goto_1

    .line 67
    .line 68
    :cond_2
    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 69
    .line 70
    .line 71
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    move-result-object v2

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->postClazz()Ljava/lang/Class;

    .line 76
    move-result-object v3

    .line 77
    .line 78
    .line 79
    invoke-static {v2, v3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 80
    move-result-object v2

    .line 81
    .line 82
    check-cast v2, Lcom/narvii/post/PostObject;

    .line 83
    .line 84
    iget-object v3, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 85
    .line 86
    iget-object v4, v1, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->postClazz()Ljava/lang/Class;

    .line 90
    move-result-object v5

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v4, v5}, Lcom/narvii/post/DraftManager;->readPost(Ljava/lang/String;Ljava/lang/Class;)Lcom/narvii/post/PostObject;

    .line 94
    move-result-object v3

    .line 95
    .line 96
    iget-object v4, v1, Lcom/narvii/post/DraftInfo;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 97
    .line 98
    if-nez v4, :cond_3

    .line 99
    .line 100
    .line 101
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 102
    move-result-object v4

    .line 103
    .line 104
    :cond_3
    iput-object v4, p0, Lcom/narvii/post/DraftPostActivity;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v3}, Lcom/narvii/post/DraftPostActivity;->updateView(Lcom/narvii/post/PostObject;)V

    .line 108
    .line 109
    new-instance v4, Landroid/app/AlertDialog$Builder;

    .line 110
    .line 111
    .line 112
    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 113
    .line 114
    .line 115
    const v5, 0x7f120ebf

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 119
    .line 120
    new-instance v5, Lcom/narvii/post/DraftPostActivity$1;

    .line 121
    .line 122
    .line 123
    invoke-direct {v5, p0, v1, v3}, Lcom/narvii/post/DraftPostActivity$1;-><init>(Lcom/narvii/post/DraftPostActivity;Lcom/narvii/post/DraftInfo;Lcom/narvii/post/PostObject;)V

    .line 124
    .line 125
    .line 126
    const v1, 0x7f120ebe

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4, v1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 130
    .line 131
    new-instance v1, Lcom/narvii/post/DraftPostActivity$2;

    .line 132
    .line 133
    .line 134
    invoke-direct {v1, p0, v0, v2}, Lcom/narvii/post/DraftPostActivity$2;-><init>(Lcom/narvii/post/DraftPostActivity;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/narvii/post/PostObject;)V

    .line 135
    .line 136
    .line 137
    const v0, 0x7f120ebd

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 141
    .line 142
    .line 143
    const v0, 0x7f1201e2

    .line 144
    .line 145
    sget-object v1, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 149
    .line 150
    new-instance v0, Lcom/narvii/post/DraftPostActivity$3;

    .line 151
    .line 152
    .line 153
    invoke-direct {v0, p0}, Lcom/narvii/post/DraftPostActivity$3;-><init>(Lcom/narvii/post/DraftPostActivity;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 160
    move-result-object v0

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 164
    goto :goto_1

    .line 165
    .line 166
    :cond_4
    iput-boolean v0, p0, Lcom/narvii/post/DraftPostActivity;->fromDraft:Z

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0, p1}, Lcom/narvii/post/DraftPostActivity;->updateView(Lcom/narvii/post/PostObject;)V

    .line 170
    .line 171
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, p1}, Lcom/narvii/post/DraftPostActivity;->onPostLoaded(Lcom/narvii/post/PostObject;)V

    .line 175
    .line 176
    .line 177
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->updateInfluencerView()V

    .line 178
    return-void
.end method

.method public onPostFail(Lcom/narvii/post/PostHelper;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/post/BasePostActivity;->onPostFail(Lcom/narvii/post/PostHelper;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/post/BasePostActivity;->onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/post/DraftPostActivity;->isPosted:Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->finish()V

    .line 10
    return-void
.end method

.method protected onPostLoaded(Lcom/narvii/post/PostObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->autoSaveDraftInterval()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->autoSaveDraft:Ljava/lang/Runnable;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->autoSaveDraft:Ljava/lang/Runnable;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->autoSaveDraftInterval()I

    .line 19
    move-result v1

    .line 20
    int-to-long v1, v1

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 24
    .line 25
    :cond_0
    instance-of v0, p1, Lcom/narvii/influencer/FansOnlyPost;

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->isEdit()Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    iget-boolean v0, p0, Lcom/narvii/post/DraftPostActivity;->fromDraft:Z

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_1
    check-cast p1, Lcom/narvii/influencer/FansOnlyPost;

    .line 41
    const/4 v0, 0x0

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, v0}, Lcom/narvii/influencer/FansOnlyPost;->setFansOnly(Z)V

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_2
    :goto_0
    check-cast p1, Lcom/narvii/influencer/FansOnlyPost;

    .line 48
    .line 49
    .line 50
    invoke-interface {p1}, Lcom/narvii/influencer/FansOnlyPost;->isFansOnly()Z

    .line 51
    move-result p1

    .line 52
    .line 53
    iput-boolean p1, p0, Lcom/narvii/post/DraftPostActivity;->isFansOnlyBefore:Z

    .line 54
    :cond_3
    :goto_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "draftId"

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    :goto_0
    const-string v1, "params"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 37
    move-result v1

    .line 38
    .line 39
    .line 40
    const v2, 0x249f0

    .line 41
    .line 42
    if-ge v1, v2, :cond_1

    .line 43
    .line 44
    const-string v1, "post"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    const-string v0, "_containsPost"

    .line 50
    const/4 v1, 0x1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    .line 55
    :cond_1
    const-string v0, "promptDraftSaved"

    .line 56
    .line 57
    iget-boolean v1, p0, Lcom/narvii/post/DraftPostActivity;->promptDraftSaved:Z

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 61
    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onStart()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->autoSaveDraftInterval()I

    .line 11
    move-result v0

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->autoSaveDraft:Ljava/lang/Runnable;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->autoSaveDraft:Ljava/lang/Runnable;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->autoSaveDraftInterval()I

    .line 26
    move-result v1

    .line 27
    int-to-long v1, v1

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 44
    move-result v0

    .line 45
    .line 46
    if-nez v0, :cond_1

    .line 47
    const/4 v0, 0x0

    .line 48
    .line 49
    iput-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->finish()V

    .line 53
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onStop()V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->autoSaveDraft:Ljava/lang/Runnable;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    return-void
.end method

.method protected saveDraft()V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/post/DraftPostActivity;->isPosted:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/narvii/post/BasePostActivity;->discardDraft:Z

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->savePost()Lcom/narvii/post/PostObject;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0, v2}, Lcom/narvii/post/DraftManager;->savePost(Ljava/lang/String;Lcom/narvii/post/PostObject;)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    iget-boolean v1, p0, Lcom/narvii/post/DraftPostActivity;->promptDraftSaved:Z

    .line 25
    or-int/2addr v1, v0

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/narvii/post/DraftPostActivity;->promptDraftSaved:Z

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/narvii/post/DraftPostActivity;->onDraftSavedSuccess(Lcom/narvii/post/PostObject;)V

    .line 35
    .line 36
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/post/DraftPostActivity;->promptDraftSaved:Z

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 42
    move-result v0

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    const v1, 0x7f120ec0

    .line 52
    const/4 v2, 0x0

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 60
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->getInfluencerLockLayout()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 10
    .line 11
    instance-of v1, v1, Lcom/narvii/influencer/FansOnlyPost;

    .line 12
    .line 13
    const/16 v2, 0x8

    .line 14
    .line 15
    if-eqz v1, :cond_5

    .line 16
    .line 17
    iget-boolean v1, p0, Lcom/narvii/post/DraftPostActivity;->isFansOnlyBefore:Z

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->isMeInfluencer()Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    goto :goto_1

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->showFansOnlyLabel()Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    return-void

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->shouldShowFansOnlySwitchDialog()Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    new-instance v1, Lcom/narvii/post/c;

    .line 45
    .line 46
    .line 47
    invoke-direct {v1, p0}, Lcom/narvii/post/c;-><init>(Lcom/narvii/post/DraftPostActivity;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_3
    new-instance v1, Lcom/narvii/post/d;

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, p0}, Lcom/narvii/post/d;-><init>(Lcom/narvii/post/DraftPostActivity;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    :goto_0
    const/4 v1, 0x0

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    const v1, 0x7f0a071f

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    instance-of v1, v0, Lcom/narvii/influencer/InfluencerPostIndicator;

    .line 73
    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    check-cast v0, Lcom/narvii/influencer/InfluencerPostIndicator;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 79
    .line 80
    check-cast v1, Lcom/narvii/influencer/FansOnlyPost;

    .line 81
    .line 82
    .line 83
    invoke-interface {v1}, Lcom/narvii/influencer/FansOnlyPost;->isFansOnly()Z

    .line 84
    move-result v1

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Lcom/narvii/influencer/InfluencerPostIndicator;->setIsFansOnly(Z)V

    .line 88
    :cond_4
    return-void

    .line 89
    .line 90
    .line 91
    :cond_5
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    return-void
.end method

.method protected updateView(Lcom/narvii/post/PostObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->updateView(Lcom/narvii/post/PostObject;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->updateInfluencerView()V

    .line 7
    return-void
.end method
