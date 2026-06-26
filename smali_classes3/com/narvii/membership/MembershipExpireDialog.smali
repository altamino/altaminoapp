.class public Lcom/narvii/membership/MembershipExpireDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "MembershipExpireDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btnClose:Landroid/view/View;

.field private btnSubscribe:Landroid/widget/TextView;

.field context:Lcom/narvii/app/NVContext;

.field public source:Ljava/lang/String;

.field private tvContent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 5

    .line 32
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p1, p0, Lcom/narvii/membership/MembershipExpireDialog;->context:Lcom/narvii/app/NVContext;

    .line 34
    sget v0, Lcom/narvii/lib/R$layout;->dialog_membership_base:I

    invoke-virtual {p0, v0}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    const-string v0, "membership"

    .line 36
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/wallet/MembershipService;

    .line 37
    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->daysExpired()I

    move-result v0

    .line 39
    sget v1, Lcom/narvii/lib/R$id;->hint_content:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/narvii/membership/MembershipExpireDialog;->tvContent:Landroid/widget/TextView;

    .line 40
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    .line 42
    iget-object p2, p0, Lcom/narvii/membership/MembershipExpireDialog;->tvContent:Landroid/widget/TextView;

    sget v0, Lcom/narvii/lib/R$string;->membership_expire_warning_with_renew_0:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne v0, p2, :cond_1

    .line 44
    iget-object p2, p0, Lcom/narvii/membership/MembershipExpireDialog;->tvContent:Landroid/widget/TextView;

    sget v0, Lcom/narvii/lib/R$string;->membership_expire_warning_with_renew_1:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    if-le v0, p2, :cond_2

    .line 46
    iget-object v1, p0, Lcom/narvii/membership/MembershipExpireDialog;->tvContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/narvii/lib/R$string;->membership_expire_warning_with_renew_n:I

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v4

    invoke-virtual {v2, v3, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 48
    :cond_2
    iget-object p2, p0, Lcom/narvii/membership/MembershipExpireDialog;->tvContent:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 51
    :cond_3
    iget-object v0, p0, Lcom/narvii/membership/MembershipExpireDialog;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :goto_0
    sget p2, Lcom/narvii/lib/R$id;->close:I

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/membership/MembershipExpireDialog;->btnClose:Landroid/view/View;

    .line 54
    iget-object p2, p0, Lcom/narvii/membership/MembershipExpireDialog;->btnClose:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    sget p2, Lcom/narvii/lib/R$id;->subscribe_layout:I

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    sget p2, Lcom/narvii/lib/R$id;->subscribe:I

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/membership/MembershipExpireDialog;->btnSubscribe:Landroid/widget/TextView;

    .line 58
    iget-object p2, p0, Lcom/narvii/membership/MembershipExpireDialog;->btnSubscribe:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->freeTrial()Z

    move-result p1

    if-eqz p1, :cond_4

    sget p1, Lcom/narvii/lib/R$string;->membership_try_for_free:I

    goto :goto_1

    :cond_4
    sget p1, Lcom/narvii/lib/R$string;->membership_renew:I

    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 59
    iget-object p1, p0, Lcom/narvii/membership/MembershipExpireDialog;->btnSubscribe:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/narvii/util/ViewUtils;->setMontserratExtraBoldTypeface(Landroid/widget/TextView;)V

    return-void
.end method

.method private subscribeMembership()V
    .locals 3

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ndc://membership"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "subscribe"

    const/4 v2, 0x1

    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 75
    iget-object v1, p0, Lcom/narvii/membership/MembershipExpireDialog;->source:Ljava/lang/String;

    const-string v2, "Source"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    iget-object v1, p0, Lcom/narvii/membership/MembershipExpireDialog;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/narvii/lib/R$id;->close:I

    if-ne v0, v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/narvii/lib/R$id;->subscribe_layout:I

    if-ne p1, v0, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 68
    invoke-direct {p0}, Lcom/narvii/membership/MembershipExpireDialog;->subscribeMembership()V

    :cond_1
    :goto_0
    return-void
.end method
