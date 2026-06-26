.class public Lcom/narvii/poweruser/AdvancedOptionDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "AdvancedOptionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;
    }
.end annotation


# instance fields
.field banListener:Landroid/view/View$OnClickListener;

.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field private helper:Lcom/narvii/poweruser/SendBroadcastHelper;

.field hideUserProfileListener:Landroid/view/View$OnClickListener;

.field listener:Landroid/view/View$OnClickListener;

.field private mAdvancedLayout:Landroid/widget/LinearLayout;

.field private mBlogCateLog:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/BlogCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mNvContext:Lcom/narvii/app/NVContext;

.field private mObject:Lcom/narvii/model/NVObject;

.field messageUserListener:Landroid/view/View$OnClickListener;

.field strikeUserProfileListener:Landroid/view/View$OnClickListener;

.field unBanListener:Landroid/view/View$OnClickListener;

.field unHideUserProfileListener:Landroid/view/View$OnClickListener;


# direct methods
.method private constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 3

    .line 89
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 362
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$2;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;)V

    iput-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 475
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$3;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$3;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;)V

    iput-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->banListener:Landroid/view/View$OnClickListener;

    .line 548
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$4;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$4;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;)V

    iput-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->unBanListener:Landroid/view/View$OnClickListener;

    .line 563
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$5;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$5;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;)V

    iput-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->strikeUserProfileListener:Landroid/view/View$OnClickListener;

    .line 587
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$6;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$6;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;)V

    iput-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->hideUserProfileListener:Landroid/view/View$OnClickListener;

    .line 602
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$7;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$7;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;)V

    iput-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->unHideUserProfileListener:Landroid/view/View$OnClickListener;

    .line 763
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$12;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$12;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;)V

    iput-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->messageUserListener:Landroid/view/View$OnClickListener;

    .line 90
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    .line 91
    new-instance v0, Lcom/narvii/poweruser/SendBroadcastHelper;

    invoke-direct {v0, p1}, Lcom/narvii/poweruser/SendBroadcastHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->helper:Lcom/narvii/poweruser/SendBroadcastHelper;

    const v0, 0x7f0b0170

    .line 92
    invoke-virtual {p0, v0}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    const v0, 0x7f09007d

    .line 93
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mAdvancedLayout:Landroid/widget/LinearLayout;

    .line 95
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0094

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    const/16 v1, 0xce

    const/16 v2, 0x7d

    .line 96
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setTitleColor(I)V

    .line 98
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0274

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/narvii/poweruser/AdvancedOptionDialog$1;

    invoke-direct {v2, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$1;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 104
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v0, p1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/poweruser/AdvancedOptionDialog$1;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->itemEquals(Lcom/narvii/widget/FlagItemLayout;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/narvii/poweruser/AdvancedOptionDialog;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->reviewQuiz()V

    return-void
.end method

.method static synthetic access$102(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/NVObject;)Lcom/narvii/model/NVObject;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/narvii/poweruser/AdvancedOptionDialog;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->sendStrike()V

    return-void
.end method

.method static synthetic access$1300(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/User;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->banUser(Lcom/narvii/model/User;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/User;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->unBanUser(Lcom/narvii/model/User;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->messageUser(Lcom/narvii/model/NVObject;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/User;Z)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->changUserProfileStatus(Lcom/narvii/model/User;Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/Blog;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->gotoQuizReviewPage(Lcom/narvii/model/Blog;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/narvii/poweruser/AdvancedOptionDialog;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->getAdminNoteNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/Comment;Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->sendDeleteCommentRequest(Lcom/narvii/model/Comment;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->showLeaveNotDialog(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/narvii/poweruser/AdvancedOptionDialog;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->showStrikeDialog(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/narvii/poweruser/AdvancedOptionDialog;Ljava/lang/String;)Z
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->isMessageValidForOtherReasons(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/ChatMessage;Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->sendDeleteChatMessageRequest(Lcom/narvii/model/ChatMessage;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/narvii/poweruser/AdvancedOptionDialog;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->showCategoryPickFragment()V

    return-void
.end method

.method static synthetic access$2502(Lcom/narvii/poweruser/AdvancedOptionDialog;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mBlogCateLog:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/Feed;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->setupFeedOptions(Lcom/narvii/model/Feed;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/Comment;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->setupCommentOptions(Lcom/narvii/model/Comment;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->setupChatRoomOptions(Lcom/narvii/model/ChatThread;)V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/NVObject;Z)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->changeObjectStatus(Lcom/narvii/model/NVObject;Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/ChatMessage;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->setupChatMessageOptions(Lcom/narvii/model/ChatMessage;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/User;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->setupUserProfileOptions(Lcom/narvii/model/User;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/SharedFile;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->setupSharedFileOptions(Lcom/narvii/model/SharedFile;)V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/ChatMessage;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->deleteChatMessage(Lcom/narvii/model/ChatMessage;)V

    return-void
.end method

.method static synthetic access$500(Lcom/narvii/poweruser/AdvancedOptionDialog;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->changeCategory()V

    return-void
.end method

.method static synthetic access$600(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/User;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->changeUserTitle(Lcom/narvii/model/User;)V

    return-void
.end method

.method static synthetic access$700(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/Comment;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->deleteComment(Lcom/narvii/model/Comment;)V

    return-void
.end method

.method static synthetic access$800(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/poweruser/SendBroadcastHelper;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->helper:Lcom/narvii/poweruser/SendBroadcastHelper;

    return-object p0
.end method

.method static synthetic access$900(Lcom/narvii/poweruser/AdvancedOptionDialog;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->launchModerationHistory()V

    return-void
.end method

.method private addSendBroadcastItem(Lcom/narvii/model/NVObject;)V
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 213
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    .line 214
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->status()I

    move-result p1

    const/16 v1, 0x9

    if-eq p1, v1, :cond_0

    invoke-virtual {v0}, Lcom/narvii/model/User;->isLeader()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 215
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f017b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 216
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f017c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, -0x1000000

    iget-object v2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 215
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private addStrikeUserItem(ZZ)V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 356
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 357
    invoke-virtual {v0}, Lcom/narvii/model/User;->isLeader()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const p1, 0x7f0f00ad

    const/16 p2, -0x6b00

    .line 358
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->strikeUserProfileListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(IILandroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private banUser(Lcom/narvii/model/User;I)V
    .locals 4

    .line 957
    new-instance v0, Lcom/narvii/util/dialog/RequestDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/RequestDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/16 v2, 0xce

    const/16 v3, 0x7d

    .line 958
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/narvii/util/dialog/AlertDialog;->setTitleColor(I)V

    const v2, 0x7f0f02d2

    .line 959
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setTitle(I)V

    .line 961
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0e92

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 962
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 963
    invoke-virtual {v0, v3}, Lcom/narvii/util/dialog/RequestDialog;->setEdtHint(Ljava/lang/CharSequence;)V

    .line 964
    invoke-virtual {v0}, Lcom/narvii/util/dialog/RequestDialog;->setCountShow()V

    const/16 v2, 0x1f4

    .line 965
    invoke-virtual {v0, v2}, Lcom/narvii/util/dialog/RequestDialog;->setMaxCount(I)V

    .line 966
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0193

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/narvii/poweruser/AdvancedOptionDialog$18;

    invoke-direct {v3, p0, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog$18;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/util/dialog/RequestDialog;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/narvii/util/dialog/RequestDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 973
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f023e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/narvii/poweruser/AdvancedOptionDialog$19;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog$19;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/util/dialog/RequestDialog;Lcom/narvii/model/User;I)V

    const/4 p1, 0x4

    invoke-virtual {v0, v1, p1, v2}, Lcom/narvii/util/dialog/RequestDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 1018
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method private changUserProfileStatus(Lcom/narvii/model/User;Z)V
    .locals 1

    .line 694
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog$9;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/User;Z)V

    invoke-direct {p0, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->showLeaveNotDialog(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method private changeCategory()V
    .locals 5

    .line 1265
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    instance-of v0, v0, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_1

    .line 1267
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mBlogCateLog:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1268
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/blog/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 1269
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1270
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 1271
    iget-object v2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    const-string v3, "api"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 1272
    new-instance v3, Lcom/narvii/poweruser/AdvancedOptionDialog$28;

    const-class v4, Lcom/narvii/model/api/BlogResponse;

    invoke-direct {v3, p0, v4, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog$28;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {v2, v0, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    goto :goto_0

    .line 1289
    :cond_0
    invoke-direct {p0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->showCategoryPickFragment()V

    :cond_1
    :goto_0
    return-void
.end method

.method private changeObjectStatus(Lcom/narvii/model/NVObject;Z)V
    .locals 1

    .line 1059
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$21;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog$21;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/NVObject;Z)V

    invoke-direct {p0, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->showLeaveNotDialog(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method private changeUserTitle(Lcom/narvii/model/User;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 892
    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 895
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 896
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 897
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 898
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/user-profile/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 899
    new-instance v2, Lcom/narvii/poweruser/AdvancedOptionDialog$17;

    const-class v3, Lcom/narvii/model/api/UserResponse;

    invoke-direct {v2, p0, v3, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog$17;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {v1, p1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private deleteChatMessage(Lcom/narvii/model/ChatMessage;)V
    .locals 4

    .line 1126
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f1188

    .line 1127
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    const/high16 v1, -0x10000

    .line 1128
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setTitleColor(I)V

    const v1, 0x7f0f0350

    .line 1129
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    const v1, 0x7f0f0193

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1130
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 1131
    new-instance v1, Lcom/narvii/poweruser/AdvancedOptionDialog$22;

    invoke-direct {v1, p0, v0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$22;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/util/dialog/AlertDialog;Lcom/narvii/model/ChatMessage;)V

    const p1, 0x7f0f119f

    const/16 v2, 0x8

    invoke-virtual {v0, p1, v2, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 1145
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method private deleteComment(Lcom/narvii/model/Comment;)V
    .locals 4

    .line 837
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f1188

    .line 838
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    const/high16 v1, -0x10000

    .line 839
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setTitleColor(I)V

    const v1, 0x7f0f0351

    .line 840
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    const v1, 0x7f0f0193

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 841
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 842
    new-instance v1, Lcom/narvii/poweruser/AdvancedOptionDialog$15;

    invoke-direct {v1, p0, v0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$15;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/util/dialog/AlertDialog;Lcom/narvii/model/Comment;)V

    const p1, 0x7f0f119f

    const/16 v2, 0x8

    invoke-virtual {v0, p1, v2, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 856
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method private getAdminNoteNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 2

    .line 729
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const-string v1, "content"

    .line 730
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object v0
.end method

.method private gotoQuizReviewPage(Lcom/narvii/model/Blog;)V
    .locals 2

    .line 666
    const-class v0, Lcom/narvii/quiz/QuizReviewListFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 667
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "quiz"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 668
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private isMessageValidForOtherReasons(Ljava/lang/String;)Z
    .locals 9

    .line 936
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 937
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f0e95

    invoke-static {p1, v0, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return v1

    :cond_0
    const-string v0, " "

    .line 940
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 941
    array-length v3, p1

    const/4 v4, 0x3

    if-lt v3, v4, :cond_3

    .line 943
    array-length v3, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v7, p1, v5

    .line 944
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    add-int/lit8 v6, v6, 0x1

    :cond_1
    if-lt v6, v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 952
    :cond_3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f0e96

    invoke-static {p1, v0, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return v1
.end method

.method private itemEquals(Lcom/narvii/widget/FlagItemLayout;I)Z
    .locals 1

    .line 790
    invoke-virtual {p1}, Lcom/narvii/widget/FlagItemLayout;->getLeftText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private launchModerationHistory()V
    .locals 3

    .line 672
    const-class v0, Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 673
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "objectId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v1

    const-string v2, "objectType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 676
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    instance-of v2, v1, Lcom/narvii/model/User;

    if-eqz v2, :cond_0

    .line 677
    check-cast v1, Lcom/narvii/model/User;

    invoke-virtual {v1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 678
    :cond_0
    instance-of v2, v1, Lcom/narvii/model/Feed;

    if-eqz v2, :cond_1

    .line 679
    check-cast v1, Lcom/narvii/model/Feed;

    invoke-virtual {v1}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 680
    :cond_1
    instance-of v2, v1, Lcom/narvii/model/ChatThread;

    if-eqz v2, :cond_2

    .line 681
    check-cast v1, Lcom/narvii/model/ChatThread;

    iget-object v1, v1, Lcom/narvii/model/ChatThread;->title:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const-string v2, "title"

    .line 683
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    instance-of v2, v1, Lcom/narvii/app/NVFragment;

    if-eqz v2, :cond_3

    .line 685
    check-cast v1, Lcom/narvii/app/NVFragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 686
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1, v0}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 689
    :cond_3
    invoke-interface {v1, v0}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private messageUser(Lcom/narvii/model/NVObject;)V
    .locals 4

    .line 1255
    new-instance p1, Lcom/narvii/chat/RequestChatUserHelper;

    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    invoke-direct {p1, v0}, Lcom/narvii/chat/RequestChatUserHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 1256
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v1

    new-instance v2, Lcom/narvii/poweruser/AdvancedOptionDialog$27;

    invoke-direct {v2, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$27;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/narvii/chat/RequestChatUserHelper;->request(Lcom/narvii/model/NVObject;ILjava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method private reviewQuiz()V
    .locals 7

    .line 629
    const-class v0, Lcom/narvii/model/api/BlogResponse;

    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    instance-of v2, v1, Lcom/narvii/model/Blog;

    if-eqz v2, :cond_0

    .line 630
    check-cast v1, Lcom/narvii/model/Blog;

    .line 631
    new-instance v2, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 632
    invoke-virtual {v2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 633
    iget-object v3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    const-string v4, "api"

    invoke-interface {v3, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/util/http/ApiService;

    .line 634
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/blog/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v4, "action"

    const-string v5, "review"

    invoke-virtual {v1, v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    new-instance v4, Lcom/narvii/poweruser/AdvancedOptionDialog$8;

    invoke-direct {v4, p0, v0, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog$8;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {v3, v1, v4}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_0
    return-void
.end method

.method private sendDeleteChatMessageRequest(Lcom/narvii/model/ChatMessage;Ljava/lang/String;)V
    .locals 3

    .line 1150
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/chat/thread/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/message/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/admin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const/16 v1, 0x66

    .line 1152
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "adminOpName"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1153
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1154
    invoke-direct {p0, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->getAdminNoteNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p2

    const-string v1, "adminOpNote"

    invoke-virtual {v0, v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1156
    :cond_0
    new-instance p2, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1157
    new-instance v1, Lcom/narvii/poweruser/AdvancedOptionDialog$23;

    invoke-direct {v1, p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$23;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/ChatMessage;)V

    iput-object v1, p2, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 1172
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 1173
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 1174
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    iget-object p2, p2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private sendDeleteCommentRequest(Lcom/narvii/model/Comment;Ljava/lang/String;)V
    .locals 3

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    invoke-static {v1}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result v1

    invoke-static {v1, p1}, Lcom/narvii/comment/CommentHelper;->getBaseCommentPath(ZLcom/narvii/model/Comment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/admin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 861
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const/16 v1, 0x66

    .line 862
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "adminOpName"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 863
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 864
    invoke-direct {p0, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->getAdminNoteNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p2

    const-string v1, "adminOpNote"

    invoke-virtual {v0, v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 866
    :cond_0
    new-instance p2, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 867
    new-instance v1, Lcom/narvii/poweruser/AdvancedOptionDialog$16;

    invoke-direct {v1, p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$16;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/Comment;)V

    iput-object v1, p2, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 881
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 882
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 883
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    iget-object p2, p2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private sendStrike()V
    .locals 4

    .line 618
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/narvii/chat/template/SendStrikeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 619
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 620
    iget-object v2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "attachObject"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v2

    const-string v3, "attachType"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x1

    const-string v3, "launchMode"

    .line 622
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "autoCheckStrike"

    .line 623
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 624
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 625
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setupChatMessageOptions(Lcom/narvii/model/ChatMessage;)V
    .locals 3

    .line 275
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mAdvancedLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 276
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 277
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    .line 278
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    :goto_0
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v1, :cond_1

    .line 279
    invoke-virtual {v1}, Lcom/narvii/model/User;->isCurator()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0f00a8

    .line 280
    iget-object v2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->messageUserListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 283
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/narvii/model/User;->isSystem()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addStrikeUserItem(ZZ)V

    const p1, 0x7f0f009b

    const/high16 v0, -0x10000

    .line 285
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(IILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupChatRoomOptions(Lcom/narvii/model/ChatThread;)V
    .locals 6

    .line 236
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mAdvancedLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 237
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v2

    .line 242
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 244
    :goto_0
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->publicChat()Z

    move-result v3

    const/16 v4, 0x9

    if-eqz v3, :cond_2

    iget v3, p1, Lcom/narvii/model/ChatThread;->status:I

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 245
    invoke-virtual {v3}, Lcom/narvii/modulization/CommunityConfigHelper;->isFeaturedChatThreadEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/narvii/model/User;->isCurator()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 246
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->featureType()I

    move-result v3

    const/4 v5, 0x5

    if-ne v3, v5, :cond_1

    const v3, 0x7f0f00b0

    .line 247
    iget-object v5, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v3, v5}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    const v3, 0x7f0f00a6

    .line 249
    iget-object v5, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v3, v5}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 252
    invoke-virtual {v2}, Lcom/narvii/model/User;->isCurator()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v3}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f0f00a8

    .line 253
    iget-object v5, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->messageUserListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v3, v5}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz v2, :cond_4

    .line 255
    invoke-virtual {v2}, Lcom/narvii/model/User;->isCurator()Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f0f00a9

    .line 256
    iget-object v3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v2, v3}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    :cond_4
    if-eqz p1, :cond_5

    .line 258
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->owner()Lcom/narvii/model/User;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->owner()Lcom/narvii/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/model/User;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-direct {p0, v0, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addStrikeUserItem(ZZ)V

    .line 260
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f10de

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f10e9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, -0x1000000

    iget-object v3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V

    .line 262
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->status()I

    move-result v0

    if-ne v0, v4, :cond_6

    const v0, 0x7f0f009d

    .line 263
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_6
    const v0, 0x7f0f009c

    const/high16 v1, -0x10000

    .line 265
    iget-object v2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v1, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(IILandroid/view/View$OnClickListener;)V

    .line 269
    :goto_2
    iget v0, p1, Lcom/narvii/model/ChatThread;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 270
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addSendBroadcastItem(Lcom/narvii/model/NVObject;)V

    :cond_7
    return-void
.end method

.method private setupCommentOptions(Lcom/narvii/model/Comment;)V
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mAdvancedLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 223
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 224
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    .line 225
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    iget-object v2, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v1, :cond_0

    .line 226
    invoke-virtual {v1}, Lcom/narvii/model/User;->isCurator()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0f00a8

    .line 227
    iget-object v2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->messageUserListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 230
    iget-object p1, p1, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/model/User;->isSystem()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addStrikeUserItem(ZZ)V

    const p1, 0x7f0f009e

    const/high16 v0, -0x10000

    .line 232
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(IILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupFeedOptions(Lcom/narvii/model/Feed;)V
    .locals 11

    .line 152
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mAdvancedLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 153
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 154
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    .line 155
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    :goto_0
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 156
    iget-object v2, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/narvii/model/User;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 157
    invoke-virtual {v1}, Lcom/narvii/model/User;->isCurator()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v2}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0f00a8

    .line 158
    iget-object v6, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->messageUserListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v2, v6}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 160
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->status()I

    move-result v2

    const/16 v6, 0x9

    if-eq v2, v6, :cond_6

    iget-object v2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v2}, Lcom/narvii/modulization/CommunityConfigHelper;->isFeaturedPostEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 161
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->featureType()I

    move-result v2

    const/4 v7, 0x2

    if-eq v2, v7, :cond_3

    const v2, 0x7f0f00aa

    .line 162
    iget-object v8, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v2, v8}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 164
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->featureType()I

    move-result v2

    if-ne v2, v5, :cond_4

    const v2, 0x7f0f00af

    .line 165
    iget-object v7, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v2, v7}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 166
    :cond_4
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->featureType()I

    move-result v2

    if-ne v2, v7, :cond_5

    const v2, 0x7f0f00b2

    .line 167
    iget-object v7, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v2, v7}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 168
    :cond_5
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->featureType()I

    move-result v2

    if-nez v2, :cond_6

    const v2, 0x7f0f00a5

    .line 169
    iget-object v7, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v2, v7}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 173
    :cond_6
    :goto_2
    instance-of v2, p1, Lcom/narvii/model/Blog;

    const/4 v7, 0x6

    if-eqz v2, :cond_7

    move-object v8, p1

    check-cast v8, Lcom/narvii/model/Blog;

    iget v8, v8, Lcom/narvii/model/Blog;->type:I

    if-ne v8, v7, :cond_7

    const v8, 0x7f0f00ac

    .line 174
    iget-object v9, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v8, v9}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 177
    :cond_7
    new-instance v8, Lcom/narvii/modulization/CommunityConfigHelper;

    iget-object v9, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v8, v9}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 178
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v9

    if-ne v9, v5, :cond_8

    if-eqz v1, :cond_8

    .line 180
    invoke-virtual {v1}, Lcom/narvii/model/User;->isCurator()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 181
    invoke-virtual {v8}, Lcom/narvii/modulization/CommunityConfigHelper;->isTopicCategoryEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 182
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0f009a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/high16 v9, -0x1000000

    iget-object v10, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v8, v3, v9, v10}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V

    :cond_8
    if-eqz v2, :cond_a

    .line 185
    move-object v2, p1

    check-cast v2, Lcom/narvii/model/Blog;

    iget v3, v2, Lcom/narvii/model/Blog;->type:I

    if-ne v3, v7, :cond_a

    .line 186
    invoke-virtual {v2}, Lcom/narvii/model/Blog;->isInBestQuiz()Z

    move-result v2

    if-nez v2, :cond_9

    const v2, 0x7f0f0098

    .line 187
    iget-object v3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v2, v3}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_9
    const v2, 0x7f0f00ab

    .line 189
    iget-object v3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v2, v3}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 193
    :cond_a
    :goto_3
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addSendBroadcastItem(Lcom/narvii/model/NVObject;)V

    if-eqz p1, :cond_b

    .line 195
    iget-object v2, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/narvii/model/User;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v4, 0x1

    :cond_b
    invoke-direct {p0, v0, v4}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addStrikeUserItem(ZZ)V

    .line 197
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->status()I

    move-result p1

    if-ne p1, v6, :cond_c

    const p1, 0x7f0f00a4

    .line 198
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    goto :goto_4

    :cond_c
    const p1, 0x7f0f00a0

    const/high16 v0, -0x10000

    .line 200
    iget-object v2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(IILandroid/view/View$OnClickListener;)V

    :goto_4
    if-eqz v1, :cond_d

    .line 204
    invoke-virtual {v1}, Lcom/narvii/model/User;->isCurator()Z

    move-result p1

    if-eqz p1, :cond_d

    const p1, 0x7f0f00a9

    .line 205
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    :cond_d
    return-void
.end method

.method private setupSharedFileOptions(Lcom/narvii/model/SharedFile;)V
    .locals 4

    .line 289
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mAdvancedLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 290
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 291
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    .line 292
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/narvii/model/SharedFile;->author:Lcom/narvii/model/User;

    iget-object v2, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v1, :cond_0

    .line 293
    invoke-virtual {v1}, Lcom/narvii/model/User;->isCurator()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v2}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0f00a8

    .line 294
    iget-object v3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->messageUserListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v2, v3}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 296
    iget-object v2, p1, Lcom/narvii/model/SharedFile;->author:Lcom/narvii/model/User;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/narvii/model/User;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v0, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addStrikeUserItem(ZZ)V

    .line 297
    iget p1, p1, Lcom/narvii/model/SharedFile;->status:I

    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    const p1, 0x7f0f00a3

    .line 298
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    const p1, 0x7f0f009f

    const/high16 v0, -0x10000

    .line 300
    iget-object v2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(IILandroid/view/View$OnClickListener;)V

    :goto_1
    if-eqz v1, :cond_3

    .line 302
    invoke-virtual {v1}, Lcom/narvii/model/User;->isCurator()Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f0f00a9

    .line 303
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method private setupUserProfileOptions(Lcom/narvii/model/User;)V
    .locals 5

    .line 308
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mAdvancedLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 309
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 310
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    .line 311
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v1, :cond_0

    .line 312
    invoke-virtual {v1}, Lcom/narvii/model/User;->isCurator()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v2}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0f00a8

    .line 313
    iget-object v3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->messageUserListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v2, v3}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 315
    invoke-virtual {v1}, Lcom/narvii/model/User;->isLeader()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0f00a2

    .line 316
    iget-object v3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v2, v3}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 318
    :cond_1
    iget-object v2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v2}, Lcom/narvii/modulization/CommunityConfigHelper;->isFeaturedMemberEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/narvii/model/User;->isLeader()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 319
    invoke-virtual {p1}, Lcom/narvii/model/User;->featureType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    const v2, 0x7f0f1101

    .line 320
    iget-object v3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v2, v3}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 321
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/model/User;->featureType()I

    move-result v2

    if-nez v2, :cond_3

    const v2, 0x7f0f06a4

    .line 322
    iget-object v3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v2, v3}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    .line 326
    invoke-virtual {v1}, Lcom/narvii/model/User;->isCurator()Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f0f00a9

    .line 327
    iget-object v3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v2, v3}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    :cond_4
    if-eqz p1, :cond_5

    .line 329
    invoke-virtual {p1}, Lcom/narvii/model/User;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    invoke-direct {p0, v0, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addStrikeUserItem(ZZ)V

    if-eqz v1, :cond_7

    .line 331
    invoke-virtual {v1}, Lcom/narvii/model/User;->isCurator()Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v0, :cond_7

    .line 332
    invoke-virtual {p1}, Lcom/narvii/model/User;->hideUserProfile()Z

    move-result v2

    if-nez v2, :cond_6

    const v2, 0x7f0f00a7

    const/16 v3, -0x6b00

    .line 333
    iget-object v4, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->hideUserProfileListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v2, v3, v4}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(IILandroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_6
    const v2, 0x7f0f00b1

    .line 335
    iget-object v3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->unHideUserProfileListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v2, v3}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    :cond_7
    :goto_2
    if-eqz v1, :cond_9

    .line 340
    invoke-virtual {v1}, Lcom/narvii/model/User;->isLeader()Z

    move-result v1

    if-eqz v1, :cond_9

    if-nez v0, :cond_9

    .line 341
    invoke-virtual {p1}, Lcom/narvii/model/User;->status()I

    move-result p1

    const/16 v0, 0x9

    const/high16 v1, -0x10000

    if-ne p1, v0, :cond_8

    const p1, 0x7f0f00ae

    .line 342
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->unBanListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(IILandroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_8
    const p1, 0x7f0f0099

    .line 344
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->banListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(IILandroid/view/View$OnClickListener;)V

    :cond_9
    :goto_3
    return-void
.end method

.method private showBanDialog()V
    .locals 0

    return-void
.end method

.method private showCategoryPickFragment()V
    .locals 3

    .line 1295
    const-class v0, Lcom/narvii/blog/category/ChangeCategoryFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1296
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mBlogCateLog:Ljava/util/List;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "blogCategoryList"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1297
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    check-cast v1, Lcom/narvii/model/Blog;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "blog"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1298
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    check-cast v1, Lcom/narvii/model/Blog;

    iget v1, v1, Lcom/narvii/model/Blog;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "isQuiz"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1299
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1, v0}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    .line 1300
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1301
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method private showLeaveNotDialog(Lcom/narvii/util/Callback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 735
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 738
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const/16 v1, 0xce

    const/16 v2, 0x7d

    const/4 v3, 0x0

    .line 739
    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setTitleColor(I)V

    const v1, 0x7f0f0ace

    .line 740
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    const v1, 0x7f0b0610

    .line 741
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    const v1, 0x7f090965

    .line 742
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 744
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0f0193

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/narvii/poweruser/AdvancedOptionDialog$10;

    invoke-direct {v4, p0, v1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog$10;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Landroid/widget/EditText;Lcom/narvii/util/dialog/AlertDialog;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/narvii/util/dialog/AlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 751
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0f78

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-instance v4, Lcom/narvii/poweruser/AdvancedOptionDialog$11;

    invoke-direct {v4, p0, p1, v1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog$11;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/util/Callback;Landroid/widget/EditText;Lcom/narvii/util/dialog/AlertDialog;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/narvii/util/dialog/AlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 760
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method private showStrikeDialog(I)V
    .locals 6

    .line 1178
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 1179
    new-instance v1, Lcom/narvii/modulization/CommunityConfigHelper;

    iget-object v2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v1, v2}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 1180
    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    move-result v1

    .line 1181
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    .line 1182
    invoke-virtual {v0}, Lcom/narvii/model/User;->isLeader()Z

    move-result v0

    .line 1185
    new-instance v2, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    if-nez p1, :cond_0

    .line 1187
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v3, 0x7f0f1086

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    const/4 v3, 0x7

    if-eq p1, v3, :cond_2

    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    goto :goto_0

    .line 1191
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v3, 0x7f0f1085

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1189
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v3, 0x7f0f1084

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    const p1, 0x7f0b0046

    .line 1193
    invoke-virtual {v2, p1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    if-eqz v0, :cond_3

    const p1, 0x7f0902d0

    .line 1195
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f106b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const p1, 0x7f090175

    .line 1197
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090173

    .line 1198
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    const/16 v4, 0x8

    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1199
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f00ad

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1200
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f0f79

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1201
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v1, Lcom/narvii/poweruser/AdvancedOptionDialog$24;

    invoke-direct {v1, p0, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog$24;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/util/dialog/AlertDialog;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1226
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$25;

    invoke-direct {v0, p0, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog$25;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/util/dialog/AlertDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090171

    .line 1235
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0f03aa

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1236
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$26;

    invoke-direct {v0, p0, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog$26;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/util/dialog/AlertDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1244
    invoke-virtual {v2}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method private unBanUser(Lcom/narvii/model/User;)V
    .locals 1

    .line 1027
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$20;

    invoke-direct {v0, p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$20;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/User;)V

    invoke-direct {p0, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->showLeaveNotDialog(Lcom/narvii/util/Callback;)V

    return-void
.end method


# virtual methods
.method public addItem(IILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 139
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public addItem(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 143
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public addItem(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public addItem(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    const/16 v0, 0x28

    .line 135
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public addItem(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V
    .locals 2

    .line 117
    new-instance v0, Lcom/narvii/widget/FlagItemLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/FlagItemLayout;-><init>(Landroid/content/Context;)V

    .line 118
    invoke-virtual {v0, p1}, Lcom/narvii/widget/FlagItemLayout;->setLeftText(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0, p2}, Lcom/narvii/widget/FlagItemLayout;->setHintText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {v0}, Lcom/narvii/widget/FlagItemLayout;->hideRight()V

    .line 121
    invoke-virtual {v0, p3}, Lcom/narvii/widget/FlagItemLayout;->setLeftTextColor(I)V

    .line 122
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const p2, 0x7f0801cb

    const/16 p3, 0x10

    if-lt p1, p3, :cond_0

    .line 123
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    :goto_0
    invoke-virtual {v0, p4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mAdvancedLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, 0x1

    const/high16 p3, 0x41200000    # 10.0f

    .line 130
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    invoke-static {p2, p3, p4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    const/high16 p3, -0x40800000    # -1.0f

    mul-float p2, p2, p3

    float-to-int p2, p2

    const/4 p3, 0x0

    .line 131
    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    return-void
.end method

.method protected baseLayoutId()I
    .locals 1

    const v0, 0x7f0b0174

    return v0
.end method

.method public show()V
    .locals 0

    .line 148
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method submitOfficialCatalog(Lcom/narvii/model/Item;)V
    .locals 4

    .line 794
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 797
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1030073

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f01bb

    .line 799
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 800
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0083

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 801
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v2, 0x104000a

    .line 802
    new-instance v3, Lcom/narvii/poweruser/AdvancedOptionDialog$13;

    invoke-direct {v3, p0, v1, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$13;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Landroid/view/View;Lcom/narvii/model/Item;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    .line 825
    sget-object v2, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 826
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 828
    new-instance p1, Lcom/narvii/poweruser/AdvancedOptionDialog$14;

    invoke-direct {p1, p0, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog$14;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Landroid/view/View;)V

    const-wide/16 v0, 0x190

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
