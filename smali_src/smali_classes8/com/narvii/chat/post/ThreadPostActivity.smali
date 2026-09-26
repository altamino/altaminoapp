.class public Lcom/narvii/chat/post/ThreadPostActivity;
.super Lcom/narvii/post/DraftPostActivity;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/post/DraftPostActivity;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/chat/post/ThreadPostActivity;->publishOrgVisible:Z

    .line 7
    return-void
.end method

.method public static synthetic A(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/post/ThreadPostActivity;->lambda$showPublishToGlobalDialog$1(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic B(Lcom/narvii/chat/post/ThreadPostActivity;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/post/ThreadPostActivity;->autoShowKeyboard:Z

    return-void
.end method

.method static synthetic access$002(Lcom/narvii/chat/post/ThreadPostActivity;Lcom/narvii/post/PostObject;)Lcom/narvii/post/PostObject;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 3
    return-object p1
.end method

.method private isCommunityOpen()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostActivity;->communityService:Lcom/narvii/community/CommunityService;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/post/ThreadPostActivity;->configService:Lcom/narvii/config/ConfigService;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget v0, v0, Lcom/narvii/model/Community;->joinType:I

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method private isSupportPublishToGlobal()Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

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

.method private static synthetic lambda$onClick$0(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 4
    return-void
.end method

.method private static synthetic lambda$showPublishToGlobalDialog$1(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 4
    return-void
.end method

.method private synthetic lambda$showPublishToGlobalDialog$2(ZLcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 2

    .line 1
    const/4 p3, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 7
    move-object v1, p1

    .line 8
    .line 9
    check-cast v1, Lcom/narvii/chat/post/ThreadPost;

    .line 10
    .line 11
    iput v0, v1, Lcom/narvii/chat/post/ThreadPost;->publishToGlobal:I

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/chat/post/ThreadPost;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p3}, Lcom/narvii/chat/post/ThreadPost;->setFansOnly(Z)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->updatePublishToGlobalLayout()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->updateInfluencerView()V

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 26
    move-object v1, p1

    .line 27
    .line 28
    check-cast v1, Lcom/narvii/chat/post/ThreadPost;

    .line 29
    .line 30
    iput p3, v1, Lcom/narvii/chat/post/ThreadPost;->publishToGlobal:I

    .line 31
    .line 32
    check-cast p1, Lcom/narvii/chat/post/ThreadPost;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/narvii/chat/post/ThreadPost;->setFansOnly(Z)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->updatePublishToGlobalLayout()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->updateInfluencerView()V

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-virtual {p2}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 45
    return-void
.end method

.method private logCreatePostEvent(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "statistics"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 9
    .line 10
    const-string v1, "Create Post"

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "post_type"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-static {p0, p1}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsEventBuilder;)V

    .line 24
    return-void
.end method

.method public static safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVActivity;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showPublishToGlobalDialog(Z)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    .line 10
    const v1, 0x7f1211b0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    const v1, 0x7f1211af

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    new-instance v1, Lcom/narvii/chat/post/b;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v0}, Lcom/narvii/chat/post/b;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    .line 27
    .line 28
    .line 29
    const v2, 0x7f1201e2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 33
    .line 34
    new-instance v1, Lcom/narvii/chat/post/c;

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, p0, p1, v0}, Lcom/narvii/chat/post/c;-><init>(Lcom/narvii/chat/post/ThreadPostActivity;ZLcom/narvii/widget/ACMAlertDialog;)V

    .line 38
    .line 39
    .line 40
    const p1, 0x7f1212a7

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 44
    const/4 p1, 0x0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 51
    return-void
.end method

.method private updatePublishToGlobalLayout()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostActivity;->publishToGlobalLayout:Lcom/narvii/widget/PublishToGlobalLayout;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 8
    .line 9
    check-cast v1, Lcom/narvii/chat/post/ThreadPost;

    .line 10
    .line 11
    iget v1, v1, Lcom/narvii/chat/post/ThreadPost;->publishToGlobal:I

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    if-ne v1, v2, :cond_1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move v2, v3

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {v0, v2}, Lcom/narvii/widget/PublishToGlobalLayout;->setPublishToGlobal(Z)V

    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/narvii/chat/post/ThreadPostActivity;->publishOrgVisible:Z

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostActivity;->publishToGlobalLayout:Lcom/narvii/widget/PublishToGlobalLayout;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 30
    goto :goto_2

    .line 31
    .line 32
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostActivity;->publishToGlobalLayout:Lcom/narvii/widget/PublishToGlobalLayout;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/chat/post/ThreadPostActivity;->configService:Lcom/narvii/config/ConfigService;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 38
    move-result v1

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->isCommunityOpen()Z

    .line 44
    move-result v1

    .line 45
    .line 46
    if-eqz v1, :cond_3

    .line 47
    goto :goto_1

    .line 48
    .line 49
    :cond_3
    const/16 v3, 0x8

    .line 50
    .line 51
    .line 52
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    :goto_2
    const v0, 0x7f0a0ba0

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    check-cast v0, Landroid/widget/TextView;

    .line 62
    .line 63
    if-eqz v0, :cond_4

    .line 64
    const/4 v1, -0x1

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    :cond_4
    return-void
.end method

.method public static synthetic y(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/post/ThreadPostActivity;->lambda$onClick$0(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic z(Lcom/narvii/chat/post/ThreadPostActivity;ZLcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/chat/post/ThreadPostActivity;->lambda$showPublishToGlobalDialog$2(ZLcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public buildDraftParams()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 3

    .line 1
    .line 2
    const-string v0, "threadId"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 18
    .line 19
    const-string v0, "userId"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 29
    .line 30
    :cond_1
    const-string v0, "isGroupChat"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    .line 34
    move-result v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 38
    return-object v2
.end method

.method protected checkEligible()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "threadId"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/chat/post/ThreadPostActivity;->configService:Lcom/narvii/config/ConfigService;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 14
    move-result v1

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    return-void

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->isGroupChat()Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const-string v0, "group"

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_1
    const-string v0, "public"

    .line 35
    .line 36
    :goto_0
    const-string v1, "chat-thread"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1, v0}, Lcom/narvii/post/BasePostActivity;->checkEligible(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method protected confirmationMessage(Lcom/narvii/chat/post/ThreadPost;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->isGroupChat()Z

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic confirmationMessage(Lcom/narvii/post/PostObject;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/chat/post/ThreadPost;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/post/ThreadPostActivity;->confirmationMessage(Lcom/narvii/chat/post/ThreadPost;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected doPost(Lcom/narvii/chat/post/ThreadPost;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "CreateButton"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/narvii/chat/post/ThreadPost;->userAddedTopicList:Ljava/util/List;

    .line 3
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

    .line 4
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isPublishToGlobal"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 6
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

    .line 7
    :goto_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->getPostHelper()Lcom/narvii/post/PostHelper;

    move-result-object v1

    const-string v2, "chat-cover"

    .line 9
    invoke-virtual {v1, v2}, Lcom/narvii/post/PostHelper;->setDefaultPhotoUploadTarget(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, p0}, Lcom/narvii/post/PostHelper;->setPostListener(Lcom/narvii/post/PostListener;)V

    const-class v2, Lcom/narvii/chat/ThreadResponse;

    .line 11
    invoke-virtual {v1, p1, v0, v2}, Lcom/narvii/post/PostHelper;->startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;Ljava/lang/Class;)V

    return-void
.end method

.method protected bridge synthetic doPost(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
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

    const v0, 0x7f120740

    return v0
.end method

.method protected fanOnlyStatusChanged(Z)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->isSupportPublishToGlobal()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/chat/post/ThreadPost;

    .line 15
    .line 16
    iget v0, v0, Lcom/narvii/chat/post/ThreadPost;->publishToGlobal:I

    .line 17
    .line 18
    if-ne v0, v2, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v1}, Lcom/narvii/chat/post/ThreadPostActivity;->showPublishToGlobalDialog(Z)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 27
    move-object v0, p1

    .line 28
    .line 29
    check-cast v0, Lcom/narvii/chat/post/ThreadPost;

    .line 30
    .line 31
    iput v1, v0, Lcom/narvii/chat/post/ThreadPost;->publishToGlobal:I

    .line 32
    .line 33
    check-cast p1, Lcom/narvii/chat/post/ThreadPost;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v2}, Lcom/narvii/chat/post/ThreadPost;->setFansOnly(Z)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->updatePublishToGlobalLayout()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->updateInfluencerView()V

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->fanOnlyStatusChanged(Z)V

    .line 47
    :goto_0
    return-void
.end method

.method public finish()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->isGroupChat()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/narvii/post/BasePostActivity;->discardDraft:Z

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super {p0}, Lcom/narvii/post/DraftPostActivity;->finish()V

    .line 13
    return-void
.end method

.method protected getInfluencerLockLayout()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostActivity;->postOnlyContainer:Landroid/view/View;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->isGroupChat()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    const v0, 0x7f0d0633

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    const v0, 0x7f0d0647

    .line 14
    :goto_0
    return v0
.end method

.method protected getPostHelper()Lcom/narvii/post/PostHelper;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/post/PostHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/post/PostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-object v0
.end method

.method protected getReusableDraft(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/post/DraftInfo;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->isGroupChat()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->getReusableDraft(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/post/DraftInfo;

    .line 12
    move-result-object p1

    .line 13
    :goto_0
    return-object p1
.end method

.method public isEdit()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->threadId()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isGroupChat()Z
    .locals 2

    .line 1
    .line 2
    const-string v0, "isGroupChat"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    .line 6
    move-result v1

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 11
    .line 12
    .line 13
    filled-new-array {v0}, [Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    :goto_1
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    if-ne p2, v0, :cond_0

    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    const-string v0, "users"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-class v1, Lcom/narvii/model/User;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 26
    move-result v1

    .line 27
    .line 28
    if-lez v1, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->savePost()Lcom/narvii/chat/post/ThreadPost;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    iget-object v2, v1, Lcom/narvii/chat/post/ThreadPost;->memberList:Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 38
    .line 39
    iput-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v1}, Lcom/narvii/chat/post/ThreadPostActivity;->updateView(Lcom/narvii/chat/post/ThreadPost;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 46
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->savePost()Lcom/narvii/chat/post/ThreadPost;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    .line 11
    .line 12
    sparse-switch v0, :sswitch_data_0

    .line 13
    .line 14
    goto/16 :goto_1

    .line 15
    .line 16
    .line 17
    :sswitch_0
    invoke-direct {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->isCommunityOpen()Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 23
    .line 24
    check-cast p1, Lcom/narvii/chat/post/ThreadPost;

    .line 25
    .line 26
    iget p1, p1, Lcom/narvii/chat/post/ThreadPost;->publishToGlobal:I

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 31
    .line 32
    .line 33
    invoke-direct {p1, p0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    const v0, 0x7f120f5a

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    new-instance v0, Lcom/narvii/chat/post/a;

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, p1}, Lcom/narvii/chat/post/a;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    .line 49
    .line 50
    .line 51
    const v1, 0x7f1207e7

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v1, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 58
    .line 59
    goto/16 :goto_1

    .line 60
    .line 61
    :cond_0
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 62
    .line 63
    check-cast p1, Lcom/narvii/chat/post/ThreadPost;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/narvii/chat/post/ThreadPost;->isFansOnly()Z

    .line 67
    move-result p1

    .line 68
    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, v2}, Lcom/narvii/chat/post/ThreadPostActivity;->showPublishToGlobalDialog(Z)V

    .line 73
    .line 74
    goto/16 :goto_1

    .line 75
    .line 76
    :cond_1
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 77
    move-object v0, p1

    .line 78
    .line 79
    check-cast v0, Lcom/narvii/chat/post/ThreadPost;

    .line 80
    .line 81
    iget v0, v0, Lcom/narvii/chat/post/ThreadPost;->publishToGlobal:I

    .line 82
    .line 83
    if-ne v0, v2, :cond_2

    .line 84
    .line 85
    check-cast p1, Lcom/narvii/chat/post/ThreadPost;

    .line 86
    .line 87
    iput v1, p1, Lcom/narvii/chat/post/ThreadPost;->publishToGlobal:I

    .line 88
    .line 89
    .line 90
    invoke-direct {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->updatePublishToGlobalLayout()V

    .line 91
    .line 92
    goto/16 :goto_1

    .line 93
    .line 94
    :cond_2
    check-cast p1, Lcom/narvii/chat/post/ThreadPost;

    .line 95
    .line 96
    iput v2, p1, Lcom/narvii/chat/post/ThreadPost;->publishToGlobal:I

    .line 97
    .line 98
    .line 99
    invoke-direct {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->updatePublishToGlobalLayout()V

    .line 100
    .line 101
    goto/16 :goto_1

    .line 102
    .line 103
    .line 104
    :sswitch_1
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->isGroupChat()Z

    .line 105
    move-result p1

    .line 106
    .line 107
    if-eqz p1, :cond_3

    .line 108
    .line 109
    const/16 p1, 0x40

    .line 110
    goto :goto_0

    .line 111
    :cond_3
    move p1, v1

    .line 112
    .line 113
    :goto_0
    iget-object v0, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 114
    .line 115
    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 116
    .line 117
    iget-object v3, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v3}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    .line 121
    move-result-object v2

    .line 122
    .line 123
    or-int/lit8 p1, p1, 0x6

    .line 124
    const/4 v3, 0x0

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v2, v3, p1, v1}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    .line 128
    goto :goto_1

    .line 129
    .line 130
    :sswitch_2
    new-instance p1, Landroid/content/Intent;

    .line 131
    .line 132
    const-string v0, "ndc://guidelines"

    .line 133
    .line 134
    .line 135
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 136
    move-result-object v0

    .line 137
    .line 138
    const-string v1, "android.intent.action.VIEW"

    .line 139
    .line 140
    .line 141
    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 142
    .line 143
    .line 144
    invoke-static {p0, p1}, Lcom/narvii/chat/post/ThreadPostActivity;->safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V

    .line 145
    goto :goto_1

    .line 146
    .line 147
    .line 148
    :sswitch_3
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->savePost()Lcom/narvii/chat/post/ThreadPost;

    .line 149
    move-result-object p1

    .line 150
    .line 151
    const-class v0, Lcom/narvii/user/picker/MultiUserPickerFragment;

    .line 152
    .line 153
    .line 154
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 155
    move-result-object v0

    .line 156
    .line 157
    iget-object p1, p1, Lcom/narvii/chat/post/ThreadPost;->memberList:Ljava/util/ArrayList;

    .line 158
    .line 159
    .line 160
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 161
    move-result-object p1

    .line 162
    .line 163
    const-string v1, "exists"

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    .line 168
    const-string p1, "maxMember"

    .line 169
    .line 170
    const/16 v1, 0x64

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    .line 175
    .line 176
    invoke-static {p0, v0, v2}, Lcom/narvii/chat/post/ThreadPostActivity;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V

    .line 177
    goto :goto_1

    .line 178
    .line 179
    .line 180
    :sswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 181
    move-result-object v0

    .line 182
    .line 183
    instance-of v0, v0, Lcom/narvii/model/User;

    .line 184
    .line 185
    if-eqz v0, :cond_4

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 189
    move-result-object p1

    .line 190
    .line 191
    check-cast p1, Lcom/narvii/model/User;

    .line 192
    .line 193
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 197
    move-result-object v1

    .line 198
    .line 199
    .line 200
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 201
    .line 202
    .line 203
    const v1, 0x7f120fd5

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 207
    .line 208
    new-instance v1, Lcom/narvii/chat/post/ThreadPostActivity$2;

    .line 209
    .line 210
    .line 211
    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/post/ThreadPostActivity$2;-><init>(Lcom/narvii/chat/post/ThreadPostActivity;Lcom/narvii/model/User;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 218
    :cond_4
    :goto_1
    return-void

    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    :sswitch_data_0
    .sparse-switch
        0x7f0a02a8 -> :sswitch_4
        0x7f0a02a9 -> :sswitch_3
        0x7f0a02be -> :sswitch_2
        0x7f0a06eb -> :sswitch_1
        0x7f0a0b9f -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->getLayoutId()I

    .line 7
    move-result p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    const-string v0, "locationPicker"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Lcom/narvii/post/LocationPickerFragment;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    new-instance p1, Lcom/narvii/post/LocationPickerFragment;

    .line 32
    .line 33
    .line 34
    invoke-direct {p1}, Lcom/narvii/post/LocationPickerFragment;-><init>()V

    .line 35
    .line 36
    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    iget-object v1, p0, Lcom/narvii/chat/post/ThreadPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 54
    .line 55
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/post/ThreadPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 56
    .line 57
    iput-object p0, p1, Lcom/narvii/post/LocationPickerFragment;->listener:Lcom/narvii/post/LocationPickerFragment$LocationListener;

    .line 58
    .line 59
    .line 60
    const p1, 0x7f0a039d

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    check-cast p1, Lcom/narvii/widget/EditTextIMG;

    .line 67
    .line 68
    if-eqz p1, :cond_1

    .line 69
    .line 70
    new-instance v0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;

    .line 71
    .line 72
    .line 73
    invoke-direct {v0, p1}, Lcom/narvii/post/BasePostActivity$BaseImgCallback;-><init>(Lcom/narvii/widget/EditTextIMG;)V

    .line 74
    .line 75
    iput-object v0, p1, Lcom/narvii/widget/EditTextIMG;->imgMode:Landroid/view/ActionMode$Callback;

    .line 76
    .line 77
    :cond_1
    const-string p1, "config"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 84
    .line 85
    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPostActivity;->configService:Lcom/narvii/config/ConfigService;

    .line 86
    .line 87
    const-string p1, "community"

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    check-cast p1, Lcom/narvii/community/CommunityService;

    .line 94
    .line 95
    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPostActivity;->communityService:Lcom/narvii/community/CommunityService;

    .line 96
    .line 97
    const-string p1, "focusWelcome"

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    .line 101
    move-result p1

    .line 102
    .line 103
    iput-boolean p1, p0, Lcom/narvii/chat/post/ThreadPostActivity;->autoShowKeyboard:Z

    .line 104
    .line 105
    const-string p1, "bubble"

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    const-class v0, Lcom/narvii/model/ChatBubble;

    .line 112
    .line 113
    .line 114
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 115
    move-result-object p1

    .line 116
    .line 117
    check-cast p1, Lcom/narvii/model/ChatBubble;

    .line 118
    .line 119
    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPostActivity;->bubble:Lcom/narvii/model/ChatBubble;

    .line 120
    .line 121
    .line 122
    const p1, 0x7f0a0b46

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 126
    move-result-object p1

    .line 127
    .line 128
    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPostActivity;->postOnlyContainer:Landroid/view/View;

    .line 129
    .line 130
    .line 131
    const v0, 0x7f0809e4

    .line 132
    .line 133
    .line 134
    const v1, 0x7f0809e5

    .line 135
    .line 136
    if-eqz p1, :cond_2

    .line 137
    .line 138
    .line 139
    const v2, 0x7f0a071f

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 143
    move-result-object p1

    .line 144
    .line 145
    check-cast p1, Lcom/narvii/influencer/StoryInfluencerPostIndicator;

    .line 146
    .line 147
    if-eqz p1, :cond_2

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v1}, Lcom/narvii/influencer/StoryInfluencerPostIndicator;->setSwitchOnColor(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v0}, Lcom/narvii/influencer/StoryInfluencerPostIndicator;->setSwitchOffColor(I)V

    .line 154
    .line 155
    .line 156
    :cond_2
    const p1, 0x7f0a0b9f

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 160
    move-result-object p1

    .line 161
    .line 162
    check-cast p1, Lcom/narvii/widget/PublishToGlobalLayout;

    .line 163
    .line 164
    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPostActivity;->publishToGlobalLayout:Lcom/narvii/widget/PublishToGlobalLayout;

    .line 165
    .line 166
    if-eqz p1, :cond_3

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    .line 171
    iget-object p1, p0, Lcom/narvii/chat/post/ThreadPostActivity;->publishToGlobalLayout:Lcom/narvii/widget/PublishToGlobalLayout;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v1}, Lcom/narvii/widget/PublishToGlobalLayout;->setSwitchOnColor(I)V

    .line 175
    .line 176
    iget-object p1, p0, Lcom/narvii/chat/post/ThreadPostActivity;->publishToGlobalLayout:Lcom/narvii/widget/PublishToGlobalLayout;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v0}, Lcom/narvii/widget/PublishToGlobalLayout;->setSwitchOffColor(I)V

    .line 180
    .line 181
    :cond_3
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 182
    .line 183
    check-cast p1, Lcom/narvii/chat/post/ThreadPost;

    .line 184
    .line 185
    iget p1, p1, Lcom/narvii/chat/post/ThreadPost;->publishToGlobal:I

    .line 186
    const/4 v0, 0x1

    .line 187
    .line 188
    if-ne p1, v0, :cond_4

    .line 189
    goto :goto_0

    .line 190
    :cond_4
    const/4 v0, 0x0

    .line 191
    .line 192
    :goto_0
    iput-boolean v0, p0, Lcom/narvii/chat/post/ThreadPostActivity;->publishOrgVisible:Z

    .line 193
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->isGroupChat()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lcom/narvii/post/DraftManager;->deleteDraft(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-super {p0}, Lcom/narvii/post/BasePostActivity;->onDestroy()V

    .line 25
    return-void
.end method

.method public onLocatingChanged(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->savePost()Lcom/narvii/chat/post/ThreadPost;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/chat/post/ThreadPostActivity;->updateView(Lcom/narvii/chat/post/ThreadPost;)V

    .line 8
    return-void
.end method

.method public onLocationResult(Lcom/narvii/location/GPSCoordinate;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->savePost()Lcom/narvii/chat/post/ThreadPost;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    .line 9
    iput p1, v0, Lcom/narvii/chat/post/ThreadPost;->latitude:I

    .line 10
    .line 11
    iput p1, v0, Lcom/narvii/chat/post/ThreadPost;->longitude:I

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->latitudeE6()I

    .line 16
    move-result v1

    .line 17
    .line 18
    iput v1, v0, Lcom/narvii/chat/post/ThreadPost;->latitude:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->longitudeE6()I

    .line 22
    move-result p1

    .line 23
    .line 24
    iput p1, v0, Lcom/narvii/chat/post/ThreadPost;->longitude:I

    .line 25
    .line 26
    :goto_0
    iput-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/narvii/chat/post/ThreadPostActivity;->updateView(Lcom/narvii/chat/post/ThreadPost;)V

    .line 30
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/post/BasePostActivity;->onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->savePost()Lcom/narvii/chat/post/ThreadPost;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 11
    move-result v0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    const/4 p1, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/model/Media;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {p2, p1}, Lcom/narvii/chat/post/ThreadPost;->setIcon(Ljava/lang/String;)V

    .line 28
    .line 29
    iput-object p2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p2}, Lcom/narvii/chat/post/ThreadPostActivity;->updateView(Lcom/narvii/chat/post/ThreadPost;)V

    .line 33
    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/post/DraftPostActivity;->onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V

    .line 4
    .line 5
    check-cast p2, Lcom/narvii/chat/ThreadResponse;

    .line 6
    .line 7
    iget-object p1, p2, Lcom/narvii/chat/ThreadResponse;->thread:Lcom/narvii/model/ChatThread;

    .line 8
    .line 9
    iget-object p2, p0, Lcom/narvii/chat/post/ThreadPostActivity;->bubble:Lcom/narvii/model/ChatBubble;

    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    new-instance p2, Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 16
    .line 17
    .line 18
    invoke-direct {p2, p0}, Lcom/narvii/monetization/bubble/BubbleHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 19
    .line 20
    iget-object v2, p0, Lcom/narvii/chat/post/ThreadPostActivity;->bubble:Lcom/narvii/model/ChatBubble;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v2, v1, v3, v0}, Lcom/narvii/monetization/bubble/BubbleHelper;->sendApplyBubbleRequest(Lcom/narvii/model/ChatBubble;ZLjava/lang/String;Lcom/narvii/util/Callback;)V

    .line 28
    .line 29
    :cond_0
    if-eqz p1, :cond_1

    .line 30
    .line 31
    const-string p2, "globalChat"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    check-cast p2, Lcom/narvii/chat/util/GlobalChatService;

    .line 38
    .line 39
    const-string v2, "config"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    check-cast v2, Lcom/narvii/config/ConfigService;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 49
    move-result v2

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v2, p0}, Lcom/narvii/chat/global/GlobalChatThread;->newGlobalChatThread(Lcom/narvii/model/ChatThread;ILandroid/content/Context;)Lcom/narvii/chat/global/GlobalChatThread;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v2}, Lcom/narvii/chat/util/GlobalChatService;->addRecentChat(Lcom/narvii/chat/global/GlobalChatThread;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->isEdit()Z

    .line 60
    move-result p2

    .line 61
    .line 62
    const-string v2, "Source"

    .line 63
    .line 64
    const-string v3, "justCreated"

    .line 65
    .line 66
    const-string v4, "thread"

    .line 67
    .line 68
    const-string v5, "id"

    .line 69
    .line 70
    const-class v6, Lcom/narvii/chat/ChatFragment;

    .line 71
    const/4 v7, 0x1

    .line 72
    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    const-string v8, "doAfter"

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v8}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object v9

    .line 80
    .line 81
    if-eqz v9, :cond_2

    .line 82
    .line 83
    const-string v1, "GO_LIVE"

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v8}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    move-result-object v8

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    move-result v1

    .line 92
    .line 93
    if-eqz v1, :cond_5

    .line 94
    .line 95
    .line 96
    invoke-static {v6}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    iget-object v6, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    move-result-object v5

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 113
    .line 114
    const-string v3, "showGoLive"

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    .line 119
    const-string v3, "live"

    .line 120
    .line 121
    .line 122
    invoke-direct {p0, v3}, Lcom/narvii/chat/post/ThreadPostActivity;->logCreatePostEvent(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-static {p0, v1}, Lcom/narvii/chat/post/ThreadPostActivity;->safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V

    .line 126
    goto :goto_0

    .line 127
    .line 128
    :cond_2
    if-eqz p1, :cond_5

    .line 129
    .line 130
    if-nez p2, :cond_5

    .line 131
    .line 132
    iget v8, p1, Lcom/narvii/model/ChatThread;->type:I

    .line 133
    const/4 v9, 0x2

    .line 134
    .line 135
    if-ne v8, v9, :cond_5

    .line 136
    .line 137
    .line 138
    invoke-static {v6}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 139
    move-result-object v6

    .line 140
    .line 141
    iget-object v8, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v6, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 148
    .line 149
    .line 150
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 151
    move-result-object v3

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    .line 156
    const-string v3, "View Created Post"

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    .line 161
    const-string v3, "stickerCollectionId"

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    move-result-object v4

    .line 166
    .line 167
    .line 168
    invoke-virtual {v6, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    .line 170
    iget-object v4, p0, Lcom/narvii/chat/post/ThreadPostActivity;->bubble:Lcom/narvii/model/ChatBubble;

    .line 171
    .line 172
    if-nez v4, :cond_3

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    move-result-object v3

    .line 177
    .line 178
    if-eqz v3, :cond_4

    .line 179
    :cond_3
    move v1, v7

    .line 180
    .line 181
    :cond_4
    const-string v3, "showKeyboard"

    .line 182
    .line 183
    .line 184
    invoke-virtual {v6, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 185
    .line 186
    const-string v1, "public-chatroom"

    .line 187
    .line 188
    .line 189
    invoke-direct {p0, v1}, Lcom/narvii/chat/post/ThreadPostActivity;->logCreatePostEvent(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-static {p0, v6}, Lcom/narvii/chat/post/ThreadPostActivity;->safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V

    .line 193
    .line 194
    :cond_5
    :goto_0
    if-eqz p1, :cond_6

    .line 195
    .line 196
    if-nez p2, :cond_6

    .line 197
    .line 198
    const-string p1, "statistics"

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 202
    move-result-object p1

    .line 203
    .line 204
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 205
    .line 206
    const-string p2, "User Creates a Chat"

    .line 207
    .line 208
    .line 209
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 210
    move-result-object p2

    .line 211
    .line 212
    const-string v1, "Type"

    .line 213
    .line 214
    const-string v3, "Public"

    .line 215
    .line 216
    .line 217
    invoke-virtual {p2, v1, v3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 218
    move-result-object p2

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    move-result-object v1

    .line 223
    .line 224
    .line 225
    invoke-virtual {p2, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 226
    move-result-object p2

    .line 227
    .line 228
    const-string v1, "User Creates a Chat Total"

    .line 229
    .line 230
    .line 231
    invoke-virtual {p2, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 232
    .line 233
    .line 234
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 235
    move-result-object p1

    .line 236
    .line 237
    const-string p2, "User Creates a Public Chat Total"

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 241
    :cond_6
    return-void
.end method

.method protected onPostLoaded(Lcom/narvii/chat/post/ThreadPost;)V
    .locals 1

    .line 2
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->onPostLoaded(Lcom/narvii/post/PostObject;)V

    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->isEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120438

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f120ec6

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 6
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

    .line 7
    iput v0, p1, Lcom/narvii/chat/post/ThreadPost;->publishToGlobal:I

    .line 8
    :cond_1
    invoke-direct {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->updatePublishToGlobalLayout()V

    return-void
.end method

.method protected bridge synthetic onPostLoaded(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/chat/post/ThreadPost;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/post/ThreadPostActivity;->onPostLoaded(Lcom/narvii/chat/post/ThreadPost;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onResume()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/chat/post/ThreadPostActivity;->autoShowKeyboard:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    const v0, 0x7f0a039d

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    instance-of v1, v0, Landroid/widget/EditText;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 22
    .line 23
    new-instance v1, Lcom/narvii/chat/post/ThreadPostActivity$1;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, p0, v0}, Lcom/narvii/chat/post/ThreadPostActivity$1;-><init>(Lcom/narvii/chat/post/ThreadPostActivity;Landroid/view/View;)V

    .line 27
    .line 28
    const-wide/16 v2, 0x64

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v2, v3}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 32
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

    const-class v0, Lcom/narvii/chat/post/ThreadPost;

    return-object v0
.end method

.method protected savePost()Lcom/narvii/chat/post/ThreadPost;
    .locals 2

    const v0, 0x7f0a0e9e

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 3
    check-cast v1, Lcom/narvii/chat/post/ThreadPost;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/narvii/chat/post/ThreadPost;->title:Ljava/lang/String;

    const v0, 0x7f0a039d

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 5
    check-cast v1, Lcom/narvii/chat/post/ThreadPost;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/narvii/chat/post/ThreadPost;->content:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 6
    check-cast v0, Lcom/narvii/chat/post/ThreadPost;

    return-object v0
.end method

.method protected bridge synthetic savePost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 1
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
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    const-string v1, "threadId"

    .line 5
    .line 6
    .line 7
    filled-new-array {v1}, [Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method protected updateInfluencerView()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/post/DraftPostActivity;->updateInfluencerView()V

    .line 4
    return-void
.end method

.method protected updateView(Lcom/narvii/chat/post/ThreadPost;)V
    .locals 12

    const v0, 0x7f0a02be

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0a06eb

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5
    move-object v1, v0

    check-cast v1, Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1}, Lcom/narvii/chat/post/ThreadPost;->icon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 6
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0e9e

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 8
    iget-object v1, p1, Lcom/narvii/chat/post/ThreadPost;->title:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    iget-object v1, p1, Lcom/narvii/chat/post/ThreadPost;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v0, 0x7f0a039d

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 11
    iget-object v1, p1, Lcom/narvii/chat/post/ThreadPost;->content:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 12
    iget-object v1, p1, Lcom/narvii/chat/post/ThreadPost;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const v0, 0x7f0a0632

    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_3

    goto/16 :goto_3

    .line 14
    :cond_3
    iget-object v3, p1, Lcom/narvii/chat/post/ThreadPost;->memberList:Ljava/util/ArrayList;

    if-nez v3, :cond_4

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 16
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 17
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    const v6, 0x7f0a02a9

    if-ne v4, v6, :cond_5

    .line 18
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 19
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_0

    :cond_5
    move-object v4, v5

    .line 20
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    iget-object v7, p1, Lcom/narvii/chat/post/ThreadPost;->memberList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v6, v7, :cond_6

    .line 21
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_0

    .line 22
    :cond_6
    iget-object v6, p1, Lcom/narvii/chat/post/ThreadPost;->memberList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_9

    .line 23
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_7

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    goto :goto_2

    :cond_7
    move-object v8, v5

    :goto_2
    if-nez v8, :cond_8

    const v8, 0x7f0d00be

    .line 24
    invoke-virtual {v3, v8, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 25
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 26
    :cond_8
    iget-object v9, p1, Lcom/narvii/chat/post/ThreadPost;->memberList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/narvii/model/User;

    const v10, 0x7f0a0171

    .line 27
    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/narvii/widget/NVImageView;

    invoke-virtual {v9}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const v10, 0x7f0a09f9

    .line 28
    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/narvii/widget/NicknameView;

    invoke-virtual {v10, v9}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    const v10, 0x7f0a02aa

    .line 29
    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    const v10, 0x7f0a02ab

    .line 30
    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/view/View;->setVisibility(I)V

    .line 31
    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    invoke-virtual {v8, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_9
    if-nez v4, :cond_a

    const p1, 0x7f0d00bf

    .line 33
    invoke-virtual {v3, p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 34
    :cond_a
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 35
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    const-string p1, "config"

    .line 36
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    const v0, 0x7f0a0b9f

    .line 37
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 38
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    if-eqz p1, :cond_b

    invoke-direct {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->isCommunityOpen()Z

    move-result p1

    if-eqz p1, :cond_b

    move v1, v2

    :cond_b
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/chat/post/ThreadPost;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/post/ThreadPostActivity;->updateView(Lcom/narvii/chat/post/ThreadPost;)V

    return-void
.end method

.method public userId()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    const-string v1, "userId"

    .line 5
    .line 6
    .line 7
    filled-new-array {v1}, [Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method protected validateUpload(Lcom/narvii/chat/post/ThreadPost;)Z
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->isGroupChat()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const p1, 0x7f0a0e9e

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const v1, 0x7f120eda

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

    .line 1
    check-cast p1, Lcom/narvii/chat/post/ThreadPost;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/post/ThreadPostActivity;->validateUpload(Lcom/narvii/chat/post/ThreadPost;)Z

    move-result p1

    return p1
.end method
