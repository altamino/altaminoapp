.class public Lcom/narvii/story/detail/VoteHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/story/detail/VoteHelper$OnVoteListener;,
        Lcom/narvii/story/detail/VoteHelper$OnVoteListenerAdapter;
    }
.end annotation


# instance fields
.field private final communityHelper:Lcom/narvii/community/CommunityHelper;

.field public loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

.field public loggingOriginName:Ljava/lang/String;

.field public loggingSource:Lcom/narvii/util/logging/LoggingSource;

.field private ndcId:I

.field private nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/story/detail/VoteHelper;->ndcId:I

    .line 7
    .line 8
    iput-object p1, p0, Lcom/narvii/story/detail/VoteHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 9
    .line 10
    new-instance v0, Lcom/narvii/community/CommunityHelper;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p1}, Lcom/narvii/community/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/story/detail/VoteHelper;->communityHelper:Lcom/narvii/community/CommunityHelper;

    .line 16
    return-void
.end method

.method public static synthetic a(Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/story/detail/VoteHelper;->lambda$vote$0(Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/story/detail/VoteHelper;->lambda$vote$3(Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V

    return-void
.end method

.method public static synthetic c(Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/story/detail/VoteHelper;->lambda$vote$2(Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V

    return-void
.end method

.method public static synthetic d(Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/story/detail/VoteHelper;->lambda$vote$1(Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V

    return-void
.end method

.method static bridge synthetic e(Lcom/narvii/story/detail/VoteHelper;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/story/detail/VoteHelper;->nvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method public static getTargetVotedValue(Ljava/lang/Integer;Lcom/narvii/model/Comment;)I
    .locals 0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    .line 4
    :cond_0
    iget p0, p1, Lcom/narvii/model/Comment;->votedValue:I

    if-nez p0, :cond_1

    const/4 p0, 0x4

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getTargetVotedValue(Ljava/lang/Integer;Lcom/narvii/model/Feed;Z)I
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1, p2}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x4

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getTargetVotedValue(Ljava/lang/Integer;Lcom/narvii/model/SharedFile;Z)I
    .locals 0

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    .line 6
    :cond_0
    iget p0, p1, Lcom/narvii/model/SharedFile;->votedValue:I

    if-nez p0, :cond_1

    const/4 p0, 0x4

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getVotePath(Lcom/narvii/model/NVObject;Z)Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    instance-of v0, p0, Lcom/narvii/model/Blog;

    .line 3
    .line 4
    const-string v1, "/vote"

    .line 5
    .line 6
    const-string v2, "/g-vote"

    .line 7
    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    instance-of v0, p0, Lcom/narvii/model/Item;

    .line 11
    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    instance-of v0, p0, Lcom/narvii/model/SharedFile;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    instance-of v0, p0, Lcom/narvii/model/Comment;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    check-cast p0, Lcom/narvii/model/Comment;

    .line 29
    .line 30
    .line 31
    invoke-static {p1, p0}, Lcom/narvii/comment/CommentHelper;->getBaseCommentPath(ZLcom/narvii/model/Comment;)Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    move-object v1, v2

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_2
    const/4 p0, 0x0

    .line 48
    return-object p0

    .line 49
    .line 50
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->apiTypeName()Ljava/lang/String;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v3, "/"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    if-eqz p1, :cond_4

    .line 75
    move-object v1, v2

    .line 76
    .line 77
    .line 78
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 83
    return-object p0
.end method

.method private static synthetic lambda$vote$0(Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-interface {p0, v0}, Lcom/narvii/story/detail/VoteHelper$OnVoteListener;->onVoteEnd(Z)V

    .line 5
    return-void
.end method

.method private static synthetic lambda$vote$1(Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-interface {p0, v0}, Lcom/narvii/story/detail/VoteHelper$OnVoteListener;->onVoteEnd(Z)V

    .line 5
    return-void
.end method

.method private static synthetic lambda$vote$2(Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-interface {p0, v0}, Lcom/narvii/story/detail/VoteHelper$OnVoteListener;->onVoteEnd(Z)V

    .line 5
    return-void
.end method

.method private static synthetic lambda$vote$3(Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-interface {p0, v0}, Lcom/narvii/story/detail/VoteHelper$OnVoteListener;->onVoteEnd(Z)V

    .line 5
    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public checkLogin()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/story/detail/VoteHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "account"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    .line 20
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    const-string/jumbo v1, "vote"

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/story/detail/VoteHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 29
    .line 30
    instance-of v2, v1, Lcom/narvii/app/NVFragment;

    .line 31
    const/4 v3, 0x0

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    check-cast v1, Lcom/narvii/app/NVFragment;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :cond_1
    instance-of v2, v1, Lcom/narvii/app/NVActivity;

    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    check-cast v1, Lcom/narvii/app/NVActivity;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Lcom/narvii/app/NVActivity;->ensureLogin(Landroid/content/Intent;)V

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_2
    instance-of v2, v1, Lcom/narvii/list/NVAdapter;

    .line 52
    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    check-cast v1, Lcom/narvii/list/NVAdapter;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v0}, Lcom/narvii/list/NVAdapter;->ensureLogin(Landroid/content/Intent;)V

    .line 59
    goto :goto_1

    .line 60
    .line 61
    :cond_3
    new-instance v0, Landroid/content/Intent;

    .line 62
    .line 63
    const-string v1, "ndc://login"

    .line 64
    .line 65
    .line 66
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    const-string v2, "android.intent.action.VIEW"

    .line 70
    .line 71
    .line 72
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 73
    .line 74
    const-string v1, "promptType"

    .line 75
    .line 76
    const-string v2, "Required"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/narvii/story/detail/VoteHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 82
    .line 83
    .line 84
    invoke-static {v1, v0}, Lcom/narvii/story/detail/VoteHelper;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_0

    .line 86
    .line 87
    .line 88
    :catch_0
    const-string/jumbo v0, "unable to start login activity(from voteHelper)"

    .line 89
    .line 90
    .line 91
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 92
    .line 93
    :goto_0
    iget-object v0, p0, Lcom/narvii/story/detail/VoteHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 94
    .line 95
    .line 96
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    .line 100
    const v1, 0x7f120bb7

    .line 101
    .line 102
    .line 103
    invoke-static {v0, v1, v3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 108
    :goto_1
    return v3
.end method

.method public setCommunityId(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/story/detail/VoteHelper;->ndcId:I

    return-void
.end method

.method public vote(Lcom/narvii/model/Comment;Ljava/lang/Integer;Lcom/narvii/model/NVObject;Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V
    .locals 8

    .line 24
    invoke-virtual {p0}, Lcom/narvii/story/detail/VoteHelper;->checkLogin()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    .line 25
    new-instance p1, Lcom/narvii/story/detail/b;

    invoke-direct {p1, p4}, Lcom/narvii/story/detail/b;-><init>(Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/narvii/story/detail/VoteHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 26
    invoke-static {v0}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result v0

    .line 27
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 28
    invoke-static {p1, v0}, Lcom/narvii/story/detail/VoteHelper;->getVotePath(Lcom/narvii/model/NVObject;Z)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {p2, p1}, Lcom/narvii/story/detail/VoteHelper;->getTargetVotedValue(Ljava/lang/Integer;Lcom/narvii/model/Comment;)I

    move-result v6

    if-nez v6, :cond_2

    .line 30
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?cv=1.2&value="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    const-string/jumbo v0, "value"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    :goto_0
    iget p2, p0, Lcom/narvii/story/detail/VoteHelper;->ndcId:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    .line 32
    invoke-virtual {v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_1

    .line 33
    :cond_3
    instance-of p2, p3, Lcom/narvii/model/Feed;

    if-eqz p2, :cond_4

    .line 34
    check-cast p3, Lcom/narvii/model/Feed;

    iget p2, p3, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/narvii/story/detail/VoteHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    if-eqz p2, :cond_5

    const-string p3, "eventSource"

    .line 35
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p3, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    :cond_5
    iget-object p2, p0, Lcom/narvii/story/detail/VoteHelper;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    const-string p3, "eventOrigin"

    if-eqz p2, :cond_6

    .line 36
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p3, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_2

    :cond_6
    iget-object p2, p0, Lcom/narvii/story/detail/VoteHelper;->loggingOriginName:Ljava/lang/String;

    .line 37
    invoke-static {p2}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/narvii/story/detail/VoteHelper;->loggingOriginName:Ljava/lang/String;

    .line 38
    invoke-virtual {v1, p3, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    :cond_7
    :goto_2
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/story/detail/VoteHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "api"

    .line 40
    invoke-interface {p3, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/util/http/ApiService;

    .line 41
    new-instance v0, Lcom/narvii/story/detail/VoteHelper$2;

    const-class v4, Lcom/narvii/model/api/ApiResponse;

    move-object v2, v0

    move-object v3, p0

    move-object v5, p1

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/narvii/story/detail/VoteHelper$2;-><init>(Lcom/narvii/story/detail/VoteHelper;Ljava/lang/Class;Lcom/narvii/model/Comment;ILcom/narvii/story/detail/VoteHelper$OnVoteListener;)V

    invoke-virtual {p3, p2, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    if-eqz p4, :cond_8

    .line 42
    invoke-interface {p4}, Lcom/narvii/story/detail/VoteHelper$OnVoteListener;->onVoteStart()V

    :cond_8
    return-void
.end method

.method public vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/narvii/story/detail/VoteHelper;->vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V

    return-void
.end method

.method public vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V
    .locals 9

    .line 2
    invoke-virtual {p0}, Lcom/narvii/story/detail/VoteHelper;->checkLogin()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    .line 3
    new-instance p1, Lcom/narvii/story/detail/c;

    invoke-direct {p1, p4}, Lcom/narvii/story/detail/c;-><init>(Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->isFansOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/narvii/model/Feed;->isContentAccessible()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p2, p0, Lcom/narvii/story/detail/VoteHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 5
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Page Detailed View"

    invoke-static {p2, p1, p3}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->showSubscriptionDialog(Lcom/narvii/app/NVContext;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_2

    .line 6
    new-instance p1, Lcom/narvii/story/detail/d;

    invoke-direct {p1, p4}, Lcom/narvii/story/detail/d;-><init>(Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_2
    return-void

    .line 7
    :cond_3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/story/detail/VoteHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 8
    invoke-static {v1}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result v6

    .line 9
    invoke-static {p2, p1, v6}, Lcom/narvii/story/detail/VoteHelper;->getTargetVotedValue(Ljava/lang/Integer;Lcom/narvii/model/Feed;Z)I

    move-result v7

    .line 10
    invoke-static {p1, v6}, Lcom/narvii/story/detail/VoteHelper;->getVotePath(Lcom/narvii/model/NVObject;Z)Ljava/lang/String;

    move-result-object p2

    if-nez v7, :cond_4

    .line 11
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "?cv=1.2&value="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    const-string/jumbo v1, "value"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    :goto_0
    iget p2, p0, Lcom/narvii/story/detail/VoteHelper;->ndcId:I

    const/4 v1, -0x1

    if-eq p2, v1, :cond_5

    .line 13
    invoke-virtual {v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_1

    .line 14
    :cond_5
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->isGlobalFeed()Z

    move-result p2

    if-nez p2, :cond_6

    .line 15
    iget p2, p1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    :cond_6
    :goto_1
    iget-object p2, p0, Lcom/narvii/story/detail/VoteHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    if-eqz p2, :cond_7

    const-string v1, "eventSource"

    .line 16
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    :cond_7
    iget-object p2, p0, Lcom/narvii/story/detail/VoteHelper;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    const-string v1, "eventOrigin"

    if-eqz p2, :cond_8

    .line 17
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_2

    :cond_8
    iget-object p2, p0, Lcom/narvii/story/detail/VoteHelper;->loggingOriginName:Ljava/lang/String;

    .line 18
    invoke-static {p2}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lcom/narvii/story/detail/VoteHelper;->loggingOriginName:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    :cond_9
    :goto_2
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    if-nez p3, :cond_a

    iget-object p3, p0, Lcom/narvii/story/detail/VoteHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "api"

    .line 21
    invoke-interface {p3, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/util/http/ApiService;

    .line 22
    :cond_a
    new-instance v0, Lcom/narvii/story/detail/VoteHelper$1;

    const-class v4, Lcom/narvii/model/api/ApiResponse;

    move-object v2, v0

    move-object v3, p0

    move-object v5, p1

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/narvii/story/detail/VoteHelper$1;-><init>(Lcom/narvii/story/detail/VoteHelper;Ljava/lang/Class;Lcom/narvii/model/Feed;ZILcom/narvii/story/detail/VoteHelper$OnVoteListener;)V

    invoke-virtual {p3, p2, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    if-eqz p4, :cond_b

    .line 23
    invoke-interface {p4}, Lcom/narvii/story/detail/VoteHelper$OnVoteListener;->onVoteStart()V

    :cond_b
    return-void
.end method

.method public vote(Lcom/narvii/model/SharedFile;Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V
    .locals 8

    .line 43
    invoke-virtual {p0}, Lcom/narvii/story/detail/VoteHelper;->checkLogin()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    .line 44
    new-instance p1, Lcom/narvii/story/detail/a;

    invoke-direct {p1, p4}, Lcom/narvii/story/detail/a;-><init>(Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/narvii/story/detail/VoteHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 45
    invoke-static {v0}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result v6

    .line 46
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 47
    invoke-static {p2, p1, v6}, Lcom/narvii/story/detail/VoteHelper;->getTargetVotedValue(Ljava/lang/Integer;Lcom/narvii/model/SharedFile;Z)I

    move-result v5

    .line 48
    invoke-static {p1, v6}, Lcom/narvii/story/detail/VoteHelper;->getVotePath(Lcom/narvii/model/NVObject;Z)Ljava/lang/String;

    move-result-object p2

    if-nez v5, :cond_2

    .line 49
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "?cv=1.2&value="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    const-string/jumbo v1, "value"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    :goto_0
    iget p2, p0, Lcom/narvii/story/detail/VoteHelper;->ndcId:I

    const/4 v1, -0x1

    if-eq p2, v1, :cond_3

    .line 51
    invoke-virtual {v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    :cond_3
    iget-object p2, p0, Lcom/narvii/story/detail/VoteHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    if-eqz p2, :cond_4

    const-string v1, "eventSource"

    .line 52
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    :cond_4
    iget-object p2, p0, Lcom/narvii/story/detail/VoteHelper;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    const-string v1, "eventOrigin"

    if-eqz p2, :cond_5

    .line 53
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lcom/narvii/story/detail/VoteHelper;->loggingOriginName:Ljava/lang/String;

    .line 54
    invoke-static {p2}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/narvii/story/detail/VoteHelper;->loggingOriginName:Ljava/lang/String;

    .line 55
    invoke-virtual {v0, v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 56
    :cond_6
    :goto_1
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    if-nez p3, :cond_7

    iget-object p3, p0, Lcom/narvii/story/detail/VoteHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "api"

    .line 57
    invoke-interface {p3, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/util/http/ApiService;

    .line 58
    :cond_7
    new-instance v0, Lcom/narvii/story/detail/VoteHelper$3;

    const-class v3, Lcom/narvii/model/api/ApiResponse;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/narvii/story/detail/VoteHelper$3;-><init>(Lcom/narvii/story/detail/VoteHelper;Ljava/lang/Class;Lcom/narvii/model/SharedFile;IZLcom/narvii/story/detail/VoteHelper$OnVoteListener;)V

    invoke-virtual {p3, p2, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    if-eqz p4, :cond_8

    .line 59
    invoke-interface {p4}, Lcom/narvii/story/detail/VoteHelper$OnVoteListener;->onVoteStart()V

    :cond_8
    return-void
.end method
