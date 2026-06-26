.class Lcom/narvii/feed/ExternalPostListFragment$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ExternalPostListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/ExternalPostListFragment;->sendExternalSoureRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/feed/ExternalSourceResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/ExternalPostListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/feed/ExternalPostListFragment;Ljava/lang/Class;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/narvii/feed/ExternalPostListFragment$1;->this$0:Lcom/narvii/feed/ExternalPostListFragment;

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

    .line 104
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/feed/ExternalSourceResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 97
    iget-object p1, p0, Lcom/narvii/feed/ExternalPostListFragment$1;->this$0:Lcom/narvii/feed/ExternalPostListFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/feed/ExternalPostListFragment$1;->this$0:Lcom/narvii/feed/ExternalPostListFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 98
    iget-object p1, p0, Lcom/narvii/feed/ExternalPostListFragment$1;->this$0:Lcom/narvii/feed/ExternalPostListFragment;

    iget-object p2, p2, Lcom/narvii/feed/ExternalSourceResponse;->externalSource:Lcom/narvii/model/ExternalSource;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/narvii/model/ExternalSource;->title:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 93
    check-cast p2, Lcom/narvii/feed/ExternalSourceResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/feed/ExternalPostListFragment$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/feed/ExternalSourceResponse;)V

    return-void
.end method
