.class Lcom/narvii/master/search/GlobalHashTagFragment$FeedAdapter;
.super Lcom/narvii/master/search/GlobalPostSearchAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/search/GlobalHashTagFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FeedAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/GlobalHashTagFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/search/GlobalHashTagFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/search/GlobalHashTagFragment$FeedAdapter;->this$0:Lcom/narvii/master/search/GlobalHashTagFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/master/search/GlobalPostSearchAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/master/search/GlobalPostSearchAdapter;->keyword:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->resetEmptyList()V

    .line 12
    const/4 p1, 0x0

    .line 13
    return-object p1

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    const-string v1, "post/search"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 27
    .line 28
    const-string v0, "v"

    .line 29
    .line 30
    const-string v1, "2.0.0"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 34
    .line 35
    const-string v0, "q"

    .line 36
    .line 37
    iget-object v1, p0, Lcom/narvii/master/search/GlobalPostSearchAdapter;->keyword:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 41
    .line 42
    const-string v0, "my"

    .line 43
    .line 44
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 48
    .line 49
    const-string v0, "orderBy"

    .line 50
    .line 51
    const-string v1, "mostRecent"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 55
    .line 56
    const-string v0, "type"

    .line 57
    .line 58
    const-string v1, "hashTags"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 62
    .line 63
    const-string v0, "content_language"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    check-cast v0, Lcom/narvii/language/ContentLanguageService;

    .line 70
    .line 71
    const-string v1, "language"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 82
    move-result-object p1

    .line 83
    return-object p1
.end method

.method protected getVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalHashTagFragment$FeedAdapter;->this$0:Lcom/narvii/master/search/GlobalHashTagFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/master/search/GlobalHashTagFragment;->access$000(Lcom/narvii/master/search/GlobalHashTagFragment;)Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected videoAutoPlay()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalHashTagFragment$FeedAdapter;->this$0:Lcom/narvii/master/search/GlobalHashTagFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/master/search/GlobalHashTagFragment;->access$100(Lcom/narvii/master/search/GlobalHashTagFragment;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method
