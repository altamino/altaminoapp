.class public final Lcom/narvii/master/search/GlobalChatsSearchFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;
.implements Lcom/narvii/search/SwitchSearchListener;
.implements Lcom/narvii/master/search/ChangeSearchTextRegister;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;,
        Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;,
        Lcom/narvii/master/search/GlobalChatsSearchFragment$MyDividerAdapter;,
        Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;
    }
.end annotation


# instance fields
.field private aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private apiService:Lcom/narvii/util/http/ApiService;

.field private changeSearchTextListener:Lcom/narvii/master/search/ChangeSearchTextListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private chatAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;

.field private chatApiRequest:Lcom/narvii/util/http/ApiRequest;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private chatSectionAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;

.field private final communityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private contentLanguageService:Lcom/narvii/language/ContentLanguageService;

.field private curKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private hideMatchIdAdapter:Z

.field private mergeAdapter:Lcom/narvii/list/MergeAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private requestSent:Z

.field private searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->curKey:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->communityMap:Ljava/util/HashMap;

    .line 15
    return-void
.end method

.method public static final synthetic access$getChangeSearchTextListener$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Lcom/narvii/master/search/ChangeSearchTextListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->changeSearchTextListener:Lcom/narvii/master/search/ChangeSearchTextListener;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getChatAdapter$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getChatSectionAdapter$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatSectionAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getCommunityMap$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Ljava/util/HashMap;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->communityMap:Ljava/util/HashMap;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getCurKey$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->curKey:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getHideMatchIdAdapter$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->hideMatchIdAdapter:Z

    .line 3
    return p0
.end method

.method public static final synthetic access$getMergeAdapter$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Lcom/narvii/list/MergeAdapter;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getRequestSent$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->requestSent:Z

    .line 3
    return p0
.end method

