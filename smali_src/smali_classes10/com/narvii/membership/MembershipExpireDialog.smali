.class public Lcom/narvii/membership/MembershipExpireDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "SourceFile"

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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 5

    .line 2
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/membership/MembershipExpireDialog;->context:Lcom/narvii/app/NVContext;

    sget v0, Lcom/narvii/lib/R$layout;->dialog_membership_base:I

    .line 3
    invoke-virtual {p0, v0}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    const-string v0, "membership"

    .line 4
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/wallet/MembershipService;

    .line 5
    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->daysExpired()I

    move-result v0

    sget v1, Lcom/narvii/lib/R$id;->hint_content:I

    .line 6
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/narvii/membership/MembershipExpireDialog;->tvContent:Landroid/widget/TextView;

    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/narvii/membership/MembershipExpireDialog;->tvContent:Landroid/widget/TextView;

    sget v0, Lcom/narvii/lib/R$string;->membership_expire_warning_with_renew_0:I

    .line 8
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne v0, p2, :cond_1

    iget-object p2, p0, Lcom/narvii/membership/MembershipExpireDialog;->tvContent:Landroid/widget/TextView;

    sget v0, Lcom/narvii/lib/R$string;->membership_expire_warning_with_renew_1:I

    .line 9
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    if-le v0, p2, :cond_2

    iget-object v1, p0, Lcom/narvii/membership/MembershipExpireDialog;->tvContent:Landroid/widget/TextView;

    .line 10
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

    :cond_2
    iget-object p2, p0, Lcom/narvii/membership/MembershipExpireDialog;->tvContent:Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/narvii/membership/MembershipExpireDialog;->tvContent:Landroid/widget/TextView;

    .line 12
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    sget p2, Lcom/narvii/lib/R$id;->close:I

    .line 13
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/membership/MembershipExpireDialog;->btnClose:Landroid/view/View;

    .line 14
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/narvii/lib/R$id;->subscribe_layout:I

    .line 15
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/narvii/lib/R$id;->subscribe:I

    .line 16
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/membership/MembershipExpireDialog;->btnSubscribe:Landroid/widget/TextView;

    .line 17
    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->freeTrial()Z

    move-result p1

    if-eqz p1, :cond_4

    sget p1, Lcom/narvii/lib/R$string;->membership_try_for_free:I

    goto :goto_1

    :cond_4
    sget p1, Lcom/narvii/lib/R$string;->membership_renew:I

    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/narvii/membership/MembershipExpireDialog;->btnSubscribe:Landroid/widget/TextView;

    .line 18
    invoke-static {p1}, Lcom/narvii/util/ViewUtils;->setMontserratExtraBoldTypeface(Landroid/widget/TextView;)V

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

.method private subscribeMembership()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "ndc://membership"

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    const-string v2, "android.intent.action.VIEW"

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v1, "subscribe"

    .line 18
    const/4 v2, 0x1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 22
    .line 23
    const-string v1, "Source"

    .line 24
    .line 25
    iget-object v2, p0, Lcom/narvii/membership/MembershipExpireDialog;->source:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/membership/MembershipExpireDialog;->context:Lcom/narvii/app/NVContext;

    .line 31
    .line 32
    .line 33
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v0}, Lcom/narvii/membership/MembershipExpireDialog;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 38
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    sget v1, Lcom/narvii/lib/R$id;->close:I

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 16
    move-result p1

    .line 17
    .line 18
    sget v0, Lcom/narvii/lib/R$id;->subscribe_layout:I

    .line 19
    .line 20
    if-ne p1, v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/narvii/membership/MembershipExpireDialog;->subscribeMembership()V

    .line 27
    :cond_1
    :goto_0
    return-void
.end method
