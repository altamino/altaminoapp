.class public Lcom/narvii/chat/post/ThreadPostActivity;
.super Lcom/narvii/post/DraftPostActivity;
.source "ThreadPostActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/post/LocationPickerFragment$LocationListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/post/DraftPostActivity<",
        "Lcom/narvii/chat/post/ThreadPost;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/narvii/post/LocationPickerFragment$LocationListener;"
    }
.end annotation


# static fields
.field static final PICK_MEMBERS:I = 0x1


# instance fields
.field private autoShowKeyboard:Z

.field private bubble:Lcom/narvii/model/ChatBubble;

.field private communityService:Lcom/narvii/community/CommunityService;

.field private configService:Lcom/narvii/config/ConfigService;

.field locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

.field private postOnlyContainer:Landroid/view/View;

.field private publishOrgVisible:Z

.field private publishToGlobalLayout:Lcom/narvii/widget/PublishToGlobalLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/narvii/post/DraftPostActivity;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/narvii/chat/post/ThreadPostActivity;->publishOrgVisible:Z

    return-void
.end method

.method static synthetic access$002(Lcom/narvii/chat/post/ThreadPostActivity;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/narvii/chat/post/ThreadPostActivity;->autoShowKeyboard:Z

    return p1
.end method

.method static synthetic access$102(Lcom/narvii/chat/post/ThreadPostActivity;Lcom/narvii/post/PostObject;)Lcom/narvii/post/PostObject;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    return-object p1
.end method

.method private isCommunityOpen()Z
    .locals 2

    .line 605
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostActivity;->communityService:Lcom/narvii/community/CommunityService;

    iget-object v1, p0, Lcom/narvii/chat/post/ThreadPostActivity;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 606
    iget v0, v0, Lcom/narvii/model/Community;->joinType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSupportPublishToGlobal()Z
    .locals 1

    const-string v0, "config"

    .line 586
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 587
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$onClick$0(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 285
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showPublishToGlobalDialog$1(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 321
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    return-void
.end method

.method private showPublishToGlobalDialog(Z)V
    .locals 3

    .line 318
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    invoke-direct {v0, p0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    const v1, 0x7f0f10b5

    goto :goto_0

    :cond_0
    const v1, 0x7f0f10b4

    .line 319
    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v1, 0x7f0f0193

    .line 320
    new-instance v2, Lcom/narvii/chat/post/-$$Lambda$ThreadPostActivity$oxajo-AEhAO08BO6Fm8jM229quE;

    invoke-direct {v2, v0}, Lcom/narvii/chat/post/-$$Lambda$ThreadPostActivity$oxajo-AEhAO08BO6Fm8jM229quE;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v1, 0x7f0f119f

    .line 323
    new-instance v2, Lcom/narvii/chat/post/-$$Lambda$ThreadPostActivity$7_boI7zYyhHMDKMQWvdXZkgQyKA;

    invoke-direct {v2, p0, p1, v0}, Lcom/narvii/chat/post/-$$Lambda$ThreadPostActivity$7_boI7zYyhHMDKMQWvdXZkgQyKA;-><init>(Lcom/narvii/chat/post/ThreadPostActivity;ZLcom/narvii/widget/ACMAlertDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const/4 p1, 0x0

    .line 337
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 338
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method private updatePublishToGlobalLayout()V
    .locals 4

    .line 302
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostActivity;->publishToGlobalLayout:Lcom/narvii/widget/PublishToGlobalLayout;

    if-nez v0, :cond_0

    return-void

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v1, Lcom/narvii/chat/post/ThreadPost;

    iget v1, v1, Lcom/narvii/chat/post/ThreadPost;->publishToGlobal:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/narvii/widget/PublishToGlobalLayout;->setPublishToGlobal(Z)V

    .line 306
    iget-boolean v0, p0, Lcom/narvii/chat/post/ThreadPostActivity;->publishOrgVisible:Z

    if-eqz v0, :cond_2

    .line 307
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostActivity;->publishToGlobalLayout:Lcom/narvii/widget/PublishToGlobalLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostActivity;->publishToGlobalLayout:Lcom/narvii/widget/PublishToGlobalLayout;

    iget-object v1, p0, Lcom/narvii/chat/post/ThreadPostActivity;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->isCommunityOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    const v0, 0x7f0908e1

    .line 311
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    const/4 v1, -0x1

    .line 313
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public buildDraftParams()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 3

    const-string v0, "threadId"

    .line 155
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 159
    :cond_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    .line 160
    invoke-virtual {v2, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string/jumbo v0, "userId"

    .line 161
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 163
    invoke-virtual {v2, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :cond_1
    const-string v0, "isGroupChat"

    .line 165
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object v2
.end method

.method protected checkEligible()V
    .locals 2

    const-string v0, "threadId"

    .line 194
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/narvii/chat/post/ThreadPostActivity;->configService:Lcom/narvii/config/ConfigService;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "group"

    goto :goto_0

    :cond_1
    const-string v0, "public"

    :goto_0
    const-string v1, "chat-thread"

    invoke-virtual {p0, v1, v0}, Lcom/narvii/post/BasePostActivity;->checkEligible(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected confirmationMessage(Lcom/narvii/chat/post/ThreadPost;)Ljava/lang/String;
    .locals 1

    .line 490
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->isGroupChat()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :cond_0
    return-object v0
.end method

.method protected bridge synthetic confirmationMessage(Lcom/narvii/post/PostObject;)Ljava/lang/String;
    .locals 0

    .line 65
    check-cast p1, Lcom/narvii/chat/post/ThreadPost;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/post/ThreadPostActivity;->confirmationMessage(Lcom/narvii/chat/post/ThreadPost;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected doPost(Lcom/narvii/chat/post/ThreadPost;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 504
    invoke-static {p0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "CreateButton"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/narvii/chat/post/ThreadPost;->userAddedTopicList:Ljava/util/List;

    .line 505
    invoke-static {v1}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "topicCount"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget v1, p1, Lcom/narvii/chat/post/ThreadPost;->publishToGlobal:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 506
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isPublishToGlobal"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    .line 507
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 510
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->threadId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "/chat/thread"

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/chat/thread/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->threadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 512
    :goto_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 513
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->getPostHelper()Lcom/narvii/post/PostHelper;

    move-result-object v1

    const-string v2, "chat-cover"

    .line 514
    invoke-virtual {v1, v2}, Lcom/narvii/post/PostHelper;->setDefaultPhotoUploadTarget(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v1, p0}, Lcom/narvii/post/PostHelper;->setPostListener(Lcom/narvii/post/PostListener;)V

    .line 516
    const-class v2, Lcom/narvii/chat/ThreadResponse;

    invoke-virtual {v1, p1, v0, v2}, Lcom/narvii/post/PostHelper;->startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;Ljava/lang/Class;)V

    return-void
.end method

.method protected bridge synthetic doPost(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 65
    check-cast p1, Lcom/narvii/chat/post/ThreadPost;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/post/ThreadPostActivity;->doPost(Lcom/narvii/chat/post/ThreadPost;)V

    return-void
.end method

.method public draftType()Ljava/lang/String;
    .locals 1

    const-string v0, "thread"

    return-object v0
.end method

.method protected fanClubClosedHintStrId()I
    .locals 1

    const v0, 0x7f0f0692

    return v0
.end method

.method protected fanOnlyStatusChanged(Z)V
    .locals 3

    .line 592
    invoke-direct {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->isSupportPublishToGlobal()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v0, Lcom/narvii/chat/post/ThreadPost;

    iget v0, v0, Lcom/narvii/chat/post/ThreadPost;->publishToGlobal:I

    if-ne v0, v1, :cond_0

    .line 593
    invoke-direct {p0, v2}, Lcom/narvii/chat/post/ThreadPostActivity;->showPublishToGlobalDialog(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 595
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v0, p1

    check-cast v0, Lcom/narvii/chat/post/ThreadPost;

    iput v2, v0, Lcom/narvii/chat/post/ThreadPost;->publishToGlobal:I

    .line 596
    check-cast p1, Lcom/narvii/chat/post/ThreadPost;

    invoke-virtual {p1, v1}, Lcom/narvii/chat/post/ThreadPost;->setFansOnly(Z)V

    .line 597
    invoke-direct {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->updatePublishToGlobalLayout()V

    .line 598
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->updateInfluencerView()V

    goto :goto_0

    .line 600
    :cond_1
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->fanOnlyStatusChanged(Z)V

    :goto_0
    return-void
.end method

.method public finish()V
    .locals 1

    .line 229
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 230
    iput-boolean v0, p0, Lcom/narvii/post/BasePostActivity;->discardDraft:Z

    .line 232
    :cond_0
    invoke-super {p0}, Lcom/narvii/post/DraftPostActivity;->finish()V

    return-void
.end method

.method protected getInfluencerLockLayout()Landroid/view/View;
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostActivity;->postOnlyContainer:Landroid/view/View;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 119
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b058b

    goto :goto_0

    :cond_0
    const v0, 0x7f0b05a0

    :goto_0
    return v0
.end method

.method protected getPostHelper()Lcom/narvii/post/PostHelper;
    .locals 1

    .line 497
    new-instance v0, Lcom/narvii/post/PostHelper;

    invoke-direct {v0, p0}, Lcom/narvii/post/PostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method protected getReusableDraft(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/post/DraftInfo;
    .locals 1

    .line 204
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->getReusableDraft(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/post/DraftInfo;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public isEdit()Z
    .locals 1

    .line 185
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->threadId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGroupChat()Z
    .locals 5

    const-string v0, "isGroupChat"

    .line 189
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v4, v3, [Ljava/lang/String;

    aput-object v0, v4, v2

    invoke-static {v1, v4}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public synthetic lambda$showPublishToGlobalDialog$2$ThreadPostActivity(ZLcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 2

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 325
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v1, p1

    check-cast v1, Lcom/narvii/chat/post/ThreadPost;

    iput p3, v1, Lcom/narvii/chat/post/ThreadPost;->publishToGlobal:I

    .line 326
    check-cast p1, Lcom/narvii/chat/post/ThreadPost;

    invoke-virtual {p1, v0}, Lcom/narvii/chat/post/ThreadPost;->setFansOnly(Z)V

    .line 327
    invoke-direct {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->updatePublishToGlobalLayout()V

    .line 328
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->updateInfluencerView()V

    goto :goto_0

    .line 330
    :cond_0
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v1, p1

    check-cast v1, Lcom/narvii/chat/post/ThreadPost;

    iput v0, v1, Lcom/narvii/chat/post/ThreadPost;->publishToGlobal:I

    .line 331
    check-cast p1, Lcom/narvii/chat/post/ThreadPost;

    invoke-virtual {p1, p3}, Lcom/narvii/chat/post/ThreadPost;->setFansOnly(Z)V

    .line 332
    invoke-direct {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->updatePublishToGlobalLayout()V

    .line 333
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->updateInfluencerView()V

    .line 335
    :goto_0
    invoke-virtual {p2}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v0, "users"

    .line 372
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    const-class v1, Lcom/narvii/model/User;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 374
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->savePost()Lcom/narvii/chat/post/ThreadPost;

    move-result-object v1

    .line 376
    iget-object v2, v1, Lcom/narvii/chat/post/ThreadPost;->memberList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 377
    iput-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 378
    invoke-virtual {p0, v1}, Lcom/narvii/chat/post/ThreadPostActivity;->updateView(Lcom/narvii/chat/post/ThreadPost;)V

    .line 381
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 237
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->savePost()Lcom/narvii/chat/post/ThreadPost;

    .line 238
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    .line 281
    :sswitch_0
    invoke-direct {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->isCommunityOpen()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast p1, Lcom/narvii/chat/post/ThreadPost;

    iget p1, p1, Lcom/narvii/chat/post/ThreadPost;->publishToGlobal:I

    if-nez p1, :cond_0

    .line 282
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    invoke-direct {p1, p0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0e36

    .line 283
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f073e

    .line 284
    new-instance v1, Lcom/narvii/chat/post/-$$Lambda$ThreadPostActivity$IiItwOulaSHwmts9Ww6VLtJII9c;

    invoke-direct {v1, p1}, Lcom/narvii/chat/post/-$$Lambda$ThreadPostActivity$IiItwOulaSHwmts9Ww6VLtJII9c;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 287
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto/16 :goto_1

    .line 288
    :cond_0
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast p1, Lcom/narvii/chat/post/ThreadPost;

    invoke-virtual {p1}, Lcom/narvii/chat/post/ThreadPost;->isFansOnly()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 289
    invoke-direct {p0, v2}, Lcom/narvii/chat/post/ThreadPostActivity;->showPublishToGlobalDialog(Z)V

    goto/16 :goto_1

    .line 290
    :cond_1
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v0, p1

    check-cast v0, Lcom/narvii/chat/post/ThreadPost;

    iget v0, v0, Lcom/narvii/chat/post/ThreadPost;->publishToGlobal:I

    if-ne v0, v2, :cond_2

    .line 291
    check-cast p1, Lcom/narvii/chat/post/ThreadPost;

    iput v1, p1, Lcom/narvii/chat/post/ThreadPost;->publishToGlobal:I

    .line 292
    invoke-direct {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->updatePublishToGlobalLayout()V

    goto/16 :goto_1

    .line 294
    :cond_2
    check-cast p1, Lcom/narvii/chat/post/ThreadPost;

    iput v2, p1, Lcom/narvii/chat/post/ThreadPost;->publishToGlobal:I

    .line 295
    invoke-direct {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->updatePublishToGlobalLayout()V

    goto/16 :goto_1

    .line 244
    :sswitch_1
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->isGroupChat()Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x40

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 245
    :goto_0
    iget-object v0, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v3, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    or-int/lit8 p1, p1, 0x6

    invoke-virtual {v0, v2, v3, p1, v1}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    goto :goto_1

    .line 240
    :sswitch_2
    new-instance p1, Landroid/content/Intent;

    const-string v0, "ndc://guidelines"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 273
    :sswitch_3
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->savePost()Lcom/narvii/chat/post/ThreadPost;

    move-result-object p1

    .line 274
    const-class v0, Lcom/narvii/user/picker/MultiUserPickerFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 275
    iget-object p1, p1, Lcom/narvii/chat/post/ThreadPost;->memberList:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "exists"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x64

    const-string v1, "maxMember"

    .line 276
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0, v0, v2}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 250
    :sswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/model/User;

    if-eqz v0, :cond_4

    .line 251
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    .line 252
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0eb6

    .line 253
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 254
    new-instance v1, Lcom/narvii/chat/post/ThreadPostActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/post/ThreadPostActivity$2;-><init>(Lcom/narvii/chat/post/ThreadPostActivity;Lcom/narvii/model/User;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 268
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    :cond_4
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0901f1 -> :sswitch_4
        0x7f0901f2 -> :sswitch_3
        0x7f090206 -> :sswitch_2
        0x7f090571 -> :sswitch_1
        0x7f0908e0 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 80
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->getLayoutId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 83
    invoke-static {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 85
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "locationPicker"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/post/LocationPickerFragment;

    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 86
    iget-object p1, p0, Lcom/narvii/chat/post/ThreadPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    if-nez p1, :cond_0

    .line 87
    new-instance p1, Lcom/narvii/post/LocationPickerFragment;

    invoke-direct {p1}, Lcom/narvii/post/LocationPickerFragment;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 88
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/chat/post/ThreadPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/post/ThreadPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    iput-object p0, p1, Lcom/narvii/post/LocationPickerFragment;->listener:Lcom/narvii/post/LocationPickerFragment$LocationListener;

    const p1, 0x7f0902d0

    .line 92
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/EditTextIMG;

    if-eqz p1, :cond_1

    .line 94
    new-instance v0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;

    invoke-direct {v0, p1}, Lcom/narvii/post/BasePostActivity$BaseImgCallback;-><init>(Lcom/narvii/widget/EditTextIMG;)V

    iput-object v0, p1, Lcom/narvii/widget/EditTextIMG;->imgMode:Landroid/view/ActionMode$Callback;

    :cond_1
    const-string p1, "config"

    .line 96
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPostActivity;->configService:Lcom/narvii/config/ConfigService;

    const-string p1, "community"

    .line 97
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/CommunityService;

    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPostActivity;->communityService:Lcom/narvii/community/CommunityService;

    const-string p1, "focusWelcome"

    .line 98
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/chat/post/ThreadPostActivity;->autoShowKeyboard:Z

    const-string p1, "bubble"

    .line 99
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/ChatBubble;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatBubble;

    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPostActivity;->bubble:Lcom/narvii/model/ChatBubble;

    const p1, 0x7f09088a

    .line 100
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPostActivity;->postOnlyContainer:Landroid/view/View;

    .line 101
    iget-object p1, p0, Lcom/narvii/chat/post/ThreadPostActivity;->postOnlyContainer:Landroid/view/View;

    const v0, 0x7f0807c3

    const v1, 0x7f0807c4

    if-eqz p1, :cond_2

    const v2, 0x7f090598

    .line 102
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/influencer/StoryInfluencerPostIndicator;

    if-eqz p1, :cond_2

    .line 104
    invoke-virtual {p1, v1}, Lcom/narvii/influencer/StoryInfluencerPostIndicator;->setSwitchOnColor(I)V

    .line 105
    invoke-virtual {p1, v0}, Lcom/narvii/influencer/StoryInfluencerPostIndicator;->setSwitchOffColor(I)V

    :cond_2
    const p1, 0x7f0908e0

    .line 108
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/PublishToGlobalLayout;

    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPostActivity;->publishToGlobalLayout:Lcom/narvii/widget/PublishToGlobalLayout;

    .line 109
    iget-object p1, p0, Lcom/narvii/chat/post/ThreadPostActivity;->publishToGlobalLayout:Lcom/narvii/widget/PublishToGlobalLayout;

    if-eqz p1, :cond_3

    .line 110
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object p1, p0, Lcom/narvii/chat/post/ThreadPostActivity;->publishToGlobalLayout:Lcom/narvii/widget/PublishToGlobalLayout;

    invoke-virtual {p1, v1}, Lcom/narvii/widget/PublishToGlobalLayout;->setSwitchOnColor(I)V

    .line 112
    iget-object p1, p0, Lcom/narvii/chat/post/ThreadPostActivity;->publishToGlobalLayout:Lcom/narvii/widget/PublishToGlobalLayout;

    invoke-virtual {p1, v0}, Lcom/narvii/widget/PublishToGlobalLayout;->setSwitchOffColor(I)V

    .line 114
    :cond_3
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast p1, Lcom/narvii/chat/post/ThreadPost;

    iget p1, p1, Lcom/narvii/chat/post/ThreadPost;->publishToGlobal:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/narvii/chat/post/ThreadPostActivity;->publishOrgVisible:Z

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 142
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    invoke-virtual {v1, v0}, Lcom/narvii/post/DraftManager;->deleteDraft(Ljava/lang/String;)V

    .line 145
    :cond_0
    invoke-super {p0}, Lcom/narvii/post/BasePostActivity;->onDestroy()V

    return-void
.end method

.method public onLocatingChanged(Z)V
    .locals 0

    .line 343
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->savePost()Lcom/narvii/chat/post/ThreadPost;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/chat/post/ThreadPostActivity;->updateView(Lcom/narvii/chat/post/ThreadPost;)V

    return-void
.end method

.method public onLocationResult(Lcom/narvii/location/GPSCoordinate;)V
    .locals 2

    .line 348
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->savePost()Lcom/narvii/chat/post/ThreadPost;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 350
    iput p1, v0, Lcom/narvii/chat/post/ThreadPost;->latitude:I

    .line 351
    iput p1, v0, Lcom/narvii/chat/post/ThreadPost;->longitude:I

    goto :goto_0

    .line 353
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->latitudeE6()I

    move-result v1

    iput v1, v0, Lcom/narvii/chat/post/ThreadPost;->latitude:I

    .line 354
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->longitudeE6()I

    move-result p1

    iput p1, v0, Lcom/narvii/chat/post/ThreadPost;->longitude:I

    .line 356
    :goto_0
    iput-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 357
    invoke-virtual {p0, v0}, Lcom/narvii/chat/post/ThreadPostActivity;->updateView(Lcom/narvii/chat/post/ThreadPost;)V

    return-void
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 362
    invoke-super {p0, p1, p2}, Lcom/narvii/post/BasePostActivity;->onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V

    .line 363
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->savePost()Lcom/narvii/chat/post/ThreadPost;

    move-result-object p2

    .line 364
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    :goto_0
    invoke-virtual {p2, p1}, Lcom/narvii/chat/post/ThreadPost;->setIcon(Ljava/lang/String;)V

    .line 365
    iput-object p2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 366
    invoke-virtual {p0, p2}, Lcom/narvii/chat/post/ThreadPostActivity;->updateView(Lcom/narvii/chat/post/ThreadPost;)V

    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 9

    .line 521
    invoke-super {p0, p1, p2}, Lcom/narvii/post/DraftPostActivity;->onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V

    .line 524
    check-cast p2, Lcom/narvii/chat/ThreadResponse;

    iget-object p1, p2, Lcom/narvii/chat/ThreadResponse;->thread:Lcom/narvii/model/ChatThread;

    .line 525
    iget-object p2, p0, Lcom/narvii/chat/post/ThreadPostActivity;->bubble:Lcom/narvii/model/ChatBubble;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 526
    new-instance p2, Lcom/narvii/monetization/bubble/BubbleHelper;

    invoke-direct {p2, p0}, Lcom/narvii/monetization/bubble/BubbleHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 527
    iget-object v2, p0, Lcom/narvii/chat/post/ThreadPostActivity;->bubble:Lcom/narvii/model/ChatBubble;

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v1, v3, v0}, Lcom/narvii/monetization/bubble/BubbleHelper;->sendApplyBubbleRequest(Lcom/narvii/model/ChatBubble;ZLjava/lang/String;Lcom/narvii/util/Callback;)V

    :cond_0
    if-eqz p1, :cond_1

    const-string p2, "globalChat"

    .line 531
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/util/GlobalChatService;

    const-string v2, "config"

    .line 532
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/config/ConfigService;

    .line 533
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v2

    invoke-static {p1, v2, p0}, Lcom/narvii/chat/global/GlobalChatThread;->newGlobalChatThread(Lcom/narvii/model/ChatThread;ILandroid/content/Context;)Lcom/narvii/chat/global/GlobalChatThread;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/narvii/chat/util/GlobalChatService;->addRecentChat(Lcom/narvii/chat/global/GlobalChatThread;)V

    .line 536
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->isEdit()Z

    move-result p2

    const-string v2, "Source"

    const-string v3, "justCreated"

    const-string v4, "thread"

    const-string v5, "id"

    const/4 v6, 0x1

    if-eqz p1, :cond_2

    const-string v7, "doAfter"

    .line 537
    invoke-virtual {p0, v7}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 538
    invoke-virtual {p0, v7}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "GO_LIVE"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 539
    const-class v1, Lcom/narvii/chat/ChatFragment;

    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 540
    iget-object v7, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "showGoLive"

    .line 543
    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 544
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_5

    if-nez p2, :cond_5

    .line 546
    iget v7, p1, Lcom/narvii/model/ChatThread;->type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 547
    const-class v7, Lcom/narvii/chat/ChatFragment;

    invoke-static {v7}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v7

    .line 548
    iget-object v8, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v7, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    invoke-virtual {v7, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 550
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "View Created Post"

    .line 551
    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "stickerCollectionId"

    .line 552
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    iget-object v4, p0, Lcom/narvii/chat/post/ThreadPostActivity;->bubble:Lcom/narvii/model/ChatBubble;

    if-nez v4, :cond_3

    invoke-virtual {p0, v3}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    const-string v3, "showKeyboard"

    invoke-virtual {v7, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 554
    invoke-virtual {p0, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected onPostLoaded(Lcom/narvii/chat/post/ThreadPost;)V
    .locals 1

    .line 210
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->onPostLoaded(Lcom/narvii/post/PostObject;)V

    .line 211
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->isEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f03cd

    .line 212
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0f0d9a

    .line 215
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 220
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->isEdit()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->isSupportPublishToGlobal()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->isCommunityOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 221
    iput v0, p1, Lcom/narvii/chat/post/ThreadPost;->publishToGlobal:I

    .line 224
    :cond_1
    invoke-direct {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->updatePublishToGlobalLayout()V

    return-void
.end method

.method protected bridge synthetic onPostLoaded(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 65
    check-cast p1, Lcom/narvii/chat/post/ThreadPost;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/post/ThreadPostActivity;->onPostLoaded(Lcom/narvii/chat/post/ThreadPost;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 124
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onResume()V

    .line 125
    iget-boolean v0, p0, Lcom/narvii/chat/post/ThreadPostActivity;->autoShowKeyboard:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0902d0

    .line 126
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 127
    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 129
    new-instance v1, Lcom/narvii/chat/post/ThreadPostActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/narvii/chat/post/ThreadPostActivity$1;-><init>(Lcom/narvii/chat/post/ThreadPostActivity;Landroid/view/View;)V

    const-wide/16 v2, 0x64

    invoke-static {v1, v2, v3}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public postClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/chat/post/ThreadPost;",
            ">;"
        }
    .end annotation

    .line 172
    const-class v0, Lcom/narvii/chat/post/ThreadPost;

    return-object v0
.end method

.method protected savePost()Lcom/narvii/chat/post/ThreadPost;
    .locals 2

    const v0, 0x7f090b9a

    .line 460
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 461
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v1, Lcom/narvii/chat/post/ThreadPost;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/narvii/chat/post/ThreadPost;->title:Ljava/lang/String;

    const v0, 0x7f0902d0

    .line 463
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 465
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v1, Lcom/narvii/chat/post/ThreadPost;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/narvii/chat/post/ThreadPost;->content:Ljava/lang/String;

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v0, Lcom/narvii/chat/post/ThreadPost;

    return-object v0
.end method

.method protected bridge synthetic savePost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->savePost()Lcom/narvii/chat/post/ThreadPost;

    move-result-object v0

    return-object v0
.end method

.method protected shouldShowFansOnlySwitchDialog()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public threadId()Ljava/lang/String;
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "threadId"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateInfluencerView()V
    .locals 0

    .line 566
    invoke-super {p0}, Lcom/narvii/post/DraftPostActivity;->updateInfluencerView()V

    return-void
.end method

.method protected updateView(Lcom/narvii/chat/post/ThreadPost;)V
    .locals 12

    const v0, 0x7f090206

    .line 388
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f090571

    .line 394
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 395
    move-object v1, v0

    check-cast v1, Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1}, Lcom/narvii/chat/post/ThreadPost;->icon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 396
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090b9a

    .line 399
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 400
    iget-object v1, p1, Lcom/narvii/chat/post/ThreadPost;->title:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 401
    iget-object v1, p1, Lcom/narvii/chat/post/ThreadPost;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v0, 0x7f0902d0

    .line 405
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 406
    iget-object v1, p1, Lcom/narvii/chat/post/ThreadPost;->content:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 407
    iget-object v1, p1, Lcom/narvii/chat/post/ThreadPost;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const v0, 0x7f0904e3

    .line 411
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_3

    goto/16 :goto_3

    .line 414
    :cond_3
    iget-object v3, p1, Lcom/narvii/chat/post/ThreadPost;->memberList:Ljava/util/ArrayList;

    if-nez v3, :cond_4

    .line 415
    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 417
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 420
    invoke-virtual {v0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_5

    invoke-virtual {v0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    const v6, 0x7f0901f2

    if-ne v4, v6, :cond_5

    .line 421
    invoke-virtual {v0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 422
    invoke-virtual {v0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Landroid/widget/GridLayout;->removeViewAt(I)V

    goto :goto_0

    :cond_5
    move-object v4, v5

    .line 424
    :goto_0
    invoke-virtual {v0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v6

    iget-object v7, p1, Lcom/narvii/chat/post/ThreadPost;->memberList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v6, v7, :cond_6

    .line 425
    invoke-virtual {v0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Landroid/widget/GridLayout;->removeViewAt(I)V

    goto :goto_0

    .line 428
    :cond_6
    iget-object v6, p1, Lcom/narvii/chat/post/ThreadPost;->memberList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_9

    .line 429
    invoke-virtual {v0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_7

    invoke-virtual {v0, v7}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    goto :goto_2

    :cond_7
    move-object v8, v5

    :goto_2
    if-nez v8, :cond_8

    const v8, 0x7f0b00a8

    .line 431
    invoke-virtual {v3, v8, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 432
    invoke-virtual {v0, v8}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 435
    :cond_8
    iget-object v9, p1, Lcom/narvii/chat/post/ThreadPost;->memberList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/narvii/model/User;

    const v10, 0x7f0900e4

    .line 436
    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/narvii/widget/NVImageView;

    invoke-virtual {v9}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const v10, 0x7f090764

    .line 437
    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/narvii/widget/NicknameView;

    invoke-virtual {v10, v9}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    const v10, 0x7f0901f3

    .line 438
    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    const v10, 0x7f0901f4

    .line 439
    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/view/View;->setVisibility(I)V

    .line 440
    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    invoke-virtual {v8, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_9
    if-nez v4, :cond_a

    const p1, 0x7f0b00a9

    .line 445
    invoke-virtual {v3, p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 447
    :cond_a
    invoke-virtual {v0, v4}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 448
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    const-string p1, "config"

    .line 451
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    const v0, 0x7f0908e0

    .line 452
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 454
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    if-eqz p1, :cond_b

    invoke-direct {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->isCommunityOpen()Z

    move-result p1

    if-eqz p1, :cond_b

    const/4 v1, 0x0

    :cond_b
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 65
    check-cast p1, Lcom/narvii/chat/post/ThreadPost;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/post/ThreadPostActivity;->updateView(Lcom/narvii/chat/post/ThreadPost;)V

    return-void
.end method

.method public userId()Ljava/lang/String;
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "userId"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validateUpload(Lcom/narvii/chat/post/ThreadPost;)Z
    .locals 2

    .line 473
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->isGroupChat()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const p1, 0x7f090b9a

    .line 476
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const v1, 0x7f0f0daf

    invoke-virtual {p0, p1, v1}, Lcom/narvii/post/BasePostActivity;->validateEditTextNotEmpty(Landroid/widget/EditText;I)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    return v0
.end method

.method protected bridge synthetic validateUpload(Lcom/narvii/post/PostObject;)Z
    .locals 0

    .line 65
    check-cast p1, Lcom/narvii/chat/post/ThreadPost;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/post/ThreadPostActivity;->validateUpload(Lcom/narvii/chat/post/ThreadPost;)Z

    move-result p1

    return p1
.end method
