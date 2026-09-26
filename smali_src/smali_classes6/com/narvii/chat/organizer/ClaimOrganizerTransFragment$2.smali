.class Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->sendClaim()V
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

.field final synthetic val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$2;->this$0:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$2;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 8
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
    iget-object p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$2;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$2;->this$0:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;

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
    iget-object p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$2;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$2;->this$0:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;

    .line 8
    const/4 p2, 0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->updateThread(Z)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$2;->this$0:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;

    .line 14
    .line 15
    .line 16
    const p2, 0x7f12033b

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->n(Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;I)V

    .line 20
    return-void
.end method
