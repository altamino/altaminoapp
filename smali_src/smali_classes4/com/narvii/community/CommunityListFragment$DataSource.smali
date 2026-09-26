.class public final Lcom/narvii/community/CommunityListFragment$DataSource;
.super Lcom/narvii/paging/source/PageDataSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/community/CommunityListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DataSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/source/PageDataSource<",
        "Lcom/narvii/model/Community;",
        "Lcom/narvii/community/search/SearchCommunityListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private firstResponse:Z

.field final synthetic this$0:Lcom/narvii/community/CommunityListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/community/CommunityListFragment;Lcom/narvii/app/NVContext;Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Lcom/narvii/community/CommunityListFragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/Community;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/CommunityListFragment$DataSource;->this$0:Lcom/narvii/community/CommunityListFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/community/CommunityListFragment;->pagingConfig()Lcom/narvii/paging/source/PagingConfiguration;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2, p3, p1}, Lcom/narvii/paging/source/PageDataSource;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/paging/source/PagingConfiguration;)V

    .line 10
    const/4 p1, 0x1

    .line 11
    .line 12
    iput-boolean p1, p0, Lcom/narvii/community/CommunityListFragment$DataSource;->firstResponse:Z

    .line 13
    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CommunityListFragment$DataSource;->this$0:Lcom/narvii/community/CommunityListFragment;

    .line 3
    .line 4
    const-string v1, "KEY_PATH"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/community/CommunityListFragment$DataSource;->this$0:Lcom/narvii/community/CommunityListFragment;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/narvii/util/Utils;->getApiRequestFromPath(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 30
    move-result-object v0

    .line 31
    return-object v0

    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/CommunityListFragment$DataSource;->this$0:Lcom/narvii/community/CommunityListFragment;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/narvii/community/CommunityListFragment;->createRequest()Lcom/narvii/util/http/ApiRequest;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    return-object v0

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    const-string v1, "/community/search"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getContext()Lcom/narvii/app/NVContext;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    const-string v2, "content_language"

    .line 62
    .line 63
    .line 64
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    check-cast v1, Lcom/narvii/language/ContentLanguageService;

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    const/4 v1, 0x0

    .line 70
    .line 71
    :goto_0
    if-eqz v1, :cond_3

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    if-nez v1, :cond_4

    .line 78
    .line 79
    :cond_3
    const-string v1, "en"

    .line 80
    .line 81
    :cond_4
    const-string v2, "language"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 88
    move-result-object v0

    .line 89
    return-object v0
.end method

.method public filterResponseList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Community;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getInitPage()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/narvii/community/CommunityListFragment$DataSource;->firstResponse:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/narvii/community/CommunityListFragment$DataSource;->firstResponse:Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getInitPage()Ljava/util/List;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->filterDuplicated(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<com.narvii.model.Community>"

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-super {p0, p1}, Lcom/narvii/paging/source/PageDataSource;->filterResponseList(Ljava/util/List;)Ljava/util/List;

    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/paging/source/PageDataSource;->filterResponseList(Ljava/util/List;)Ljava/util/List;

    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method

.method public final getFirstResponse()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/community/CommunityListFragment$DataSource;->firstResponse:Z

    return v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/community/search/SearchCommunityListResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-class v0, Lcom/narvii/community/search/SearchCommunityListResponse;

    return-object v0
.end method

.method public final setFirstResponse(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/community/CommunityListFragment$DataSource;->firstResponse:Z

    return-void
.end method
