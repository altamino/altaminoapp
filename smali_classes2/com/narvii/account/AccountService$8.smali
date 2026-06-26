.class Lcom/narvii/account/AccountService$8;
.super Ljava/lang/Object;
.source "AccountService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/AccountService;->logout(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/AccountService;


# direct methods
.method constructor <init>(Lcom/narvii/account/AccountService;)V
    .locals 0

    .line 993
    iput-object p1, p0, Lcom/narvii/account/AccountService$8;->this$0:Lcom/narvii/account/AccountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 996
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 997
    iget-object v1, p0, Lcom/narvii/account/AccountService$8;->this$0:Lcom/narvii/account/AccountService;

    invoke-static {v1}, Lcom/narvii/account/AccountService;->access$000(Lcom/narvii/account/AccountService;)Lcom/narvii/app/NVContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 998
    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
