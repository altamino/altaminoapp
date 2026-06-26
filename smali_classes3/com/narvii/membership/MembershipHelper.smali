.class public Lcom/narvii/membership/MembershipHelper;
.super Ljava/lang/Object;
.source "MembershipHelper.java"


# instance fields
.field private ctx:Lcom/narvii/app/NVContext;

.field membershipService:Lcom/narvii/wallet/MembershipService;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/narvii/membership/MembershipHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string v0, "membership"

    .line 13
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/wallet/MembershipService;

    iput-object p1, p0, Lcom/narvii/membership/MembershipHelper;->membershipService:Lcom/narvii/wallet/MembershipService;

    return-void
.end method


# virtual methods
.method public showJoinAminoPlusDialog(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0, p1}, Lcom/narvii/membership/MembershipHelper;->showJoinAminoPlusDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showJoinAminoPlusDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/narvii/membership/MembershipHelper;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembershipBefore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    new-instance v0, Lcom/narvii/membership/MembershipExpireDialog;

    iget-object v1, p0, Lcom/narvii/membership/MembershipHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1, p1}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 23
    iput-object p2, v0, Lcom/narvii/membership/MembershipExpireDialog;->source:Ljava/lang/String;

    .line 24
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Lcom/narvii/membership/MembershipHintDialog;

    iget-object v1, p0, Lcom/narvii/membership/MembershipHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1, p1}, Lcom/narvii/membership/MembershipHintDialog;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 27
    iput-object p2, v0, Lcom/narvii/membership/MembershipHintDialog;->source:Ljava/lang/String;

    .line 28
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    :goto_0
    return-void
.end method
