.class public abstract Lcom/narvii/comment/list/CommentListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "CommentListAdapter.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;
.implements Lcom/narvii/comment/post/CommentPostActivity$StatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/comment/list/CommentListAdapter$CommentTagClickListener;,
        Lcom/narvii/comment/list/CommentListAdapter$ReadMore;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/model/Comment;",
        "Lcom/narvii/model/api/CommentListResponse;",
        ">;",
        "Lcom/narvii/notification/NotificationListener;",
        "Lcom/narvii/comment/post/CommentPostActivity$StatusListener;"
    }
.end annotation


# static fields
.field static BOTTOM_PADDING:Lcom/narvii/util/Tag; = null

.field protected static DIVIDER:Lcom/narvii/util/Tag; = null

.field public static final STATUS_CODE_OPEN_STICKER_DETAIL:I = 0x66

.field static final SUBCOMMENT_PAGE_SIZE:I = 0x19

.field protected static SUBDIVIDER:Lcom/narvii/util/Tag;

.field static SUBLOADING:Lcom/narvii/util/Tag;


# instance fields
.field private account:Lcom/narvii/account/AccountService;

.field private bottomPadding:I

.field private final commentHelper:Lcom/narvii/comment/CommentHelper;

.field private final communityHelper:Lcom/narvii/community/CommunityHelper;

.field public dividerAtTop:Z

.field private final expands:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private focusingCommentRect:Landroid/graphics/Rect;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field public loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

.field public loggingSource:Lcom/narvii/util/logging/LoggingSource;

.field private pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

.field protected sort:I

.field public source:Ljava/lang/String;

.field public sourceComment:Ljava/lang/String;

.field private final subcommentListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/model/api/CommentListResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final subloading:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/narvii/util/http/ApiRequest;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tagClickListener:Lcom/narvii/comment/list/CommentListAdapter$CommentTagClickListener;

.field private final voteCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/comment/list/CommentItem;",
            ">;"
        }
    .end annotation
.end field

