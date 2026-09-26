.class Lcom/narvii/guideline/GuidelineFragment$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/guideline/GuidelineFragment$1;->this$0:Lcom/narvii/guideline/GuidelineFragment;

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
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/guideline/CommunityGuideLineResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/guideline/GuidelineFragment$1;->this$0:Lcom/narvii/guideline/GuidelineFragment;

    const/4 v0, 0x1

    .line 3
    invoke-static {p1, v0}, Lcom/narvii/guideline/GuidelineFragment;->x(Lcom/narvii/guideline/GuidelineFragment;Z)V

    iget-object p1, p0, Lcom/narvii/guideline/GuidelineFragment$1;->this$0:Lcom/narvii/guideline/GuidelineFragment;

    .line 4
    invoke-static {p1, p2}, Lcom/narvii/guideline/GuidelineFragment;->y(Lcom/narvii/guideline/GuidelineFragment;Lcom/narvii/guideline/CommunityGuideLineResponse;)V

    iget-object p1, p0, Lcom/narvii/guideline/GuidelineFragment$1;->this$0:Lcom/narvii/guideline/GuidelineFragment;

    .line 5
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

    .line 1
    check-cast p2, Lcom/narvii/guideline/CommunityGuideLineResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/guideline/GuidelineFragment$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/guideline/CommunityGuideLineResponse;)V

    return-void
.end method
