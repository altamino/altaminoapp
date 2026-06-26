.class Lcom/narvii/community/PreviewWebViewFragment$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "PreviewWebViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/PreviewWebViewFragment;->onLoginResult(ZLandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/UserResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/PreviewWebViewFragment;


# direct methods
.method constructor <init>(Lcom/narvii/community/PreviewWebViewFragment;Ljava/lang/Class;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/narvii/community/PreviewWebViewFragment$1;->this$0:Lcom/narvii/community/PreviewWebViewFragment;

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

    .line 100
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 101
    iget-object p1, p0, Lcom/narvii/community/PreviewWebViewFragment$1;->this$0:Lcom/narvii/community/PreviewWebViewFragment;

    iget-object p1, p1, Lcom/narvii/community/PreviewWebViewFragment;->joinCommunityProgressLayout:Lcom/narvii/widget/JoinCommunityProgressLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/widget/JoinCommunityProgressLayout;->setProgress(I)V

    .line 102
    iget-object p1, p0, Lcom/narvii/community/PreviewWebViewFragment$1;->this$0:Lcom/narvii/community/PreviewWebViewFragment;

    iget-object p1, p1, Lcom/narvii/community/PreviewWebViewFragment;->joinCommunityProgressLayout:Lcom/narvii/widget/JoinCommunityProgressLayout;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/PushButton;->setForcePressed(Z)V

    .line 103
    iget-object p1, p0, Lcom/narvii/community/PreviewWebViewFragment$1;->this$0:Lcom/narvii/community/PreviewWebViewFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 104
    iget-object p1, p0, Lcom/narvii/community/PreviewWebViewFragment$1;->this$0:Lcom/narvii/community/PreviewWebViewFragment;

    iget-object p1, p1, Lcom/narvii/community/PreviewWebViewFragment;->tvJoin:Landroid/widget/TextView;

    const p2, 0x7f0f0aa9

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    check-cast p2, Lcom/narvii/model/api/UserResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/community/PreviewWebViewFragment$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 85
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 86
    iget-object p1, p0, Lcom/narvii/community/PreviewWebViewFragment$1;->this$0:Lcom/narvii/community/PreviewWebViewFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/narvii/community/PreviewWebViewFragment;->access$002(Lcom/narvii/community/PreviewWebViewFragment;Z)Z

    .line 87
    iget-object p1, p0, Lcom/narvii/community/PreviewWebViewFragment$1;->this$0:Lcom/narvii/community/PreviewWebViewFragment;

    iget-object p1, p1, Lcom/narvii/community/PreviewWebViewFragment;->joinCommunityProgressLayout:Lcom/narvii/widget/JoinCommunityProgressLayout;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Lcom/narvii/widget/JoinCommunityProgressLayout;->setProgress(I)V

    .line 88
    iget-object p1, p0, Lcom/narvii/community/PreviewWebViewFragment$1;->this$0:Lcom/narvii/community/PreviewWebViewFragment;

    const-string p2, "myCommunityList"

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/MyCommunityListService;

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p1, p2, v0}, Lcom/narvii/community/MyCommunityListService;->refresh(ILcom/narvii/util/Callback;)V

    .line 90
    new-instance p1, Lcom/narvii/community/PreviewWebViewFragment$1$1;

    invoke-direct {p1, p0}, Lcom/narvii/community/PreviewWebViewFragment$1$1;-><init>(Lcom/narvii/community/PreviewWebViewFragment$1;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method
