.class Lcom/narvii/community/PreviewWebViewFragment$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/PreviewWebViewFragment$1;->this$0:Lcom/narvii/community/PreviewWebViewFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
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
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/community/PreviewWebViewFragment$1;->this$0:Lcom/narvii/community/PreviewWebViewFragment;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/community/PreviewWebViewFragment;->joinCommunityProgressLayout:Lcom/narvii/widget/JoinCommunityProgressLayout;

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lcom/narvii/widget/JoinCommunityProgressLayout;->setProgress(I)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/community/PreviewWebViewFragment$1;->this$0:Lcom/narvii/community/PreviewWebViewFragment;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/narvii/community/PreviewWebViewFragment;->joinCommunityProgressLayout:Lcom/narvii/widget/JoinCommunityProgressLayout;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lcom/narvii/widget/PushButton;->setForcePressed(Z)V

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/community/PreviewWebViewFragment$1;->this$0:Lcom/narvii/community/PreviewWebViewFragment;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 24
    move-result-object p1

    .line 25
    const/4 p2, 0x1

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/community/PreviewWebViewFragment$1;->this$0:Lcom/narvii/community/PreviewWebViewFragment;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/narvii/community/PreviewWebViewFragment;->tvJoin:Landroid/widget/TextView;

    .line 37
    .line 38
    .line 39
    const p2, 0x7f120b5c

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 43
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
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

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/community/PreviewWebViewFragment$1;->this$0:Lcom/narvii/community/PreviewWebViewFragment;

    const/4 p2, 0x1

    .line 3
    invoke-static {p1, p2}, Lcom/narvii/community/PreviewWebViewFragment;->v(Lcom/narvii/community/PreviewWebViewFragment;Z)V

    iget-object p1, p0, Lcom/narvii/community/PreviewWebViewFragment$1;->this$0:Lcom/narvii/community/PreviewWebViewFragment;

    .line 4
    iget-object p1, p1, Lcom/narvii/community/PreviewWebViewFragment;->joinCommunityProgressLayout:Lcom/narvii/widget/JoinCommunityProgressLayout;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Lcom/narvii/widget/JoinCommunityProgressLayout;->setProgress(I)V

    iget-object p1, p0, Lcom/narvii/community/PreviewWebViewFragment$1;->this$0:Lcom/narvii/community/PreviewWebViewFragment;

    const-string p2, "myCommunityList"

    .line 5
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/MyCommunityListService;

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, p2, v0}, Lcom/narvii/community/MyCommunityListService;->refresh(ILcom/narvii/util/Callback;)V

    .line 7
    new-instance p1, Lcom/narvii/community/PreviewWebViewFragment$1$1;

    invoke-direct {p1, p0}, Lcom/narvii/community/PreviewWebViewFragment$1$1;-><init>(Lcom/narvii/community/PreviewWebViewFragment$1;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method
