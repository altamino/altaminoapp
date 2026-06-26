.class public Lcom/narvii/comment/CommentDetailFragment;
.super Lcom/narvii/detail/DetailFragment;
.source "CommentDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/comment/CommentDetailFragment$CommentAddAdapter;,
        Lcom/narvii/comment/CommentDetailFragment$ViewAllCommentAdapter;,
        Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;,
        Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;
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

    .line 75
    invoke-direct {p0}, Lcom/narvii/detail/DetailFragment;-><init>()V

    const/4 v0, -0x1

    .line 91
    iput v0, p0, Lcom/narvii/comment/CommentDetailFragment;->parentType:I

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/narvii/comment/CommentDetailFragment;->parentSummaryAdapter:Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/comment/CommentDetailFragment;)Z
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment;->isStatusOk()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/account/push/PushNotificationHelper;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/narvii/comment/CommentDetailFragment;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/narvii/comment/CommentDetailFragment;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/narvii/comment/CommentDetailFragment;->isDeleted:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/narvii/comment/CommentDetailFragment;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/narvii/comment/CommentDetailFragment;->isDeleted:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/Comment;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/narvii/comment/CommentDetailFragment;->curComment:Lcom/narvii/model/Comment;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/narvii/comment/CommentDetailFragment;Lcom/narvii/model/Comment;)Lcom/narvii/model/Comment;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->curComment:Lcom/narvii/model/Comment;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/narvii/comment/CommentDetailFragment;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/narvii/comment/CommentDetailFragment;->commentId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/Comment;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/narvii/comment/CommentDetailFragment;->parentComment:Lcom/narvii/model/Comment;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/narvii/comment/CommentDetailFragment;Lcom/narvii/model/Comment;)Lcom/narvii/model/Comment;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->parentComment:Lcom/narvii/model/Comment;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/narvii/comment/CommentDetailFragment;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/narvii/comment/CommentDetailFragment;->showReply:Z

    return p0
.end method

