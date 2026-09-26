.class public Lcom/narvii/membership/MembershipHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ctx:Lcom/narvii/app/NVContext;

.field membershipService:Lcom/narvii/wallet/MembershipService;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/membership/MembershipHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    const-string v0, "membership"

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/wallet/MembershipService;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/membership/MembershipHelper;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 16
    return-void
.end method


# virtual methods
.method public showJoinAminoPlusDialog(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/narvii/membership/MembershipHelper;->showJoinAminoPlusDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showJoinAminoPlusDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/membership/MembershipHelper;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 2
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembershipBefore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/narvii/membership/MembershipExpireDialog;

    iget-object v1, p0, Lcom/narvii/membership/MembershipHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1, p1}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    iput-object p2, v0, Lcom/narvii/membership/MembershipExpireDialog;->source:Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/narvii/membership/MembershipHintDialog;

    iget-object v1, p0, Lcom/narvii/membership/MembershipHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1, p1}, Lcom/narvii/membership/MembershipHintDialog;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    iput-object p2, v0, Lcom/narvii/membership/MembershipHintDialog;->source:Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    :goto_0
    return-void
.end method
