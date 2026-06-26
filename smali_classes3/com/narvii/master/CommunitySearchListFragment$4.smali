.class Lcom/narvii/master/CommunitySearchListFragment$4;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "CommunitySearchListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/CommunitySearchListFragment;->showLanguageChooseDialog()V
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
.field final synthetic this$0:Lcom/narvii/master/CommunitySearchListFragment;

.field final synthetic val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunitySearchListFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 775
    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$4;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iput-object p3, p0, Lcom/narvii/master/CommunitySearchListFragment$4;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

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

    .line 815
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 816
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$4;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 817
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$4;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 818
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$4;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

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

    .line 778
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 779
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$4;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 780
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$4;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 782
    :cond_0
    new-instance p1, Lcom/narvii/incubator/LanguageChooseDialog;

    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$4;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object p2, p2, Lcom/narvii/master/explorer/SupportLanguageResponse;->supportedLanguages:Ljava/util/List;

    .line 783
    invoke-virtual {v0}, Lcom/narvii/master/CommunitySearchListFragment;->getCurSearchLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, p2, v1}, Lcom/narvii/incubator/LanguageChooseDialog;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;Ljava/lang/String;)V

    .line 784
    new-instance p2, Lcom/narvii/master/CommunitySearchListFragment$4$1;

    invoke-direct {p2, p0, p1}, Lcom/narvii/master/CommunitySearchListFragment$4$1;-><init>(Lcom/narvii/master/CommunitySearchListFragment$4;Lcom/narvii/incubator/LanguageChooseDialog;)V

    invoke-virtual {p1, p2}, Lcom/narvii/incubator/LanguageChooseDialog;->setOnItemClickListener(Lcom/narvii/incubator/LanguageChooseDialog$ItemClickListener;)V

    .line 810
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

    .line 775
    check-cast p2, Lcom/narvii/master/explorer/SupportLanguageResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/CommunitySearchListFragment$4;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/explorer/SupportLanguageResponse;)V

    return-void
.end method
