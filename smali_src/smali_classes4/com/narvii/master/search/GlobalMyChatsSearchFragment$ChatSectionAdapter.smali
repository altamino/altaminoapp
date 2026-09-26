.class public final Lcom/narvii/master/search/GlobalMyChatsSearchFragment$ChatSectionAdapter;
.super Lcom/narvii/chat/thread/MyThreadListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/search/GlobalMyChatsSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ChatSectionAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/GlobalMyChatsSearchFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/search/GlobalMyChatsSearchFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/master/search/GlobalMyChatsSearchFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment$ChatSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalMyChatsSearchFragment;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/narvii/chat/thread/MyThreadListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    return-void
.end method


# virtual methods
.method public communityMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment$ChatSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalMyChatsSearchFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->access$getCommunityMap$p(Lcom/narvii/master/search/GlobalMyChatsSearchFragment;)Ljava/util/HashMap;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    const-string v0, "chat/thread/search"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment$ChatSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalMyChatsSearchFragment;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->access$getInstantSearchListener$p(Lcom/narvii/master/search/GlobalMyChatsSearchFragment;)Lcom/narvii/search/InstantSearchListener;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    const-string v1, "q"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment$ChatSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalMyChatsSearchFragment;

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->access$getInstantSearchListener$p(Lcom/narvii/master/search/GlobalMyChatsSearchFragment;)Lcom/narvii/search/InstantSearchListener;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    const/4 v1, 0x0

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment$ChatSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalMyChatsSearchFragment;

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lcom/narvii/master/search/SearchUtils;->getSearchId(Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move-object v0, v1

    .line 53
    .line 54
    :goto_0
    const-string v2, "searchId"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 58
    move-result-object p1

    .line 59
    const/4 v0, 0x0

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    const-string v2, "action"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment$ChatSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalMyChatsSearchFragment;

    .line 72
    .line 73
    .line 74
    invoke-static {v0}, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->access$getContentLanguageService$p(Lcom/narvii/master/search/GlobalMyChatsSearchFragment;)Lcom/narvii/language/ContentLanguageService;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    if-nez v0, :cond_1

    .line 78
    .line 79
    const-string v0, "contentLanguageService"

    .line 80
    .line 81
    .line 82
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    move-object v1, v0

    .line 85
    .line 86
    .line 87
    :goto_1
    invoke-virtual {v1}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    const-string v1, "language"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 94
    move-result-object p1

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    const-string v0, "build(...)"

    .line 101
    .line 102
    .line 103
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    return-object p1
.end method

.method public getSearchKey()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment$ChatSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalMyChatsSearchFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->access$getInstantSearchListener$p(Lcom/narvii/master/search/GlobalMyChatsSearchFragment;)Lcom/narvii/search/InstantSearchListener;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-string v1, "getKeyword(...)"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment$ChatSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalMyChatsSearchFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->access$getInstantSearchListener$p(Lcom/narvii/master/search/GlobalMyChatsSearchFragment;)Lcom/narvii/search/InstantSearchListener;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "getKeyword(...)"

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 25
    move-result v0

    .line 26
    .line 27
    if-lez v0, :cond_0

    .line 28
    const/4 v0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    return v0
.end method
