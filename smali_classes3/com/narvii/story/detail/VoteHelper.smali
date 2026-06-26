.class public Lcom/narvii/story/detail/VoteHelper;
.super Ljava/lang/Object;
.source "VoteHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/story/detail/VoteHelper$OnVoteListenerAdapter;,
        Lcom/narvii/story/detail/VoteHelper$OnVoteListener;
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

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/narvii/story/detail/VoteHelper;->ndcId:I

    .line 96
    iput-object p1, p0, Lcom/narvii/story/detail/VoteHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 97
    new-instance v0, Lcom/narvii/community/CommunityHelper;

    invoke-direct {v0, p1}, Lcom/narvii/community/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/story/detail/VoteHelper;->communityHelper:Lcom/narvii/community/CommunityHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/story/detail/VoteHelper;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/narvii/story/detail/VoteHelper;->nvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method public static getTargetVotedValue(Ljava/lang/Integer;Lcom/narvii/model/Comment;)I
    .locals 0

    if-eqz p0, :cond_0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    .line 70
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

    .line 57
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    .line 59
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

    .line 78
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    .line 80
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

    .line 86
    instance-of v0, p0, Lcom/narvii/model/Blog;

    const-string v1, "/g-vote"

    const-string v2, "/vote"

    if-nez v0, :cond_3

    instance-of v0, p0, Lcom/narvii/model/Item;

    if-nez v0, :cond_3

    instance-of v0, p0, Lcom/narvii/model/SharedFile;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 88
    :cond_0
    instance-of v0, p0, Lcom/narvii/model/Comment;

    if-eqz v0, :cond_2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p0, Lcom/narvii/model/Comment;

    invoke-static {p1, p0}, Lcom/narvii/comment/CommentHelper;->getBaseCommentPath(ZLcom/narvii/model/Comment;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    .line 87
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->apiTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$vote$0(Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 138
    invoke-interface {p0, v0}, Lcom/narvii/story/detail/VoteHelper$OnVoteListener;->onVoteEnd(Z)V

    return-void
.end method

.method static synthetic lambda$vote$1(Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 146
    invoke-interface {p0, v0}, Lcom/narvii/story/detail/VoteHelper$OnVoteListener;->onVoteEnd(Z)V

    return-void
.end method

.method static synthetic lambda$vote$2(Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 255
    invoke-interface {p0, v0}, Lcom/narvii/story/detail/VoteHelper$OnVoteListener;->onVoteEnd(Z)V

    return-void
.end method

.method static synthetic lambda$vote$3(Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 331
    invoke-interface {p0, v0}, Lcom/narvii/story/detail/VoteHelper$OnVoteListener;->onVoteEnd(Z)V

    return-void
.end method


# virtual methods
.method public checkLogin()Z
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/narvii/story/detail/VoteHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 106
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 109
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "vote"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/narvii/story/detail/VoteHelper;->nvContext:Lcom/narvii/app/NVContext;

    instance-of v2, v1, Lcom/narvii/app/NVFragment;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 111
    check-cast v1, Lcom/narvii/app/NVFragment;

    invoke-virtual {v1, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    goto :goto_1

    .line 112
    :cond_1
    instance-of v2, v1, Lcom/narvii/app/NVActivity;

    if-eqz v2, :cond_2

    .line 113
    check-cast v1, Lcom/narvii/app/NVActivity;

    invoke-virtual {v1, v0}, Lcom/narvii/app/NVActivity;->ensureLogin(Landroid/content/Intent;)V

    goto :goto_1

    .line 114
    :cond_2
    instance-of v2, v1, Lcom/narvii/list/NVAdapter;

    if-eqz v2, :cond_3

    .line 115
    check-cast v1, Lcom/narvii/list/NVAdapter;

    invoke-virtual {v1, v0}, Lcom/narvii/list/NVAdapter;->ensureLogin(Landroid/content/Intent;)V

    goto :goto_1

    .line 117
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ndc://login"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "promptType"

    const-string v2, "Required"

    .line 118
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/narvii/story/detail/VoteHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1, v0}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "unable to start login activity(from voteHelper)"

    .line 122
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/narvii/story/detail/VoteHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0b08

    invoke-static {v0, v1, v3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    :goto_1
    return v3
.end method

.method public setCommunityId(I)V
    .locals 0

    .line 101
    iput p1, p0, Lcom/narvii/story/detail/VoteHelper;->ndcId:I

    return-void
.end method

.method public vote(Lcom/narvii/model/Comment;Ljava/lang/Integer;Lcom/narvii/model/NVObject;Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V
    .locals 8

    .line 253
    invoke-virtual {p0}, Lcom/narvii/story/detail/VoteHelper;->checkLogin()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    .line 255
    new-instance p1, Lcom/narvii/story/detail/-$$Lambda$VoteHelper$8N8yoawMN9XgTeJXe21JIuZS420;

    invoke-direct {p1, p4}, Lcom/narvii/story/detail/-$$Lambda$VoteHelper$8N8yoawMN9XgTeJXe21JIuZS420;-><init>(Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/narvii/story/detail/VoteHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {v0}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result v0

    .line 262
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 264
    invoke-static {p1, v0}, Lcom/narvii/story/detail/VoteHelper;->getVotePath(Lcom/narvii/model/NVObject;Z)Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-static {p2, p1}, Lcom/narvii/story/detail/VoteHelper;->getTargetVotedValue(Ljava/lang/Integer;Lcom/narvii/model/Comment;)I

    move-result v6

    if-nez v6, :cond_2

    .line 268
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_0

    .line 270
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

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "value"

    invoke-virtual {p2, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 274
    :goto_0
    iget p2, p0, Lcom/narvii/story/detail/VoteHelper;->ndcId:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    .line 275
    invoke-virtual {v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_1

    .line 276
    :cond_3
    instance-of p2, p3, Lcom/narvii/model/Feed;

    if-eqz p2, :cond_4

    .line 277
    check-cast p3, Lcom/narvii/model/Feed;

    iget p2, p3, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 282
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/narvii/story/detail/VoteHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    if-eqz p2, :cond_5

    .line 283
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    const-string p3, "eventSource"

    invoke-virtual {v1, p3, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 285
    :cond_5
    iget-object p2, p0, Lcom/narvii/story/detail/VoteHelper;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    const-string p3, "eventOrigin"

    if-eqz p2, :cond_6

    .line 286
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p3, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_2

    .line 287
    :cond_6
    iget-object p2, p0, Lcom/narvii/story/detail/VoteHelper;->loggingOriginName:Ljava/lang/String;

    invoke-static {p2}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 288
    iget-object p2, p0, Lcom/narvii/story/detail/VoteHelper;->loggingOriginName:Ljava/lang/String;

    invoke-virtual {v1, p3, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 291
    :cond_7
    :goto_2
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    .line 292
    iget-object p3, p0, Lcom/narvii/story/detail/VoteHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "api"

    invoke-interface {p3, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/util/http/ApiService;

    .line 294
    new-instance v0, Lcom/narvii/story/detail/VoteHelper$2;

    const-class v4, Lcom/narvii/model/api/ApiResponse;

    move-object v2, v0

    move-object v3, p0

    move-object v5, p1

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/narvii/story/detail/VoteHelper$2;-><init>(Lcom/narvii/story/detail/VoteHelper;Ljava/lang/Class;Lcom/narvii/model/Comment;ILcom/narvii/story/detail/VoteHelper$OnVoteListener;)V

    invoke-virtual {p3, p2, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    if-eqz p4, :cond_8

    .line 323
    invoke-interface {p4}, Lcom/narvii/story/detail/VoteHelper$OnVoteListener;->onVoteStart()V

    :cond_8
    return-void
.end method

.method public vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/narvii/story/detail/VoteHelper;->vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V

    return-void
.end method

.method public vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V
    .locals 9

    .line 136
    invoke-virtual {p0}, Lcom/narvii/story/detail/VoteHelper;->checkLogin()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    .line 138
    new-instance p1, Lcom/narvii/story/detail/-$$Lambda$VoteHelper$MSqFqR8tRzHTjQjO2ovT63we5as;

    invoke-direct {p1, p4}, Lcom/narvii/story/detail/-$$Lambda$VoteHelper$MSqFqR8tRzHTjQjO2ovT63we5as;-><init>(Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    .line 143
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->isFansOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/narvii/model/Feed;->isContentAccessible()Z

    move-result v0

    if-nez v0, :cond_3

    .line 144
    iget-object p2, p0, Lcom/narvii/story/detail/VoteHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Page Detailed View"

    invoke-static {p2, p1, p3}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->showSubscriptionDialog(Lcom/narvii/app/NVContext;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_2

    .line 146
    new-instance p1, Lcom/narvii/story/detail/-$$Lambda$VoteHelper$BL2-lA6YGSuirv9Wgis0-EWsMpQ;

    invoke-direct {p1, p4}, Lcom/narvii/story/detail/-$$Lambda$VoteHelper$BL2-lA6YGSuirv9Wgis0-EWsMpQ;-><init>(Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_2
    return-void

    .line 151
    :cond_3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/narvii/story/detail/VoteHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {v1}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result v6

    .line 153
    invoke-static {p2, p1, v6}, Lcom/narvii/story/detail/VoteHelper;->getTargetVotedValue(Ljava/lang/Integer;Lcom/narvii/model/Feed;Z)I

    move-result v7

    .line 155
    invoke-static {p1, v6}, Lcom/narvii/story/detail/VoteHelper;->getVotePath(Lcom/narvii/model/NVObject;Z)Ljava/lang/String;

    move-result-object p2

    if-nez v7, :cond_4

    .line 157
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_0

    .line 159
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

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {p2, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 161
    :goto_0
    iget p2, p0, Lcom/narvii/story/detail/VoteHelper;->ndcId:I

    const/4 v1, -0x1

    if-eq p2, v1, :cond_5

    .line 162
    invoke-virtual {v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_1

    .line 163
    :cond_5
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->isGlobalFeed()Z

    move-result p2

    if-nez p2, :cond_6

    .line 164
    iget p2, p1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 167
    :cond_6
    :goto_1
    iget-object p2, p0, Lcom/narvii/story/detail/VoteHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    if-eqz p2, :cond_7

    .line 168
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    const-string v1, "eventSource"

    invoke-virtual {v0, v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 170
    :cond_7
    iget-object p2, p0, Lcom/narvii/story/detail/VoteHelper;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    const-string v1, "eventOrigin"

    if-eqz p2, :cond_8

    .line 171
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_2

    .line 172
    :cond_8
    iget-object p2, p0, Lcom/narvii/story/detail/VoteHelper;->loggingOriginName:Ljava/lang/String;

    invoke-static {p2}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 173
    iget-object p2, p0, Lcom/narvii/story/detail/VoteHelper;->loggingOriginName:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 176
    :cond_9
    :goto_2
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    if-nez p3, :cond_a

    .line 179
    iget-object p3, p0, Lcom/narvii/story/detail/VoteHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "api"

    invoke-interface {p3, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/util/http/ApiService;

    .line 182
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

    .line 243
    invoke-interface {p4}, Lcom/narvii/story/detail/VoteHelper$OnVoteListener;->onVoteStart()V

    .line 245
    :cond_b
    iget-object p2, p0, Lcom/narvii/story/detail/VoteHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string p3, "notification"

    invoke-interface {p2, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/notification/NotificationCenter;

    .line 246
    new-instance p3, Lcom/narvii/notification/Notification;

    const-string p4, "vote_start"

    invoke-direct {p3, p4, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 247
    invoke-virtual {p2, p3}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public vote(Lcom/narvii/model/SharedFile;Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V
    .locals 8

    .line 329
    invoke-virtual {p0}, Lcom/narvii/story/detail/VoteHelper;->checkLogin()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    .line 331
    new-instance p1, Lcom/narvii/story/detail/-$$Lambda$VoteHelper$SpRxBXsszRiRnOMLmdl_rljNVuw;

    invoke-direct {p1, p4}, Lcom/narvii/story/detail/-$$Lambda$VoteHelper$SpRxBXsszRiRnOMLmdl_rljNVuw;-><init>(Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/narvii/story/detail/VoteHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {v0}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result v6

    .line 338
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 340
    invoke-static {p2, p1, v6}, Lcom/narvii/story/detail/VoteHelper;->getTargetVotedValue(Ljava/lang/Integer;Lcom/narvii/model/SharedFile;Z)I

    move-result v5

    .line 342
    invoke-static {p1, v6}, Lcom/narvii/story/detail/VoteHelper;->getVotePath(Lcom/narvii/model/NVObject;Z)Ljava/lang/String;

    move-result-object p2

    if-nez v5, :cond_2

    .line 344
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_0

    .line 346
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

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {p2, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 350
    :goto_0
    iget p2, p0, Lcom/narvii/story/detail/VoteHelper;->ndcId:I

    const/4 v1, -0x1

    if-eq p2, v1, :cond_3

    .line 351
    invoke-virtual {v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 358
    :cond_3
    iget-object p2, p0, Lcom/narvii/story/detail/VoteHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    if-eqz p2, :cond_4

    .line 359
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    const-string v1, "eventSource"

    invoke-virtual {v0, v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 361
    :cond_4
    iget-object p2, p0, Lcom/narvii/story/detail/VoteHelper;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    const-string v1, "eventOrigin"

    if-eqz p2, :cond_5

    .line 362
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_1

    .line 363
    :cond_5
    iget-object p2, p0, Lcom/narvii/story/detail/VoteHelper;->loggingOriginName:Ljava/lang/String;

    invoke-static {p2}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 364
    iget-object p2, p0, Lcom/narvii/story/detail/VoteHelper;->loggingOriginName:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 368
    :cond_6
    :goto_1
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    if-nez p3, :cond_7

    .line 371
    iget-object p3, p0, Lcom/narvii/story/detail/VoteHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "api"

    invoke-interface {p3, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/util/http/ApiService;

    .line 374
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

    .line 416
    invoke-interface {p4}, Lcom/narvii/story/detail/VoteHelper$OnVoteListener;->onVoteStart()V

    :cond_8
    return-void
.end method