.method static synthetic access$1902(Lcom/narvii/comment/CommentDetailFragment;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/narvii/comment/CommentDetailFragment;->showReply:Z

    return p1
.end method

.method static synthetic access$200(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/narvii/comment/CommentDetailFragment;->parentObject:Lcom/narvii/model/NVObject;

    return-object p0
.end method

.method static synthetic access$202(Lcom/narvii/comment/CommentDetailFragment;Lcom/narvii/model/NVObject;)Lcom/narvii/model/NVObject;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->parentObject:Lcom/narvii/model/NVObject;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/narvii/comment/CommentDetailFragment;Lcom/narvii/model/Comment;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/narvii/comment/CommentDetailFragment;->reply(Lcom/narvii/model/Comment;)V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/comment/CommentDetailFragment;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/narvii/comment/CommentDetailFragment;->parentId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/comment/CommentDetailFragment;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/narvii/comment/CommentDetailFragment;->parentType:I

    return p0
.end method

.method static synthetic access$500(Lcom/narvii/comment/CommentDetailFragment;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/narvii/comment/CommentDetailFragment;->isQuestion:Z

    return p0
.end method

.method static synthetic access$502(Lcom/narvii/comment/CommentDetailFragment;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/narvii/comment/CommentDetailFragment;->isQuestion:Z

    return p1
.end method

.method private isStatusOk()Z
    .locals 3

    .line 940
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment;->commentId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment;->parentId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/narvii/comment/CommentDetailFragment;->parentType:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    return v1

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment;->curComment:Lcom/narvii/model/Comment;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private reply(Lcom/narvii/model/Comment;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 924
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/narvii/comment/post/CommentPostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 925
    iget v1, p1, Lcom/narvii/model/Comment;->parentType:I

    const-string v2, "parentType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 926
    iget-object v1, p1, Lcom/narvii/model/Comment;->parentId:Ljava/lang/String;

    const-string v2, "parentId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 927
    invoke-virtual {p1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "respondTo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 928
    new-instance v1, Lcom/narvii/comment/post/CommentPost;

    invoke-direct {v1}, Lcom/narvii/comment/post/CommentPost;-><init>()V

    const v2, 0x7f0f02a4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 929
    iget-object v5, p1, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    if-nez v5, :cond_1

    const-string v5, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v5

    :goto_0
    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/narvii/util/StringUtils;->getStringForCommunityLocal(Lcom/narvii/app/NVContext;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 930
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/narvii/comment/post/CommentPost;->prefix:Ljava/lang/String;

    const-string v3, "hint"

    .line 931
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 932
    invoke-virtual {p1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/narvii/comment/post/CommentPost;->respondTo:Ljava/lang/String;

    .line 933
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "post"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "Source"

    const-string v1, "Quick Reply"

    .line 934
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 935
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 936
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    invoke-virtual {p1}, Lcom/narvii/account/push/PushNotificationHelper;->checkRemindDialogWhenPostFinished()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 170
    new-instance p1, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;-><init>(Lcom/narvii/comment/CommentDetailFragment;)V

    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->curCommentAdapter:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    .line 171
    new-instance p1, Lcom/narvii/comment/CommentDetailFragment$1;

    invoke-direct {p1, p0, p0}, Lcom/narvii/comment/CommentDetailFragment$1;-><init>(Lcom/narvii/comment/CommentDetailFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 182
    new-instance p1, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;-><init>(Lcom/narvii/comment/CommentDetailFragment;)V

    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->parentSummaryAdapter:Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;

    .line 183
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment;->parentSummaryAdapter:Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 184
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment;->curCommentAdapter:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 185
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    new-instance v0, Lcom/narvii/comment/CommentDetailFragment$ViewAllCommentAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/comment/CommentDetailFragment$ViewAllCommentAdapter;-><init>(Lcom/narvii/comment/CommentDetailFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 186
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    new-instance v0, Lcom/narvii/comment/CommentDetailFragment$CommentAddAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/comment/CommentDetailFragment$CommentAddAdapter;-><init>(Lcom/narvii/comment/CommentDetailFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 187
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    return-object p1
.end method

.method public id()Ljava/lang/String;
    .locals 1

    const-string v0, "comment-id"

    .line 150
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public notAvailable()Z
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment;->curComment:Lcom/narvii/model/Comment;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 155
    iget-object v2, p0, Lcom/narvii/comment/CommentDetailFragment;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/model/Comment;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment;->parentComment:Lcom/narvii/model/Comment;

    if-eqz v0, :cond_1

    .line 161
    iget-object v2, p0, Lcom/narvii/comment/CommentDetailFragment;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/model/Comment;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 3

    const-string v0, "liveLayer"

    .line 218
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/narvii/comment/CommentDetailFragment;->id()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "comment/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/comment/CommentDetailFragment;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?parent-type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/narvii/comment/CommentDetailFragment;->parentType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&parent-id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/comment/CommentDetailFragment;->parentId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/narvii/livelayer/LiveLayerService;->reportBrowsing(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 110
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "account"

    .line 111
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/comment/CommentDetailFragment;->account:Lcom/narvii/account/AccountService;

    .line 112
    new-instance v0, Lcom/narvii/account/push/PushNotificationHelper;

    invoke-direct {v0, p0}, Lcom/narvii/account/push/PushNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/comment/CommentDetailFragment;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    const-string v0, "show_reply"

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    const-string v2, "state_comment_id"

    .line 115
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/narvii/comment/CommentDetailFragment;->commentId:Ljava/lang/String;

    const-string v2, "state_parent_type"

    .line 116
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/narvii/comment/CommentDetailFragment;->parentType:I

    const-string v1, "state_parent_id"

    .line 117
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/comment/CommentDetailFragment;->parentId:Ljava/lang/String;

    .line 118
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/comment/CommentDetailFragment;->showReply:Z

    const-string v0, "state_comment"

    .line 119
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    const-class v0, Lcom/narvii/model/Comment;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Comment;

    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->curComment:Lcom/narvii/model/Comment;

    .line 122
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->curComment:Lcom/narvii/model/Comment;

    if-eqz p1, :cond_1

    .line 123
    invoke-virtual {p1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->commentId:Ljava/lang/String;

    .line 124
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->curComment:Lcom/narvii/model/Comment;

    iget v0, p1, Lcom/narvii/model/Comment;->parentType:I

    iput v0, p0, Lcom/narvii/comment/CommentDetailFragment;->parentType:I

    .line 125
    iget-object p1, p1, Lcom/narvii/model/Comment;->parentId:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->parentId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "comment-id"

    .line 131
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->commentId:Ljava/lang/String;

    const-string p1, "parent-type"

    .line 132
    invoke-virtual {p0, p1, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/narvii/comment/CommentDetailFragment;->parentType:I

    const-string p1, "parent-id"

    .line 133
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->parentId:Ljava/lang/String;

    const/4 p1, 0x1

    .line 134
    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/comment/CommentDetailFragment;->showReply:Z

    const-string p1, "commentObject"

    .line 135
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/Comment;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Comment;

    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->curComment:Lcom/narvii/model/Comment;

    .line 137
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->curComment:Lcom/narvii/model/Comment;

    if-eqz p1, :cond_1

    .line 138
    invoke-virtual {p1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->commentId:Ljava/lang/String;

    .line 139
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->curComment:Lcom/narvii/model/Comment;

    iget v0, p1, Lcom/narvii/model/Comment;->parentType:I

    iput v0, p0, Lcom/narvii/comment/CommentDetailFragment;->parentType:I

    .line 140
    iget-object p1, p1, Lcom/narvii/model/Comment;->parentId:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment;->parentId:Ljava/lang/String;

    :cond_1
    :goto_0
    const p1, 0x7f0f029b

    .line 145
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 200
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 201
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment;->curComment:Lcom/narvii/model/Comment;

    if-eqz v0, :cond_0

    .line 202
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "state_comment"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment;->commentId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment;->commentId:Ljava/lang/String;

    const-string v1, "state_comment_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment;->parentId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment;->parentId:Ljava/lang/String;

    const-string v1, "state_parent_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_2
    iget v0, p0, Lcom/narvii/comment/CommentDetailFragment;->parentType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    const-string v1, "parent-type"

    .line 211
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 213
    :cond_3
    iget-boolean v0, p0, Lcom/narvii/comment/CommentDetailFragment;->showReply:Z

    const-string v1, "show_reply"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 192
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 194
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 195
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method
