.class public final Lcom/narvii/master/home/profile/LinkCommunityFragment$reorderCommunity$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "LinkCommunityFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/LinkCommunityFragment;->reorderCommunity()V
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
.field final synthetic this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$reorderCommunity$2;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

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

    .line 194
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 195
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$reorderCommunity$2;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-static {p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getProgressDialog$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 196
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$reorderCommunity$2;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 197
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$reorderCommunity$2;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-static {p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getLinkedCommu$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 198
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$reorderCommunity$2;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-static {p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getLinkedCommu$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$reorderCommunity$2;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-static {p2}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getLinkedCommuCopy$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 199
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$reorderCommunity$2;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-static {p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$reloadData(Lcom/narvii/master/home/profile/LinkCommunityFragment;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 188
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 189
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$reorderCommunity$2;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-static {p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getProgressDialog$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 190
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$reorderCommunity$2;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-static {p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$sendUserChangedNotification(Lcom/narvii/master/home/profile/LinkCommunityFragment;)V

    return-void
.end method
