.class public final Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter$InterestDataSource;
.super Lcom/narvii/paging/source/PageDataSource;
.source "AggregationTopicFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InterestDataSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/source/PageDataSource<",
        "Lcom/narvii/model/InterestData;",
        "Lcom/narvii/suggest/interest/MainInterestResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;Lcom/narvii/app/NVContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter$InterestDataSource;->this$0:Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;

    invoke-direct {p0, p2}, Lcom/narvii/paging/source/PageDataSource;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 118
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/persona/onboarding-interests"

    .line 120
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter$InterestDataSource;->this$0:Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;

    iget-object v1, v1, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;->this$0:Lcom/narvii/topic/picker/AggregationTopicFragment;

    invoke-virtual {v1}, Lcom/narvii/topic/picker/AggregationTopicFragment;->getContentLanguageService()Lcom/narvii/language/ContentLanguageService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "language"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/suggest/interest/MainInterestResponse;",
            ">;"
        }
    .end annotation

    .line 125
    const-class v0, Lcom/narvii/suggest/interest/MainInterestResponse;

    return-object v0
.end method
