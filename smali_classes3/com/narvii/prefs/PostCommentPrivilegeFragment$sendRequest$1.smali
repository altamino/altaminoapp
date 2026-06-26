.class public final Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendRequest$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "PostCommentPrivilegeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prefs/PostCommentPrivilegeFragment;->sendRequest(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
.field final synthetic $progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

.field final synthetic this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/PostCommentPrivilegeFragment;Lcom/narvii/util/dialog/ProgressDialog;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/dialog/ProgressDialog;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendRequest$1;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    iput-object p2, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendRequest$1;->$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-direct {p0, p3}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

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

    .line 173
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 174
    iget-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendRequest$1;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p4}, Lcom/narvii/util/Utils;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 175
    iget-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendRequest$1;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    .line 178
    :cond_0
    iget-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendRequest$1;->$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 164
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 165
    iget-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendRequest$1;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 168
    :cond_0
    iget-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendRequest$1;->$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 169
    iget-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendRequest$1;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
