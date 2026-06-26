.class public Lcom/narvii/onlinestatus/OnlineDialogHelper;
.super Ljava/lang/Object;
.source "OnlineDialogHelper.java"


# static fields
.field private static final TYPE_DIALOG_SHOW_JOIN_COMMUNITY:I = 0x2

.field private static final TYPE_DIALOG_SHOW_LOGIN:I = 0x1

.field private static final TYPE_DIALOG_SHOW_NONE:I


# instance fields
.field affiliationsService:Lcom/narvii/community/AffiliationsService;

.field public goJoinCommunityDialog:Lcom/narvii/util/dialog/RealtimeBlurDialog;

.field public goLoginDialog:Lcom/narvii/util/dialog/RealtimeBlurDialog;

.field nvFragment:Lcom/narvii/app/NVFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVFragment;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    const-string v0, "affiliations"

    .line 34
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/AffiliationsService;

    iput-object p1, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    return-void
.end method

.method private prepareShowDialog(I)V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->goLoginDialog:Lcom/narvii/util/dialog/RealtimeBlurDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    .line 114
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 115
    iput-object v1, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->goLoginDialog:Lcom/narvii/util/dialog/RealtimeBlurDialog;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->goJoinCommunityDialog:Lcom/narvii/util/dialog/RealtimeBlurDialog;

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    .line 118
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 119
    iput-object v1, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->goJoinCommunityDialog:Lcom/narvii/util/dialog/RealtimeBlurDialog;

    :cond_1
    return-void
.end method


# virtual methods
.method public checkOnlineStatus()V
    .locals 7

    .line 38
    iget-object v0, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 39
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const v1, 0x7f09002c

    const/high16 v2, 0x41f00000    # 30.0f

    const/high16 v3, 0x66000000

    const v4, 0x7f1000ce

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 40
    invoke-direct {p0, v0}, Lcom/narvii/onlinestatus/OnlineDialogHelper;->prepareShowDialog(I)V

    .line 41
    iget-object v0, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->goLoginDialog:Lcom/narvii/util/dialog/RealtimeBlurDialog;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/narvii/util/dialog/RealtimeBlurDialog;

    iget-object v5, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    invoke-virtual {v5}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5, v4}, Lcom/narvii/util/dialog/RealtimeBlurDialog;-><init>(Landroid/content/Context;I)V

    .line 43
    invoke-virtual {v0}, Lcom/narvii/util/dialog/RealtimeBlurDialog;->getRealtimeBlurView()Lcom/github/mmin18/widget/RealtimeBlurView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/github/mmin18/widget/RealtimeBlurView;->setOverlayColor(I)V

    .line 44
    invoke-virtual {v0}, Lcom/narvii/util/dialog/RealtimeBlurDialog;->getRealtimeBlurView()Lcom/github/mmin18/widget/RealtimeBlurView;

    move-result-object v3

    iget-object v4, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    invoke-virtual {v4}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    invoke-virtual {v3, v2}, Lcom/github/mmin18/widget/RealtimeBlurView;->setBlurRadius(F)V

    const v2, 0x7f0b0563

    .line 45
    invoke-virtual {v0, v2}, Lcom/narvii/util/dialog/RealtimeBlurDialog;->setContentView(I)V

    .line 46
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/narvii/onlinestatus/OnlineDialogHelper$1;

    invoke-direct {v2, p0}, Lcom/narvii/onlinestatus/OnlineDialogHelper$1;-><init>(Lcom/narvii/onlinestatus/OnlineDialogHelper;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    new-instance v1, Lcom/narvii/onlinestatus/OnlineDialogHelper$2;

    invoke-direct {v1, p0}, Lcom/narvii/onlinestatus/OnlineDialogHelper$2;-><init>(Lcom/narvii/onlinestatus/OnlineDialogHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 63
    new-instance v1, Lcom/narvii/onlinestatus/OnlineDialogHelper$3;

    invoke-direct {v1, p0}, Lcom/narvii/onlinestatus/OnlineDialogHelper$3;-><init>(Lcom/narvii/onlinestatus/OnlineDialogHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 69
    iput-object v0, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->goLoginDialog:Lcom/narvii/util/dialog/RealtimeBlurDialog;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->goLoginDialog:Lcom/narvii/util/dialog/RealtimeBlurDialog;

    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    const-string v6, "__communityId"

    invoke-virtual {v5, v6}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x2

    .line 73
    invoke-direct {p0, v0}, Lcom/narvii/onlinestatus/OnlineDialogHelper;->prepareShowDialog(I)V

    .line 74
    iget-object v0, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->goJoinCommunityDialog:Lcom/narvii/util/dialog/RealtimeBlurDialog;

    if-nez v0, :cond_2

    .line 75
    new-instance v0, Lcom/narvii/util/dialog/RealtimeBlurDialog;

    iget-object v5, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    invoke-virtual {v5}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5, v4}, Lcom/narvii/util/dialog/RealtimeBlurDialog;-><init>(Landroid/content/Context;I)V

    .line 76
    invoke-virtual {v0}, Lcom/narvii/util/dialog/RealtimeBlurDialog;->getRealtimeBlurView()Lcom/github/mmin18/widget/RealtimeBlurView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/github/mmin18/widget/RealtimeBlurView;->setOverlayColor(I)V

    .line 77
    invoke-virtual {v0}, Lcom/narvii/util/dialog/RealtimeBlurDialog;->getRealtimeBlurView()Lcom/github/mmin18/widget/RealtimeBlurView;

    move-result-object v3

    iget-object v4, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    invoke-virtual {v4}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    invoke-virtual {v3, v2}, Lcom/github/mmin18/widget/RealtimeBlurView;->setBlurRadius(F)V

    const v2, 0x7f0b0562

    .line 78
    invoke-virtual {v0, v2}, Lcom/narvii/util/dialog/RealtimeBlurDialog;->setContentView(I)V

    .line 79
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/narvii/onlinestatus/OnlineDialogHelper$4;

    invoke-direct {v2, p0}, Lcom/narvii/onlinestatus/OnlineDialogHelper$4;-><init>(Lcom/narvii/onlinestatus/OnlineDialogHelper;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    new-instance v1, Lcom/narvii/onlinestatus/OnlineDialogHelper$5;

    invoke-direct {v1, p0}, Lcom/narvii/onlinestatus/OnlineDialogHelper$5;-><init>(Lcom/narvii/onlinestatus/OnlineDialogHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 98
    new-instance v1, Lcom/narvii/onlinestatus/OnlineDialogHelper$6;

    invoke-direct {v1, p0}, Lcom/narvii/onlinestatus/OnlineDialogHelper$6;-><init>(Lcom/narvii/onlinestatus/OnlineDialogHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 104
    iput-object v0, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->goJoinCommunityDialog:Lcom/narvii/util/dialog/RealtimeBlurDialog;

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->goJoinCommunityDialog:Lcom/narvii/util/dialog/RealtimeBlurDialog;

    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, v0}, Lcom/narvii/onlinestatus/OnlineDialogHelper;->prepareShowDialog(I)V

    :goto_0
    return-void
.end method
