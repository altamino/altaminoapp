.class Lcom/narvii/chat/detail/ThreadDetailFragment$12;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ThreadDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/detail/ThreadDetailFragment;->switchUserCanInviteClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

.field final synthetic val$isCanInvite:Z


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/ThreadDetailFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Z)V
    .locals 0

    .line 2007
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$12;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    iput-object p3, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$12;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    iput-boolean p4, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$12;->val$isCanInvite:Z

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 2022
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$12;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 2023
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$12;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 2024
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$12;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2011
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$12;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 2012
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$12;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 2013
    iget-boolean p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$12;->val$isCanInvite:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/narvii/model/ChatThread;->setCanMemberInvite(Z)V

    .line 2014
    new-instance p2, Lcom/narvii/notification/Notification;

    const-string/jumbo v0, "update"

    invoke-direct {p2, v0, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 2015
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$12;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method
