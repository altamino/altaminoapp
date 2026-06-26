.class public final Lcom/narvii/visitor/NewVisitorsFragment$DataSource;
.super Lcom/narvii/paging/source/PageDataSource;
.source "NewVisitorsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/visitor/NewVisitorsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DataSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/source/PageDataSource<",
        "Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapper;",
        "Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapperListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/visitor/NewVisitorsFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/visitor/NewVisitorsFragment;Lcom/narvii/app/NVContext;Lcom/narvii/paging/source/PagingConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/paging/source/PagingConfiguration;",
            ")V"
        }
    .end annotation

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iput-object p1, p0, Lcom/narvii/visitor/NewVisitorsFragment$DataSource;->this$0:Lcom/narvii/visitor/NewVisitorsFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p3}, Lcom/narvii/paging/source/PageDataSource;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/paging/source/PagingConfiguration;)V

    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 137
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    const-string v1, "/account/recent-visitors"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/narvii/visitor/NewVisitorsFragment$DataSource;->this$0:Lcom/narvii/visitor/NewVisitorsFragment;

    invoke-static {v1}, Lcom/narvii/visitor/NewVisitorsFragment;->access$getStopTime$p(Lcom/narvii/visitor/NewVisitorsFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/narvii/visitor/NewVisitorsFragment$DataSource;->this$0:Lcom/narvii/visitor/NewVisitorsFragment;

    invoke-static {v1}, Lcom/narvii/visitor/NewVisitorsFragment;->access$getStopTime$p(Lcom/narvii/visitor/NewVisitorsFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "stoptime"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 141
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 134
    check-cast p2, Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapperListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/visitor/NewVisitorsFragment$DataSource;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapperListResponse;I)V

    return-void
.end method

.method public onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapperListResponse;I)V
    .locals 1

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/paging/source/PageDataSource;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 148
    iget-object p1, p0, Lcom/narvii/visitor/NewVisitorsFragment$DataSource;->this$0:Lcom/narvii/visitor/NewVisitorsFragment;

    invoke-virtual {p2}, Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapperListResponse;->getSum()I

    move-result p2

    invoke-static {p1, p2}, Lcom/narvii/visitor/NewVisitorsFragment;->access$setVisitorSum$p(Lcom/narvii/visitor/NewVisitorsFragment;I)V

    .line 149
    iget-object p1, p0, Lcom/narvii/visitor/NewVisitorsFragment$DataSource;->this$0:Lcom/narvii/visitor/NewVisitorsFragment;

    invoke-static {p1}, Lcom/narvii/visitor/NewVisitorsFragment;->access$updateTitle(Lcom/narvii/visitor/NewVisitorsFragment;)V

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapperListResponse;",
            ">;"
        }
    .end annotation

    .line 144
    const-class v0, Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapperListResponse;

    return-object v0
.end method
