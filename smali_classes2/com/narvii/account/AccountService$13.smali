.class Lcom/narvii/account/AccountService$13;
.super Landroid/content/BroadcastReceiver;
.source "AccountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/account/AccountService;
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

    .line 1407
    iput-object p1, p0, Lcom/narvii/account/AccountService$13;->this$0:Lcom/narvii/account/AccountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1410
    iget-object p1, p0, Lcom/narvii/account/AccountService$13;->this$0:Lcom/narvii/account/AccountService;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/account/AccountService;->access$202(Lcom/narvii/account/AccountService;J)J

    .line 1411
    iget-object p1, p0, Lcom/narvii/account/AccountService$13;->this$0:Lcom/narvii/account/AccountService;

    invoke-static {p1}, Lcom/narvii/account/AccountService;->access$300(Lcom/narvii/account/AccountService;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1412
    iget-object p1, p0, Lcom/narvii/account/AccountService$13;->this$0:Lcom/narvii/account/AccountService;

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->updateRecentVisitorCount()V

    :cond_0
    return-void
.end method
