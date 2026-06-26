.class Lcom/narvii/app/AminoReferrerReceiver$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "AminoReferrerReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/AminoReferrerReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/master/invitation/CommunityInviteResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/AminoReferrerReceiver;

.field final synthetic val$isInvite:Z


# direct methods
.method constructor <init>(Lcom/narvii/app/AminoReferrerReceiver;Ljava/lang/Class;Z)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/narvii/app/AminoReferrerReceiver$1;->this$0:Lcom/narvii/app/AminoReferrerReceiver;

    iput-boolean p3, p0, Lcom/narvii/app/AminoReferrerReceiver$1;->val$isInvite:Z

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/invitation/CommunityInviteResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    invoke-static {p2}, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->launchCommunity(Lcom/narvii/master/invitation/CommunityInviteResponse;)Landroid/content/Intent;

    move-result-object p1

    .line 93
    iget-boolean v0, p0, Lcom/narvii/app/AminoReferrerReceiver$1;->val$isInvite:Z

    const-string v1, "loginAhead"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "Deferred Deep Linking"

    const-string v1, "Source"

    .line 94
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    sget-object v1, Lcom/narvii/account/LoginActivity;->instance:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/LoginActivity;

    :goto_0
    if-eqz v1, :cond_1

    .line 97
    invoke-virtual {v1}, Lcom/narvii/account/LoginActivity;->finish()V

    .line 98
    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 99
    invoke-virtual {v1, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1

    :cond_1
    const/high16 v1, 0x10000000

    .line 101
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 102
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/narvii/app/NVApplication;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 89
    check-cast p2, Lcom/narvii/master/invitation/CommunityInviteResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/AminoReferrerReceiver$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/invitation/CommunityInviteResponse;)V

    return-void
.end method