.field private final voting:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 102
    new-instance v0, Lcom/narvii/util/Tag;

    const-string v1, "divider"

    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/comment/list/CommentListAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    .line 103
    new-instance v0, Lcom/narvii/util/Tag;

    const-string v1, "subdivider"

    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/comment/list/CommentListAdapter;->SUBDIVIDER:Lcom/narvii/util/Tag;

    .line 104
    new-instance v0, Lcom/narvii/util/Tag;

    const-string v1, "subloading"

    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/comment/list/CommentListAdapter;->SUBLOADING:Lcom/narvii/util/Tag;

    .line 105
    new-instance v0, Lcom/narvii/util/Tag;

    const-string v1, "bottomPadding"

    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/comment/list/CommentListAdapter;->BOTTOM_PADDING:Lcom/narvii/util/Tag;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 134
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->dividerAtTop:Z

    const-string v0, "Comment"

    .line 116
    iput-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->sourceComment:Ljava/lang/String;

    .line 118
    sget-object v0, Lcom/narvii/util/logging/LoggingSource;->CommentDetailView:Lcom/narvii/util/logging/LoggingSource;

    iput-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->subloading:Ljava/util/HashMap;

    .line 126
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->expands:Ljava/util/HashSet;

    .line 127
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->voting:Ljava/util/HashSet;

    const/4 v0, -0x1

    .line 128
    iput v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->sort:I

    .line 371
    new-instance v0, Lcom/narvii/comment/list/CommentListAdapter$2;

    const-class v1, Lcom/narvii/model/api/CommentListResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/comment/list/CommentListAdapter$2;-><init>(Lcom/narvii/comment/list/CommentListAdapter;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->subcommentListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 875
    new-instance v0, Lcom/narvii/comment/list/CommentListAdapter$5;

    invoke-direct {v0, p0}, Lcom/narvii/comment/list/CommentListAdapter$5;-><init>(Lcom/narvii/comment/list/CommentListAdapter;)V

    iput-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->voteCallback:Lcom/narvii/util/Callback;

    const-string v0, "account"

    .line 135
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->account:Lcom/narvii/account/AccountService;

    .line 136
    instance-of v0, p1, Lcom/narvii/list/NVListFragment;

    if-eqz v0, :cond_0

    .line 137
    check-cast p1, Lcom/narvii/list/NVListFragment;

    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->bottomPadding()I

    move-result p1

    iput p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->bottomPadding:I

    .line 140
    new-instance p1, Lcom/narvii/comment/list/CommentListAdapter$1;

    invoke-direct {p1, p0, p0}, Lcom/narvii/comment/list/CommentListAdapter$1;-><init>(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->communityHelper:Lcom/narvii/community/CommunityHelper;

    .line 146
    new-instance p1, Lcom/narvii/comment/CommentHelper;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v0

    invoke-direct {p1, p0, v0}, Lcom/narvii/comment/CommentHelper;-><init>(Lcom/narvii/app/NVContext;Z)V

    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->commentHelper:Lcom/narvii/comment/CommentHelper;

    .line 147
    new-instance p1, Lcom/narvii/account/push/PushNotificationHelper;

    invoke-direct {p1, p0}, Lcom/narvii/account/push/PushNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/comment/list/CommentListAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/narvii/comment/list/CommentListAdapter;->subloading:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/comment/list/CommentListAdapter;)Landroid/widget/ListView;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/narvii/comment/list/CommentListAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/narvii/comment/list/CommentListAdapter;)Landroid/graphics/Rect;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/narvii/comment/list/CommentListAdapter;->focusingCommentRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/narvii/comment/list/CommentListAdapter;I)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->scrollCommentAddAtTop(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/narvii/comment/list/CommentListAdapter;)Ljava/util/HashSet;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/narvii/comment/list/CommentListAdapter;->voting:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/model/Comment;IZ)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/comment/list/CommentListAdapter;->vote(Lcom/narvii/model/Comment;IZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/model/Comment;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->edit(Lcom/narvii/model/Comment;)V

    return-void
.end method

.method static synthetic access$500(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/model/Comment;Z)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/narvii/comment/list/CommentListAdapter;->delete(Lcom/narvii/model/Comment;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/model/Comment;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->reply(Lcom/narvii/model/Comment;)V

    return-void
.end method

.method static synthetic access$700(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/model/Comment;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->flagForReview(Lcom/narvii/model/Comment;)V

    return-void
.end method

.method static synthetic access$800(Lcom/narvii/comment/list/CommentListAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$900(Lcom/narvii/comment/list/CommentListAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method private delete(Lcom/narvii/model/Comment;Z)V
    .locals 2

    if-nez p2, :cond_0

    .line 1041
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0398

    .line 1042
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x1040013

    .line 1043
    new-instance v1, Lcom/narvii/comment/list/CommentListAdapter$8;

    invoke-direct {v1, p0, p1}, Lcom/narvii/comment/list/CommentListAdapter$8;-><init>(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/model/Comment;)V

    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p1, 0x1040009

    .line 1050
    sget-object v0, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1052
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 1054
    :cond_0
    new-instance p2, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1055
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 1056
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->commentHelper:Lcom/narvii/comment/CommentHelper;

    iget-object p2, p2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/comment/CommentHelper;->sendDeleteCommentRequest(Lcom/narvii/model/Comment;Lcom/narvii/util/http/ApiResponseListener;)V

    :goto_0
    return-void
.end method

.method private edit(Lcom/narvii/model/Comment;)V
    .locals 4

    .line 1015
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/narvii/comment/post/CommentPostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1016
    iget v1, p1, Lcom/narvii/model/Comment;->parentType:I

    const-string v2, "parentType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1017
    iget-object v1, p1, Lcom/narvii/model/Comment;->parentId:Ljava/lang/String;

    const-string v2, "parentId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1018
    invoke-virtual {p1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "commentId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1019
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    move-result-object v1

    instance-of v1, v1, Lcom/narvii/model/Blog;

    if-eqz v1, :cond_0

    .line 1020
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Blog;

    iget v1, v1, Lcom/narvii/model/Blog;->type:I

    const-string v2, "parentSubType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1022
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    move-result-object v1

    instance-of v1, v1, Lcom/narvii/model/Feed;

    if-eqz v1, :cond_1

    .line 1023
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "feed"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1026
    :cond_1
    iget v1, p1, Lcom/narvii/model/Comment;->parentType:I

    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Lcom/narvii/util/StatisticHelper;->getStatisticSource(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "stat_parent_type"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1027
    new-instance v1, Lcom/narvii/comment/post/CommentPost;

    invoke-direct {v1, p1}, Lcom/narvii/comment/post/CommentPost;-><init>(Lcom/narvii/model/Comment;)V

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "post"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1028
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListAdapter;->source:Ljava/lang/String;

    const-string v3, "Source"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1029
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->isAnnouncement()Z

    move-result v1

    const-string v3, "isAnnouncement"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1030
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v3, "loggingSource"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1031
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListAdapter;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string v1, "loggingOrigin"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1032
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    .line 1034
    invoke-virtual {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->setFocusingComment(Lcom/narvii/model/Comment;)V

    .line 1035
    invoke-static {p0}, Lcom/narvii/comment/post/CommentPostActivity;->setStatusListener(Lcom/narvii/comment/post/CommentPostActivity$StatusListener;)V

    return-void
.end method

.method private flagForReview(Lcom/narvii/model/Comment;)V
    .locals 2

    .line 1117
    new-instance v0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    move-result-object p1

    .line 1118
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    return-void
.end method

.method private reply(Lcom/narvii/model/Comment;)V
    .locals 8

    .line 1061
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->shouldShowLoginPage(Lcom/narvii/app/NVContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1064
    :cond_0
    sget-object v0, Lcom/narvii/logging/ActSemantic;->reply:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 1065
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/narvii/comment/post/CommentPostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1066
    iget v1, p1, Lcom/narvii/model/Comment;->parentType:I

    const-string v2, "parentType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1067
    iget-object v1, p1, Lcom/narvii/model/Comment;->parentId:Ljava/lang/String;

    const-string v2, "parentId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1068
    invoke-virtual {p1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "respondTo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1069
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->isAnnouncement()Z

    move-result v1

    const-string v2, "isAnnouncement"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1070
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    move-result-object v1

    instance-of v1, v1, Lcom/narvii/model/Feed;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Feed;

    iget v1, v1, Lcom/narvii/model/Feed;->ndcId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1071
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Feed;

    iget v1, v1, Lcom/narvii/model/Feed;->ndcId:I

    const-string v2, "__communityId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1073
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    move-result-object v1

    instance-of v1, v1, Lcom/narvii/model/Blog;

    if-eqz v1, :cond_2

    .line 1074
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Blog;

    iget v1, v1, Lcom/narvii/model/Blog;->type:I

    const-string v2, "parentSubType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1076
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    move-result-object v1

    instance-of v1, v1, Lcom/narvii/model/Feed;

    if-eqz v1, :cond_3

    .line 1077
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "feed"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1079
    :cond_3
    iget v1, p1, Lcom/narvii/model/Comment;->parentType:I

    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Lcom/narvii/util/StatisticHelper;->getStatisticSource(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "stat_parent_type"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1080
    new-instance v1, Lcom/narvii/comment/post/CommentPost;

    invoke-direct {v1}, Lcom/narvii/comment/post/CommentPost;-><init>()V

    .line 1081
    invoke-virtual {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->isSubComment(Lcom/narvii/model/Comment;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1082
    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    const v4, 0x7f0f02a4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    if-nez v7, :cond_4

    const-string v7, ""

    goto :goto_0

    :cond_4
    invoke-virtual {v7}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v7

    :goto_0
    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/narvii/util/StringUtils;->getStringForCommunityLocal(Lcom/narvii/app/NVContext;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1083
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/narvii/comment/post/CommentPost;->prefix:Ljava/lang/String;

    const-string v4, "hint"

    .line 1084
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1086
    :cond_5
    iput-object v2, v1, Lcom/narvii/comment/post/CommentPost;->prefix:Ljava/lang/String;

    .line 1088
    :goto_1
    invoke-virtual {p1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/narvii/comment/post/CommentPost;->respondTo:Ljava/lang/String;

    .line 1089
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "post"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1090
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListAdapter;->source:Ljava/lang/String;

    const-string v3, "Source"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1091
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    if-nez v1, :cond_6

    move-object v1, v2

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    :goto_2
    const-string v3, "loggingSource"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1092
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListAdapter;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    :goto_3
    const-string v1, "loggingOrigin"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1093
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getFeedNdcId()I

    move-result v1

    const-string v2, "ndcId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1094
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v1

    const-string v2, "__interactionScope"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1095
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    .line 1097
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->focusComment()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1098
    invoke-virtual {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->setFocusingComment(Lcom/narvii/model/Comment;)V

    .line 1099
    invoke-static {p0}, Lcom/narvii/comment/post/CommentPostActivity;->setStatusListener(Lcom/narvii/comment/post/CommentPostActivity$StatusListener;)V

    .line 1101
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->onReply()V

    return-void
.end method

.method private scrollCommentAddAtTop()V
    .locals 1

    const/4 v0, -0x1

    .line 1209
    invoke-direct {p0, v0}, Lcom/narvii/comment/list/CommentListAdapter;->scrollCommentAddAtTop(I)V

    return-void
.end method

.method private scrollCommentAddAtTop(I)V
    .locals 7

    .line 1214
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1216
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, -0x1

    if-ge v3, v1, :cond_1

    .line 1217
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/narvii/detail/DetailAdapter;->COMMENT_ADD:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v5, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_1
    if-eq v3, v4, :cond_a

    .line 1223
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1224
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-ne p1, v4, :cond_4

    .line 1228
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    instance-of v4, p1, Lcom/narvii/app/NVFragment;

    if-eqz v4, :cond_2

    .line 1229
    check-cast p1, Lcom/narvii/app/NVFragment;

    .line 1230
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v4

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result p1

    :goto_2
    add-int/2addr p1, v4

    goto :goto_3

    .line 1231
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    if-eqz p1, :cond_3

    .line 1232
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 1233
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    move-result v4

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    move-result p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :cond_4
    :goto_3
    if-ltz v0, :cond_8

    sub-int v0, v3, v0

    if-ltz v0, :cond_8

    if-ge v0, v1, :cond_8

    .line 1242
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1243
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->isNestedScrollMode()Z

    move-result v1

    const/16 v3, 0x190

    if-eqz v1, :cond_6

    .line 1244
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->onNestedCollapse()V

    if-nez v0, :cond_5

    goto :goto_4

    .line 1245
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1246
    :goto_4
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    invoke-virtual {p1, v2, v3}, Landroid/widget/ListView;->smoothScrollBy(II)V

    goto :goto_6

    :cond_6
    if-nez v0, :cond_7

    goto :goto_5

    .line 1248
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v2, v0, p1

    .line 1249
    :goto_5
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    invoke-virtual {p1, v2, v3}, Landroid/widget/ListView;->smoothScrollBy(II)V

    goto :goto_6

    .line 1252
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->isNestedScrollMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1253
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->onNestedCollapse()V

    .line 1255
    :cond_9
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v3, p1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_a
    :goto_6
    return-void
.end method

.method private scrollParentAndReturnUnconsumedDistance(I)I
    .locals 8

    .line 1280
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    instance-of v1, v0, Lcom/narvii/widget/NVListView;

    if-eqz v1, :cond_0

    .line 1281
    check-cast v0, Lcom/narvii/widget/NVListView;

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 1283
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVListView;->startNestedScroll(I)Z

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1284
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/narvii/widget/NVListView;->dispatchNestedPreScroll(II[I[I)Z

    const/4 v1, 0x1

    .line 1285
    aget v3, v2, v1

    sub-int/2addr p1, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1286
    aget v6, v2, v1

    const/4 v7, 0x0

    move-object v2, v0

    move v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/narvii/widget/NVListView;->dispatchNestedScroll(IIII[I)Z

    .line 1287
    invoke-virtual {v0}, Lcom/narvii/widget/NVListView;->stopNestedScroll()V

    :cond_0
    return p1
.end method

.method private vote(Lcom/narvii/model/Comment;IZ)V
    .locals 2

    .line 986
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object p3

    invoke-static {p3}, Lcom/narvii/util/Utils;->shouldShowLoginPage(Lcom/narvii/app/NVContext;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 990
    sget-object p3, Lcom/narvii/logging/ActSemantic;->dislike:Lcom/narvii/logging/ActSemantic;

    goto :goto_0

    :cond_1
    sget-object p3, Lcom/narvii/logging/ActSemantic;->like:Lcom/narvii/logging/ActSemantic;

    :goto_0
    invoke-virtual {p0, p1, p3}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 991
    iget-object p3, p0, Lcom/narvii/comment/list/CommentListAdapter;->voting:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 992
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->notifyDataSetChanged()V

    .line 1000
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object p3

    invoke-static {p3, p1, p2}, Lcom/narvii/util/LiveLayerUtils;->reportVoting(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)V

    .line 1002
    new-instance p3, Lcom/narvii/story/detail/VoteHelper;

    invoke-direct {p3, p0}, Lcom/narvii/story/detail/VoteHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 1003
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    iput-object v0, p3, Lcom/narvii/story/detail/VoteHelper;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    .line 1004
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    iput-object v0, p3, Lcom/narvii/story/detail/VoteHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 1005
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    move-result-object v0

    new-instance v1, Lcom/narvii/comment/list/CommentListAdapter$7;

    invoke-direct {v1, p0, p1}, Lcom/narvii/comment/list/CommentListAdapter$7;-><init>(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/model/Comment;)V

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/narvii/story/detail/VoteHelper;->vote(Lcom/narvii/model/Comment;Ljava/lang/Integer;Lcom/narvii/model/NVObject;Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V

    return-void
.end method


# virtual methods
.method protected allowViewStickerDetail()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected bottomPadding()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected buildList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Comment;",
            ">;)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 296
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 299
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 300
    iget-boolean v1, p0, Lcom/narvii/comment/list/CommentListAdapter;->dividerAtTop:Z

    if-eqz v1, :cond_2

    .line 301
    sget-object v1, Lcom/narvii/comment/list/CommentListAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Comment;

    .line 304
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    iget-object v2, v1, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 306
    iget-object v2, p0, Lcom/narvii/comment/list/CommentListAdapter;->subloading:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 307
    sget-object v2, Lcom/narvii/comment/list/CommentListAdapter;->SUBLOADING:Lcom/narvii/util/Tag;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 308
    :cond_3
    iget v2, v1, Lcom/narvii/model/Comment;->subcommentsCount:I

    iget-object v3, v1, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v2, v3, :cond_4

    iget-boolean v2, v1, Lcom/narvii/model/Comment;->subcommentIsEnd:Z

    if-nez v2, :cond_4

    .line 309
    new-instance v2, Lcom/narvii/comment/list/CommentListAdapter$ReadMore;

    invoke-direct {v2, v1}, Lcom/narvii/comment/list/CommentListAdapter$ReadMore;-><init>(Lcom/narvii/model/Comment;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 311
    :cond_4
    sget-object v2, Lcom/narvii/comment/list/CommentListAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    :goto_1
    iget-object v2, v1, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 315
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 316
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Comment;

    .line 317
    invoke-virtual {v1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/narvii/model/Comment;->headCommentId:Ljava/lang/String;

    .line 318
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 320
    sget-object v3, Lcom/narvii/comment/list/CommentListAdapter;->SUBDIVIDER:Lcom/narvii/util/Tag;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 324
    :cond_6
    sget-object v1, Lcom/narvii/comment/list/CommentListAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    return-object v0
.end method

.method protected commentDisableMedia()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createListEndItem(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 1

    if-nez p3, :cond_1

    .line 614
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->createListEndItem(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    .line 616
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->isQuestionAndAnswer()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 617
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0f036b

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 619
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0f036c

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const p3, 0x7f090b5b

    .line 621
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 622
    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    invoke-virtual {p0, v0}, Lcom/narvii/comment/list/CommentListAdapter;->getListEndItemTextColor(Z)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 623
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    new-instance p2, Lcom/narvii/comment/list/CommentListAdapter$3;

    invoke-direct {p2, p0}, Lcom/narvii/comment/list/CommentListAdapter$3;-><init>(Lcom/narvii/comment/list/CommentListAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1

    :cond_1
    const p3, 0x7f0b04b5

    const-string v0, "placeholder"

    .line 632
    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    .line 633
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const/4 p3, -0x2

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-object p1
.end method

.method public createLoadingItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 600
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->createLoadingItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 601
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->list()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->firstLoadingHeight()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 602
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    if-gt p2, v1, :cond_1

    const/4 p2, -0x2

    :cond_1
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 603
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-object p1
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 227
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 228
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v1

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->apiTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/narvii/comment/CommentHelper;->getBaseCommentPath(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 232
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->sortName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sort"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 233
    instance-of v1, p1, Lcom/narvii/model/CommunityObjectInGlobal;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/narvii/model/CommunityObjectInGlobal;

    invoke-interface {p1}, Lcom/narvii/model/CommunityObjectInGlobal;->getNdcId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 234
    invoke-interface {p1}, Lcom/narvii/model/CommunityObjectInGlobal;->getNdcId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 236
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method protected createSubcommentRequest(Lcom/narvii/model/Comment;IILjava/lang/String;)Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 258
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 261
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v2

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->apiTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, v0, p1}, Lcom/narvii/comment/CommentHelper;->getBaseCommentPath(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/response"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 262
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 263
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "start"

    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 264
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "size"

    invoke-virtual {p1, p3, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 265
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "stoptime"

    .line 266
    invoke-virtual {p1, p2, p4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 268
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/Comment;",
            ">;"
        }
    .end annotation

    .line 454
    const-class v0, Lcom/narvii/model/Comment;

    return-object v0
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Comment;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/model/Comment;",
            ">;"
        }
    .end annotation

    .line 241
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 242
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Comment;

    .line 243
    iget-object v1, v0, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "account"

    .line 244
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 245
    iget-object v0, v0, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 246
    new-instance v1, Lcom/narvii/util/FilterHelper;

    invoke-direct {v1, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 247
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/NVObject;

    invoke-virtual {v1, v2}, Lcom/narvii/util/FilterHelper;->isAccessible(Lcom/narvii/model/NVObject;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 249
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method protected firstLoadingHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected focusComment()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "CommentList"

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 331
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lcom/narvii/comment/list/CommentListAdapter;->bottomPadding:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method protected getFeedNdcId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 336
    iget v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->bottomPadding:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 337
    sget-object p1, Lcom/narvii/comment/list/CommentListAdapter;->BOTTOM_PADDING:Lcom/narvii/util/Tag;

    return-object p1

    .line 339
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 1

    .line 469
    instance-of v0, p1, Lcom/narvii/model/Comment;

    if-eqz v0, :cond_0

    .line 470
    check-cast p1, Lcom/narvii/model/Comment;

    invoke-virtual {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->isSubComment(Lcom/narvii/model/Comment;)Z

    move-result p1

    return p1

    .line 471
    :cond_0
    instance-of v0, p1, Lcom/narvii/comment/list/CommentListAdapter$ReadMore;

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    return p1

    .line 473
    :cond_1
    sget-object v0, Lcom/narvii/comment/list/CommentListAdapter;->SUBDIVIDER:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x3

    return p1

    .line 475
    :cond_2
    sget-object v0, Lcom/narvii/comment/list/CommentListAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x4

    return p1

    .line 477
    :cond_3
    sget-object v0, Lcom/narvii/comment/list/CommentListAdapter;->SUBLOADING:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_4

    const/4 p1, 0x5

    return p1

    :cond_4
    const/4 p1, -0x1

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 509
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    instance-of v0, p3, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 510
    move-object v0, p3

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    .line 512
    :cond_0
    instance-of v0, p1, Lcom/narvii/model/Comment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    .line 513
    check-cast p1, Lcom/narvii/model/Comment;

    .line 514
    invoke-virtual {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->isSubComment(Lcom/narvii/model/Comment;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->subCommentLayoutId()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->headerCommentLayoutId()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 516
    instance-of p3, p2, Lcom/narvii/comment/list/CommentItem;

    if-eqz p3, :cond_2

    move-object p3, p2

    check-cast p3, Lcom/narvii/comment/list/CommentItem;

    goto :goto_1

    :cond_2
    const p3, 0x7f090295

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/comment/list/CommentItem;

    .line 517
    :goto_1
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900e4

    .line 518
    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090cda

    .line 519
    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090764

    .line 520
    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090404

    .line 521
    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090572

    .line 522
    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090573

    .line 523
    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090574

    .line 524
    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090575

    .line 525
    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090576

    .line 526
    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->isAnnouncement()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 529
    invoke-virtual {p3}, Lcom/narvii/comment/list/CommentItem;->disableVote()V

    goto :goto_2

    .line 531
    :cond_3
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->voteCallback:Lcom/narvii/util/Callback;

    iput-object v0, p3, Lcom/narvii/comment/list/CommentItem;->voteCallback:Lcom/narvii/util/Callback;

    .line 534
    :goto_2
    invoke-virtual {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->isSubComment(Lcom/narvii/model/Comment;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->isQuestionAndAnswer()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 535
    :cond_4
    invoke-virtual {p3, v1}, Lcom/narvii/comment/list/CommentItem;->setHasVotes(Z)V

    if-eqz v1, :cond_5

    const v0, 0x7f090ce3

    .line 537
    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090cd9

    .line 539
    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 542
    :cond_5
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->voting:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p3, v0}, Lcom/narvii/comment/list/CommentItem;->setVoting(Z)V

    .line 543
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 544
    iget-object v1, p1, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    if-nez v1, :cond_6

    move-object v1, v2

    goto :goto_3

    :cond_6
    iget-object v1, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    :goto_3
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p3, v0}, Lcom/narvii/comment/list/CommentItem;->setIsMine(Z)V

    .line 545
    invoke-virtual {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->isOwner(Lcom/narvii/model/Comment;)Z

    move-result v0

    invoke-virtual {p3, v0}, Lcom/narvii/comment/list/CommentItem;->setIsOwner(Z)V

    .line 546
    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    iget v1, p0, Lcom/narvii/list/NVAdapter;->backgroundColor:I

    invoke-virtual {p3, v0, v1}, Lcom/narvii/comment/list/CommentItem;->setDarkTheme(ZI)V

    .line 547
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->tagClickListener:Lcom/narvii/comment/list/CommentListAdapter$CommentTagClickListener;

    if-nez v0, :cond_7

    .line 548
    new-instance v0, Lcom/narvii/comment/list/CommentListAdapter$CommentTagClickListener;

    invoke-direct {v0, p0, v2}, Lcom/narvii/comment/list/CommentListAdapter$CommentTagClickListener;-><init>(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/comment/list/CommentListAdapter$1;)V

    iput-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->tagClickListener:Lcom/narvii/comment/list/CommentListAdapter$CommentTagClickListener;

    .line 550
    :cond_7
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->tagClickListener:Lcom/narvii/comment/list/CommentListAdapter$CommentTagClickListener;

    invoke-virtual {p3, p1, v0}, Lcom/narvii/comment/list/CommentItem;->setComment(Lcom/narvii/model/Comment;Lcom/narvii/util/text/OnTagClickListener;)V

    .line 552
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->expands:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 553
    invoke-virtual {p3, p1}, Lcom/narvii/comment/list/CommentItem;->setExpand(Z)V

    return-object p2

    .line 555
    :cond_8
    instance-of v0, p1, Lcom/narvii/comment/list/CommentListAdapter$ReadMore;

    if-eqz v0, :cond_a

    .line 556
    check-cast p1, Lcom/narvii/comment/list/CommentListAdapter$ReadMore;

    const v0, 0x7f0b00f0

    .line 557
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090b5b

    .line 558
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 559
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 560
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f02a3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 561
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/narvii/comment/list/CommentListAdapter$ReadMore;->head:Lcom/narvii/model/Comment;

    iget v2, p1, Lcom/narvii/model/Comment;->subcommentsCount:I

    iget-object p1, p1, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 563
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz v0, :cond_9

    const v0, 0x7f060209

    goto :goto_4

    :cond_9
    const v0, 0x7f060207

    :goto_4
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p2

    .line 566
    :cond_a
    sget-object v0, Lcom/narvii/comment/list/CommentListAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_c

    .line 567
    iget-boolean p1, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz p1, :cond_b

    const p1, 0x7f0b04b8

    goto :goto_5

    :cond_b
    const p1, 0x7f0b04b7

    .line 568
    :goto_5
    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 569
    :cond_c
    sget-object v0, Lcom/narvii/comment/list/CommentListAdapter;->SUBDIVIDER:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_e

    const p1, 0x7f0b00f1

    .line 570
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090677

    .line 571
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz v0, :cond_d

    const v0, 0x7f06011d

    goto :goto_6

    :cond_d
    const v0, 0x7f06011c

    :goto_6
    invoke-static {p3, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p1

    .line 573
    :cond_e
    sget-object v0, Lcom/narvii/comment/list/CommentListAdapter;->SUBLOADING:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_f

    const p1, 0x7f0b00f3

    .line 574
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 575
    :cond_f
    sget-object v0, Lcom/narvii/comment/list/CommentListAdapter;->BOTTOM_PADDING:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_10

    const p1, 0x7f0b04b5

    .line 576
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 577
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p3, p0, Lcom/narvii/comment/list/CommentListAdapter;->bottomPadding:I

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 578
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-object p1

    :cond_10
    return-object v2
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 345
    invoke-virtual {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/narvii/comment/list/CommentListAdapter;->BOTTOM_PADDING:Lcom/narvii/util/Tag;

    if-ne v0, v1, :cond_0

    .line 346
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getViewTypeCount()I

    move-result p1

    return p1

    .line 348
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method protected getListEndItemTextColor(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const p1, -0x777778

    :goto_0
    return p1
.end method

.method protected abstract getParent()Lcom/narvii/model/NVObject;
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 354
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected headerCommentLayoutId()I
    .locals 1

    const v0, 0x7f0b00ef

    return v0
.end method

.method protected isAnnouncement()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 486
    invoke-virtual {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 487
    sget-object v1, Lcom/narvii/comment/list/CommentListAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/narvii/comment/list/CommentListAdapter;->SUBDIVIDER:Lcom/narvii/util/Tag;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/narvii/comment/list/CommentListAdapter;->BOTTOM_PADDING:Lcom/narvii/util/Tag;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 490
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->isEnabled(I)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected isNestedScrollMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isOwner(Lcom/narvii/model/Comment;)Z
    .locals 5

    .line 170
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 174
    :cond_0
    iget v2, p1, Lcom/narvii/model/Comment;->parentNdcId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 175
    instance-of v4, v0, Lcom/narvii/model/Feed;

    if-eqz v4, :cond_1

    .line 176
    move-object v2, v0

    check-cast v2, Lcom/narvii/model/Feed;

    iget v2, v2, Lcom/narvii/model/Feed;->ndcId:I

    :cond_1
    if-ne v2, v3, :cond_2

    const-string v2, "config"

    .line 180
    invoke-virtual {p0, v2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/config/ConfigService;

    .line 181
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v2

    .line 184
    :cond_2
    iget-object v3, p1, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    if-eqz v3, :cond_3

    iget-object v3, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p1, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    iget p1, p1, Lcom/narvii/model/User;->ndcId:I

    if-ne v2, p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method protected isQuestionAndAnswer()Z
    .locals 2

    .line 188
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    instance-of v1, v0, Lcom/narvii/model/Blog;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/narvii/model/Blog;

    iget v0, v0, Lcom/narvii/model/Blog;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isSubComment(Lcom/narvii/model/Comment;)Z
    .locals 0

    .line 358
    iget-object p1, p1, Lcom/narvii/model/Comment;->headCommentId:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/comment/list/CommentListAdapter;->buildList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->list:Ljava/util/List;

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->list:Ljava/util/List;

    return-object v0
.end method

.method protected loadSubComment(Lcom/narvii/model/Comment;)V
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->subloading:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 364
    :cond_0
    iget v0, p1, Lcom/narvii/model/Comment;->subcommentStart:I

    const/16 v1, 0x19

    iget-object v2, p1, Lcom/narvii/model/Comment;->subcommentStoptime:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/narvii/comment/list/CommentListAdapter;->createSubcommentRequest(Lcom/narvii/model/Comment;IILjava/lang/String;)Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListAdapter;->subloading:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "api"

    .line 366
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 367
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListAdapter;->subcommentListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 368
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 280
    iput-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->list:Ljava/util/List;

    .line 281
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onHeightFix(Lcom/narvii/comment/post/CommentPostActivity;)V
    .locals 5

    .line 1162
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->focusingCommentRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    instance-of v1, v0, Lcom/narvii/list/NVListFragment;

    if-eqz v1, :cond_0

    .line 1163
    check-cast v0, Lcom/narvii/list/NVListFragment;

    invoke-virtual {v0}, Lcom/narvii/list/NVListFragment;->getHoverCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x1020002

    .line 1167
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1168
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->bottomPadding()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->bottomPadding:I

    .line 1169
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->notifyDataSetChanged()V

    .line 1171
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    if-nez v0, :cond_2

    return-void

    .line 1174
    :cond_2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->focusingCommentRect:Landroid/graphics/Rect;

    if-nez v0, :cond_3

    .line 1175
    invoke-direct {p0}, Lcom/narvii/comment/list/CommentListAdapter;->scrollCommentAddAtTop()V

    goto :goto_1

    .line 1179
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/comment/post/CommentPostActivity;->getActiveSpaceHeight()I

    move-result v0

    const-wide/16 v1, 0x0

    .line 1181
    iget-object v3, p0, Lcom/narvii/comment/list/CommentListAdapter;->focusingCommentRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-le v3, v0, :cond_6

    sub-int/2addr v3, v0

    .line 1184
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    .line 1185
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->scrollListBy(I)V

    .line 1187
    :cond_4
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->focusingCommentRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    neg-int v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1188
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->isNestedScrollMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1189
    invoke-direct {p0, v3}, Lcom/narvii/comment/list/CommentListAdapter;->scrollParentAndReturnUnconsumedDistance(I)I

    move-result v3

    .line 1191
    :cond_5
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    const/16 v1, 0x190

    invoke-virtual {v0, v3, v1}, Landroid/widget/ListView;->smoothScrollBy(II)V

    const-wide/16 v1, 0xc8

    .line 1195
    :cond_6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1196
    iget-object v3, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1197
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/narvii/comment/list/CommentListAdapter;->focusingCommentRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 1198
    iget-object v3, p0, Lcom/narvii/comment/list/CommentListAdapter;->focusingCommentRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 1199
    new-instance v3, Lcom/narvii/comment/list/CommentListAdapter$9;

    invoke-direct {v3, p0, p1, v0}, Lcom/narvii/comment/list/CommentListAdapter$9;-><init>(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/comment/post/CommentPostActivity;Landroid/graphics/Rect;)V

    invoke-static {v3, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :goto_1
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 645
    instance-of v4, v0, Lcom/narvii/model/Comment;

    if-eqz v4, :cond_2e

    .line 646
    move-object v4, v0

    check-cast v4, Lcom/narvii/model/Comment;

    const/4 v5, 0x0

    if-nez v3, :cond_0

    return v5

    :cond_0
    const/4 v6, 0x2

    const v7, 0x7f090295

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-eq v3, v2, :cond_17

    .line 651
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v10

    if-ne v10, v7, :cond_1

    goto/16 :goto_7

    .line 801
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v7

    const v10, 0x7f090404

    if-ne v7, v10, :cond_3

    .line 802
    iget-object v0, v1, Lcom/narvii/comment/list/CommentListAdapter;->expands:Ljava/util/HashSet;

    invoke-virtual {v4}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 803
    iget-object v0, v1, Lcom/narvii/comment/list/CommentListAdapter;->expands:Ljava/util/HashSet;

    invoke-virtual {v4}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 805
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/comment/list/CommentListAdapter;->notifyDataSetChanged()V

    return v9

    .line 807
    :cond_3
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v7

    const v10, 0x7f0900e4

    if-eq v7, v10, :cond_12

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v7

    const v10, 0x7f090764

    if-ne v7, v10, :cond_4

    goto/16 :goto_6

    .line 823
    :cond_4
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v7

    const v10, 0x7f090572

    const v11, 0x7f090576

    const v12, 0x7f090575

    const v13, 0x7f090574

    const v14, 0x7f090573

    if-eq v7, v10, :cond_c

    .line 824
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v7

    if-eq v7, v14, :cond_c

    .line 825
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v7

    if-eq v7, v13, :cond_c

    .line 826
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v7

    if-eq v7, v12, :cond_c

    .line 827
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v11, :cond_5

    goto :goto_3

    .line 852
    :cond_5
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f090ce3

    const v8, 0x7f090cd9

    if-eq v6, v7, :cond_8

    .line 853
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v6, v8, :cond_6

    goto :goto_1

    .line 861
    :cond_6
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f090cda

    if-ne v6, v7, :cond_2f

    .line 862
    iget v6, v4, Lcom/narvii/model/Comment;->votedValue:I

    if-ne v6, v9, :cond_7

    goto :goto_0

    :cond_7
    const/4 v5, 0x1

    :goto_0
    invoke-direct {v1, v4, v5, v9}, Lcom/narvii/comment/list/CommentListAdapter;->vote(Lcom/narvii/model/Comment;IZ)V

    goto/16 :goto_17

    .line 854
    :cond_8
    :goto_1
    iget-object v0, v1, Lcom/narvii/comment/list/CommentListAdapter;->voting:Ljava/util/HashSet;

    invoke-virtual {v4}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v9

    .line 857
    :cond_9
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v8, :cond_a

    const/4 v0, -0x1

    goto :goto_2

    :cond_a
    const/4 v0, 0x1

    .line 858
    :goto_2
    iget v2, v4, Lcom/narvii/model/Comment;->votedValue:I

    mul-int v2, v2, v0

    if-lez v2, :cond_b

    const/4 v0, 0x0

    :cond_b
    invoke-direct {v1, v4, v0, v5}, Lcom/narvii/comment/list/CommentListAdapter;->vote(Lcom/narvii/model/Comment;IZ)V

    return v9

    .line 829
    :cond_c
    :goto_3
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v14, :cond_d

    const/4 v5, 0x1

    goto :goto_4

    .line 831
    :cond_d
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v13, :cond_e

    const/4 v5, 0x2

    goto :goto_4

    .line 833
    :cond_e
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v12, :cond_f

    const/4 v5, 0x3

    goto :goto_4

    .line 835
    :cond_f
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v11, :cond_10

    const/4 v5, 0x4

    .line 839
    :cond_10
    :goto_4
    iget-object v0, v4, Lcom/narvii/model/Comment;->mediaList:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    .line 840
    invoke-virtual {v0}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 841
    const-class v2, Lcom/narvii/optionmenu/OptionMenuFragment;

    invoke-static {v0, v4, v2}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    .line 843
    :cond_11
    new-instance v0, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/narvii/media/MediaGalleryOptionActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 844
    invoke-static {v4}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "parent"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 845
    const-class v2, Lcom/narvii/model/Comment;

    const-string v3, "parentClass"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 846
    iget-object v2, v4, Lcom/narvii/model/Comment;->mediaList:Ljava/util/List;

    .line 847
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "list"

    .line 846
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "position"

    .line 848
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 849
    invoke-virtual {v1, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    :goto_5
    return v9

    .line 808
    :cond_12
    :goto_6
    iget-object v0, v4, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    if-eqz v0, :cond_13

    iget-boolean v0, v0, Lcom/narvii/model/User;->isGlobal:Z

    if-eqz v0, :cond_13

    const/4 v5, 0x1

    :cond_13
    const-string v0, "config"

    .line 809
    invoke-virtual {v1, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 810
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    if-nez v5, :cond_14

    if-eqz v0, :cond_14

    .line 811
    iget-object v2, v1, Lcom/narvii/comment/list/CommentListAdapter;->communityHelper:Lcom/narvii/community/CommunityHelper;

    invoke-virtual {v2, v0}, Lcom/narvii/community/CommunityHelper;->checkCommunityJoined(I)Z

    move-result v0

    if-nez v0, :cond_14

    return v9

    .line 814
    :cond_14
    iget-object v0, v4, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    sget-object v2, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v1, v0, v2}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 815
    iget-object v0, v4, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    invoke-static {v1, v0}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_15

    return v9

    .line 817
    :cond_15
    iget-object v2, v1, Lcom/narvii/comment/list/CommentListAdapter;->sourceComment:Ljava/lang/String;

    const-string v3, "Source"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 818
    iget-object v2, v1, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    instance-of v3, v2, Lcom/narvii/detail/FeedDetailFragment;

    if-eqz v3, :cond_16

    .line 819
    check-cast v2, Lcom/narvii/detail/FeedDetailFragment;

    iget-object v2, v2, Lcom/narvii/detail/FeedDetailFragment;->blockPass:Lcom/narvii/util/statistics/TmpValue;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 821
    :cond_16
    invoke-virtual {v1, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v9

    .line 652
    :cond_17
    :goto_7
    iget v0, v4, Lcom/narvii/model/Comment;->type:I

    if-ne v0, v8, :cond_18

    invoke-virtual {v4}, Lcom/narvii/model/Comment;->getCommentSticker()Lcom/narvii/model/Sticker;

    move-result-object v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_8

    :cond_18
    const/4 v0, 0x0

    .line 653
    :goto_8
    iget-object v3, v4, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    const/4 v8, 0x0

    if-nez v3, :cond_19

    move-object v3, v8

    goto :goto_9

    :cond_19
    iget-object v3, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    :goto_9
    iget-object v10, v1, Lcom/narvii/comment/list/CommentListAdapter;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v10}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 654
    iget-object v10, v1, Lcom/narvii/comment/list/CommentListAdapter;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v10}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v10

    if-eqz v10, :cond_1a

    iget-object v10, v1, Lcom/narvii/comment/list/CommentListAdapter;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v10}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v10

    invoke-virtual {v10}, Lcom/narvii/model/User;->isCurator()Z

    move-result v10

    if-eqz v10, :cond_1a

    const/4 v10, 0x1

    goto :goto_a

    :cond_1a
    const/4 v10, 0x0

    .line 655
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/comment/list/CommentListAdapter;->ownParent()Z

    move-result v11

    if-eqz v0, :cond_1b

    if-nez v3, :cond_1b

    if-nez v10, :cond_1b

    if-nez v11, :cond_1b

    .line 657
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f029e

    invoke-static {v0, v2, v9}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    return v9

    :cond_1b
    const/4 v0, 0x7

    new-array v10, v0, [I

    .line 663
    invoke-virtual {v4}, Lcom/narvii/model/Comment;->isStickerComment()Z

    move-result v12

    .line 664
    instance-of v0, v2, Lcom/narvii/comment/list/CommentItem;

    if-eqz v0, :cond_1c

    .line 665
    move-object v0, v2

    check-cast v0, Lcom/narvii/comment/list/CommentItem;

    goto :goto_b

    .line 667
    :cond_1c
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/comment/list/CommentItem;

    :goto_b
    if-eqz v0, :cond_1d

    .line 671
    invoke-virtual {v0}, Lcom/narvii/comment/list/CommentItem;->hasVotes()Z

    move-result v0

    goto :goto_c

    :cond_1d
    const/4 v0, 0x0

    .line 673
    :goto_c
    new-instance v7, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v7, v13}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    if-eqz v3, :cond_1e

    const v13, 0x7f0f03cd

    aput v13, v10, v5

    .line 676
    invoke-virtual {v7, v13, v5}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    const/4 v13, 0x1

    goto :goto_d

    :cond_1e
    const/4 v13, 0x0

    :goto_d
    add-int/lit8 v14, v13, 0x1

    const v15, 0x7f0f0ede

    .line 678
    aput v15, v10, v13

    .line 679
    invoke-virtual {v7, v15, v5}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    if-nez v0, :cond_20

    .line 680
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/comment/list/CommentListAdapter;->isAnnouncement()Z

    move-result v13

    if-nez v13, :cond_20

    .line 681
    iget v13, v4, Lcom/narvii/model/Comment;->votedValue:I

    if-ne v13, v9, :cond_1f

    add-int/lit8 v13, v14, 0x1

    const v15, 0x7f0f1105

    .line 682
    aput v15, v10, v14

    const v14, 0x7f0f1105

    .line 683
    invoke-virtual {v7, v14, v5}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    goto :goto_e

    :cond_1f
    add-int/lit8 v13, v14, 0x1

    const v15, 0x7f0f0ae0

    .line 685
    aput v15, v10, v14

    const v14, 0x7f0f0ae0

    .line 686
    invoke-virtual {v7, v14, v5}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    goto :goto_e

    :cond_20
    move v13, v14

    :goto_e
    if-eqz v0, :cond_21

    add-int/lit8 v0, v13, 0x1

    const v14, 0x7f0f02a6

    .line 690
    aput v14, v10, v13

    .line 691
    invoke-virtual {v7, v14, v5}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    :goto_f
    move v13, v0

    goto :goto_10

    .line 692
    :cond_21
    iget v0, v4, Lcom/narvii/model/Comment;->votesSum:I

    if-lez v0, :cond_22

    add-int/lit8 v0, v13, 0x1

    const v14, 0x7f0f02a5

    .line 693
    aput v14, v10, v13

    .line 694
    invoke-virtual {v7, v14, v5}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    goto :goto_f

    .line 697
    :cond_22
    :goto_10
    invoke-virtual {v4}, Lcom/narvii/model/Comment;->isStickerComment()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {v4}, Lcom/narvii/model/Comment;->getCommentSticker()Lcom/narvii/model/Sticker;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 699
    iget-object v0, v4, Lcom/narvii/model/Comment;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v6, v6, [Ljava/lang/String;

    const-string v14, "sticker"

    aput-object v14, v6, v5

    const-string v14, "stickerCollectionSummary"

    aput-object v14, v6, v9

    invoke-static {v0, v6}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 702
    :try_start_0
    sget-object v6, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v14, Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {v6, v0, v14}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_11

    :catch_0
    move-exception v0

    .line 704
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_23
    move-object v0, v8

    :goto_11
    if-eqz v0, :cond_24

    .line 707
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->canBeFlagged()Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_12

    :cond_24
    const/4 v0, 0x0

    goto :goto_13

    :cond_25
    :goto_12
    const/4 v0, 0x1

    :goto_13
    if-nez v3, :cond_26

    .line 709
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/comment/list/CommentListAdapter;->isAnnouncement()Z

    move-result v6

    if-nez v6, :cond_26

    if-eqz v0, :cond_26

    add-int/lit8 v0, v13, 0x1

    const v6, 0x7f0f06d5

    .line 710
    aput v6, v10, v13

    .line 711
    invoke-virtual {v7, v6, v5}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    move v13, v0

    :cond_26
    if-nez v3, :cond_27

    if-eqz v11, :cond_28

    :cond_27
    add-int/lit8 v0, v13, 0x1

    const v3, 0x7f0f0348

    .line 714
    aput v3, v10, v13

    .line 715
    invoke-virtual {v7, v3, v9}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    move v13, v0

    :cond_28
    if-eqz v12, :cond_2a

    .line 718
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/comment/list/CommentListAdapter;->allowViewStickerDetail()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {v4}, Lcom/narvii/model/Comment;->getCommentSticker()Lcom/narvii/model/Sticker;

    move-result-object v0

    if-eqz v0, :cond_29

    add-int/lit8 v0, v13, 0x1

    const v3, 0x7f0f1166

    .line 719
    aput v3, v10, v13

    .line 720
    invoke-virtual {v7, v3, v5}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    goto :goto_14

    :cond_29
    move v0, v13

    goto :goto_14

    :cond_2a
    add-int/lit8 v0, v13, 0x1

    const v3, 0x7f0f02f4

    .line 723
    aput v3, v10, v13

    .line 724
    invoke-virtual {v7, v3, v5}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 727
    :goto_14
    iget-object v3, v1, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    const-string v6, "account"

    invoke-interface {v3, v6}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/account/AccountService;

    .line 728
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v6

    if-eqz v6, :cond_2b

    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/model/User;->isCurator()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v3

    if-nez v3, :cond_2b

    const/4 v3, 0x1

    goto :goto_15

    :cond_2b
    const/4 v3, 0x0

    :goto_15
    if-eqz v3, :cond_2c

    .line 729
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/comment/list/CommentListAdapter;->isAnnouncement()Z

    move-result v3

    if-nez v3, :cond_2c

    const v3, 0x7f0f0094

    .line 730
    aput v3, v10, v0

    const v0, 0x7f0f0094

    const v3, 0x7f0b0167

    .line 731
    invoke-virtual {v7, v0, v5, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(III)V

    .line 733
    :cond_2c
    new-instance v0, Lcom/narvii/comment/list/CommentListAdapter$4;

    invoke-direct {v0, v1, v10, v4}, Lcom/narvii/comment/list/CommentListAdapter$4;-><init>(Lcom/narvii/comment/list/CommentListAdapter;[ILcom/narvii/model/Comment;)V

    invoke-virtual {v7, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 793
    :try_start_1
    invoke-virtual {v7}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_16

    :catchall_0
    move-exception v0

    move-object v3, v0

    const-string v0, "comment"

    .line 795
    invoke-static {v0, v3}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 797
    :goto_16
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/widget/NVListView;

    if-eqz v0, :cond_2d

    .line 798
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {v0, v2}, Lcom/narvii/widget/NVListView;->startBlinkLong(Landroid/view/View;)V

    :cond_2d
    return v9

    .line 864
    :cond_2e
    instance-of v4, v0, Lcom/narvii/comment/list/CommentListAdapter$ReadMore;

    if-eqz v4, :cond_2f

    .line 865
    move-object v4, v0

    check-cast v4, Lcom/narvii/comment/list/CommentListAdapter$ReadMore;

    iget-object v4, v4, Lcom/narvii/comment/list/CommentListAdapter$ReadMore;->head:Lcom/narvii/model/Comment;

    invoke-virtual {v1, v4}, Lcom/narvii/comment/list/CommentListAdapter;->loadSubComment(Lcom/narvii/model/Comment;)V

    .line 868
    :cond_2f
    :goto_17
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method protected onNestedCollapse()V
    .locals 0

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 7

    .line 895
    iget-object v0, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    const-string v1, "new"

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v3, v0, Lcom/narvii/model/Comment;

    if-eqz v3, :cond_9

    .line 896
    check-cast v0, Lcom/narvii/model/Comment;

    .line 898
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v3

    iget v4, v0, Lcom/narvii/model/Comment;->ndcId:I

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eq v3, v4, :cond_1

    return-void

    .line 901
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 902
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 903
    invoke-virtual {p0, v0}, Lcom/narvii/comment/list/CommentListAdapter;->isSubComment(Lcom/narvii/model/Comment;)Z

    move-result v3

    const-string v4, "edit"

    if-eqz v3, :cond_7

    .line 904
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v3

    iget-object v5, v0, Lcom/narvii/model/Comment;->headCommentId:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_9

    .line 906
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Comment;

    .line 908
    iget-object v5, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string/jumbo v6, "update"

    if-eq v5, v6, :cond_6

    if-ne v5, v4, :cond_2

    goto :goto_1

    :cond_2
    if-ne v5, v1, :cond_5

    .line 919
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 920
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 921
    iget-object v5, v3, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    if-eqz v5, :cond_4

    .line 922
    invoke-virtual {v0}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 925
    :cond_3
    iget-object v0, v3, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 927
    :cond_4
    iput-object v4, v3, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    .line 928
    iget v0, v3, Lcom/narvii/model/Comment;->subcommentsCount:I

    add-int/2addr v0, v2

    iput v0, v3, Lcom/narvii/model/Comment;->subcommentsCount:I

    .line 929
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_2

    :cond_5
    const-string v4, "delete"

    if-ne v5, v4, :cond_9

    .line 932
    iget-object v4, v3, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    if-eqz v4, :cond_9

    .line 933
    invoke-virtual {v0}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_9

    .line 934
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 935
    iget-object v5, v3, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 936
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 937
    iput-object v4, v3, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    .line 938
    iget v0, v3, Lcom/narvii/model/Comment;->subcommentsCount:I

    sub-int/2addr v0, v2

    iput v0, v3, Lcom/narvii/model/Comment;->subcommentsCount:I

    .line 939
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_2

    .line 910
    :cond_6
    :goto_1
    iget-object v4, v3, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    if-eqz v4, :cond_9

    .line 911
    invoke-virtual {v0}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_9

    .line 912
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 913
    iget-object v6, v3, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 914
    invoke-virtual {v5, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 915
    iput-object v5, v3, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    .line 916
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 944
    :cond_7
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    if-ne v0, v4, :cond_8

    .line 946
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    .line 947
    iget-object v3, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_8

    .line 949
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Comment;

    .line 950
    iget-object v3, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/narvii/model/Comment;

    invoke-virtual {v3}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Comment;

    .line 951
    iget-boolean v4, v0, Lcom/narvii/model/Comment;->subcommentIsEnd:Z

    iput-boolean v4, v3, Lcom/narvii/model/Comment;->subcommentIsEnd:Z

    .line 952
    iget v4, v0, Lcom/narvii/model/Comment;->subcommentsCount:I

    iput v4, v3, Lcom/narvii/model/Comment;->subcommentsCount:I

    .line 953
    iget v4, v0, Lcom/narvii/model/Comment;->subcommentStart:I

    iput v4, v3, Lcom/narvii/model/Comment;->subcommentStart:I

    .line 954
    iget-object v4, v0, Lcom/narvii/model/Comment;->subcommentStoptime:Ljava/lang/String;

    iput-object v4, v3, Lcom/narvii/model/Comment;->subcommentStoptime:Ljava/lang/String;

    .line 955
    iget-object v0, v0, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    iput-object v0, v3, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    .line 956
    new-instance v0, Lcom/narvii/notification/Notification;

    iget-object p1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    invoke-direct {v0, p1, v3}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    move-object p1, v0

    .line 960
    :cond_8
    invoke-virtual {p0, p1, v5}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 962
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/list/NVListFragment;

    if-eqz v0, :cond_9

    .line 963
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->focusingCommentRect:Landroid/graphics/Rect;

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v0

    check-cast v0, Lcom/narvii/list/NVListFragment;

    invoke-virtual {v0}, Lcom/narvii/list/NVListFragment;->getHoverCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 964
    new-instance v0, Lcom/narvii/comment/list/CommentListAdapter$6;

    invoke-direct {v0, p0}, Lcom/narvii/comment/list/CommentListAdapter$6;-><init>(Lcom/narvii/comment/list/CommentListAdapter;)V

    const-wide/16 v3, 0xc8

    invoke-static {v0, v3, v4}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 977
    :cond_9
    :goto_2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    if-ne v0, v1, :cond_a

    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/Comment;

    if-eqz v0, :cond_a

    .line 978
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/list/NVListFragment;

    if-eqz v0, :cond_a

    .line 979
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v0

    check-cast v0, Lcom/narvii/list/NVListFragment;

    iget-object p1, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    const-wide/16 v3, 0x190

    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/narvii/list/NVListFragment;->blinkItem(Ljava/lang/String;ZJ)V

    :cond_a
    return-void
.end method

.method public onPostDone(Lcom/narvii/comment/post/CommentPostActivity;Z)V
    .locals 0

    const/4 p1, 0x0

    .line 1150
    invoke-static {p1}, Lcom/narvii/comment/post/CommentPostActivity;->setStatusListener(Lcom/narvii/comment/post/CommentPostActivity$StatusListener;)V

    .line 1151
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->focusingCommentRect:Landroid/graphics/Rect;

    .line 1152
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->bottomPadding()I

    move-result p1

    iput p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->bottomPadding:I

    .line 1153
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->notifyDataSetChanged()V

    if-eqz p2, :cond_0

    .line 1155
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    const-string p2, "scenario_comment"

    invoke-virtual {p1, p2}, Lcom/narvii/account/push/PushNotificationHelper;->showRemindDialogIfNeeded(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method protected onReply()V
    .locals 0

    return-void
.end method

.method protected onViewStickerClicked(Landroid/content/Intent;)V
    .locals 0

    .line 872
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected ownParent()Z
    .locals 3

    .line 156
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "account"

    .line 159
    invoke-virtual {p0, v2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/account/AccountService;

    .line 160
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 163
    :cond_1
    iget-object v1, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public resetList()V
    .locals 3

    const-string v0, "api"

    .line 443
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 444
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListAdapter;->subloading:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiRequest;

    .line 445
    invoke-virtual {v0, v2}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    goto :goto_0

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->subloading:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 448
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->notifyDataSetChanged()V

    .line 449
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/CommentListResponse;",
            ">;"
        }
    .end annotation

    .line 459
    const-class v0, Lcom/narvii/model/api/CommentListResponse;

    return-object v0
.end method

.method setFocusingComment(Lcom/narvii/model/Comment;)V
    .locals 7

    .line 1126
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    return-void

    .line 1129
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1130
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    const/4 v2, 0x0

    .line 1131
    iget-object v3, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    :goto_0
    if-ge v2, v3, :cond_2

    add-int v5, v2, v0

    if-ge v5, v4, :cond_2

    if-ltz v0, :cond_2

    .line 1132
    invoke-interface {v1, v5}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    .line 1133
    instance-of v6, v5, Lcom/narvii/model/Comment;

    if-eqz v6, :cond_1

    check-cast v5, Lcom/narvii/model/Comment;

    invoke-static {v5, p1}, Lcom/narvii/util/Utils;->isIdEquals(Lcom/narvii/model/NVObject;Lcom/narvii/model/NVObject;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1134
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1136
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1137
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1138
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/narvii/comment/list/CommentListAdapter;->focusingCommentRect:Landroid/graphics/Rect;

    .line 1139
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListAdapter;->focusingCommentRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1140
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1141
    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1142
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListAdapter;->focusingCommentRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public setSort(I)V
    .locals 1

    .line 272
    iget v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->sort:I

    if-eq v0, p1, :cond_0

    .line 273
    iput p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->sort:I

    .line 274
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->resetList()V

    :cond_0
    return-void
.end method

.method public showListEnd(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public sort()I
    .locals 2

    .line 193
    iget v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->sort:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->isQuestionAndAnswer()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 197
    :cond_1
    iget v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->sort:I

    return v0
.end method

.method protected sortName()Ljava/lang/String;
    .locals 3

    .line 208
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->sort()I

    move-result v0

    const-string v1, "newest"

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v0, "vote"

    return-object v0

    :cond_1
    const-string v0, "oldest"

    return-object v0

    :cond_2
    return-object v1
.end method

.method protected subCommentLayoutId()I
    .locals 1

    const v0, 0x7f0b00f2

    return v0
.end method
