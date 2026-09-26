.class Lcom/narvii/account/AccountResponseListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/AccountResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/AccountResponseListener;


# direct methods
.method constructor <init>(Lcom/narvii/account/AccountResponseListener;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/AccountResponseListener$1;->this$0:Lcom/narvii/account/AccountResponseListener;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/AccountResponseListener$1;->this$0:Lcom/narvii/account/AccountResponseListener;

    .line 3
    .line 4
    iget-boolean v1, v0, Lcom/narvii/account/AccountResponseListener;->accountChanged:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroid/content/Intent;

    .line 9
    .line 10
    const-string v1, "com.narvii.action.ACCOUNT_CHANGED"

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/account/AccountResponseListener$1;->this$0:Lcom/narvii/account/AccountResponseListener;

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lcom/narvii/account/AccountResponseListener;->a(Lcom/narvii/account/AccountResponseListener;)Lcom/narvii/app/NVContext;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    .line 31
    return-void

    .line 32
    .line 33
    :cond_0
    iget-boolean v0, v0, Lcom/narvii/account/AccountResponseListener;->sidChanged:Z

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    new-instance v0, Landroid/content/Intent;

    .line 38
    .line 39
    const-string v1, "com.narvii.action.SID_CHANGED"

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    iget-object v1, p0, Lcom/narvii/account/AccountResponseListener$1;->this$0:Lcom/narvii/account/AccountResponseListener;

    .line 45
    .line 46
    .line 47
    invoke-static {v1}, Lcom/narvii/account/AccountResponseListener;->a(Lcom/narvii/account/AccountResponseListener;)Lcom/narvii/app/NVContext;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    .line 60
    :cond_1
    return-void
.end method
