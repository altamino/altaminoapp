.class public Lcom/narvii/membership/MembershipHintDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "MembershipHintDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btnClose:Landroid/view/View;

.field private btnSubscribe:Landroid/widget/TextView;

.field private context:Lcom/narvii/app/NVContext;

.field public source:Ljava/lang/String;

.field private tvContent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/narvii/membership/MembershipHintDialog;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 1

    const-string v0, "JoinAminoPlusPage"

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/narvii/membership/MembershipHintDialog;->context:Lcom/narvii/app/NVContext;

    .line 35
    sget v0, Lcom/narvii/lib/R$layout;->dialog_membership_base:I

    invoke-virtual {p0, v0}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 38
    sget v0, Lcom/narvii/lib/R$id;->hint_content:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/membership/MembershipHintDialog;->tvContent:Landroid/widget/TextView;

    .line 39
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object p2, p0, Lcom/narvii/membership/MembershipHintDialog;->tvContent:Landroid/widget/TextView;

    sget v0, Lcom/narvii/lib/R$string;->member_ship_only:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/narvii/membership/MembershipHintDialog;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    :goto_0
    sget p2, Lcom/narvii/lib/R$id;->close:I

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/membership/MembershipHintDialog;->btnClose:Landroid/view/View;

    .line 46
    iget-object p2, p0, Lcom/narvii/membership/MembershipHintDialog;->btnClose:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    sget p2, Lcom/narvii/lib/R$id;->subscribe_layout:I

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p2, "membership"

    .line 50
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/wallet/MembershipService;

    .line 51
    sget p2, Lcom/narvii/lib/R$id;->subscribe:I

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/membership/MembershipHintDialog;->btnSubscribe:Landroid/widget/TextView;

    .line 52
    iget-object p2, p0, Lcom/narvii/membership/MembershipHintDialog;->btnSubscribe:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->freeTrial()Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/narvii/lib/R$string;->membership_try_for_free:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/narvii/lib/R$string;->membership_subscribe:I

    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 53
    iget-object p1, p0, Lcom/narvii/membership/MembershipHintDialog;->btnSubscribe:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/narvii/util/ViewUtils;->setMontserratExtraBoldTypeface(Landroid/widget/TextView;)V

    return-void
.end method

.method private subscribeMembership()V
    .locals 3

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ndc://membership"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "subscribe"

    const/4 v2, 0x1

    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lcom/narvii/membership/MembershipHintDialog;->source:Ljava/lang/String;

    const-string v2, "Source"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    iget-object v1, p0, Lcom/narvii/membership/MembershipHintDialog;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/narvii/lib/R$id;->close:I

    if-ne v0, v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/narvii/lib/R$id;->subscribe_layout:I

    if-ne p1, v0, :cond_1

    .line 61
    invoke-static {p0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "JoinAminoPlusButton"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 62
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 63
    invoke-direct {p0}, Lcom/narvii/membership/MembershipHintDialog;->subscribeMembership()V

    :cond_1
    :goto_0
    return-void
.end method
