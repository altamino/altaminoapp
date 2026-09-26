.class Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->sendReplyRequest(Z)V
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
.field final synthetic this$0:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;

.field final synthetic val$isAccept:Z

.field final synthetic val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Z)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$1;->this$0:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    iput-boolean p4, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$1;->val$isAccept:Z

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 10
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

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$1;->this$0:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p1

    .line 12
    const/4 p2, 0x0

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 20
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$1;->this$0:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;

    .line 8
    .line 9
    iget-boolean p2, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$1;->val$isAccept:Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->updateThread(Z)V

    .line 13
    .line 14
    iget-boolean p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$1;->val$isAccept:Z

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$1;->this$0:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;

    .line 19
    .line 20
    .line 21
    const p2, 0x7f12033b

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p2}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->n(Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;I)V

    .line 25
    :cond_0
    return-void
.end method
