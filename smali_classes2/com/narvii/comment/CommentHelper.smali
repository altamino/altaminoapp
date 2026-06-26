.class public Lcom/narvii/comment/CommentHelper;
.super Ljava/lang/Object;
.source "CommentHelper.java"


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

    .line 38
    invoke-static {p1}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/narvii/comment/CommentHelper;-><init>(Lcom/narvii/app/NVContext;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Z)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/narvii/comment/CommentHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 43
    iput-boolean p2, p0, Lcom/narvii/comment/CommentHelper;->isGlobalScope:Z

    const-string p2, "api"

    .line 44
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/http/ApiService;

    iput-object p2, p0, Lcom/narvii/comment/CommentHelper;->api:Lcom/narvii/util/http/ApiService;

    const-string p2, "notification"

    .line 45
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    iput-object p1, p0, Lcom/narvii/comment/CommentHelper;->nc:Lcom/narvii/notification/NotificationCenter;

    return-void
.end method

.method public static createPostCommentRequest(ILjava/lang/String;Ljava/lang/String;Z)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 68
    invoke-static {p3, p0, p1, p2}, Lcom/narvii/comment/CommentHelper;->getBaseCommentPath(ZILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 70
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const/16 p2, 0xe6

    .line 71
    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->selfHandleErrorCode(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 72
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 74
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p0

    return-object p0
.end method

.method public static getBaseCommentPath(ZILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 53
    invoke-static {p1}, Lcom/narvii/model/Comment;->getParentTypeName(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/narvii/comment/CommentHelper;->getBaseCommentPath(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBaseCommentPath(ZLcom/narvii/model/Comment;)Ljava/lang/String;
    .locals 2

    .line 49
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

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    const-string p0, "/g-comment"

    goto :goto_0

    :cond_0
    const-string p0, "/comment"

    .line 60
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-static {p3}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0x2f

    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCommentIntent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;Z)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x1

    .line 126
    invoke-static {p0, p1, p2, v0}, Lcom/narvii/comment/CommentHelper;->getCommentIntent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;ZZ)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getCommentIntent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;ZZ)Landroid/content/Intent;
    .locals 6

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 133
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getTotalCommentsCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v3, "feed"

    if-eqz v0, :cond_3

    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/narvii/comment/post/CommentPostActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v4

    const-string v5, "parentType"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v4

    const-string v5, "parentId"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    instance-of v4, p1, Lcom/narvii/model/Blog;

    if-eqz v4, :cond_2

    .line 140
    move-object v4, p1

    check-cast v4, Lcom/narvii/model/Blog;

    iget v4, v4, Lcom/narvii/model/Blog;->type:I

    const-string v5, "parentSubType"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    :cond_2
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 144
    :cond_3
    const-class v0, Lcom/narvii/comment/list/CommentListFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 145
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v3

    const-string/jumbo v4, "type"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const-string v3, "config"

    .line 150
    invoke-interface {p0, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/config/ConfigService;

    if-eqz p3, :cond_5

    .line 152
    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p3

    if-nez p3, :cond_4

    const/4 v1, 0x1

    :cond_4
    const-string p3, "__model"

    invoke-virtual {v0, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_5
    const-string p3, "autoJoin"

    .line 154
    invoke-virtual {v0, p3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 155
    iget p3, p1, Lcom/narvii/model/Feed;->ndcId:I

    const/4 v1, -0x1

    if-eq p3, v1, :cond_6

    const-string v1, "__communityId"

    .line 156
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_6
    if-eqz p2, :cond_7

    .line 159
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getBackgroundMedia()Lcom/narvii/model/Media;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "background"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "blurBackground"

    .line 160
    invoke-virtual {v0, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 162
    :cond_7
    invoke-static {p1}, Lcom/narvii/model/extension/FeedExtensionKt;->isAnnouncement(Lcom/narvii/model/Feed;)Z

    move-result p1

    const-string p2, "isAnnouncement"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 163
    invoke-static {p0}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result p0

    const-string p1, "__interactionScope"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public static getCommentPostActivityIntent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;Z)Landroid/content/Intent;
    .locals 4

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 172
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/narvii/comment/post/CommentPostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    iget v1, p1, Lcom/narvii/model/Feed;->ndcId:I

    const-string v2, "ndcId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v1

    const-string v2, "parentType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "parentId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    instance-of v1, p1, Lcom/narvii/model/Blog;

    if-eqz v1, :cond_1

    .line 177
    move-object v1, p1

    check-cast v1, Lcom/narvii/model/Blog;

    iget v1, v1, Lcom/narvii/model/Blog;->type:I

    const-string v2, "parentSubType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    :cond_1
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "feed"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "config"

    .line 180
    invoke-interface {p0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/narvii/config/ConfigService;

    .line 181
    invoke-virtual {p0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    const-string v3, "__model"

    invoke-virtual {v0, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "autoJoin"

    .line 182
    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 183
    iget p0, p1, Lcom/narvii/model/Feed;->ndcId:I

    const/4 v3, -0x1

    if-eq p0, v3, :cond_3

    const-string v3, "__communityId"

    .line 184
    invoke-virtual {v0, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    const-string p0, "__interactionScope"

    .line 186
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 187
    invoke-static {p1}, Lcom/narvii/model/extension/FeedExtensionKt;->isAnnouncement(Lcom/narvii/model/Feed;)Z

    move-result p0

    const-string p2, "isAnnouncement"

    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 188
    iget p0, p1, Lcom/narvii/model/Feed;->ndcId:I

    if-nez p0, :cond_4

    const/4 v1, 0x1

    :cond_4
    const-string p0, "showEmojiOnly"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public static updateFeedWithComment(Lcom/narvii/model/Feed;Lcom/narvii/model/Comment;Ljava/lang/String;)Lcom/narvii/model/Feed;
    .locals 3

    const-string v0, "delete"

    .line 109
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    const-string v0, "new"

    .line 111
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 115
    :goto_0
    iget p1, p1, Lcom/narvii/model/Comment;->ndcId:I

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 116
    :goto_1
    invoke-virtual {p0, v1}, Lcom/narvii/model/Feed;->getCommentsCount(Z)I

    move-result p1

    add-int/2addr p1, p2

    if-gez p1, :cond_3

    const/4 p1, 0x0

    .line 121
    :cond_3
    invoke-virtual {p0, v1, p1}, Lcom/narvii/model/Feed;->setCommentsCount(ZI)V

    return-object p0
.end method


# virtual methods
.method public sendCommentNotification(Ljava/lang/String;Lcom/narvii/model/Comment;Z)V
    .locals 1

    .line 98
    new-instance v0, Lcom/narvii/notification/Notification;

    invoke-direct {v0, p1, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    if-eqz p3, :cond_0

    .line 101
    iget-object p1, p0, Lcom/narvii/comment/CommentHelper;->nc:Lcom/narvii/notification/NotificationCenter;

    invoke-static {p1, v0}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V

    goto :goto_0

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/narvii/comment/CommentHelper;->nc:Lcom/narvii/notification/NotificationCenter;

    invoke-virtual {p1, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

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

    .line 78
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

    .line 82
    iget-boolean p3, p0, Lcom/narvii/comment/CommentHelper;->isGlobalScope:Z

    invoke-static {p3, p1}, Lcom/narvii/comment/CommentHelper;->getBaseCommentPath(ZLcom/narvii/model/Comment;)Ljava/lang/String;

    move-result-object p3

    .line 84
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 86
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p3

    .line 87
    new-instance v0, Lcom/narvii/comment/CommentHelper$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/narvii/comment/CommentHelper$1;-><init>(Lcom/narvii/comment/CommentHelper;Lcom/narvii/util/http/ApiResponseListener;Lcom/narvii/model/Comment;)V

    .line 94
    iget-object p1, p0, Lcom/narvii/comment/CommentHelper;->api:Lcom/narvii/util/http/ApiService;

    invoke-virtual {p1, p3, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method
