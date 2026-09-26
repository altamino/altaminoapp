.class public Lcom/narvii/poweruser/AdvancedOptionDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "SourceFile"


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

    .line 2
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$2;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;)V

    iput-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 4
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$3;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$3;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;)V

    iput-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->banListener:Landroid/view/View$OnClickListener;

    .line 5
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$4;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$4;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;)V

    iput-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->unBanListener:Landroid/view/View$OnClickListener;

    .line 6
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$5;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$5;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;)V

    iput-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->strikeUserProfileListener:Landroid/view/View$OnClickListener;

    .line 7
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$6;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$6;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;)V

    iput-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->hideUserProfileListener:Landroid/view/View$OnClickListener;

    .line 8
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$7;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$7;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;)V

    iput-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->unHideUserProfileListener:Landroid/view/View$OnClickListener;

    .line 9
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$12;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$12;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;)V

    iput-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->messageUserListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    .line 10
    new-instance v0, Lcom/narvii/poweruser/SendBroadcastHelper;

    invoke-direct {v0, p1}, Lcom/narvii/poweruser/SendBroadcastHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->helper:Lcom/narvii/poweruser/SendBroadcastHelper;

    const v0, 0x7f0d018e

    .line 11
    invoke-virtual {p0, v0}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    const v0, 0x7f0a00b6

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mAdvancedLayout:Landroid/widget/LinearLayout;

    .line 13
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12009d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v0, 0xce

    const/16 v1, 0x7d

    const/4 v2, 0x0

    .line 14
    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/narvii/util/dialog/AlertDialog;->setTitleColor(I)V

    .line 15
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1202ba

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/narvii/poweruser/AdvancedOptionDialog$1;

    invoke-direct {v1, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$1;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;)V

    invoke-virtual {p0, v0, v2, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 16
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v0, p1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/poweruser/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/SharedFile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->setupSharedFileOptions(Lcom/narvii/model/SharedFile;)V

    return-void
.end method

.method static bridge synthetic B(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/User;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->setupUserProfileOptions(Lcom/narvii/model/User;)V

    return-void
.end method

.method static bridge synthetic C(Lcom/narvii/poweruser/AdvancedOptionDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->showCategoryPickFragment()V

    return-void
.end method

.method static bridge synthetic D(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->showLeaveNotDialog(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method static bridge synthetic E(Lcom/narvii/poweruser/AdvancedOptionDialog;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->showStrikeDialog(I)V

    return-void
.end method

.method static bridge synthetic F(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/User;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->unBanUser(Lcom/narvii/model/User;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/poweruser/SendBroadcastHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->helper:Lcom/narvii/poweruser/SendBroadcastHelper;

    return-object p0
.end method

.method private addSendBroadcastItem(Lcom/narvii/model/NVObject;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "account"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->status()I

    .line 18
    move-result p1

    .line 19
    .line 20
    const/16 v1, 0x9

    .line 21
    .line 22
    if-eq p1, v1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/model/User;->isLeader()Z

    .line 26
    move-result p1

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    const v0, 0x7f1201c7

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    const v1, 0x7f1201c8

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    const/high16 v1, -0x1000000

    .line 61
    .line 62
    iget-object v2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V

    .line 66
    :cond_0
    return-void
.end method

.method private addStrikeUserItem(ZZ)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    .line 12
    .line 13
    const-string v1, "account"

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/model/User;->isLeader()Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    if-nez p2, :cond_1

    .line 36
    .line 37
    const/16 p1, -0x6b00

    .line 38
    .line 39
    iget-object p2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->strikeUserProfileListener:Landroid/view/View$OnClickListener;

    .line 40
    .line 41
    .line 42
    const v0, 0x7f1200b6

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0, p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(IILandroid/view/View$OnClickListener;)V

    .line 46
    :cond_1
    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method private banUser(Lcom/narvii/model/User;I)V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/RequestDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/RequestDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    const/16 v1, 0xce

    .line 12
    .line 13
    const/16 v2, 0x7d

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    .line 17
    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setTitleColor(I)V

    .line 22
    .line 23
    .line 24
    const v1, 0x7f12031d

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    const v2, 0x7f120fb5

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    new-instance v2, Landroid/text/SpannableString;

    .line 41
    .line 42
    .line 43
    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Lcom/narvii/util/dialog/RequestDialog;->setEdtHint(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/narvii/util/dialog/RequestDialog;->setCountShow()V

    .line 50
    .line 51
    const/16 v1, 0x1f4

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/RequestDialog;->setMaxCount(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    .line 61
    const v2, 0x7f1201e2

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    new-instance v2, Lcom/narvii/poweruser/AdvancedOptionDialog$18;

    .line 68
    .line 69
    .line 70
    invoke-direct {v2, p0, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog$18;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/util/dialog/RequestDialog;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1, v3, v2}, Lcom/narvii/util/dialog/RequestDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    const v2, 0x7f120281

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    new-instance v2, Lcom/narvii/poweruser/AdvancedOptionDialog$19;

    .line 87
    .line 88
    .line 89
    invoke-direct {v2, p0, v0, p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog$19;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/util/dialog/RequestDialog;Lcom/narvii/model/User;I)V

    .line 90
    const/4 p1, 0x4

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1, p1, v2}, Lcom/narvii/util/dialog/RequestDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 97
    return-void
.end method

.method static bridge synthetic c(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    return-object p0
.end method

.method private changUserProfileStatus(Lcom/narvii/model/User;Z)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$9;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog$9;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/User;Z)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->showLeaveNotDialog(Lcom/narvii/util/Callback;)V

    .line 9
    return-void
.end method

.method private changeCategory()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    .line 3
    .line 4
    instance-of v0, v0, Lcom/narvii/model/Blog;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mBlogCateLog:Ljava/util/List;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    const-string v2, "/blog/"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 59
    .line 60
    iget-object v2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    .line 61
    .line 62
    const-string v3, "api"

    .line 63
    .line 64
    .line 65
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 69
    .line 70
    new-instance v3, Lcom/narvii/poweruser/AdvancedOptionDialog$28;

    .line 71
    .line 72
    const-class v4, Lcom/narvii/model/api/BlogResponse;

    .line 73
    .line 74
    .line 75
    invoke-direct {v3, p0, v4, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog$28;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v0, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 79
    goto :goto_0

    .line 80
    .line 81
    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->showCategoryPickFragment()V

    .line 83
    :cond_1
    :goto_0
    return-void
.end method

.method private changeObjectStatus(Lcom/narvii/model/NVObject;Z)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$21;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog$21;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/NVObject;Z)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->showLeaveNotDialog(Lcom/narvii/util/Callback;)V

    .line 9
    return-void
.end method

.method private changeUserTitle(Lcom/narvii/model/User;)V
    .locals 5

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    .line 24
    .line 25
    const-string v2, "api"

    .line 26
    .line 27
    .line 28
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    const-string v4, "/user-profile/"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    new-instance v2, Lcom/narvii/poweruser/AdvancedOptionDialog$17;

    .line 67
    .line 68
    const-class v3, Lcom/narvii/model/api/UserResponse;

    .line 69
    .line 70
    .line 71
    invoke-direct {v2, p0, v3, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog$17;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, p1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 75
    :cond_1
    :goto_0
    return-void
.end method

.method static bridge synthetic d(Lcom/narvii/poweruser/AdvancedOptionDialog;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mBlogCateLog:Ljava/util/List;

    return-void
.end method

.method private deleteChatMessage(Lcom/narvii/model/ChatMessage;)V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    const v1, 0x7f12128f

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 16
    .line 17
    const/high16 v1, -0x10000

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setTitleColor(I)V

    .line 21
    .line 22
    .line 23
    const v1, 0x7f1203a8

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    .line 27
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x0

    .line 29
    .line 30
    .line 31
    const v3, 0x7f1201e2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v3, v1, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 35
    .line 36
    new-instance v1, Lcom/narvii/poweruser/AdvancedOptionDialog$22;

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, p0, v0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$22;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/util/dialog/AlertDialog;Lcom/narvii/model/ChatMessage;)V

    .line 40
    .line 41
    .line 42
    const p1, 0x7f1212a7

    .line 43
    .line 44
    const/16 v2, 0x8

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1, v2, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 51
    return-void
.end method

.method private deleteComment(Lcom/narvii/model/Comment;)V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    const v1, 0x7f12128f

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 16
    .line 17
    const/high16 v1, -0x10000

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setTitleColor(I)V

    .line 21
    .line 22
    .line 23
    const v1, 0x7f1203a9

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    .line 27
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x0

    .line 29
    .line 30
    .line 31
    const v3, 0x7f1201e2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v3, v1, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 35
    .line 36
    new-instance v1, Lcom/narvii/poweruser/AdvancedOptionDialog$15;

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, p0, v0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$15;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/util/dialog/AlertDialog;Lcom/narvii/model/Comment;)V

    .line 40
    .line 41
    .line 42
    const p1, 0x7f1212a7

    .line 43
    .line 44
    const/16 v2, 0x8

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1, v2, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 51
    return-void
.end method

.method static bridge synthetic e(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/User;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->banUser(Lcom/narvii/model/User;I)V

    return-void
.end method

.method static bridge synthetic g(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/User;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->changUserProfileStatus(Lcom/narvii/model/User;Z)V

    return-void
.end method

.method private getAdminNoteNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "content"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 10
    return-object v0
.end method

.method private gotoQuizReviewPage(Lcom/narvii/model/Blog;)V
    .locals 2

    .line 1
    .line 2
    const-class v0, Lcom/narvii/quiz/QuizReviewListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "quiz"

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 21
    return-void
.end method

.method static bridge synthetic h(Lcom/narvii/poweruser/AdvancedOptionDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->changeCategory()V

    return-void
.end method

.method static bridge synthetic i(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/NVObject;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->changeObjectStatus(Lcom/narvii/model/NVObject;Z)V

    return-void
.end method

.method private isMessageValidForOtherReasons(Ljava/lang/String;)Z
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

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
    .line 11
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    const v0, 0x7f120fb8

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 23
    return v1

    .line 24
    .line 25
    :cond_0
    const-string v0, " "

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    array-length v3, p1

    .line 31
    const/4 v4, 0x3

    .line 32
    .line 33
    if-lt v3, v4, :cond_3

    .line 34
    array-length v3, p1

    .line 35
    move v5, v1

    .line 36
    move v6, v5

    .line 37
    .line 38
    :goto_0
    if-ge v5, v3, :cond_3

    .line 39
    .line 40
    aget-object v7, p1, v5

    .line 41
    .line 42
    .line 43
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    move-result v8

    .line 45
    .line 46
    if-nez v8, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 50
    move-result v7

    .line 51
    .line 52
    if-nez v7, :cond_1

    .line 53
    .line 54
    add-int/lit8 v6, v6, 0x1

    .line 55
    .line 56
    :cond_1
    if-lt v6, v4, :cond_2

    .line 57
    return v2

    .line 58
    .line 59
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 60
    goto :goto_0

    .line 61
    .line 62
    .line 63
    :cond_3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    const v0, 0x7f120fb9

    .line 68
    .line 69
    .line 70
    invoke-static {p1, v0, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 75
    return v1
.end method

.method private itemEquals(Lcom/narvii/widget/FlagItemLayout;I)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/widget/FlagItemLayout;->getLeftText()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method static bridge synthetic j(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/User;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->changeUserTitle(Lcom/narvii/model/User;)V

    return-void
.end method

.method static bridge synthetic k(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/ChatMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->deleteChatMessage(Lcom/narvii/model/ChatMessage;)V

    return-void
.end method

.method static bridge synthetic l(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/Comment;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->deleteComment(Lcom/narvii/model/Comment;)V

    return-void
.end method

.method private launchModerationHistory()V
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    const-string v2, "objectId"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->objectType()I

    .line 23
    move-result v1

    .line 24
    .line 25
    const-string v2, "objectType"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    .line 31
    .line 32
    instance-of v2, v1, Lcom/narvii/model/User;

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    check-cast v1, Lcom/narvii/model/User;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_0
    instance-of v2, v1, Lcom/narvii/model/Feed;

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    check-cast v1, Lcom/narvii/model/Feed;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_1
    instance-of v2, v1, Lcom/narvii/model/ChatThread;

    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 59
    .line 60
    iget-object v1, v1, Lcom/narvii/model/ChatThread;->title:Ljava/lang/String;

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const/4 v1, 0x0

    .line 63
    .line 64
    :goto_0
    const-string/jumbo v2, "title"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    .line 70
    .line 71
    instance-of v2, v1, Lcom/narvii/app/NVFragment;

    .line 72
    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    check-cast v1, Lcom/narvii/app/NVFragment;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 79
    move-result v1

    .line 80
    .line 81
    if-eqz v1, :cond_4

    .line 82
    .line 83
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    .line 84
    .line 85
    .line 86
    invoke-static {v1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 87
    goto :goto_1

    .line 88
    .line 89
    .line 90
    :cond_3
    invoke-static {v1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 91
    :cond_4
    :goto_1
    return-void
.end method

.method static bridge synthetic m(Lcom/narvii/poweruser/AdvancedOptionDialog;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->getAdminNoteNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p0

    return-object p0
.end method

.method private messageUser(Lcom/narvii/model/NVObject;)V
    .locals 4

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/chat/RequestChatUserHelper;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-direct {p1, v0}, Lcom/narvii/chat/RequestChatUserHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->objectType()I

    .line 13
    move-result v1

    .line 14
    .line 15
    new-instance v2, Lcom/narvii/poweruser/AdvancedOptionDialog$27;

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$27;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;)V

    .line 19
    const/4 v3, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/narvii/chat/RequestChatUserHelper;->request(Lcom/narvii/model/NVObject;ILjava/lang/String;Lcom/narvii/util/Callback;)V

    .line 23
    return-void
.end method

.method static bridge synthetic n(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/Blog;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->gotoQuizReviewPage(Lcom/narvii/model/Blog;)V

    return-void
.end method

.method static bridge synthetic o(Lcom/narvii/poweruser/AdvancedOptionDialog;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->isMessageValidForOtherReasons(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic p(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->itemEquals(Lcom/narvii/widget/FlagItemLayout;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic q(Lcom/narvii/poweruser/AdvancedOptionDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->launchModerationHistory()V

    return-void
.end method

.method static bridge synthetic r(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->messageUser(Lcom/narvii/model/NVObject;)V

    return-void
.end method

.method private reviewQuiz()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/model/Blog;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/model/Blog;

    .line 9
    .line 10
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    .line 15
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    const-class v3, Lcom/narvii/model/api/BlogResponse;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v2, v3}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 25
    .line 26
    iget-object v2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    .line 27
    .line 28
    const-string v4, "api"

    .line 29
    .line 30
    .line 31
    invoke-interface {v2, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 38
    move-result-object v4

    .line 39
    .line 40
    new-instance v5, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    const-string v6, "/blog/"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    const-string v4, "action"

    .line 66
    .line 67
    const-string v5, "review"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    new-instance v4, Lcom/narvii/poweruser/AdvancedOptionDialog$8;

    .line 78
    .line 79
    .line 80
    invoke-direct {v4, p0, v3, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog$8;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v0, v4}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 84
    :cond_0
    return-void
.end method

.method static bridge synthetic s(Lcom/narvii/poweruser/AdvancedOptionDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->reviewQuiz()V

    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private sendDeleteChatMessageRequest(Lcom/narvii/model/ChatMessage;Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    const-string v2, "/chat/thread/"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    iget-object v2, p1, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "/message/"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->id()Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v2, "/admin"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    const/16 v1, 0x66

    .line 51
    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    const-string v2, "adminOpName"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 60
    .line 61
    .line 62
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    move-result v1

    .line 64
    .line 65
    if-nez v1, :cond_0

    .line 66
    .line 67
    const-string v1, "adminOpNote"

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->getAdminNoteNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 71
    move-result-object p2

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 75
    .line 76
    :cond_0
    new-instance p2, Lcom/narvii/util/dialog/ProgressDialog;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    .line 83
    invoke-direct {p2, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 84
    .line 85
    new-instance v1, Lcom/narvii/poweruser/AdvancedOptionDialog$23;

    .line 86
    .line 87
    .line 88
    invoke-direct {v1, p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$23;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/ChatMessage;)V

    .line 89
    .line 90
    iput-object v1, p2, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 94
    .line 95
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    .line 96
    .line 97
    const-string v1, "api"

    .line 98
    .line 99
    .line 100
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    iget-object p2, p2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 113
    return-void
.end method

.method private sendDeleteCommentRequest(Lcom/narvii/model/Comment;Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    .line 11
    move-result v1

    .line 12
    .line 13
    .line 14
    invoke-static {v1, p1}, Lcom/narvii/comment/CommentHelper;->getBaseCommentPath(ZLcom/narvii/model/Comment;)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "/admin"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    const/16 v1, 0x66

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    const-string v2, "adminOpName"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 51
    .line 52
    .line 53
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    move-result v1

    .line 55
    .line 56
    if-nez v1, :cond_0

    .line 57
    .line 58
    const-string v1, "adminOpNote"

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->getAdminNoteNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 62
    move-result-object p2

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 66
    .line 67
    :cond_0
    new-instance p2, Lcom/narvii/util/dialog/ProgressDialog;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    .line 74
    invoke-direct {p2, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 75
    .line 76
    new-instance v1, Lcom/narvii/poweruser/AdvancedOptionDialog$16;

    .line 77
    .line 78
    .line 79
    invoke-direct {v1, p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$16;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/Comment;)V

    .line 80
    .line 81
    iput-object v1, p2, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 85
    .line 86
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    .line 87
    .line 88
    const-string v1, "api"

    .line 89
    .line 90
    .line 91
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    iget-object p2, p2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 104
    return-void
.end method

.method private sendStrike()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    const-class v2, Lcom/narvii/chat/template/SendStrikeActivity;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    .line 13
    new-instance v1, Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 17
    .line 18
    iget-object v2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    const-string v3, "attachObject"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    iget-object v2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->objectType()I

    .line 33
    move-result v2

    .line 34
    .line 35
    const-string v3, "attachType"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 39
    .line 40
    const-string v2, "launchMode"

    .line 41
    const/4 v3, 0x1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 45
    .line 46
    const-string v2, "autoCheckStrike"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    .line 59
    invoke-static {v1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 60
    return-void
.end method

.method private setupChatMessageOptions(Lcom/narvii/model/ChatMessage;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mAdvancedLayout:Landroid/widget/LinearLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    .line 8
    .line 9
    const-string v1, "account"

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iget-object v2, p1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 26
    .line 27
    if-nez v2, :cond_0

    .line 28
    const/4 v2, 0x0

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    iget-object v2, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/narvii/model/User;->isCurator()Z

    .line 41
    move-result v1

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    .line 51
    move-result v1

    .line 52
    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    .line 56
    const v1, 0x7f1200b1

    .line 57
    .line 58
    iget-object v2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->messageUserListener:Landroid/view/View$OnClickListener;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v1, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 62
    .line 63
    :cond_1
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 64
    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/narvii/model/User;->isSystem()Z

    .line 69
    move-result p1

    .line 70
    .line 71
    if-eqz p1, :cond_2

    .line 72
    const/4 p1, 0x1

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const/4 p1, 0x0

    .line 75
    .line 76
    .line 77
    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addStrikeUserItem(ZZ)V

    .line 78
    .line 79
    const/high16 p1, -0x10000

    .line 80
    .line 81
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 82
    .line 83
    .line 84
    const v1, 0x7f1200a4

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v1, p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(IILandroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method

.method private setupChatRoomOptions(Lcom/narvii/model/ChatThread;)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mAdvancedLayout:Landroid/widget/LinearLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    .line 8
    .line 9
    const-string v1, "account"

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v2, 0x0

    .line 37
    move v0, v1

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->publicChat()Z

    .line 41
    move-result v3

    .line 42
    .line 43
    const/16 v4, 0x9

    .line 44
    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    iget v3, p1, Lcom/narvii/model/ChatThread;->status:I

    .line 48
    .line 49
    if-eq v3, v4, :cond_2

    .line 50
    .line 51
    iget-object v3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Lcom/narvii/modulization/CommunityConfigHelper;->isFeaturedChatThreadEnabled()Z

    .line 55
    move-result v3

    .line 56
    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/narvii/model/User;->isCurator()Z

    .line 63
    move-result v3

    .line 64
    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->featureType()I

    .line 69
    move-result v3

    .line 70
    const/4 v5, 0x5

    .line 71
    .line 72
    if-ne v3, v5, :cond_1

    .line 73
    .line 74
    .line 75
    const v3, 0x7f1200b9

    .line 76
    .line 77
    iget-object v5, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v3, v5}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 81
    goto :goto_1

    .line 82
    .line 83
    .line 84
    :cond_1
    const v3, 0x7f1200af

    .line 85
    .line 86
    iget-object v5, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v3, v5}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 90
    .line 91
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/narvii/model/User;->isCurator()Z

    .line 95
    move-result v3

    .line 96
    .line 97
    if-eqz v3, :cond_3

    .line 98
    .line 99
    if-nez v0, :cond_3

    .line 100
    .line 101
    iget-object v3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    .line 105
    move-result v3

    .line 106
    .line 107
    if-eqz v3, :cond_3

    .line 108
    .line 109
    .line 110
    const v3, 0x7f1200b1

    .line 111
    .line 112
    iget-object v5, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->messageUserListener:Landroid/view/View$OnClickListener;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v3, v5}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 116
    .line 117
    :cond_3
    if-eqz v2, :cond_4

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2}, Lcom/narvii/model/User;->isCurator()Z

    .line 121
    move-result v2

    .line 122
    .line 123
    if-eqz v2, :cond_4

    .line 124
    .line 125
    .line 126
    const v2, 0x7f1200b2

    .line 127
    .line 128
    iget-object v3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v2, v3}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 132
    .line 133
    .line 134
    :cond_4
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->owner()Lcom/narvii/model/User;

    .line 135
    move-result-object v2

    .line 136
    .line 137
    if-eqz v2, :cond_5

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->owner()Lcom/narvii/model/User;

    .line 141
    move-result-object v2

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2}, Lcom/narvii/model/User;->isSystem()Z

    .line 145
    move-result v2

    .line 146
    .line 147
    if-eqz v2, :cond_5

    .line 148
    const/4 v1, 0x1

    .line 149
    .line 150
    .line 151
    :cond_5
    invoke-direct {p0, v0, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addStrikeUserItem(ZZ)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 155
    move-result-object v0

    .line 156
    .line 157
    .line 158
    const v1, 0x7f1211eb

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 162
    move-result-object v0

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 166
    move-result-object v1

    .line 167
    .line 168
    .line 169
    const v2, 0x7f1211f3

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 173
    move-result-object v1

    .line 174
    .line 175
    const/high16 v2, -0x1000000

    .line 176
    .line 177
    iget-object v3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->status()I

    .line 184
    move-result v0

    .line 185
    .line 186
    if-ne v0, v4, :cond_6

    .line 187
    .line 188
    .line 189
    const v0, 0x7f1200a6

    .line 190
    .line 191
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, v0, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 195
    goto :goto_2

    .line 196
    .line 197
    :cond_6
    const/high16 v0, -0x10000

    .line 198
    .line 199
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 200
    .line 201
    .line 202
    const v2, 0x7f1200a5

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, v2, v0, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(IILandroid/view/View$OnClickListener;)V

    .line 206
    .line 207
    :goto_2
    iget v0, p1, Lcom/narvii/model/ChatThread;->type:I

    .line 208
    const/4 v1, 0x2

    .line 209
    .line 210
    if-ne v0, v1, :cond_7

    .line 211
    .line 212
    .line 213
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addSendBroadcastItem(Lcom/narvii/model/NVObject;)V

    .line 214
    :cond_7
    return-void
.end method

.method private setupCommentOptions(Lcom/narvii/model/Comment;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mAdvancedLayout:Landroid/widget/LinearLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    .line 8
    .line 9
    const-string v1, "account"

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iget-object v2, p1, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    .line 26
    .line 27
    iget-object v2, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/narvii/model/User;->isCurator()Z

    .line 37
    move-result v1

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    .line 47
    move-result v1

    .line 48
    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    .line 52
    const v1, 0x7f1200b1

    .line 53
    .line 54
    iget-object v2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->messageUserListener:Landroid/view/View$OnClickListener;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v1, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 58
    .line 59
    :cond_0
    iget-object p1, p1, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    .line 60
    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/narvii/model/User;->isSystem()Z

    .line 65
    move-result p1

    .line 66
    .line 67
    if-eqz p1, :cond_1

    .line 68
    const/4 p1, 0x1

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const/4 p1, 0x0

    .line 71
    .line 72
    .line 73
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addStrikeUserItem(ZZ)V

    .line 74
    .line 75
    const/high16 p1, -0x10000

    .line 76
    .line 77
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 78
    .line 79
    .line 80
    const v1, 0x7f1200a7

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v1, p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(IILandroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method

.method private setupFeedOptions(Lcom/narvii/model/Feed;)V
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mAdvancedLayout:Landroid/widget/LinearLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    .line 8
    .line 9
    const-string v1, "account"

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iget-object v2, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 26
    const/4 v3, 0x0

    .line 27
    .line 28
    if-nez v2, :cond_0

    .line 29
    move-object v2, v3

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    iget-object v2, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    move-result v0

    .line 37
    .line 38
    iget-object v2, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v5, 0x1

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/narvii/model/User;->isSystem()Z

    .line 46
    move-result v2

    .line 47
    .line 48
    if-eqz v2, :cond_1

    .line 49
    move v2, v5

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    move v2, v4

    .line 52
    .line 53
    :goto_1
    if-eqz v1, :cond_2

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/narvii/model/User;->isCurator()Z

    .line 57
    move-result v6

    .line 58
    .line 59
    if-eqz v6, :cond_2

    .line 60
    .line 61
    if-nez v2, :cond_2

    .line 62
    .line 63
    if-nez v0, :cond_2

    .line 64
    .line 65
    iget-object v2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    .line 69
    move-result v2

    .line 70
    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    .line 74
    const v2, 0x7f1200b1

    .line 75
    .line 76
    iget-object v6, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->messageUserListener:Landroid/view/View$OnClickListener;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v2, v6}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->status()I

    .line 83
    move-result v2

    .line 84
    .line 85
    const/16 v6, 0x9

    .line 86
    .line 87
    if-eq v2, v6, :cond_6

    .line 88
    .line 89
    iget-object v2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Lcom/narvii/modulization/CommunityConfigHelper;->isFeaturedPostEnabled()Z

    .line 93
    move-result v2

    .line 94
    .line 95
    if-eqz v2, :cond_6

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->featureType()I

    .line 99
    move-result v2

    .line 100
    const/4 v7, 0x2

    .line 101
    .line 102
    if-eq v2, v7, :cond_3

    .line 103
    .line 104
    .line 105
    const v2, 0x7f1200b3

    .line 106
    .line 107
    iget-object v8, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v2, v8}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 111
    .line 112
    .line 113
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->featureType()I

    .line 114
    move-result v2

    .line 115
    .line 116
    if-ne v2, v5, :cond_4

    .line 117
    .line 118
    .line 119
    const v2, 0x7f1200b8

    .line 120
    .line 121
    iget-object v7, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v2, v7}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 125
    goto :goto_2

    .line 126
    .line 127
    .line 128
    :cond_4
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->featureType()I

    .line 129
    move-result v2

    .line 130
    .line 131
    if-ne v2, v7, :cond_5

    .line 132
    .line 133
    .line 134
    const v2, 0x7f1200bb

    .line 135
    .line 136
    iget-object v7, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v2, v7}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 140
    goto :goto_2

    .line 141
    .line 142
    .line 143
    :cond_5
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->featureType()I

    .line 144
    move-result v2

    .line 145
    .line 146
    if-nez v2, :cond_6

    .line 147
    .line 148
    .line 149
    const v2, 0x7f1200ae

    .line 150
    .line 151
    iget-object v7, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v2, v7}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 155
    .line 156
    :cond_6
    :goto_2
    instance-of v2, p1, Lcom/narvii/model/Blog;

    .line 157
    const/4 v7, 0x6

    .line 158
    .line 159
    if-eqz v2, :cond_7

    .line 160
    move-object v8, p1

    .line 161
    .line 162
    check-cast v8, Lcom/narvii/model/Blog;

    .line 163
    .line 164
    iget v8, v8, Lcom/narvii/model/Blog;->type:I

    .line 165
    .line 166
    if-ne v8, v7, :cond_7

    .line 167
    .line 168
    .line 169
    const v8, 0x7f1200b5

    .line 170
    .line 171
    iget-object v9, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, v8, v9}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 175
    .line 176
    :cond_7
    new-instance v8, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 177
    .line 178
    iget-object v9, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    .line 179
    .line 180
    .line 181
    invoke-direct {v8, v9}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->objectType()I

    .line 185
    move-result v9

    .line 186
    .line 187
    if-ne v9, v5, :cond_8

    .line 188
    .line 189
    if-eqz v1, :cond_8

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1}, Lcom/narvii/model/User;->isCurator()Z

    .line 193
    move-result v9

    .line 194
    .line 195
    if-eqz v9, :cond_8

    .line 196
    .line 197
    .line 198
    invoke-virtual {v8}, Lcom/narvii/modulization/CommunityConfigHelper;->isTopicCategoryEnabled()Z

    .line 199
    move-result v8

    .line 200
    .line 201
    if-eqz v8, :cond_8

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 205
    move-result-object v8

    .line 206
    .line 207
    .line 208
    const v9, 0x7f1200a3

    .line 209
    .line 210
    .line 211
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 212
    move-result-object v8

    .line 213
    .line 214
    const/high16 v9, -0x1000000

    .line 215
    .line 216
    iget-object v10, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0, v8, v3, v9, v10}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V

    .line 220
    .line 221
    :cond_8
    if-eqz v2, :cond_a

    .line 222
    move-object v2, p1

    .line 223
    .line 224
    check-cast v2, Lcom/narvii/model/Blog;

    .line 225
    .line 226
    iget v3, v2, Lcom/narvii/model/Blog;->type:I

    .line 227
    .line 228
    if-ne v3, v7, :cond_a

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2}, Lcom/narvii/model/Blog;->isInBestQuiz()Z

    .line 232
    move-result v2

    .line 233
    .line 234
    if-nez v2, :cond_9

    .line 235
    .line 236
    .line 237
    const v2, 0x7f1200a1

    .line 238
    .line 239
    iget-object v3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0, v2, v3}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 243
    goto :goto_3

    .line 244
    .line 245
    .line 246
    :cond_9
    const v2, 0x7f1200b4

    .line 247
    .line 248
    iget-object v3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0, v2, v3}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 252
    .line 253
    .line 254
    :cond_a
    :goto_3
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addSendBroadcastItem(Lcom/narvii/model/NVObject;)V

    .line 255
    .line 256
    iget-object v2, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 257
    .line 258
    if-eqz v2, :cond_b

    .line 259
    .line 260
    .line 261
    invoke-virtual {v2}, Lcom/narvii/model/User;->isSystem()Z

    .line 262
    move-result v2

    .line 263
    .line 264
    if-eqz v2, :cond_b

    .line 265
    move v4, v5

    .line 266
    .line 267
    .line 268
    :cond_b
    invoke-direct {p0, v0, v4}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addStrikeUserItem(ZZ)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->status()I

    .line 272
    move-result p1

    .line 273
    .line 274
    if-ne p1, v6, :cond_c

    .line 275
    .line 276
    .line 277
    const p1, 0x7f1200ad

    .line 278
    .line 279
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0, p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 283
    goto :goto_4

    .line 284
    .line 285
    :cond_c
    const/high16 p1, -0x10000

    .line 286
    .line 287
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 288
    .line 289
    .line 290
    const v2, 0x7f1200a9

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0, v2, p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(IILandroid/view/View$OnClickListener;)V

    .line 294
    .line 295
    :goto_4
    if-eqz v1, :cond_d

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1}, Lcom/narvii/model/User;->isCurator()Z

    .line 299
    move-result p1

    .line 300
    .line 301
    if-eqz p1, :cond_d

    .line 302
    .line 303
    .line 304
    const p1, 0x7f1200b2

    .line 305
    .line 306
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 307
    .line 308
    .line 309
    invoke-virtual {p0, p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 310
    :cond_d
    return-void
.end method

.method private setupSharedFileOptions(Lcom/narvii/model/SharedFile;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mAdvancedLayout:Landroid/widget/LinearLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    .line 8
    .line 9
    const-string v1, "account"

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iget-object v2, p1, Lcom/narvii/model/SharedFile;->author:Lcom/narvii/model/User;

    .line 26
    .line 27
    iget-object v2, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/narvii/model/User;->isCurator()Z

    .line 37
    move-result v2

    .line 38
    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    iget-object v2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    .line 47
    move-result v2

    .line 48
    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    .line 52
    const v2, 0x7f1200b1

    .line 53
    .line 54
    iget-object v3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->messageUserListener:Landroid/view/View$OnClickListener;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v2, v3}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 58
    .line 59
    :cond_0
    iget-object v2, p1, Lcom/narvii/model/SharedFile;->author:Lcom/narvii/model/User;

    .line 60
    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/narvii/model/User;->isSystem()Z

    .line 65
    move-result v2

    .line 66
    .line 67
    if-eqz v2, :cond_1

    .line 68
    const/4 v2, 0x1

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const/4 v2, 0x0

    .line 71
    .line 72
    .line 73
    :goto_0
    invoke-direct {p0, v0, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addStrikeUserItem(ZZ)V

    .line 74
    .line 75
    iget p1, p1, Lcom/narvii/model/SharedFile;->status:I

    .line 76
    .line 77
    const/16 v0, 0x9

    .line 78
    .line 79
    if-ne p1, v0, :cond_2

    .line 80
    .line 81
    .line 82
    const p1, 0x7f1200ac

    .line 83
    .line 84
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 88
    goto :goto_1

    .line 89
    .line 90
    :cond_2
    const/high16 p1, -0x10000

    .line 91
    .line 92
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 93
    .line 94
    .line 95
    const v2, 0x7f1200a8

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v2, p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(IILandroid/view/View$OnClickListener;)V

    .line 99
    .line 100
    :goto_1
    if-eqz v1, :cond_3

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/narvii/model/User;->isCurator()Z

    .line 104
    move-result p1

    .line 105
    .line 106
    if-eqz p1, :cond_3

    .line 107
    .line 108
    .line 109
    const p1, 0x7f1200b2

    .line 110
    .line 111
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 115
    :cond_3
    return-void
.end method

.method private setupUserProfileOptions(Lcom/narvii/model/User;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mAdvancedLayout:Landroid/widget/LinearLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    .line 8
    .line 9
    const-string v1, "account"

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iget-object v2, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/narvii/model/User;->isCurator()Z

    .line 35
    move-result v2

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    iget-object v2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    .line 45
    move-result v2

    .line 46
    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    .line 50
    const v2, 0x7f1200b1

    .line 51
    .line 52
    iget-object v3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->messageUserListener:Landroid/view/View$OnClickListener;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v2, v3}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 56
    .line 57
    :cond_0
    if-eqz v1, :cond_1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/narvii/model/User;->isLeader()Z

    .line 61
    move-result v2

    .line 62
    .line 63
    if-eqz v2, :cond_1

    .line 64
    .line 65
    .line 66
    const v2, 0x7f1200ab

    .line 67
    .line 68
    iget-object v3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v2, v3}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 72
    .line 73
    :cond_1
    iget-object v2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/narvii/modulization/CommunityConfigHelper;->isFeaturedMemberEnabled()Z

    .line 77
    move-result v2

    .line 78
    .line 79
    if-eqz v2, :cond_3

    .line 80
    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/narvii/model/User;->isLeader()Z

    .line 85
    move-result v2

    .line 86
    .line 87
    if-eqz v2, :cond_3

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/narvii/model/User;->featureType()I

    .line 91
    move-result v2

    .line 92
    const/4 v3, 0x4

    .line 93
    .line 94
    if-ne v2, v3, :cond_2

    .line 95
    .line 96
    .line 97
    const v2, 0x7f12120a

    .line 98
    .line 99
    iget-object v3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v2, v3}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 103
    goto :goto_0

    .line 104
    .line 105
    .line 106
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/model/User;->featureType()I

    .line 107
    move-result v2

    .line 108
    .line 109
    if-nez v2, :cond_3

    .line 110
    .line 111
    .line 112
    const v2, 0x7f12074f

    .line 113
    .line 114
    iget-object v3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v2, v3}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 118
    .line 119
    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/narvii/model/User;->isCurator()Z

    .line 123
    move-result v2

    .line 124
    .line 125
    if-eqz v2, :cond_4

    .line 126
    .line 127
    .line 128
    const v2, 0x7f1200b2

    .line 129
    .line 130
    iget-object v3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v2, v3}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 134
    .line 135
    .line 136
    :cond_4
    invoke-virtual {p1}, Lcom/narvii/model/User;->isSystem()Z

    .line 137
    move-result v2

    .line 138
    .line 139
    .line 140
    invoke-direct {p0, v0, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addStrikeUserItem(ZZ)V

    .line 141
    .line 142
    if-eqz v1, :cond_6

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/narvii/model/User;->isCurator()Z

    .line 146
    move-result v2

    .line 147
    .line 148
    if-eqz v2, :cond_6

    .line 149
    .line 150
    if-nez v0, :cond_6

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Lcom/narvii/model/User;->hideUserProfile()Z

    .line 154
    move-result v2

    .line 155
    .line 156
    if-nez v2, :cond_5

    .line 157
    .line 158
    const/16 v2, -0x6b00

    .line 159
    .line 160
    iget-object v3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->hideUserProfileListener:Landroid/view/View$OnClickListener;

    .line 161
    .line 162
    .line 163
    const v4, 0x7f1200b0

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v4, v2, v3}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(IILandroid/view/View$OnClickListener;)V

    .line 167
    goto :goto_1

    .line 168
    .line 169
    .line 170
    :cond_5
    const v2, 0x7f1200ba

    .line 171
    .line 172
    iget-object v3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->unHideUserProfileListener:Landroid/view/View$OnClickListener;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v2, v3}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 176
    .line 177
    :cond_6
    :goto_1
    if-eqz v1, :cond_8

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Lcom/narvii/model/User;->isLeader()Z

    .line 181
    move-result v1

    .line 182
    .line 183
    if-eqz v1, :cond_8

    .line 184
    .line 185
    if-nez v0, :cond_8

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1}, Lcom/narvii/model/User;->status()I

    .line 189
    move-result p1

    .line 190
    .line 191
    const/16 v0, 0x9

    .line 192
    .line 193
    const/high16 v1, -0x10000

    .line 194
    .line 195
    if-ne p1, v0, :cond_7

    .line 196
    .line 197
    .line 198
    const p1, 0x7f1200b7

    .line 199
    .line 200
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->unBanListener:Landroid/view/View$OnClickListener;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0, p1, v1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(IILandroid/view/View$OnClickListener;)V

    .line 204
    goto :goto_2

    .line 205
    .line 206
    .line 207
    :cond_7
    const p1, 0x7f1200a2

    .line 208
    .line 209
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->banListener:Landroid/view/View$OnClickListener;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, p1, v1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(IILandroid/view/View$OnClickListener;)V

    .line 213
    :cond_8
    :goto_2
    return-void
.end method

.method private showBanDialog()V
    .locals 0

    return-void
.end method

.method private showCategoryPickFragment()V
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/narvii/blog/category/ChangeCategoryFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mBlogCateLog:Ljava/util/List;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    const-string v2, "blogCategoryList"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    .line 20
    .line 21
    check-cast v1, Lcom/narvii/model/Blog;

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    const-string v2, "blog"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    .line 33
    .line 34
    check-cast v1, Lcom/narvii/model/Blog;

    .line 35
    .line 36
    iget v1, v1, Lcom/narvii/model/Blog;->type:I

    .line 37
    const/4 v2, 0x6

    .line 38
    .line 39
    if-ne v1, v2, :cond_0

    .line 40
    const/4 v1, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v1, 0x0

    .line 43
    .line 44
    :goto_0
    const-string v2, "isQuiz"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    .line 50
    .line 51
    .line 52
    invoke-static {v1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    .line 56
    move-result v0

    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 62
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    const/16 v1, 0xce

    .line 21
    .line 22
    const/16 v2, 0x7d

    .line 23
    const/4 v3, 0x0

    .line 24
    .line 25
    .line 26
    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 27
    move-result v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setTitleColor(I)V

    .line 31
    .line 32
    .line 33
    const v1, 0x7f120b81

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 37
    .line 38
    .line 39
    const v1, 0x7f0d06c4

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 43
    .line 44
    .line 45
    const v1, 0x7f0a0c23

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    check-cast v1, Landroid/widget/EditText;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    .line 58
    const v4, 0x7f1201e2

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    move-result-object v2

    .line 63
    .line 64
    new-instance v4, Lcom/narvii/poweruser/AdvancedOptionDialog$10;

    .line 65
    .line 66
    .line 67
    invoke-direct {v4, p0, v1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog$10;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Landroid/widget/EditText;Lcom/narvii/util/dialog/AlertDialog;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v2, v3, v4}, Lcom/narvii/util/dialog/AlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 74
    move-result-object v2

    .line 75
    .line 76
    .line 77
    const v3, 0x7f121085

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 81
    move-result-object v2

    .line 82
    .line 83
    new-instance v3, Lcom/narvii/poweruser/AdvancedOptionDialog$11;

    .line 84
    .line 85
    .line 86
    invoke-direct {v3, p0, p1, v1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog$11;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/util/Callback;Landroid/widget/EditText;Lcom/narvii/util/dialog/AlertDialog;)V

    .line 87
    const/4 p1, 0x4

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v2, p1, v3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 94
    return-void
.end method

.method private showStrikeDialog(I)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "account"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    new-instance v1, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    .line 21
    move-result v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/model/User;->isLeader()Z

    .line 29
    move-result v0

    .line 30
    .line 31
    new-instance v2, Lcom/narvii/util/dialog/AlertDialog;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, v3}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    if-nez p1, :cond_0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    const v3, 0x7f121187

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, p1}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    const/4 v3, 0x7

    .line 57
    .line 58
    if-eq p1, v3, :cond_2

    .line 59
    const/4 v3, 0x3

    .line 60
    .line 61
    if-ne p1, v3, :cond_1

    .line 62
    goto :goto_0

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    const v3, 0x7f121186

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, p1}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    goto :goto_1

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    .line 84
    const v3, 0x7f121184

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, p1}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    :goto_1
    const p1, 0x7f0d004a

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, p1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 98
    .line 99
    if-eqz v0, :cond_3

    .line 100
    .line 101
    .line 102
    const p1, 0x7f0a039d

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    check-cast p1, Landroid/widget/TextView;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 112
    move-result-object v3

    .line 113
    .line 114
    .line 115
    const v4, 0x7f121168

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 119
    move-result-object v3

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    :cond_3
    const p1, 0x7f0a021f

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 129
    move-result-object v3

    .line 130
    .line 131
    const/16 v4, 0x8

    .line 132
    const/4 v5, 0x0

    .line 133
    .line 134
    if-eqz v0, :cond_4

    .line 135
    move v0, v5

    .line 136
    goto :goto_2

    .line 137
    :cond_4
    move v0, v4

    .line 138
    .line 139
    .line 140
    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 141
    .line 142
    .line 143
    const v0, 0x7f0a021d

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 147
    move-result-object v3

    .line 148
    .line 149
    if-eqz v1, :cond_5

    .line 150
    move v4, v5

    .line 151
    .line 152
    .line 153
    :cond_5
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 157
    move-result-object v1

    .line 158
    .line 159
    check-cast v1, Landroid/widget/Button;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 163
    move-result-object v3

    .line 164
    .line 165
    .line 166
    const v4, 0x7f1200b6

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 170
    move-result-object v3

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 177
    move-result-object v1

    .line 178
    .line 179
    check-cast v1, Landroid/widget/Button;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 183
    move-result-object v3

    .line 184
    .line 185
    .line 186
    const v4, 0x7f121086

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 190
    move-result-object v3

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 197
    move-result-object p1

    .line 198
    .line 199
    check-cast p1, Landroid/widget/Button;

    .line 200
    .line 201
    new-instance v1, Lcom/narvii/poweruser/AdvancedOptionDialog$24;

    .line 202
    .line 203
    .line 204
    invoke-direct {v1, p0, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog$24;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/util/dialog/AlertDialog;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 211
    move-result-object p1

    .line 212
    .line 213
    check-cast p1, Landroid/widget/Button;

    .line 214
    .line 215
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$25;

    .line 216
    .line 217
    .line 218
    invoke-direct {v0, p0, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog$25;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/util/dialog/AlertDialog;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    .line 223
    .line 224
    const p1, 0x7f0a021b

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 228
    move-result-object v0

    .line 229
    .line 230
    check-cast v0, Landroid/widget/Button;

    .line 231
    .line 232
    .line 233
    const v1, 0x7f120402

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 240
    move-result-object p1

    .line 241
    .line 242
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$26;

    .line 243
    .line 244
    .line 245
    invoke-direct {v0, p0, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog$26;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/util/dialog/AlertDialog;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2}, Lcom/narvii/app/NVDialog;->show()V

    .line 252
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/ChatMessage;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->sendDeleteChatMessageRequest(Lcom/narvii/model/ChatMessage;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic u(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/Comment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->sendDeleteCommentRequest(Lcom/narvii/model/Comment;Ljava/lang/String;)V

    return-void
.end method

.method private unBanUser(Lcom/narvii/model/User;)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$20;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$20;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/User;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->showLeaveNotDialog(Lcom/narvii/util/Callback;)V

    .line 9
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/poweruser/AdvancedOptionDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->sendStrike()V

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/ChatMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->setupChatMessageOptions(Lcom/narvii/model/ChatMessage;)V

    return-void
.end method

.method static bridge synthetic x(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->setupChatRoomOptions(Lcom/narvii/model/ChatThread;)V

    return-void
.end method

.method static bridge synthetic y(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/Comment;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->setupCommentOptions(Lcom/narvii/model/Comment;)V

    return-void
.end method

.method static bridge synthetic z(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/Feed;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->setupFeedOptions(Lcom/narvii/model/Feed;)V

    return-void
.end method


# virtual methods
.method public addItem(IILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 14
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public addItem(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 15
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

    .line 1
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public addItem(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    const/16 v0, 0x28

    .line 13
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public addItem(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/narvii/widget/FlagItemLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/FlagItemLayout;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/narvii/widget/FlagItemLayout;->setLeftText(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/narvii/widget/FlagItemLayout;->setHintText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {v0}, Lcom/narvii/widget/FlagItemLayout;->hideRight()V

    .line 6
    invoke-virtual {v0, p3}, Lcom/narvii/widget/FlagItemLayout;->setLeftTextColor(I)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080256

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8
    invoke-virtual {v0, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mAdvancedLayout:Landroid/widget/LinearLayout;

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 11
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/4 p3, 0x1

    const/high16 p4, 0x41200000    # 10.0f

    invoke-static {p3, p4, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    const/high16 p3, -0x40800000    # -1.0f

    mul-float/2addr p2, p3

    float-to-int p2, p2

    const/4 p3, 0x0

    .line 12
    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-void
.end method

.method protected baseLayoutId()I
    .locals 1

    const v0, 0x7f0d0192

    return v0
.end method

.method public show()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 4
    return-void
.end method

.method submitOfficialCatalog(Lcom/narvii/model/Item;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 10
    .line 11
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 12
    .line 13
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    .line 16
    .line 17
    .line 18
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    .line 22
    const v3, 0x1030073

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    const v1, 0x7f12020a

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    const v2, 0x7f0d0099

    .line 42
    const/4 v3, 0x0

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 50
    .line 51
    new-instance v2, Lcom/narvii/poweruser/AdvancedOptionDialog$13;

    .line 52
    .line 53
    .line 54
    invoke-direct {v2, p0, v1, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$13;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Landroid/view/View;Lcom/narvii/model/Item;)V

    .line 55
    .line 56
    .line 57
    const p1, 0x104000a

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 61
    .line 62
    const/high16 p1, 0x1040000

    .line 63
    .line 64
    sget-object v2, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 71
    .line 72
    new-instance p1, Lcom/narvii/poweruser/AdvancedOptionDialog$14;

    .line 73
    .line 74
    .line 75
    invoke-direct {p1, p0, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog$14;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Landroid/view/View;)V

    .line 76
    .line 77
    const-wide/16 v0, 0x190

    .line 78
    .line 79
    .line 80
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 81
    return-void
.end method
