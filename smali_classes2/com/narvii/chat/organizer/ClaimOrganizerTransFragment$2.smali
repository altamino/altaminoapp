.class Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ClaimOrganizerTransFragment.java"


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

    .line 248
    iput-object p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$2;->this$0:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;

    iput-object p3, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$2;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

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

    .line 259
    iget-object p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$2;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 260
    iget-object p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$2;->this$0:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 252
    iget-object p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$2;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 253
    iget-object p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$2;->this$0:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->updateThread(Z)V

    .line 254
    iget-object p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$2;->this$0:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;

    const p2, 0x7f0f02eb

    invoke-static {p1, p2}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->access$000(Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;I)V

    return-void
.end method
