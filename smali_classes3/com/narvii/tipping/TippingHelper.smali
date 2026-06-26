.class public Lcom/narvii/tipping/TippingHelper;
.super Ljava/lang/Object;
.source "TippingHelper.java"


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field nvContext:Lcom/narvii/app/NVContext;

.field source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/narvii/tipping/TippingHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "account"

    .line 27
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/tipping/TippingHelper;->accountService:Lcom/narvii/account/AccountService;

    return-void
.end method


# virtual methods
.method public isTipAuthor(Lcom/narvii/model/Tippable;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 77
    :cond_0
    invoke-interface {p1}, Lcom/narvii/model/Tippable;->getTipAuthor()Lcom/narvii/model/User;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/narvii/tipping/TippingHelper;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public openTipDialog(Lcom/narvii/model/Tippable;Lcom/narvii/monetization/store/TippingConfirmDialog$TipSuccessListener;)Lcom/narvii/monetization/store/TippingConfirmDialog;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 91
    :cond_0
    new-instance v0, Lcom/narvii/monetization/store/TippingConfirmDialog;

    iget-object v1, p0, Lcom/narvii/tipping/TippingHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1, p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Tippable;)V

    .line 92
    iget-object p1, p0, Lcom/narvii/tipping/TippingHelper;->source:Ljava/lang/String;

    iput-object p1, v0, Lcom/narvii/monetization/store/TippingConfirmDialog;->source:Ljava/lang/String;

    .line 93
    invoke-virtual {v0, p2}, Lcom/narvii/monetization/store/TippingConfirmDialog;->setTipSuccessListener(Lcom/narvii/monetization/store/TippingConfirmDialog$TipSuccessListener;)V

    .line 94
    invoke-virtual {v0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->show()V

    return-object v0
.end method

.method public openTippingList(Lcom/narvii/model/Tippable;Lcom/narvii/model/Community;)V
    .locals 1

    .line 37
    instance-of v0, p1, Lcom/narvii/model/CommunityObjectInGlobal;

    if-eqz v0, :cond_1

    .line 38
    move-object v0, p1

    check-cast v0, Lcom/narvii/model/CommunityObjectInGlobal;

    invoke-interface {v0}, Lcom/narvii/model/CommunityObjectInGlobal;->getNdcId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/narvii/tipping/TippingHelper;->openTippingList(Lcom/narvii/model/Tippable;ZLcom/narvii/model/Community;)V

    goto :goto_1

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/narvii/tipping/TippingHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {v0}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/narvii/tipping/TippingHelper;->openTippingList(Lcom/narvii/model/Tippable;ZLcom/narvii/model/Community;)V

    :goto_1
    return-void
.end method

.method public openTippingList(Lcom/narvii/model/Tippable;ZLcom/narvii/model/Community;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 50
    instance-of v1, p1, Lcom/narvii/model/Feed;

    if-eqz v1, :cond_1

    .line 51
    const-class v0, Lcom/narvii/model/Feed;

    goto :goto_0

    .line 52
    :cond_1
    instance-of v1, p1, Lcom/narvii/model/ChatThread;

    if-eqz v1, :cond_2

    .line 53
    const-class v0, Lcom/narvii/model/ChatThread;

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    return-void

    .line 59
    :cond_3
    invoke-virtual {p0, p1}, Lcom/narvii/tipping/TippingHelper;->isTipAuthor(Lcom/narvii/model/Tippable;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 60
    const-class v1, Lcom/narvii/tipping/TippingAuthorListFragment;

    goto :goto_1

    :cond_4
    const-class v1, Lcom/narvii/tipping/TippingViewerListFragment;

    :goto_1
    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 61
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "object"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "objectClass"

    .line 62
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 63
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "community"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    iget-object p3, p0, Lcom/narvii/tipping/TippingHelper;->source:Ljava/lang/String;

    const-string v0, "Source"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    instance-of p3, p1, Lcom/narvii/model/CommunityObjectInGlobal;

    if-eqz p3, :cond_5

    .line 66
    check-cast p1, Lcom/narvii/model/CommunityObjectInGlobal;

    invoke-interface {p1}, Lcom/narvii/model/CommunityObjectInGlobal;->getNdcId()I

    move-result p1

    const-string p3, "__communityId"

    invoke-virtual {v1, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_5
    const-string p1, "__interactionScope"

    .line 68
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    iget-object p1, p0, Lcom/narvii/tipping/TippingHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public source(Ljava/lang/String;)Lcom/narvii/tipping/TippingHelper;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/narvii/tipping/TippingHelper;->source:Ljava/lang/String;

    return-object p0
.end method
