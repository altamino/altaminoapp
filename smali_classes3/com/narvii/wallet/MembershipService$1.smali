.class Lcom/narvii/wallet/MembershipService$1;
.super Landroid/content/BroadcastReceiver;
.source "MembershipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/wallet/MembershipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/MembershipService;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/MembershipService;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/narvii/wallet/MembershipService$1;->this$0:Lcom/narvii/wallet/MembershipService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.narvii.action.ERROR_MEMBERSHIP_ISSUE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/narvii/wallet/MembershipService$1;->this$0:Lcom/narvii/wallet/MembershipService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/narvii/wallet/MembershipService;->refresh(Z)V

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 83
    iget-object p1, p0, Lcom/narvii/wallet/MembershipService$1;->this$0:Lcom/narvii/wallet/MembershipService;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/wallet/MembershipService;->refresh(Z)V

    .line 84
    iget-object p1, p0, Lcom/narvii/wallet/MembershipService$1;->this$0:Lcom/narvii/wallet/MembershipService;

    iput-boolean p2, p1, Lcom/narvii/wallet/MembershipService;->amplitudeMembershipSets:Z

    :cond_1
    :goto_0
    return-void
.end method
