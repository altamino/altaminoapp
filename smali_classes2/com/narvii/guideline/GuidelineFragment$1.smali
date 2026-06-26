.class Lcom/narvii/guideline/GuidelineFragment$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "GuidelineFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/guideline/GuidelineFragment;->requestCommunityGuideline()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/guideline/CommunityGuideLineResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/guideline/GuidelineFragment;


# direct methods
.method constructor <init>(Lcom/narvii/guideline/GuidelineFragment;Ljava/lang/Class;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/narvii/guideline/GuidelineFragment$1;->this$0:Lcom/narvii/guideline/GuidelineFragment;

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

    .line 112
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/guideline/CommunityGuideLineResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 104
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 105
    iget-object p1, p0, Lcom/narvii/guideline/GuidelineFragment$1;->this$0:Lcom/narvii/guideline/GuidelineFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/guideline/GuidelineFragment;->access$002(Lcom/narvii/guideline/GuidelineFragment;Z)Z

    .line 106
    iget-object p1, p0, Lcom/narvii/guideline/GuidelineFragment$1;->this$0:Lcom/narvii/guideline/GuidelineFragment;

    invoke-static {p1, p2}, Lcom/narvii/guideline/GuidelineFragment;->access$102(Lcom/narvii/guideline/GuidelineFragment;Lcom/narvii/guideline/CommunityGuideLineResponse;)Lcom/narvii/guideline/CommunityGuideLineResponse;

    .line 107
    iget-object p1, p0, Lcom/narvii/guideline/GuidelineFragment$1;->this$0:Lcom/narvii/guideline/GuidelineFragment;

    iget-object p1, p1, Lcom/narvii/guideline/GuidelineFragment;->communityGuideAdapter:Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101
    check-cast p2, Lcom/narvii/guideline/CommunityGuideLineResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/guideline/GuidelineFragment$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/guideline/CommunityGuideLineResponse;)V

    return-void
.end method