.method public static final synthetic access$onRequestFinish(Lcom/narvii/master/search/GlobalChatsSearchFragment;Lcom/narvii/chat/thread/ThreadListResponse;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->onRequestFinish(Lcom/narvii/chat/thread/ThreadListResponse;)V

    .line 4
    return-void
.end method

.method public static final synthetic access$sendRequest(Lcom/narvii/master/search/GlobalChatsSearchFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->sendRequest()V

    .line 4
    return-void
.end method

.method public static final synthetic access$setChatApiRequest$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatApiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 3
    return-void
.end method

.method public static final synthetic access$setRequestSent$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->requestSent:Z

    .line 3
    return-void
.end method

.method public static final synthetic access$showSearchHistory(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->showSearchHistory()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final onRequestFinish(Lcom/narvii/chat/thread/ThreadListResponse;)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatSectionAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "chatSectionAdapter"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    .line 16
    :cond_1
    invoke-virtual {v0, p1}, Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;->setSection(Lcom/narvii/chat/thread/ThreadListResponse;)V

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 24
    :cond_2
    return-void
.end method

.method private final sendRequest()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatApiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 3
    .line 4
    const-string v1, "apiService"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->apiService:Lcom/narvii/util/http/ApiService;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 15
    move-object v0, v2

    .line 16
    .line 17
    :cond_0
    iget-object v3, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatApiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v3}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->curKey:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v0

    .line 27
    const/4 v3, 0x1

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    iput-boolean v3, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->requestSent:Z

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatSectionAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    const-string v0, "chatSectionAdapter"

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 41
    move-object v0, v2

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-virtual {v0, v2}, Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;->setSection(Lcom/narvii/chat/thread/ThreadListResponse;)V

    .line 45
    return-void

    .line 46
    :cond_3
    const/4 v0, 0x0

    .line 47
    .line 48
    iput-boolean v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->requestSent:Z

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 56
    .line 57
    :cond_4
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 58
    .line 59
    .line 60
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    const-string v4, "chat/thread/search"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    const-string v4, "q"

    .line 73
    .line 74
    iget-object v5, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->curKey:Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    const-string v4, "action"

    .line 81
    .line 82
    .line 83
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    move-result-object v3

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    iget-object v3, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->contentLanguageService:Lcom/narvii/language/ContentLanguageService;

    .line 91
    .line 92
    if-nez v3, :cond_5

    .line 93
    .line 94
    const-string v3, "contentLanguageService"

    .line 95
    .line 96
    .line 97
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 98
    move-object v3, v2

    .line 99
    .line 100
    .line 101
    :cond_5
    invoke-virtual {v3}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    .line 102
    move-result-object v3

    .line 103
    .line 104
    const-string v4, "language"

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    iput-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatApiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 115
    .line 116
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->apiService:Lcom/narvii/util/http/ApiService;

    .line 117
    .line 118
    if-nez v0, :cond_6

    .line 119
    .line 120
    .line 121
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 122
    goto :goto_0

    .line 123
    :cond_6
    move-object v2, v0

    .line 124
    .line 125
    :goto_0
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatApiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 126
    .line 127
    new-instance v1, Lcom/narvii/master/search/GlobalChatsSearchFragment$sendRequest$1;

    .line 128
    .line 129
    const-class v3, Lcom/narvii/chat/thread/ThreadListResponse;

    .line 130
    .line 131
    .line 132
    invoke-direct {v1, p0, v3}, Lcom/narvii/master/search/GlobalChatsSearchFragment$sendRequest$1;-><init>(Lcom/narvii/master/search/GlobalChatsSearchFragment;Ljava/lang/Class;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 136
    return-void
.end method

.method private final showSearchHistory()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->curKey:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 12
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/master/search/GlobalChatsSearchFragment$createAdapter$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/master/search/GlobalChatsSearchFragment$createAdapter$1;-><init>(Lcom/narvii/master/search/GlobalChatsSearchFragment;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 15
    .line 16
    new-instance p1, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, p0, p0}, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;-><init>(Lcom/narvii/master/search/GlobalChatsSearchFragment;Lcom/narvii/app/NVContext;)V

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    .line 24
    const/4 v0, 0x0

    .line 25
    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    const-string p1, "searchHistoryDelegate"

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 32
    move-object p1, v0

    .line 33
    .line 34
    :cond_0
    iget-object v1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->addSearchHistoryAdapters(Lcom/narvii/list/MergeAdapter;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    const/high16 v1, 0x40a00000    # 5.0f

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 47
    move-result v6

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    const/high16 v1, 0x41700000    # 15.0f

    .line 54
    .line 55
    .line 56
    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 57
    move-result v4

    .line 58
    .line 59
    new-instance p1, Lcom/narvii/list/DivideColumnAdapter;

    .line 60
    const/4 v5, 0x0

    .line 61
    const/4 v7, 0x0

    .line 62
    move-object v2, p1

    .line 63
    move-object v3, p0

    .line 64
    .line 65
    .line 66
    invoke-direct/range {v2 .. v7}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 67
    .line 68
    iget-object v1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;

    .line 69
    .line 70
    if-nez v1, :cond_1

    .line 71
    .line 72
    const-string v1, "chatAdapter"

    .line 73
    .line 74
    .line 75
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 76
    move-object v1, v0

    .line 77
    :cond_1
    const/4 v2, 0x2

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v1, v2}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 81
    .line 82
    new-instance v1, Lcom/narvii/master/search/SearchKeywordHeaderAdapter;

    .line 83
    .line 84
    .line 85
    invoke-direct {v1, p0}, Lcom/narvii/master/search/SearchKeywordHeaderAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, p1}, Lcom/narvii/master/search/SearchKeywordHeaderAdapter;->setAttachHost(Lcom/narvii/list/NVAdapter;)V

    .line 89
    .line 90
    const-string v2, "hide_match_id_adapter"

    .line 91
    const/4 v3, 0x0

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v2, v3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 95
    move-result v2

    .line 96
    .line 97
    iput-boolean v2, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->hideMatchIdAdapter:Z

    .line 98
    .line 99
    if-nez v2, :cond_2

    .line 100
    .line 101
    iget-object v2, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 102
    .line 103
    if-eqz v2, :cond_2

    .line 104
    .line 105
    iget-object v3, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    .line 110
    :cond_2
    new-instance v2, Lcom/narvii/master/search/trending/SectionHeaderAdapter;

    .line 111
    .line 112
    .line 113
    const v3, 0x7f120269

    .line 114
    .line 115
    .line 116
    invoke-direct {v2, p0, v3}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 117
    .line 118
    new-instance v3, Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;

    .line 119
    .line 120
    .line 121
    invoke-direct {v3, p0, p0}, Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;-><init>(Lcom/narvii/master/search/GlobalChatsSearchFragment;Lcom/narvii/app/NVContext;)V

    .line 122
    .line 123
    iput-object v3, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatSectionAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v3}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;->setAttachHost(Lcom/narvii/list/NVAdapter;)V

    .line 127
    .line 128
    new-instance v3, Lcom/narvii/master/search/GlobalChatsSearchFragment$MyDividerAdapter;

    .line 129
    .line 130
    .line 131
    invoke-direct {v3, p0}, Lcom/narvii/master/search/GlobalChatsSearchFragment$MyDividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 132
    .line 133
    iget-object v4, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatSectionAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;

    .line 134
    .line 135
    const-string v5, "chatSectionAdapter"

    .line 136
    .line 137
    if-nez v4, :cond_3

    .line 138
    .line 139
    .line 140
    invoke-static {v5}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 141
    move-object v4, v0

    .line 142
    .line 143
    .line 144
    :cond_3
    invoke-virtual {v3, v4}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 145
    .line 146
    iget-boolean v4, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->hideMatchIdAdapter:Z

    .line 147
    .line 148
    if-nez v4, :cond_5

    .line 149
    .line 150
    iget-object v4, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 151
    .line 152
    if-eqz v4, :cond_4

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 156
    .line 157
    :cond_4
    iget-object v2, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 158
    .line 159
    if-eqz v2, :cond_5

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 163
    .line 164
    :cond_5
    new-instance v2, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;

    .line 165
    const/4 v8, 0x1

    .line 166
    const/4 v9, 0x0

    .line 167
    const/4 v10, 0x2

    .line 168
    const/4 v11, 0x0

    .line 169
    move-object v6, v2

    .line 170
    move-object v7, p0

    .line 171
    .line 172
    .line 173
    invoke-direct/range {v6 .. v11}, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;-><init>(Lcom/narvii/master/search/GlobalChatsSearchFragment;ZZILkotlin/jvm/internal/k;)V

    .line 174
    .line 175
    iget-object v3, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatSectionAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;

    .line 176
    .line 177
    if-nez v3, :cond_6

    .line 178
    .line 179
    .line 180
    invoke-static {v5}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 181
    goto :goto_0

    .line 182
    :cond_6
    move-object v0, v3

    .line 183
    .line 184
    .line 185
    :goto_0
    invoke-virtual {v2, v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->setAttachHost(Lcom/narvii/list/NVAdapter;)V

    .line 186
    .line 187
    iget-boolean v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->hideMatchIdAdapter:Z

    .line 188
    .line 189
    if-nez v0, :cond_7

    .line 190
    .line 191
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 192
    .line 193
    if-eqz v0, :cond_7

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 197
    .line 198
    :cond_7
    iget-boolean v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->hideMatchIdAdapter:Z

    .line 199
    .line 200
    if-nez v0, :cond_8

    .line 201
    .line 202
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 203
    .line 204
    if-eqz v0, :cond_8

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 208
    .line 209
    :cond_8
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 210
    .line 211
    if-eqz v0, :cond_9

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 215
    .line 216
    :cond_9
    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 217
    return-object p1
.end method

.method protected emptyMessage()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x7f120d75

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    const-string v1, "getString(...)"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    return-object v0
.end method

.method public final getAminoIdMatchedAdapter()Lcom/narvii/master/search/AminoIdMatchedAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    return-object v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 7
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "global_chats_search"

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setScrollToHideKeyboard(Z)V

    .line 8
    .line 9
    const-string p1, "search_key"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const-string p1, ""

    .line 18
    .line 19
    :cond_0
    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->curKey:Ljava/lang/String;

    .line 20
    .line 21
    const-string p1, "api"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    const-string v0, "getService(...)"

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->apiService:Lcom/narvii/util/http/ApiService;

    .line 35
    .line 36
    const-string p1, "content_language"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    check-cast p1, Lcom/narvii/language/ContentLanguageService;

    .line 46
    .line 47
    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->contentLanguageService:Lcom/narvii/language/ContentLanguageService;

    .line 48
    .line 49
    new-instance p1, Lcom/narvii/master/search/history/SearchHistoryDelegate;

    .line 50
    .line 51
    const-string v0, "chat"

    .line 52
    .line 53
    .line 54
    invoke-direct {p1, p0, v0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 55
    .line 56
    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    .line 57
    .line 58
    new-instance v0, Lcom/narvii/master/search/GlobalChatsSearchFragment$onCreate$1;

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, p0}, Lcom/narvii/master/search/GlobalChatsSearchFragment$onCreate$1;-><init>(Lcom/narvii/master/search/GlobalChatsSearchFragment;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->setOnSearchHistory(Le8/l;)V

    .line 65
    .line 66
    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    .line 67
    .line 68
    if-nez p1, :cond_1

    .line 69
    .line 70
    const-string p1, "searchHistoryDelegate"

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 74
    const/4 p1, 0x0

    .line 75
    .line 76
    :cond_1
    new-instance v0, Lcom/narvii/master/search/GlobalChatsSearchFragment$onCreate$2;

    .line 77
    .line 78
    .line 79
    invoke-direct {v0, p0}, Lcom/narvii/master/search/GlobalChatsSearchFragment$onCreate$2;-><init>(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->setShowSearchHistory(Le8/a;)V

    .line 83
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/widget/ListView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 11
    .line 12
    :goto_0
    if-nez p1, :cond_1

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    const/4 p2, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 18
    :goto_1
    return-void
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/narvii/widget/SearchBar;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->searchText(Ljava/lang/String;)V

    .line 4
    .line 5
    const-string p1, "statistics"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    const-string v0, "getService(...)"

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 17
    .line 18
    const-string v0, "Search for Chats (Global)"

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    const-string v0, "Search for Chats (Global) Total"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 28
    .line 29
    if-eqz p2, :cond_3

    .line 30
    .line 31
    .line 32
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 33
    move-result p1

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-static {p2}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    .line 40
    move-result p1

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_1
    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    .line 46
    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    const-string p1, "searchHistoryDelegate"

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 53
    const/4 p1, 0x0

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-virtual {p1, p2}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->addSearchHistory(Ljava/lang/String;)V

    .line 57
    :cond_3
    :goto_0
    return-void
.end method

.method public onSwitchSearch(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "chatAdapter"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    move-object v0, v1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->getKeyword()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-nez v0, :cond_6

    .line 22
    .line 23
    if-eqz p1, :cond_5

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 27
    move-result v0

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    goto :goto_2

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-static {p0, p1}, Lcom/narvii/master/search/SearchUtils;->logSwitchSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->searchText(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 40
    move-result v0

    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-static {p1}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    .line 47
    move-result v0

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    :goto_0
    return-void

    .line 51
    .line 52
    :cond_3
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    .line 53
    .line 54
    if-nez v0, :cond_4

    .line 55
    .line 56
    const-string v0, "searchHistoryDelegate"

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 60
    goto :goto_1

    .line 61
    :cond_4
    move-object v1, v0

    .line 62
    .line 63
    .line 64
    :goto_1
    invoke-virtual {v1, p1}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->addSearchHistory(Ljava/lang/String;)V

    .line 65
    goto :goto_3

    .line 66
    .line 67
    .line 68
    :cond_5
    :goto_2
    invoke-virtual {p0, v1, v1}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 69
    :cond_6
    :goto_3
    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/narvii/widget/SearchBar;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    const-string p2, "chatAdapter"

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    if-eqz p1, :cond_4

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-static {p2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 17
    move-object p1, v0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p1, v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->setKeyword(Ljava/lang/String;)V

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-static {p2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 28
    move-object p1, v0

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->resetEmptyList()V

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->notifyKeyChange(Ljava/lang/String;)V

    .line 39
    .line 40
    :cond_2
    const-string p1, ""

    .line 41
    .line 42
    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->curKey:Ljava/lang/String;

    .line 43
    .line 44
    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatSectionAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;

    .line 45
    .line 46
    if-nez p1, :cond_3

    .line 47
    .line 48
    const-string p1, "chatSectionAdapter"

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 52
    move-object p1, v0

    .line 53
    .line 54
    .line 55
    :cond_3
    invoke-virtual {p1, v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;->setSection(Lcom/narvii/chat/thread/ThreadListResponse;)V

    .line 56
    return-void

    .line 57
    .line 58
    :cond_4
    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;

    .line 59
    .line 60
    if-nez p1, :cond_5

    .line 61
    .line 62
    .line 63
    invoke-static {p2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 64
    goto :goto_0

    .line 65
    :cond_5
    move-object v0, p1

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 69
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "view"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->sendRequest()V

    .line 12
    return-void
.end method

.method public final searchText(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;

    .line 3
    .line 4
    const-string v1, "chatAdapter"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    move-object v0, v2

    .line 12
    .line 13
    :cond_0
    const-string v3, ""

    .line 14
    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 19
    move-result v4

    .line 20
    .line 21
    if-nez v4, :cond_1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move-object v4, p1

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    :goto_0
    move-object v4, v3

    .line 26
    .line 27
    .line 28
    :goto_1
    invoke-virtual {v0, v4}, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->setKeyword(Ljava/lang/String;)V

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;

    .line 31
    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 36
    move-object v0, v2

    .line 37
    .line 38
    .line 39
    :cond_3
    invoke-virtual {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->resetList()V

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->notifyKeyChange(Ljava/lang/String;)V

    .line 47
    .line 48
    :cond_4
    if-eqz p1, :cond_5

    .line 49
    .line 50
    .line 51
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 52
    move-result v0

    .line 53
    .line 54
    if-nez v0, :cond_6

    .line 55
    :cond_5
    move-object p1, v3

    .line 56
    .line 57
    :cond_6
    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->curKey:Ljava/lang/String;

    .line 58
    .line 59
    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatSectionAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;

    .line 60
    .line 61
    if-nez p1, :cond_7

    .line 62
    .line 63
    const-string p1, "chatSectionAdapter"

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 67
    move-object p1, v2

    .line 68
    .line 69
    .line 70
    :cond_7
    invoke-virtual {p1, v2}, Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;->setSection(Lcom/narvii/chat/thread/ThreadListResponse;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->sendRequest()V

    .line 74
    return-void
.end method

.method public final setAminoIdMatchedAdapter(Lcom/narvii/master/search/AminoIdMatchedAdapter;)V
    .locals 0
    .param p1    # Lcom/narvii/master/search/AminoIdMatchedAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    return-void
.end method

.method public setChangeSearchTextListener(Lcom/narvii/master/search/ChangeSearchTextListener;)V
    .locals 0
    .param p1    # Lcom/narvii/master/search/ChangeSearchTextListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->changeSearchTextListener:Lcom/narvii/master/search/ChangeSearchTextListener;

    return-void
.end method
