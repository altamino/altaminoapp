.class Lcom/narvii/account/AccountResponseListener$1;
.super Ljava/lang/Object;
.source "AccountResponseListener.java"

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

    .line 172
    iput-object p1, p0, Lcom/narvii/account/AccountResponseListener$1;->this$0:Lcom/narvii/account/AccountResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/narvii/account/AccountResponseListener$1;->this$0:Lcom/narvii/account/AccountResponseListener;

    iget-boolean v1, v0, Lcom/narvii/account/AccountResponseListener;->accountChanged:Z

    if-eqz v1, :cond_0

    .line 176
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/narvii/account/AccountResponseListener$1;->this$0:Lcom/narvii/account/AccountResponseListener;

    invoke-static {v1}, Lcom/narvii/account/AccountResponseListener;->access$000(Lcom/narvii/account/AccountResponseListener;)Lcom/narvii/app/NVContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void

    .line 180
    :cond_0
    iget-boolean v0, v0, Lcom/narvii/account/AccountResponseListener;->sidChanged:Z

    if-eqz v0, :cond_1

    .line 181
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.narvii.action.SID_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/narvii/account/AccountResponseListener$1;->this$0:Lcom/narvii/account/AccountResponseListener;

    invoke-static {v1}, Lcom/narvii/account/AccountResponseListener;->access$000(Lcom/narvii/account/AccountResponseListener;)Lcom/narvii/app/NVContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_1
    return-void
.end method
