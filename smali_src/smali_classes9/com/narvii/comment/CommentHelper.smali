.class public Lcom/narvii/comment/CommentHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/comment/CommentHelper$ProxApiResponseListener;
    }
.end annotation


# static fields
.field public static final REQ_CODE_VIEW_STICKER:I = 0x6f


# instance fields
.field private final api:Lcom/narvii/util/http/ApiService;

.field private isGlobalScope:Z

.field private final nc:Lcom/narvii/notification/NotificationCenter;

.field private final nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/narvii/comment/CommentHelper;-><init>(Lcom/narvii/app/NVContext;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/comment/CommentHelper;->nvContext:Lcom/narvii/app/NVContext;

    iput-boolean p2, p0, Lcom/narvii/comment/CommentHelper;->isGlobalScope:Z

    const-string p2, "api"

    .line 3
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/http/ApiService;

    iput-object p2, p0, Lcom/narvii/comment/CommentHelper;->api:Lcom/narvii/util/http/ApiService;

    const-string p2, "notification"

    .line 4
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    iput-object p1, p0, Lcom/narvii/comment/CommentHelper;->nc:Lcom/narvii/notification/NotificationCenter;

    return-void
.end method

.method public static createPostCommentRequest(ILjava/lang/String;Ljava/lang/String;Z)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p3, p0, p1, p2}, Lcom/narvii/comment/CommentHelper;->getBaseCommentPath(ZILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    const/16 p2, 0xe6

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->selfHandleErrorCode(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static getBaseCommentPath(ZILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/narvii/model/Comment;->getParentTypeName(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/narvii/comment/CommentHelper;->getBaseCommentPath(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBaseCommentPath(ZLcom/narvii/model/Comment;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/narvii/model/Comment;->getParentTypeName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/narvii/model/Comment;->parentId:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/model/Comment;->commentId:Ljava/lang/String;

    invoke-static {p0, v0, v1, p1}, Lcom/narvii/comment/CommentHelper;->getBaseCommentPath(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBaseCommentPath(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    const-string p0, "/g-comment"

    goto :goto_0

    :cond_0
    const-string p0, "/comment"

    .line 6
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {p3}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0x2f

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCommentIntent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;Z)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/narvii/comment/CommentHelper;->getCommentIntent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;ZZ)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getCommentIntent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;ZZ)Landroid/content/Intent;
    .locals 6

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getTotalCommentsCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const-string v3, "feed"

    if-eqz v0, :cond_3

    .line 3
    new-instance v0, Landroid/content/Intent;

    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/narvii/comment/post/CommentPostActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "parentType"

    .line 4
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "parentId"

    .line 5
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    instance-of v4, p1, Lcom/narvii/model/Blog;

    if-eqz v4, :cond_2

    .line 7
    move-object v4, p1

    check-cast v4, Lcom/narvii/model/Blog;

    iget v4, v4, Lcom/narvii/model/Blog;->type:I

    const-string v5, "parentSubType"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8
    :cond_2
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    const-class v0, Lcom/narvii/comment/list/CommentListFragment;

    .line 9
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 10
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "type"

    .line 11
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "id"

    .line 12
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const-string v3, "config"

    .line 13
    invoke-interface {p0, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/config/ConfigService;

    if-eqz p3, :cond_5

    .line 14
    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p3

    if-nez p3, :cond_4

    move v1, v2

    :cond_4
    const-string p3, "__model"

    invoke-virtual {v0, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_5
    const-string p3, "autoJoin"

    .line 15
    invoke-virtual {v0, p3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 16
    iget p3, p1, Lcom/narvii/model/Feed;->ndcId:I

    const/4 v1, -0x1

    if-eq p3, v1, :cond_6

    const-string v1, "__communityId"

    .line 17
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_6
    if-eqz p2, :cond_7

    .line 18
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getBackgroundMedia()Lcom/narvii/model/Media;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "background"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "blurBackground"

    .line 19
    invoke-virtual {v0, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_7
    const-string p2, "isAnnouncement"

    .line 20
    invoke-static {p1}, Lcom/narvii/model/extension/FeedExtensionKt;->isAnnouncement(Lcom/narvii/model/Feed;)Z

    move-result p1

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "__interactionScope"

    .line 21
    invoke-static {p0}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result p0

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public static getCommentPostActivityIntent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;Z)Landroid/content/Intent;
    .locals 4

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    const-class v2, Lcom/narvii/comment/post/CommentPostActivity;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    .line 17
    const-string v1, "ndcId"

    .line 18
    .line 19
    iget v2, p1, Lcom/narvii/model/Feed;->ndcId:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 23
    .line 24
    const-string v1, "parentType"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->objectType()I

    .line 28
    move-result v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    .line 33
    const-string v1, "parentId"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    .line 42
    instance-of v1, p1, Lcom/narvii/model/Blog;

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    move-object v1, p1

    .line 46
    .line 47
    check-cast v1, Lcom/narvii/model/Blog;

    .line 48
    .line 49
    iget v1, v1, Lcom/narvii/model/Blog;->type:I

    .line 50
    .line 51
    const-string v2, "parentSubType"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    .line 56
    :cond_1
    const-string v1, "feed"

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    .line 65
    const-string v1, "config"

    .line 66
    .line 67
    .line 68
    invoke-interface {p0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    move-result-object p0

    .line 70
    .line 71
    check-cast p0, Lcom/narvii/config/ConfigService;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 75
    move-result p0

    .line 76
    const/4 v1, 0x0

    .line 77
    const/4 v2, 0x1

    .line 78
    .line 79
    if-nez p0, :cond_2

    .line 80
    move p0, v2

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    move p0, v1

    .line 83
    .line 84
    :goto_0
    const-string v3, "__model"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    .line 89
    const-string p0, "autoJoin"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 93
    .line 94
    iget p0, p1, Lcom/narvii/model/Feed;->ndcId:I

    .line 95
    const/4 v3, -0x1

    .line 96
    .line 97
    if-eq p0, v3, :cond_3

    .line 98
    .line 99
    const-string v3, "__communityId"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    .line 104
    :cond_3
    const-string p0, "__interactionScope"

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    .line 109
    const-string p0, "isAnnouncement"

    .line 110
    .line 111
    .line 112
    invoke-static {p1}, Lcom/narvii/model/extension/FeedExtensionKt;->isAnnouncement(Lcom/narvii/model/Feed;)Z

    .line 113
    move-result p2

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 117
    .line 118
    iget p0, p1, Lcom/narvii/model/Feed;->ndcId:I

    .line 119
    .line 120
    if-nez p0, :cond_4

    .line 121
    move v1, v2

    .line 122
    .line 123
    :cond_4
    const-string p0, "showEmojiOnly"

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    return-object v0
.end method

.method public static updateFeedWithComment(Lcom/narvii/model/Feed;Lcom/narvii/model/Comment;Ljava/lang/String;)Lcom/narvii/model/Feed;
    .locals 3

    .line 1
    .line 2
    const-string v0, "delete"

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 p2, -0x1

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    const-string v0, "new"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result p2

    .line 19
    .line 20
    if-eqz p2, :cond_1

    .line 21
    move p2, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move p2, v2

    .line 24
    .line 25
    :goto_0
    iget p1, p1, Lcom/narvii/model/Comment;->ndcId:I

    .line 26
    .line 27
    if-nez p1, :cond_2

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    move v1, v2

    .line 30
    .line 31
    .line 32
    :goto_1
    invoke-virtual {p0, v1}, Lcom/narvii/model/Feed;->getCommentsCount(Z)I

    .line 33
    move-result p1

    .line 34
    add-int/2addr p1, p2

    .line 35
    .line 36
    if-gez p1, :cond_3

    .line 37
    goto :goto_2

    .line 38
    :cond_3
    move v2, p1

    .line 39
    .line 40
    .line 41
    :goto_2
    invoke-virtual {p0, v1, v2}, Lcom/narvii/model/Feed;->setCommentsCount(ZI)V

    .line 42
    return-object p0
.end method


# virtual methods
.method public sendCommentNotification(Ljava/lang/String;Lcom/narvii/model/Comment;Z)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/notification/Notification;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/comment/CommentHelper;->nc:Lcom/narvii/notification/NotificationCenter;

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/narvii/comment/CommentHelper;->nc:Lcom/narvii/notification/NotificationCenter;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 19
    :goto_0
    return-void
.end method

.method public sendDeleteCommentRequest(Lcom/narvii/model/Comment;Lcom/narvii/util/http/ApiResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/Comment;",
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/comment/CommentHelper;->sendDeleteCommentRequest(Lcom/narvii/model/Comment;Lcom/narvii/util/http/ApiResponseListener;Z)V

    return-void
.end method

.method public sendDeleteCommentRequest(Lcom/narvii/model/Comment;Lcom/narvii/util/http/ApiResponseListener;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/Comment;",
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;Z)V"
        }
    .end annotation

    iget-boolean p3, p0, Lcom/narvii/comment/CommentHelper;->isGlobalScope:Z

    .line 2
    invoke-static {p3, p1}, Lcom/narvii/comment/CommentHelper;->getBaseCommentPath(ZLcom/narvii/model/Comment;)Ljava/lang/String;

    move-result-object p3

    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 5
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p3

    .line 6
    new-instance v0, Lcom/narvii/comment/CommentHelper$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/narvii/comment/CommentHelper$1;-><init>(Lcom/narvii/comment/CommentHelper;Lcom/narvii/util/http/ApiResponseListener;Lcom/narvii/model/Comment;)V

    iget-object p1, p0, Lcom/narvii/comment/CommentHelper;->api:Lcom/narvii/util/http/ApiService;

    .line 7
    invoke-virtual {p1, p3, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method
