.class public Lcom/narvii/comment/CommentDetailFragment;
.super Lcom/narvii/detail/DetailFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;,
        Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;,
        Lcom/narvii/comment/CommentDetailFragment$ViewAllCommentAdapter;,
        Lcom/narvii/comment/CommentDetailFragment$CommentAddAdapter;
    }
.end annotation


# static fields
.field private static final COMMENT_ID:Ljava/lang/String; = "comment-id"

.field private static final COMMENT_OBJECT:Ljava/lang/String; = "commentObject"

.field private static final PARAMS_SHOW_REPLY:Ljava/lang/String; = "show_reply"

.field private static final PARENT_ID:Ljava/lang/String; = "parent-id"

.field private static final PARENT_TYPE:Ljava/lang/String; = "parent-type"

.field private static final STATE_COMMENT:Ljava/lang/String; = "state_comment"

.field private static final STATE_COMMENT_ID:Ljava/lang/String; = "state_comment_id"

.field private static final STATE_PARENT_ID:Ljava/lang/String; = "state_parent_id"

.field private static final STATE_PARENT_TYPE:Ljava/lang/String; = "state_parent_type"

.field private static final UNVISIBLE:I = -0x1


# instance fields
.field private account:Lcom/narvii/account/AccountService;

.field private commentId:Ljava/lang/String;

.field private curComment:Lcom/narvii/model/Comment;

.field curCommentAdapter:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

.field private isDeleted:Z

.field private isQuestion:Z

.field private mergeAdapter:Lcom/narvii/list/MergeAdapter;

.field private parentComment:Lcom/narvii/model/Comment;

.field private parentId:Ljava/lang/String;

.field private parentObject:Lcom/narvii/model/NVObject;

.field private parentSummaryAdapter:Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;

.field private parentType:I

.field private pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

.field private showReply:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/detail/DetailFragment;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/comment/CommentDetailFragment;->parentType:I

    .line 7
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/comment/CommentDetailFragment;->parentSummaryAdapter:Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;

    return-object p0
.end method

