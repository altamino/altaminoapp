.class Lcom/narvii/prompt/OnBoardingPromptHelper$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "OnBoardingPromptHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prompt/OnBoardingPromptHelper;->doTryShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/BlogListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prompt/OnBoardingPromptHelper;


# direct methods
.method constructor <init>(Lcom/narvii/prompt/OnBoardingPromptHelper;Ljava/lang/Class;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/narvii/prompt/OnBoardingPromptHelper$2;->this$0:Lcom/narvii/prompt/OnBoardingPromptHelper;

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
    iget-object p1, p0, Lcom/narvii/prompt/OnBoardingPromptHelper$2;->this$0:Lcom/narvii/prompt/OnBoardingPromptHelper;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/narvii/prompt/OnBoardingPromptHelper;->recommendFeedsFinished:Z

    .line 102
    invoke-static {p1}, Lcom/narvii/prompt/OnBoardingPromptHelper;->access$000(Lcom/narvii/prompt/OnBoardingPromptHelper;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 85
    check-cast p2, Lcom/narvii/model/api/BlogListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/prompt/OnBoardingPromptHelper$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/BlogListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/BlogListResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 89
    iget-object p1, p0, Lcom/narvii/prompt/OnBoardingPromptHelper$2;->this$0:Lcom/narvii/prompt/OnBoardingPromptHelper;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/narvii/prompt/OnBoardingPromptHelper;->recommendFeedsFinished:Z

    .line 90
    invoke-virtual {p2}, Lcom/narvii/model/api/BlogListResponse;->list()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 91
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_0

    .line 92
    iget-object p2, p0, Lcom/narvii/prompt/OnBoardingPromptHelper$2;->this$0:Lcom/narvii/prompt/OnBoardingPromptHelper;

    iget-object p2, p2, Lcom/narvii/prompt/OnBoardingPromptHelper;->mOnBoardingIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v1, "flags"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    iget-object p2, p0, Lcom/narvii/prompt/OnBoardingPromptHelper$2;->this$0:Lcom/narvii/prompt/OnBoardingPromptHelper;

    iget-object p2, p2, Lcom/narvii/prompt/OnBoardingPromptHelper;->mOnBoardingIntent:Landroid/content/Intent;

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "feeds"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/narvii/prompt/OnBoardingPromptHelper$2;->this$0:Lcom/narvii/prompt/OnBoardingPromptHelper;

    invoke-static {p1}, Lcom/narvii/prompt/OnBoardingPromptHelper;->access$000(Lcom/narvii/prompt/OnBoardingPromptHelper;)V

    return-void
.end method
