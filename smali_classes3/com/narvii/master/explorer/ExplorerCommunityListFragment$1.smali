.class Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ExplorerCommunityListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->showLanguageChooseDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/master/explorer/SupportLanguageResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/explorer/ExplorerCommunityListFragment;

.field final synthetic val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1;->this$0:Lcom/narvii/master/explorer/ExplorerCommunityListFragment;

    iput-object p3, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

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

    .line 501
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 502
    iget-object p1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1;->this$0:Lcom/narvii/master/explorer/ExplorerCommunityListFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 503
    iget-object p1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 504
    iget-object p1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/explorer/SupportLanguageResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 475
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 476
    iget-object p1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 477
    iget-object p1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 479
    :cond_0
    new-instance p1, Lcom/narvii/incubator/LanguageChooseDialog;

    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1;->this$0:Lcom/narvii/master/explorer/ExplorerCommunityListFragment;

    iget-object p2, p2, Lcom/narvii/master/explorer/SupportLanguageResponse;->supportedLanguages:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->access$100(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, p2, v1}, Lcom/narvii/incubator/LanguageChooseDialog;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;Ljava/lang/String;)V

    .line 480
    new-instance p2, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1$1;

    invoke-direct {p2, p0, p1}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1$1;-><init>(Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1;Lcom/narvii/incubator/LanguageChooseDialog;)V

    invoke-virtual {p1, p2}, Lcom/narvii/incubator/LanguageChooseDialog;->setOnItemClickListener(Lcom/narvii/incubator/LanguageChooseDialog$ItemClickListener;)V

    .line 496
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 472
    check-cast p2, Lcom/narvii/master/explorer/SupportLanguageResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/explorer/SupportLanguageResponse;)V

    return-void
.end method