.method static bridge synthetic B(Lcom/narvii/comment/CommentDetailFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/comment/CommentDetailFragment;->parentType:I

    return p0
.end method

.method static bridge synthetic C(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/account/push/PushNotificationHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/comment/CommentDetailFragment;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    return-object p0
.end method

.method static bridge synthetic D(Lcom/narvii/comment/CommentDetailFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/comment/CommentDetailFragment;->showReply:Z

    return p0
.end method

.method static bridge synthetic E(Lcom/narvii/comment/CommentDetailFragment;Lcom/narvii/model/Comment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->curComment:Lcom/narvii/model/Comment;

    return-void
.end method

.method static bridge synthetic F(Lcom/narvii/comment/CommentDetailFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/comment/CommentDetailFragment;->isDeleted:Z

    return-void
.end method

.method static bridge synthetic G(Lcom/narvii/comment/CommentDetailFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/comment/CommentDetailFragment;->isQuestion:Z

    return-void
.end method

.method static bridge synthetic H(Lcom/narvii/comment/CommentDetailFragment;Lcom/narvii/model/Comment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->parentComment:Lcom/narvii/model/Comment;

    return-void
.end method

.method static bridge synthetic I(Lcom/narvii/comment/CommentDetailFragment;Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->parentObject:Lcom/narvii/model/NVObject;

    return-void
.end method

.method static bridge synthetic J(Lcom/narvii/comment/CommentDetailFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/comment/CommentDetailFragment;->showReply:Z

    return-void
.end method

.method static bridge synthetic K(Lcom/narvii/comment/CommentDetailFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment;->isStatusOk()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic L(Lcom/narvii/comment/CommentDetailFragment;Lcom/narvii/model/Comment;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/comment/CommentDetailFragment;->reply(Lcom/narvii/model/Comment;)V

    return-void
.end method

.method private isStatusOk()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment;->commentId:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment;->parentId:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget v0, p0, Lcom/narvii/comment/CommentDetailFragment;->parentType:I

    .line 20
    const/4 v2, -0x1

    .line 21
    .line 22
    if-eq v0, v2, :cond_0

    .line 23
    return v1

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment;->curComment:Lcom/narvii/model/Comment;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    return v1

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    return v0
.end method

.method private reply(Lcom/narvii/model/Comment;)V
    .locals 5

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    const-class v2, Lcom/narvii/comment/post/CommentPostActivity;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    .line 16
    const-string v1, "parentType"

    .line 17
    .line 18
    iget v2, p1, Lcom/narvii/model/Comment;->parentType:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 22
    .line 23
    const-string v1, "parentId"

    .line 24
    .line 25
    iget-object v2, p1, Lcom/narvii/model/Comment;->parentId:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    const-string v1, "respondTo"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    new-instance v1, Lcom/narvii/comment/post/CommentPost;

    .line 40
    .line 41
    .line 42
    invoke-direct {v1}, Lcom/narvii/comment/post/CommentPost;-><init>()V

    .line 43
    const/4 v2, 0x1

    .line 44
    .line 45
    new-array v2, v2, [Ljava/lang/String;

    .line 46
    .line 47
    iget-object v3, p1, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    .line 48
    .line 49
    if-nez v3, :cond_1

    .line 50
    .line 51
    const-string v3, ""

    .line 52
    goto :goto_0

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {v3}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 57
    :goto_0
    const/4 v4, 0x0

    .line 58
    .line 59
    aput-object v3, v2, v4

    .line 60
    .line 61
    .line 62
    const v3, 0x7f1202ef

    .line 63
    .line 64
    .line 65
    invoke-static {p0, v3, v2}, Lcom/narvii/util/StringUtils;->getStringForCommunityLocal(Lcom/narvii/app/NVContext;I[Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v4, "\n"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v3

    .line 84
    .line 85
    iput-object v3, v1, Lcom/narvii/comment/post/CommentPost;->prefix:Ljava/lang/String;

    .line 86
    .line 87
    const-string v3, "hint"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    .line 94
    move-result-object p1

    .line 95
    .line 96
    iput-object p1, v1, Lcom/narvii/comment/post/CommentPost;->respondTo:Ljava/lang/String;

    .line 97
    .line 98
    const-string p1, "post"

    .line 99
    .line 100
    .line 101
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    move-result-object v1

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    .line 107
    const-string p1, "Source"

    .line 108
    .line 109
    const-string v1, "Quick Reply"

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    .line 114
    .line 115
    invoke-static {p0, v0}, Lcom/narvii/comment/CommentDetailFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 116
    .line 117
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/narvii/account/push/PushNotificationHelper;->checkRemindDialogWhenPostFinished()V

    .line 121
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/comment/CommentDetailFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/comment/CommentDetailFragment;->commentId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/Comment;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/comment/CommentDetailFragment;->curComment:Lcom/narvii/model/Comment;

    return-object p0
.end method

.method static bridge synthetic v(Lcom/narvii/comment/CommentDetailFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/comment/CommentDetailFragment;->isDeleted:Z

    return p0
.end method

.method static bridge synthetic w(Lcom/narvii/comment/CommentDetailFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/comment/CommentDetailFragment;->isQuestion:Z

    return p0
.end method

.method static bridge synthetic x(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/Comment;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/comment/CommentDetailFragment;->parentComment:Lcom/narvii/model/Comment;

    return-object p0
.end method

.method static bridge synthetic y(Lcom/narvii/comment/CommentDetailFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/comment/CommentDetailFragment;->parentId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic z(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/comment/CommentDetailFragment;->parentObject:Lcom/narvii/model/NVObject;

    return-object p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;-><init>(Lcom/narvii/comment/CommentDetailFragment;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->curCommentAdapter:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/comment/CommentDetailFragment$1;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p0, p0}, Lcom/narvii/comment/CommentDetailFragment$1;-><init>(Lcom/narvii/comment/CommentDetailFragment;Lcom/narvii/app/NVContext;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 15
    .line 16
    new-instance p1, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;-><init>(Lcom/narvii/comment/CommentDetailFragment;)V

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->parentSummaryAdapter:Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment;->curCommentAdapter:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    .line 31
    const/4 v1, 0x1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 37
    .line 38
    new-instance v0, Lcom/narvii/comment/CommentDetailFragment$ViewAllCommentAdapter;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/narvii/comment/CommentDetailFragment$ViewAllCommentAdapter;-><init>(Lcom/narvii/comment/CommentDetailFragment;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 45
    .line 46
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 47
    .line 48
    new-instance v0, Lcom/narvii/comment/CommentDetailFragment$CommentAddAdapter;

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, p0}, Lcom/narvii/comment/CommentDetailFragment$CommentAddAdapter;-><init>(Lcom/narvii/comment/CommentDetailFragment;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    .line 56
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 57
    return-object p1
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-string v0, "comment-id"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public notAvailable()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment;->curComment:Lcom/narvii/model/Comment;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lcom/narvii/comment/CommentDetailFragment;->account:Lcom/narvii/account/AccountService;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2}, Lcom/narvii/model/Comment;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    return v1

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment;->parentComment:Lcom/narvii/model/Comment;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v2, p0, Lcom/narvii/comment/CommentDetailFragment;->account:Lcom/narvii/account/AccountService;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Lcom/narvii/model/Comment;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    return v1

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 3

    .line 1
    .line 2
    const-string v0, "liveLayer"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/comment/CommentDetailFragment;->id()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    const-string v2, "comment/"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/comment/CommentDetailFragment;->id()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "?parent-type="

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    iget v2, p0, Lcom/narvii/comment/CommentDetailFragment;->parentType:I

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v2, "&parent-id="

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/narvii/comment/CommentDetailFragment;->parentId:Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1, p1}, Lcom/narvii/livelayer/LiveLayerService;->reportBrowsing(Ljava/lang/String;Z)V

    .line 61
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "account"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/comment/CommentDetailFragment;->account:Lcom/narvii/account/AccountService;

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/account/push/PushNotificationHelper;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/narvii/account/push/PushNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/comment/CommentDetailFragment;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    .line 21
    .line 22
    const-class v0, Lcom/narvii/model/Comment;

    .line 23
    .line 24
    const-string v1, "show_reply"

    .line 25
    const/4 v2, -0x1

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    const-string v3, "state_comment_id"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    iput-object v3, p0, Lcom/narvii/comment/CommentDetailFragment;->commentId:Ljava/lang/String;

    .line 36
    .line 37
    const-string v3, "state_parent_type"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 41
    move-result v2

    .line 42
    .line 43
    iput v2, p0, Lcom/narvii/comment/CommentDetailFragment;->parentType:I

    .line 44
    .line 45
    const-string v2, "state_parent_id"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    iput-object v2, p0, Lcom/narvii/comment/CommentDetailFragment;->parentId:Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 55
    move-result v1

    .line 56
    .line 57
    iput-boolean v1, p0, Lcom/narvii/comment/CommentDetailFragment;->showReply:Z

    .line 58
    .line 59
    const-string v1, "state_comment"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    move-result v1

    .line 68
    .line 69
    if-nez v1, :cond_1

    .line 70
    .line 71
    .line 72
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    check-cast p1, Lcom/narvii/model/Comment;

    .line 76
    .line 77
    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->curComment:Lcom/narvii/model/Comment;

    .line 78
    .line 79
    if-eqz p1, :cond_1

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->commentId:Ljava/lang/String;

    .line 86
    .line 87
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->curComment:Lcom/narvii/model/Comment;

    .line 88
    .line 89
    iget v0, p1, Lcom/narvii/model/Comment;->parentType:I

    .line 90
    .line 91
    iput v0, p0, Lcom/narvii/comment/CommentDetailFragment;->parentType:I

    .line 92
    .line 93
    iget-object p1, p1, Lcom/narvii/model/Comment;->parentId:Ljava/lang/String;

    .line 94
    .line 95
    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->parentId:Ljava/lang/String;

    .line 96
    goto :goto_0

    .line 97
    .line 98
    :cond_0
    const-string p1, "comment-id"

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->commentId:Ljava/lang/String;

    .line 105
    .line 106
    const-string p1, "parent-type"

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p1, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    .line 110
    move-result p1

    .line 111
    .line 112
    iput p1, p0, Lcom/narvii/comment/CommentDetailFragment;->parentType:I

    .line 113
    .line 114
    const-string p1, "parent-id"

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->parentId:Ljava/lang/String;

    .line 121
    const/4 p1, 0x1

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v1, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 125
    move-result p1

    .line 126
    .line 127
    iput-boolean p1, p0, Lcom/narvii/comment/CommentDetailFragment;->showReply:Z

    .line 128
    .line 129
    const-string p1, "commentObject"

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    move-result-object v1

    .line 134
    .line 135
    .line 136
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 137
    move-result v1

    .line 138
    .line 139
    if-nez v1, :cond_1

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    move-result-object p1

    .line 144
    .line 145
    .line 146
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 147
    move-result-object p1

    .line 148
    .line 149
    check-cast p1, Lcom/narvii/model/Comment;

    .line 150
    .line 151
    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->curComment:Lcom/narvii/model/Comment;

    .line 152
    .line 153
    if-eqz p1, :cond_1

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    .line 157
    move-result-object p1

    .line 158
    .line 159
    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->commentId:Ljava/lang/String;

    .line 160
    .line 161
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->curComment:Lcom/narvii/model/Comment;

    .line 162
    .line 163
    iget v0, p1, Lcom/narvii/model/Comment;->parentType:I

    .line 164
    .line 165
    iput v0, p0, Lcom/narvii/comment/CommentDetailFragment;->parentType:I

    .line 166
    .line 167
    iget-object p1, p1, Lcom/narvii/model/Comment;->parentId:Ljava/lang/String;

    .line 168
    .line 169
    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->parentId:Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    :cond_1
    :goto_0
    const p1, 0x7f1202e6

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 176
    move-result-object p1

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 180
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment;->curComment:Lcom/narvii/model/Comment;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "state_comment"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment;->commentId:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    const-string v0, "state_comment_id"

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/comment/CommentDetailFragment;->commentId:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment;->parentId:Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    move-result v0

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    const-string v0, "state_parent_id"

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/comment/CommentDetailFragment;->parentId:Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    :cond_2
    iget v0, p0, Lcom/narvii/comment/CommentDetailFragment;->parentType:I

    .line 49
    const/4 v1, -0x1

    .line 50
    .line 51
    if-eq v0, v1, :cond_3

    .line 52
    .line 53
    const-string v1, "parent-type"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 57
    .line 58
    :cond_3
    const-string v0, "show_reply"

    .line 59
    .line 60
    iget-boolean v1, p0, Lcom/narvii/comment/CommentDetailFragment;->showReply:Z

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 7
    move-result-object p1

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 15
    move-result-object p1

    .line 16
    const/4 p2, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 20
    return-void
.end method
