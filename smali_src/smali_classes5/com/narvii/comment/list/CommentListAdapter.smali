.class public abstract Lcom/narvii/comment/list/CommentListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;
.implements Lcom/narvii/comment/post/CommentPostActivity$StatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/comment/list/CommentListAdapter$ReadMore;,
        Lcom/narvii/comment/list/CommentListAdapter$CommentTagClickListener;
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

.field public static final COMMENT:Ljava/lang/String; = "comment"

.field protected static DIVIDER:Lcom/narvii/util/Tag; = null

.field public static final STATUS_CODE_OPEN_STICKER_DETAIL:I = 0x66

.field static final SUBCOMMENT_PAGE_SIZE:I = 0x19

.field protected static SUBDIVIDER:Lcom/narvii/util/Tag; = null

.field static SUBLOADING:Lcom/narvii/util/Tag; = null

.field public static final TYPE_ADS:I = 0x18


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

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/Tag;

    .line 3
    .line 4
    const-string v1, "divider"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    sput-object v0, Lcom/narvii/comment/list/CommentListAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    .line 10
    .line 11
    new-instance v0, Lcom/narvii/util/Tag;

    .line 12
    .line 13
    const-string v1, "subdivider"

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    sput-object v0, Lcom/narvii/comment/list/CommentListAdapter;->SUBDIVIDER:Lcom/narvii/util/Tag;

    .line 19
    .line 20
    new-instance v0, Lcom/narvii/util/Tag;

    .line 21
    .line 22
    const-string v1, "subloading"

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    sput-object v0, Lcom/narvii/comment/list/CommentListAdapter;->SUBLOADING:Lcom/narvii/util/Tag;

    .line 28
    .line 29
    new-instance v0, Lcom/narvii/util/Tag;

    .line 30
    .line 31
    const-string v1, "bottomPadding"

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    sput-object v0, Lcom/narvii/comment/list/CommentListAdapter;->BOTTOM_PADDING:Lcom/narvii/util/Tag;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->dividerAtTop:Z

    .line 7
    .line 8
    const-string v0, "Comment"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->sourceComment:Ljava/lang/String;

    .line 11
    .line 12
    sget-object v0, Lcom/narvii/util/logging/LoggingSource;->CommentDetailView:Lcom/narvii/util/logging/LoggingSource;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 15
    .line 16
    new-instance v0, Ljava/util/HashMap;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->subloading:Ljava/util/HashMap;

    .line 22
    .line 23
    new-instance v0, Ljava/util/HashSet;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->expands:Ljava/util/HashSet;

    .line 29
    .line 30
    new-instance v0, Ljava/util/HashSet;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 34
    .line 35
    iput-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->voting:Ljava/util/HashSet;

    .line 36
    const/4 v0, -0x1

    .line 37
    .line 38
    iput v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->sort:I

    .line 39
    .line 40
    new-instance v0, Lcom/narvii/comment/list/CommentListAdapter$2;

    .line 41
    .line 42
    const-class v1, Lcom/narvii/model/api/CommentListResponse;

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, p0, v1}, Lcom/narvii/comment/list/CommentListAdapter$2;-><init>(Lcom/narvii/comment/list/CommentListAdapter;Ljava/lang/Class;)V

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->subcommentListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 48
    .line 49
    new-instance v0, Lcom/narvii/comment/list/CommentListAdapter$5;

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, p0}, Lcom/narvii/comment/list/CommentListAdapter$5;-><init>(Lcom/narvii/comment/list/CommentListAdapter;)V

    .line 53
    .line 54
    iput-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->voteCallback:Lcom/narvii/util/Callback;

    .line 55
    .line 56
    const-string v0, "account"

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 63
    .line 64
    iput-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->account:Lcom/narvii/account/AccountService;

    .line 65
    .line 66
    instance-of v0, p1, Lcom/narvii/list/NVListFragment;

    .line 67
    .line 68
    if-eqz v0, :cond_0

    .line 69
    .line 70
    check-cast p1, Lcom/narvii/list/NVListFragment;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    .line 77
    .line 78
    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->bottomPadding()I

    .line 80
    move-result p1

    .line 81
    .line 82
    iput p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->bottomPadding:I

    .line 83
    .line 84
    new-instance p1, Lcom/narvii/comment/list/CommentListAdapter$1;

    .line 85
    .line 86
    .line 87
    invoke-direct {p1, p0, p0}, Lcom/narvii/comment/list/CommentListAdapter$1;-><init>(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/app/NVContext;)V

    .line 88
    .line 89
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->communityHelper:Lcom/narvii/community/CommunityHelper;

    .line 90
    .line 91
    new-instance p1, Lcom/narvii/comment/CommentHelper;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 95
    move-result v0

    .line 96
    .line 97
    .line 98
    invoke-direct {p1, p0, v0}, Lcom/narvii/comment/CommentHelper;-><init>(Lcom/narvii/app/NVContext;Z)V

    .line 99
    .line 100
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->commentHelper:Lcom/narvii/comment/CommentHelper;

    .line 101
    .line 102
    new-instance p1, Lcom/narvii/account/push/PushNotificationHelper;

    .line 103
    .line 104
    .line 105
    invoke-direct {p1, p0}, Lcom/narvii/account/push/PushNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 106
    .line 107
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/comment/list/CommentListAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/comment/list/CommentListAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/comment/list/CommentListAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    return-object p0
.end method

.method private delete(Lcom/narvii/model/Comment;Z)V
    .locals 1

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    new-instance p2, Landroid/app/AlertDialog$Builder;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-direct {p2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const v0, 0x7f1203f4

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/comment/list/CommentListAdapter$8;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/narvii/comment/list/CommentListAdapter$8;-><init>(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/model/Comment;)V

    .line 23
    .line 24
    .line 25
    const p1, 0x1040013

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 29
    .line 30
    .line 31
    const p1, 0x1040009

    .line 32
    .line 33
    sget-object v0, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_0
    new-instance p2, Lcom/narvii/util/dialog/ProgressDialog;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-direct {p2, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 53
    .line 54
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->commentHelper:Lcom/narvii/comment/CommentHelper;

    .line 55
    .line 56
    iget-object p2, p2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1, p2}, Lcom/narvii/comment/CommentHelper;->sendDeleteCommentRequest(Lcom/narvii/model/Comment;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 60
    :goto_0
    return-void
.end method

.method private edit(Lcom/narvii/model/Comment;)V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    const-class v2, Lcom/narvii/comment/post/CommentPostActivity;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    .line 13
    iget v1, p1, Lcom/narvii/model/Comment;->parentType:I

    .line 14
    .line 15
    const-string v2, "parentType"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19
    .line 20
    const-string v1, "parentId"

    .line 21
    .line 22
    iget-object v2, p1, Lcom/narvii/model/Comment;->parentId:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    .line 27
    const-string v1, "commentId"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    instance-of v1, v1, Lcom/narvii/model/Blog;

    .line 41
    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    check-cast v1, Lcom/narvii/model/Blog;

    .line 49
    .line 50
    iget v1, v1, Lcom/narvii/model/Blog;->type:I

    .line 51
    .line 52
    const-string v2, "parentSubType"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    instance-of v1, v1, Lcom/narvii/model/Feed;

    .line 62
    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    .line 70
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    const-string v2, "feed"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    .line 78
    :cond_1
    iget v1, p1, Lcom/narvii/model/Comment;->parentType:I

    .line 79
    const/4 v2, 0x0

    .line 80
    .line 81
    .line 82
    invoke-static {p0, v2, v1}, Lcom/narvii/util/StatisticHelper;->getStatisticSource(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)Ljava/lang/String;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    const-string v3, "stat_parent_type"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    .line 90
    new-instance v1, Lcom/narvii/comment/post/CommentPost;

    .line 91
    .line 92
    .line 93
    invoke-direct {v1, p1}, Lcom/narvii/comment/post/CommentPost;-><init>(Lcom/narvii/model/Comment;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    const-string v3, "post"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    .line 104
    const-string v1, "Source"

    .line 105
    .line 106
    iget-object v3, p0, Lcom/narvii/comment/list/CommentListAdapter;->source:Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    .line 111
    const-string v1, "isAnnouncement"

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->isAnnouncement()Z

    .line 115
    move-result v3

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 119
    .line 120
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 121
    .line 122
    if-nez v1, :cond_2

    .line 123
    move-object v1, v2

    .line 124
    goto :goto_0

    .line 125
    .line 126
    .line 127
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 128
    move-result-object v1

    .line 129
    .line 130
    :goto_0
    const-string v3, "loggingSource"

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    .line 135
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListAdapter;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    .line 136
    .line 137
    if-nez v1, :cond_3

    .line 138
    goto :goto_1

    .line 139
    .line 140
    .line 141
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 142
    move-result-object v2

    .line 143
    .line 144
    :goto_1
    const-string v1, "loggingOrigin"

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    .line 149
    .line 150
    invoke-static {p0, v0}, Lcom/narvii/comment/list/CommentListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->setFocusingComment(Lcom/narvii/model/Comment;)V

    .line 154
    .line 155
    .line 156
    invoke-static {p0}, Lcom/narvii/comment/post/CommentPostActivity;->setStatusListener(Lcom/narvii/comment/post/CommentPostActivity$StatusListener;)V

    .line 157
    return-void
.end method

.method private flagForReview(Lcom/narvii/model/Comment;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    .line 19
    return-void
.end method

.method static bridge synthetic m(Lcom/narvii/comment/list/CommentListAdapter;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/comment/list/CommentListAdapter;->focusingCommentRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic n(Lcom/narvii/comment/list/CommentListAdapter;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/narvii/comment/list/CommentListAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/comment/list/CommentListAdapter;->subloading:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic p(Lcom/narvii/comment/list/CommentListAdapter;)Ljava/util/HashSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/comment/list/CommentListAdapter;->voting:Ljava/util/HashSet;

    return-object p0
.end method

.method static bridge synthetic q(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/model/Comment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/comment/list/CommentListAdapter;->delete(Lcom/narvii/model/Comment;Z)V

    return-void
.end method

.method static bridge synthetic r(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/model/Comment;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->edit(Lcom/narvii/model/Comment;)V

    return-void
.end method

.method private reply(Lcom/narvii/model/Comment;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/Utils;->shouldShowLoginPage(Lcom/narvii/app/NVContext;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    sget-object v0, Lcom/narvii/logging/ActSemantic;->reply:Lcom/narvii/logging/ActSemantic;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 17
    .line 18
    new-instance v0, Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    const-class v2, Lcom/narvii/comment/post/CommentPostActivity;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    .line 29
    iget v1, p1, Lcom/narvii/model/Comment;->parentType:I

    .line 30
    .line 31
    const-string v2, "parentType"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    .line 36
    const-string v1, "parentId"

    .line 37
    .line 38
    iget-object v2, p1, Lcom/narvii/model/Comment;->parentId:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    .line 43
    const-string v1, "respondTo"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    .line 52
    const-string v1, "isAnnouncement"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->isAnnouncement()Z

    .line 56
    move-result v2

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    instance-of v1, v1, Lcom/narvii/model/Feed;

    .line 66
    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    check-cast v1, Lcom/narvii/model/Feed;

    .line 74
    .line 75
    iget v1, v1, Lcom/narvii/model/Feed;->ndcId:I

    .line 76
    const/4 v2, -0x1

    .line 77
    .line 78
    if-eq v1, v2, :cond_1

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    check-cast v1, Lcom/narvii/model/Feed;

    .line 85
    .line 86
    iget v1, v1, Lcom/narvii/model/Feed;->ndcId:I

    .line 87
    .line 88
    const-string v2, "__communityId"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    .line 95
    move-result-object v1

    .line 96
    .line 97
    instance-of v1, v1, Lcom/narvii/model/Blog;

    .line 98
    .line 99
    if-eqz v1, :cond_2

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    check-cast v1, Lcom/narvii/model/Blog;

    .line 106
    .line 107
    iget v1, v1, Lcom/narvii/model/Blog;->type:I

    .line 108
    .line 109
    const-string v2, "parentSubType"

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    .line 114
    .line 115
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    .line 116
    move-result-object v1

    .line 117
    .line 118
    instance-of v1, v1, Lcom/narvii/model/Feed;

    .line 119
    .line 120
    if-eqz v1, :cond_3

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    .line 124
    move-result-object v1

    .line 125
    .line 126
    .line 127
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 128
    move-result-object v1

    .line 129
    .line 130
    const-string v2, "feed"

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    .line 135
    :cond_3
    iget v1, p1, Lcom/narvii/model/Comment;->parentType:I

    .line 136
    const/4 v2, 0x0

    .line 137
    .line 138
    .line 139
    invoke-static {p0, v2, v1}, Lcom/narvii/util/StatisticHelper;->getStatisticSource(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)Ljava/lang/String;

    .line 140
    move-result-object v1

    .line 141
    .line 142
    const-string v3, "stat_parent_type"

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    .line 147
    new-instance v1, Lcom/narvii/comment/post/CommentPost;

    .line 148
    .line 149
    .line 150
    invoke-direct {v1}, Lcom/narvii/comment/post/CommentPost;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->isSubComment(Lcom/narvii/model/Comment;)Z

    .line 154
    move-result v3

    .line 155
    .line 156
    if-eqz v3, :cond_5

    .line 157
    .line 158
    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 159
    const/4 v4, 0x1

    .line 160
    .line 161
    new-array v4, v4, [Ljava/lang/String;

    .line 162
    .line 163
    iget-object v5, p1, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    .line 164
    .line 165
    if-nez v5, :cond_4

    .line 166
    .line 167
    const-string v5, ""

    .line 168
    goto :goto_0

    .line 169
    .line 170
    .line 171
    :cond_4
    invoke-virtual {v5}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 172
    move-result-object v5

    .line 173
    :goto_0
    const/4 v6, 0x0

    .line 174
    .line 175
    aput-object v5, v4, v6

    .line 176
    .line 177
    .line 178
    const v5, 0x7f1202ef

    .line 179
    .line 180
    .line 181
    invoke-static {v3, v5, v4}, Lcom/narvii/util/StringUtils;->getStringForCommunityLocal(Lcom/narvii/app/NVContext;I[Ljava/lang/String;)Ljava/lang/String;

    .line 182
    move-result-object v3

    .line 183
    .line 184
    new-instance v4, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    const-string v5, "\n"

    .line 193
    .line 194
    .line 195
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    move-result-object v4

    .line 200
    .line 201
    iput-object v4, v1, Lcom/narvii/comment/post/CommentPost;->prefix:Ljava/lang/String;

    .line 202
    .line 203
    const-string v4, "hint"

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    goto :goto_1

    .line 208
    .line 209
    :cond_5
    iput-object v2, v1, Lcom/narvii/comment/post/CommentPost;->prefix:Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    :goto_1
    invoke-virtual {p1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    .line 213
    move-result-object v3

    .line 214
    .line 215
    iput-object v3, v1, Lcom/narvii/comment/post/CommentPost;->respondTo:Ljava/lang/String;

    .line 216
    .line 217
    const-string v3, "post"

    .line 218
    .line 219
    .line 220
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 221
    move-result-object v1

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    .line 226
    const-string v1, "Source"

    .line 227
    .line 228
    iget-object v3, p0, Lcom/narvii/comment/list/CommentListAdapter;->source:Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    .line 233
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 234
    .line 235
    if-nez v1, :cond_6

    .line 236
    move-object v1, v2

    .line 237
    goto :goto_2

    .line 238
    .line 239
    .line 240
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 241
    move-result-object v1

    .line 242
    .line 243
    :goto_2
    const-string v3, "loggingSource"

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    .line 248
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListAdapter;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    .line 249
    .line 250
    if-nez v1, :cond_7

    .line 251
    goto :goto_3

    .line 252
    .line 253
    .line 254
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 255
    move-result-object v2

    .line 256
    .line 257
    :goto_3
    const-string v1, "loggingOrigin"

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    .line 262
    const-string v1, "ndcId"

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getFeedNdcId()I

    .line 266
    move-result v2

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 270
    .line 271
    const-string v1, "__interactionScope"

    .line 272
    .line 273
    .line 274
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 275
    move-result v2

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 279
    .line 280
    .line 281
    invoke-static {p0, v0}, Lcom/narvii/comment/list/CommentListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->focusComment()Z

    .line 285
    move-result v0

    .line 286
    .line 287
    if-eqz v0, :cond_8

    .line 288
    .line 289
    .line 290
    invoke-virtual {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->setFocusingComment(Lcom/narvii/model/Comment;)V

    .line 291
    .line 292
    .line 293
    invoke-static {p0}, Lcom/narvii/comment/post/CommentPostActivity;->setStatusListener(Lcom/narvii/comment/post/CommentPostActivity$StatusListener;)V

    .line 294
    .line 295
    .line 296
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->onReply()V

    .line 297
    return-void
.end method

.method static bridge synthetic s(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/model/Comment;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->flagForReview(Lcom/narvii/model/Comment;)V

    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private scrollCommentAddAtTop()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/narvii/comment/list/CommentListAdapter;->scrollCommentAddAtTop(I)V

    return-void
.end method

.method private scrollCommentAddAtTop(I)V
    .locals 7

    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, -0x1

    if-ge v3, v1, :cond_1

    .line 4
    invoke-interface {v0, v3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/narvii/detail/DetailAdapter;->COMMENT_ADD:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v5, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_1
    if-eq v3, v4, :cond_a

    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    .line 5
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    .line 6
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ne p1, v4, :cond_4

    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 7
    instance-of v4, p1, Lcom/narvii/app/NVFragment;

    if-eqz v4, :cond_2

    .line 8
    check-cast p1, Lcom/narvii/app/NVFragment;

    .line 9
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v4

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result p1

    :goto_2
    add-int/2addr p1, v4

    goto :goto_3

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 12
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    move-result v4

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    move-result p1

    goto :goto_2

    :cond_3
    move p1, v2

    :cond_4
    :goto_3
    if-ltz v0, :cond_8

    sub-int v0, v3, v0

    if-ltz v0, :cond_8

    if-ge v0, v1, :cond_8

    iget-object v1, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    .line 13
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->isNestedScrollMode()Z

    move-result v1

    const/16 v3, 0x190

    if-eqz v1, :cond_6

    .line 15
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->onNestedCollapse()V

    if-nez v0, :cond_5

    goto :goto_4

    .line 16
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    :goto_4
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    .line 17
    invoke-virtual {p1, v2, v3}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_6

    :cond_6
    if-nez v0, :cond_7

    goto :goto_5

    .line 18
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v2, v0, p1

    :goto_5
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    .line 19
    invoke-virtual {p1, v2, v3}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_6

    .line 20
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->isNestedScrollMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 21
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->onNestedCollapse()V

    :cond_9
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    .line 22
    invoke-virtual {v0, v3, p1}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    :cond_a
    :goto_6
    return-void
.end method

.method private scrollParentAndReturnUnconsumedDistance(I)I
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/widget/NVListView;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 9
    const/4 v1, 0x2

    .line 10
    .line 11
    new-array v2, v1, [I

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVListView;->startNestedScroll(I)Z

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/narvii/widget/NVListView;->dispatchNestedPreScroll(II[I[I)Z

    .line 20
    const/4 v1, 0x1

    .line 21
    .line 22
    aget v6, v2, v1

    .line 23
    sub-int/2addr p1, v6

    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v7, 0x0

    .line 27
    move-object v2, v0

    .line 28
    move v4, p1

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {v2 .. v7}, Lcom/narvii/widget/NVListView;->dispatchNestedScroll(IIII[I)Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/narvii/widget/NVListView;->stopNestedScroll()V

    .line 35
    :cond_0
    return p1
.end method

.method static bridge synthetic t(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/model/Comment;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->reply(Lcom/narvii/model/Comment;)V

    return-void
.end method

.method static bridge synthetic u(Lcom/narvii/comment/list/CommentListAdapter;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->scrollCommentAddAtTop(I)V

    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/model/Comment;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/comment/list/CommentListAdapter;->vote(Lcom/narvii/model/Comment;IZ)V

    return-void
.end method

.method private vote(Lcom/narvii/model/Comment;IZ)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    .line 4
    move-result-object p3

    .line 5
    .line 6
    .line 7
    invoke-static {p3}, Lcom/narvii/util/Utils;->shouldShowLoginPage(Lcom/narvii/app/NVContext;)Z

    .line 8
    move-result p3

    .line 9
    .line 10
    if-eqz p3, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    if-nez p2, :cond_1

    .line 14
    .line 15
    sget-object p3, Lcom/narvii/logging/ActSemantic;->dislike:Lcom/narvii/logging/ActSemantic;

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_1
    sget-object p3, Lcom/narvii/logging/ActSemantic;->like:Lcom/narvii/logging/ActSemantic;

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {p0, p1, p3}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 22
    .line 23
    iget-object p3, p0, Lcom/narvii/comment/list/CommentListAdapter;->voting:Ljava/util/HashSet;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->notifyDataSetChanged()V

    .line 34
    .line 35
    if-eqz p2, :cond_2

    .line 36
    .line 37
    const-string p3, "statistics"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p3}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    move-result-object p3

    .line 42
    .line 43
    check-cast p3, Lcom/narvii/util/statistics/StatisticsService;

    .line 44
    .line 45
    const-string v0, "Like Post"

    .line 46
    .line 47
    .line 48
    invoke-interface {p3, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 49
    move-result-object p3

    .line 50
    .line 51
    const-string v0, "Likes Total"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 55
    move-result-object p3

    .line 56
    .line 57
    const-string v0, "post_type"

    .line 58
    .line 59
    const-string v1, "comment"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3, v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 63
    move-result-object p3

    .line 64
    .line 65
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->sourceComment:Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 69
    move-result-object p3

    .line 70
    .line 71
    .line 72
    invoke-static {p0, p3}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsEventBuilder;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    .line 76
    move-result-object p3

    .line 77
    .line 78
    .line 79
    invoke-static {p3, p1, p2}, Lcom/narvii/util/LiveLayerUtils;->reportVoting(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)V

    .line 80
    .line 81
    new-instance p3, Lcom/narvii/story/detail/VoteHelper;

    .line 82
    .line 83
    .line 84
    invoke-direct {p3, p0}, Lcom/narvii/story/detail/VoteHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 85
    .line 86
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    .line 87
    .line 88
    iput-object v0, p3, Lcom/narvii/story/detail/VoteHelper;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    .line 89
    .line 90
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 91
    .line 92
    iput-object v0, p3, Lcom/narvii/story/detail/VoteHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 93
    .line 94
    .line 95
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    move-result-object p2

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    new-instance v1, Lcom/narvii/comment/list/CommentListAdapter$7;

    .line 103
    .line 104
    .line 105
    invoke-direct {v1, p0, p1}, Lcom/narvii/comment/list/CommentListAdapter$7;-><init>(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/model/Comment;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/narvii/story/detail/VoteHelper;->vote(Lcom/narvii/model/Comment;Ljava/lang/Integer;Lcom/narvii/model/NVObject;Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V

    .line 109
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

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->enhanceList(Ljava/util/List;)Ljava/util/List;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    iget-boolean v1, p0, Lcom/narvii/comment/list/CommentListAdapter;->dividerAtTop:Z

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    sget-object v1, Lcom/narvii/comment/list/CommentListAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v1

    .line 42
    .line 43
    if-eqz v1, :cond_7

    .line 44
    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    check-cast v1, Lcom/narvii/model/Comment;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    iget-object v2, v1, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    .line 55
    .line 56
    if-eqz v2, :cond_6

    .line 57
    .line 58
    .line 59
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 60
    move-result v2

    .line 61
    .line 62
    if-lez v2, :cond_6

    .line 63
    .line 64
    iget-object v2, p0, Lcom/narvii/comment/list/CommentListAdapter;->subloading:Ljava/util/HashMap;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    .line 68
    move-result-object v3

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    .line 72
    move-result v2

    .line 73
    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    sget-object v2, Lcom/narvii/comment/list/CommentListAdapter;->SUBLOADING:Lcom/narvii/util/Tag;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    goto :goto_1

    .line 81
    .line 82
    :cond_3
    iget v2, v1, Lcom/narvii/model/Comment;->subcommentsCount:I

    .line 83
    .line 84
    iget-object v3, v1, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    .line 85
    .line 86
    .line 87
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 88
    move-result v3

    .line 89
    .line 90
    if-le v2, v3, :cond_4

    .line 91
    .line 92
    iget-boolean v2, v1, Lcom/narvii/model/Comment;->subcommentIsEnd:Z

    .line 93
    .line 94
    if-nez v2, :cond_4

    .line 95
    .line 96
    new-instance v2, Lcom/narvii/comment/list/CommentListAdapter$ReadMore;

    .line 97
    .line 98
    .line 99
    invoke-direct {v2, v1}, Lcom/narvii/comment/list/CommentListAdapter$ReadMore;-><init>(Lcom/narvii/model/Comment;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    goto :goto_1

    .line 104
    .line 105
    :cond_4
    sget-object v2, Lcom/narvii/comment/list/CommentListAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    :goto_1
    iget-object v2, v1, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    .line 111
    .line 112
    .line 113
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 114
    move-result v3

    .line 115
    .line 116
    .line 117
    invoke-interface {v2, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 118
    move-result-object v2

    .line 119
    .line 120
    .line 121
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 122
    move-result v3

    .line 123
    .line 124
    if-eqz v3, :cond_6

    .line 125
    .line 126
    .line 127
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 128
    move-result-object v3

    .line 129
    .line 130
    check-cast v3, Lcom/narvii/model/Comment;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    .line 134
    move-result-object v4

    .line 135
    .line 136
    iput-object v4, v3, Lcom/narvii/model/Comment;->headCommentId:Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 143
    move-result v3

    .line 144
    .line 145
    if-eqz v3, :cond_5

    .line 146
    .line 147
    sget-object v3, Lcom/narvii/comment/list/CommentListAdapter;->SUBDIVIDER:Lcom/narvii/util/Tag;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    goto :goto_2

    .line 152
    .line 153
    :cond_6
    sget-object v1, Lcom/narvii/comment/list/CommentListAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    goto :goto_0

    .line 158
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

    .line 1
    .line 2
    if-nez p3, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->createListEndItem(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->isQuestionAndAnswer()Z

    .line 10
    move-result p2

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    const p3, 0x7f1203c3

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 23
    move-result-object p2

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    .line 31
    const p3, 0x7f1203c4

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    .line 38
    :goto_0
    const p3, 0x7f0a0e51

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object p3

    .line 43
    .line 44
    check-cast p3, Landroid/widget/TextView;

    .line 45
    .line 46
    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lcom/narvii/comment/list/CommentListAdapter;->getListEndItemTextColor(Z)I

    .line 50
    move-result v0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    new-instance p2, Lcom/narvii/comment/list/CommentListAdapter$3;

    .line 59
    .line 60
    .line 61
    invoke-direct {p2, p0}, Lcom/narvii/comment/list/CommentListAdapter$3;-><init>(Lcom/narvii/comment/list/CommentListAdapter;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-object p1

    .line 66
    .line 67
    .line 68
    :cond_1
    const p3, 0x7f0d04e2

    .line 69
    .line 70
    const-string v0, "placeholder"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 78
    move-result-object p2

    .line 79
    const/4 p3, -0x2

    .line 80
    .line 81
    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 82
    return-object p1
.end method

.method public createLoadingItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->createLoadingItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->list()Ljava/util/List;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    .line 11
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 12
    move-result p2

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->firstLoadingHeight()I

    .line 18
    move-result p2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p2, 0x0

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->E(Landroid/view/View;)I

    .line 28
    move-result v1

    .line 29
    .line 30
    if-gt p2, v1, :cond_1

    .line 31
    const/4 p2, -0x2

    .line 32
    .line 33
    :cond_1
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 37
    return-object p1
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->apiTypeName()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v2, v3, v0}, Lcom/narvii/comment/CommentHelper;->getBaseCommentPath(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    const-string v1, "sort"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->sortName()Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 48
    .line 49
    instance-of v1, p1, Lcom/narvii/model/CommunityObjectInGlobal;

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    check-cast p1, Lcom/narvii/model/CommunityObjectInGlobal;

    .line 54
    .line 55
    .line 56
    invoke-interface {p1}, Lcom/narvii/model/CommunityObjectInGlobal;->getNdcId()I

    .line 57
    move-result v1

    .line 58
    const/4 v2, -0x1

    .line 59
    .line 60
    if-eq v1, v2, :cond_1

    .line 61
    .line 62
    .line 63
    invoke-interface {p1}, Lcom/narvii/model/CommunityObjectInGlobal;->getNdcId()I

    .line 64
    move-result p1

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 68
    .line 69
    .line 70
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 71
    move-result-object p1

    .line 72
    return-object p1

    .line 73
    :cond_2
    :goto_0
    return-object v0
.end method

.method protected createSubcommentRequest(Lcom/narvii/model/Comment;IILjava/lang/String;)Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    .line 10
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 17
    move-result v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->apiTypeName()Ljava/lang/String;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v3, v0, p1}, Lcom/narvii/comment/CommentHelper;->getBaseCommentPath(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string p1, "/response"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    const-string v0, "start"

    .line 56
    .line 57
    .line 58
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 63
    .line 64
    const-string p2, "size"

    .line 65
    .line 66
    .line 67
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object p3

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 72
    .line 73
    .line 74
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    move-result p2

    .line 76
    .line 77
    if-nez p2, :cond_1

    .line 78
    .line 79
    const-string p2, "stoptime"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2, p4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 83
    .line 84
    .line 85
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 86
    move-result-object p1

    .line 87
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

    const-class v0, Lcom/narvii/model/Comment;

    return-object v0
.end method

.method public enhanceList(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Comment;",
            ">;)",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Comment;",
            ">;"
        }
    .end annotation

    return-object p1
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    .line 17
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/narvii/model/Comment;

    .line 21
    .line 22
    iget-object v1, v0, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 28
    move-result v1

    .line 29
    .line 30
    if-lez v1, :cond_0

    .line 31
    .line 32
    const-string v1, "account"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    new-instance v1, Lcom/narvii/util/FilterHelper;

    .line 47
    .line 48
    .line 49
    invoke-direct {v1, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v2

    .line 54
    .line 55
    if-eqz v2, :cond_0

    .line 56
    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    check-cast v2, Lcom/narvii/model/NVObject;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Lcom/narvii/util/FilterHelper;->isAccessible(Lcom/narvii/model/NVObject;)Z

    .line 65
    move-result v2

    .line 66
    .line 67
    if-nez v2, :cond_1

    .line 68
    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 71
    goto :goto_0

    .line 72
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/comment/list/CommentListAdapter;->bottomPadding:I

    .line 7
    .line 8
    if-lez v1, :cond_0

    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    add-int/2addr v0, v1

    .line 13
    return v0
.end method

.method protected getFeedNdcId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->bottomPadding:I

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getCount()I

    .line 8
    move-result v0

    .line 9
    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 11
    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    sget-object p1, Lcom/narvii/comment/list/CommentListAdapter;->BOTTOM_PADDING:Lcom/narvii/util/Tag;

    .line 15
    return-object p1

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/model/Comment;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/model/Comment;

    .line 7
    .line 8
    iget v0, p1, Lcom/narvii/model/Comment;->type:I

    .line 9
    .line 10
    const/16 v1, 0xb

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    const/4 p1, 0x6

    .line 14
    return p1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->isSubComment(Lcom/narvii/model/Comment;)Z

    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    .line 21
    :cond_1
    instance-of v0, p1, Lcom/narvii/comment/list/CommentListAdapter$ReadMore;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    const/4 p1, 0x2

    .line 25
    return p1

    .line 26
    .line 27
    :cond_2
    sget-object v0, Lcom/narvii/comment/list/CommentListAdapter;->SUBDIVIDER:Lcom/narvii/util/Tag;

    .line 28
    .line 29
    if-ne p1, v0, :cond_3

    .line 30
    const/4 p1, 0x3

    .line 31
    return p1

    .line 32
    .line 33
    :cond_3
    sget-object v0, Lcom/narvii/comment/list/CommentListAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    .line 34
    .line 35
    if-ne p1, v0, :cond_4

    .line 36
    const/4 p1, 0x4

    .line 37
    return p1

    .line 38
    .line 39
    :cond_4
    sget-object v0, Lcom/narvii/comment/list/CommentListAdapter;->SUBLOADING:Lcom/narvii/util/Tag;

    .line 40
    .line 41
    if-ne p1, v0, :cond_5

    .line 42
    const/4 p1, 0x5

    .line 43
    return p1

    .line 44
    :cond_5
    const/4 p1, -0x1

    .line 45
    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    instance-of v0, p3, Landroid/widget/ListView;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    move-object v0, p3

    .line 10
    .line 11
    check-cast v0, Landroid/widget/ListView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    .line 14
    .line 15
    :cond_0
    instance-of v0, p1, Lcom/narvii/model/Comment;

    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    if-eqz v0, :cond_a

    .line 20
    .line 21
    check-cast p1, Lcom/narvii/model/Comment;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->isSubComment(Lcom/narvii/model/Comment;)Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->subCommentLayoutId()I

    .line 31
    move-result v0

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->headerCommentLayoutId()I

    .line 36
    move-result v0

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 40
    move-result-object p2

    .line 41
    .line 42
    iget v0, p1, Lcom/narvii/model/Comment;->type:I

    .line 43
    .line 44
    const/16 v3, 0xb

    .line 45
    .line 46
    if-eq v0, v3, :cond_9

    .line 47
    .line 48
    instance-of v0, p2, Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    goto/16 :goto_4

    .line 53
    .line 54
    :cond_2
    instance-of p3, p2, Lcom/narvii/comment/list/CommentItem;

    .line 55
    .line 56
    if-eqz p3, :cond_3

    .line 57
    move-object p3, p2

    .line 58
    .line 59
    check-cast p3, Lcom/narvii/comment/list/CommentItem;

    .line 60
    goto :goto_1

    .line 61
    .line 62
    .line 63
    :cond_3
    const p3, 0x7f0a035d

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object p3

    .line 68
    .line 69
    check-cast p3, Lcom/narvii/comment/list/CommentItem;

    .line 70
    .line 71
    :goto_1
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    .line 76
    .line 77
    const v0, 0x7f0a0171

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    .line 88
    .line 89
    const v0, 0x7f0a1000

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    .line 100
    .line 101
    const v0, 0x7f0a09f9

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    move-result-object v0

    .line 106
    .line 107
    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    .line 112
    .line 113
    const v0, 0x7f0a053c

    .line 114
    .line 115
    .line 116
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 117
    move-result-object v0

    .line 118
    .line 119
    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    .line 124
    .line 125
    const v0, 0x7f0a06ec

    .line 126
    .line 127
    .line 128
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 129
    move-result-object v0

    .line 130
    .line 131
    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    .line 136
    .line 137
    const v0, 0x7f0a06ed

    .line 138
    .line 139
    .line 140
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    move-result-object v0

    .line 142
    .line 143
    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    .line 148
    .line 149
    const v0, 0x7f0a06ee

    .line 150
    .line 151
    .line 152
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 153
    move-result-object v0

    .line 154
    .line 155
    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    .line 160
    .line 161
    const v0, 0x7f0a06ef

    .line 162
    .line 163
    .line 164
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 165
    move-result-object v0

    .line 166
    .line 167
    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    .line 172
    .line 173
    const v0, 0x7f0a06f0

    .line 174
    .line 175
    .line 176
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 177
    move-result-object v0

    .line 178
    .line 179
    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->isAnnouncement()Z

    .line 186
    move-result v0

    .line 187
    .line 188
    if-eqz v0, :cond_4

    .line 189
    .line 190
    .line 191
    invoke-virtual {p3}, Lcom/narvii/comment/list/CommentItem;->disableVote()V

    .line 192
    goto :goto_2

    .line 193
    .line 194
    :cond_4
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->voteCallback:Lcom/narvii/util/Callback;

    .line 195
    .line 196
    iput-object v0, p3, Lcom/narvii/comment/list/CommentItem;->voteCallback:Lcom/narvii/util/Callback;

    .line 197
    .line 198
    .line 199
    :goto_2
    invoke-virtual {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->isSubComment(Lcom/narvii/model/Comment;)Z

    .line 200
    move-result v0

    .line 201
    .line 202
    if-nez v0, :cond_5

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->isQuestionAndAnswer()Z

    .line 206
    move-result v0

    .line 207
    .line 208
    if-eqz v0, :cond_5

    .line 209
    const/4 v2, 0x1

    .line 210
    .line 211
    .line 212
    :cond_5
    invoke-virtual {p3, v2}, Lcom/narvii/comment/list/CommentItem;->setHasVotes(Z)V

    .line 213
    .line 214
    if-eqz v2, :cond_6

    .line 215
    .line 216
    .line 217
    const v0, 0x7f0a1008

    .line 218
    .line 219
    .line 220
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 221
    move-result-object v0

    .line 222
    .line 223
    iget-object v2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    .line 228
    .line 229
    const v0, 0x7f0a0fff

    .line 230
    .line 231
    .line 232
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 233
    move-result-object v0

    .line 234
    .line 235
    iget-object v2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    .line 240
    :cond_6
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->voting:Ljava/util/HashSet;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    .line 244
    move-result-object v2

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 248
    move-result v0

    .line 249
    .line 250
    .line 251
    invoke-virtual {p3, v0}, Lcom/narvii/comment/list/CommentItem;->setVoting(Z)V

    .line 252
    .line 253
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->account:Lcom/narvii/account/AccountService;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 257
    move-result-object v0

    .line 258
    .line 259
    iget-object v2, p1, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    .line 260
    .line 261
    if-nez v2, :cond_7

    .line 262
    move-object v2, v1

    .line 263
    goto :goto_3

    .line 264
    .line 265
    :cond_7
    iget-object v2, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    :goto_3
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 269
    move-result v0

    .line 270
    .line 271
    .line 272
    invoke-virtual {p3, v0}, Lcom/narvii/comment/list/CommentItem;->setIsMine(Z)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->isOwner(Lcom/narvii/model/Comment;)Z

    .line 276
    move-result v0

    .line 277
    .line 278
    .line 279
    invoke-virtual {p3, v0}, Lcom/narvii/comment/list/CommentItem;->setIsOwner(Z)V

    .line 280
    .line 281
    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 282
    .line 283
    iget v2, p0, Lcom/narvii/list/NVAdapter;->backgroundColor:I

    .line 284
    .line 285
    .line 286
    invoke-virtual {p3, v0, v2}, Lcom/narvii/comment/list/CommentItem;->setDarkTheme(ZI)V

    .line 287
    .line 288
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->tagClickListener:Lcom/narvii/comment/list/CommentListAdapter$CommentTagClickListener;

    .line 289
    .line 290
    if-nez v0, :cond_8

    .line 291
    .line 292
    new-instance v0, Lcom/narvii/comment/list/CommentListAdapter$CommentTagClickListener;

    .line 293
    .line 294
    .line 295
    invoke-direct {v0, p0, v1}, Lcom/narvii/comment/list/CommentListAdapter$CommentTagClickListener;-><init>(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/comment/list/a;)V

    .line 296
    .line 297
    iput-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->tagClickListener:Lcom/narvii/comment/list/CommentListAdapter$CommentTagClickListener;

    .line 298
    .line 299
    :cond_8
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->tagClickListener:Lcom/narvii/comment/list/CommentListAdapter$CommentTagClickListener;

    .line 300
    .line 301
    .line 302
    invoke-virtual {p3, p1, v0}, Lcom/narvii/comment/list/CommentItem;->setComment(Lcom/narvii/model/Comment;Lcom/narvii/util/text/OnTagClickListener;)V

    .line 303
    .line 304
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->expands:Ljava/util/HashSet;

    .line 305
    .line 306
    .line 307
    invoke-virtual {p1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    .line 308
    move-result-object p1

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 312
    move-result p1

    .line 313
    .line 314
    .line 315
    invoke-virtual {p3, p1}, Lcom/narvii/comment/list/CommentItem;->setExpand(Z)V

    .line 316
    return-object p2

    .line 317
    .line 318
    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 319
    .line 320
    .line 321
    const p2, 0x7f0d003f

    .line 322
    .line 323
    .line 324
    invoke-virtual {p1, p2, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 325
    move-result-object p1

    .line 326
    return-object p1

    .line 327
    .line 328
    :cond_a
    instance-of v0, p1, Lcom/narvii/comment/list/CommentListAdapter$ReadMore;

    .line 329
    .line 330
    if-eqz v0, :cond_c

    .line 331
    .line 332
    check-cast p1, Lcom/narvii/comment/list/CommentListAdapter$ReadMore;

    .line 333
    .line 334
    .line 335
    const v0, 0x7f0d0106

    .line 336
    .line 337
    .line 338
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 339
    move-result-object p2

    .line 340
    .line 341
    .line 342
    const p3, 0x7f0a0e51

    .line 343
    .line 344
    .line 345
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 346
    move-result-object p3

    .line 347
    .line 348
    check-cast p3, Landroid/widget/TextView;

    .line 349
    .line 350
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 354
    .line 355
    .line 356
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 357
    move-result-object v1

    .line 358
    .line 359
    .line 360
    const v3, 0x7f1202ee

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 364
    move-result-object v1

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 368
    .line 369
    new-instance v1, Landroid/text/style/UnderlineSpan;

    .line 370
    .line 371
    .line 372
    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 376
    move-result v3

    .line 377
    .line 378
    const/16 v4, 0x21

    .line 379
    .line 380
    .line 381
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 382
    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .line 388
    const-string v2, " ("

    .line 389
    .line 390
    .line 391
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    iget-object p1, p1, Lcom/narvii/comment/list/CommentListAdapter$ReadMore;->head:Lcom/narvii/model/Comment;

    .line 394
    .line 395
    iget v2, p1, Lcom/narvii/model/Comment;->subcommentsCount:I

    .line 396
    .line 397
    iget-object p1, p1, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    .line 398
    .line 399
    .line 400
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 401
    move-result p1

    .line 402
    sub-int/2addr v2, p1

    .line 403
    .line 404
    .line 405
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    const-string p1, ")"

    .line 408
    .line 409
    .line 410
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    move-result-object p1

    .line 415
    .line 416
    .line 417
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 424
    move-result-object p1

    .line 425
    .line 426
    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 427
    .line 428
    if-eqz v0, :cond_b

    .line 429
    .line 430
    .line 431
    const v0, 0x7f060493

    .line 432
    goto :goto_5

    .line 433
    .line 434
    .line 435
    :cond_b
    const v0, 0x7f060491

    .line 436
    .line 437
    .line 438
    :goto_5
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 439
    move-result p1

    .line 440
    .line 441
    .line 442
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 443
    return-object p2

    .line 444
    .line 445
    :cond_c
    sget-object v0, Lcom/narvii/comment/list/CommentListAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    .line 446
    .line 447
    if-ne p1, v0, :cond_e

    .line 448
    .line 449
    iget-boolean p1, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 450
    .line 451
    if-eqz p1, :cond_d

    .line 452
    .line 453
    .line 454
    const v0, 0x7f0d04e5

    .line 455
    goto :goto_6

    .line 456
    .line 457
    .line 458
    :cond_d
    const v0, 0x7f0d04e4

    .line 459
    .line 460
    .line 461
    :goto_6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 462
    move-result-object p1

    .line 463
    .line 464
    .line 465
    invoke-virtual {p0, v0, p3, p2, p1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 466
    move-result-object p1

    .line 467
    return-object p1

    .line 468
    .line 469
    :cond_e
    sget-object v0, Lcom/narvii/comment/list/CommentListAdapter;->SUBDIVIDER:Lcom/narvii/util/Tag;

    .line 470
    .line 471
    if-ne p1, v0, :cond_10

    .line 472
    .line 473
    .line 474
    const p1, 0x7f0d0107

    .line 475
    .line 476
    .line 477
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 478
    move-result-object p1

    .line 479
    .line 480
    .line 481
    const p2, 0x7f0a07fd

    .line 482
    .line 483
    .line 484
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 485
    move-result-object p2

    .line 486
    .line 487
    .line 488
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 489
    move-result-object p3

    .line 490
    .line 491
    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 492
    .line 493
    if-eqz v0, :cond_f

    .line 494
    .line 495
    .line 496
    const v0, 0x7f060171

    .line 497
    goto :goto_7

    .line 498
    .line 499
    .line 500
    :cond_f
    const v0, 0x7f060170

    .line 501
    .line 502
    .line 503
    :goto_7
    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 504
    move-result p3

    .line 505
    .line 506
    .line 507
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 508
    return-object p1

    .line 509
    .line 510
    :cond_10
    sget-object v0, Lcom/narvii/comment/list/CommentListAdapter;->SUBLOADING:Lcom/narvii/util/Tag;

    .line 511
    .line 512
    if-ne p1, v0, :cond_11

    .line 513
    .line 514
    .line 515
    const p1, 0x7f0d0109

    .line 516
    .line 517
    .line 518
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 519
    move-result-object p1

    .line 520
    return-object p1

    .line 521
    .line 522
    :cond_11
    sget-object v0, Lcom/narvii/comment/list/CommentListAdapter;->BOTTOM_PADDING:Lcom/narvii/util/Tag;

    .line 523
    .line 524
    if-ne p1, v0, :cond_12

    .line 525
    .line 526
    .line 527
    const p1, 0x7f0d04e2

    .line 528
    .line 529
    .line 530
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 531
    move-result-object p1

    .line 532
    .line 533
    .line 534
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 535
    move-result-object p2

    .line 536
    .line 537
    iget p3, p0, Lcom/narvii/comment/list/CommentListAdapter;->bottomPadding:I

    .line 538
    .line 539
    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 540
    .line 541
    .line 542
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 543
    return-object p1

    .line 544
    :cond_12
    return-object v1
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lcom/narvii/comment/list/CommentListAdapter;->BOTTOM_PADDING:Lcom/narvii/util/Tag;

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getViewTypeCount()I

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItemViewType(I)I

    .line 17
    move-result p1

    .line 18
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getViewTypeCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 7
    return v0
.end method

.method protected headerCommentLayoutId()I
    .locals 1

    const v0, 0x7f0d0105

    return v0
.end method

.method protected isAnnouncement()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lcom/narvii/comment/list/CommentListAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    sget-object v1, Lcom/narvii/comment/list/CommentListAdapter;->SUBDIVIDER:Lcom/narvii/util/Tag;

    .line 11
    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    sget-object v1, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    sget-object v1, Lcom/narvii/comment/list/CommentListAdapter;->BOTTOM_PADDING:Lcom/narvii/util/Tag;

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->isEnabled(I)Z

    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method protected isNestedScrollMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isOwner(Lcom/narvii/model/Comment;)Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    iget v2, p1, Lcom/narvii/model/Comment;->parentNdcId:I

    .line 11
    const/4 v3, -0x1

    .line 12
    .line 13
    if-ne v2, v3, :cond_1

    .line 14
    .line 15
    instance-of v4, v0, Lcom/narvii/model/Feed;

    .line 16
    .line 17
    if-eqz v4, :cond_1

    .line 18
    move-object v2, v0

    .line 19
    .line 20
    check-cast v2, Lcom/narvii/model/Feed;

    .line 21
    .line 22
    iget v2, v2, Lcom/narvii/model/Feed;->ndcId:I

    .line 23
    .line 24
    :cond_1
    if-ne v2, v3, :cond_2

    .line 25
    .line 26
    const-string v2, "config"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    check-cast v2, Lcom/narvii/config/ConfigService;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 36
    move-result v2

    .line 37
    .line 38
    :cond_2
    iget-object v3, p1, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    .line 39
    .line 40
    if-eqz v3, :cond_3

    .line 41
    .line 42
    iget-object v3, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-static {v3, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    move-result v0

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    iget-object p1, p1, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    .line 55
    .line 56
    iget p1, p1, Lcom/narvii/model/User;->ndcId:I

    .line 57
    .line 58
    if-ne v2, p1, :cond_3

    .line 59
    const/4 v1, 0x1

    .line 60
    :cond_3
    return v1
.end method

.method protected isQuestionAndAnswer()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    instance-of v1, v0, Lcom/narvii/model/Blog;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/model/Blog;

    .line 13
    .line 14
    iget v0, v0, Lcom/narvii/model/Blog;->type:I

    .line 15
    const/4 v1, 0x3

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    return v0
.end method

.method protected isSubComment(Lcom/narvii/model/Comment;)Z
    .locals 0

    .line 1
    .line 2
    iget-object p1, p1, Lcom/narvii/model/Comment;->headCommentId:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->list:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/narvii/comment/list/CommentListAdapter;->buildList(Ljava/util/List;)Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->list:Ljava/util/List;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->list:Ljava/util/List;

    .line 17
    return-object v0
.end method

.method protected loadSubComment(Lcom/narvii/model/Comment;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->subloading:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    return-void

    .line 14
    .line 15
    :cond_0
    iget v0, p1, Lcom/narvii/model/Comment;->subcommentStart:I

    .line 16
    .line 17
    const/16 v1, 0x19

    .line 18
    .line 19
    iget-object v2, p1, Lcom/narvii/model/Comment;->subcommentStoptime:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/narvii/comment/list/CommentListAdapter;->createSubcommentRequest(Lcom/narvii/model/Comment;IILjava/lang/String;)Lcom/narvii/util/http/ApiRequest;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListAdapter;->subloading:Ljava/util/HashMap;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    const-string p1, "api"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListAdapter;->subcommentListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->notifyDataSetChanged()V

    .line 49
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->list:Ljava/util/List;

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 7
    return-void
.end method

.method public onHeightFix(Lcom/narvii/comment/post/CommentPostActivity;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->focusingCommentRect:Landroid/graphics/Rect;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    instance-of v1, v0, Lcom/narvii/list/NVListFragment;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/list/NVListFragment;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/list/NVListFragment;->getHoverCurrentView()Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    return-void

    .line 20
    .line 21
    .line 22
    :cond_0
    const v0, 0x1020002

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->bottomPadding()I

    .line 32
    move-result v0

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 37
    move-result v0

    .line 38
    .line 39
    :goto_0
    iput v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->bottomPadding:I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->notifyDataSetChanged()V

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    return-void

    .line 48
    .line 49
    :cond_2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->focusingCommentRect:Landroid/graphics/Rect;

    .line 50
    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/narvii/comment/list/CommentListAdapter;->scrollCommentAddAtTop()V

    .line 55
    goto :goto_2

    .line 56
    .line 57
    .line 58
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/comment/post/CommentPostActivity;->getActiveSpaceHeight()I

    .line 59
    move-result v0

    .line 60
    .line 61
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListAdapter;->focusingCommentRect:Landroid/graphics/Rect;

    .line 62
    .line 63
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 64
    .line 65
    if-le v1, v0, :cond_5

    .line 66
    sub-int/2addr v1, v0

    .line 67
    .line 68
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    .line 69
    const/4 v2, -0x1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->scrollListBy(I)V

    .line 73
    .line 74
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->focusingCommentRect:Landroid/graphics/Rect;

    .line 75
    const/4 v2, 0x0

    .line 76
    neg-int v3, v1

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->isNestedScrollMode()Z

    .line 83
    move-result v0

    .line 84
    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    .line 88
    invoke-direct {p0, v1}, Lcom/narvii/comment/list/CommentListAdapter;->scrollParentAndReturnUnconsumedDistance(I)I

    .line 89
    move-result v1

    .line 90
    .line 91
    :cond_4
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    .line 92
    .line 93
    const/16 v2, 0x190

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 97
    .line 98
    const-wide/16 v0, 0xc8

    .line 99
    goto :goto_1

    .line 100
    .line 101
    :cond_5
    const-wide/16 v0, 0x0

    .line 102
    .line 103
    :goto_1
    new-instance v2, Landroid/graphics/Rect;

    .line 104
    .line 105
    .line 106
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 107
    .line 108
    iget-object v3, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 112
    .line 113
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 114
    .line 115
    iget-object v4, p0, Lcom/narvii/comment/list/CommentListAdapter;->focusingCommentRect:Landroid/graphics/Rect;

    .line 116
    .line 117
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 118
    .line 119
    .line 120
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 121
    move-result v3

    .line 122
    .line 123
    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 124
    .line 125
    iget-object v3, p0, Lcom/narvii/comment/list/CommentListAdapter;->focusingCommentRect:Landroid/graphics/Rect;

    .line 126
    .line 127
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 128
    .line 129
    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 130
    .line 131
    new-instance v3, Lcom/narvii/comment/list/CommentListAdapter$9;

    .line 132
    .line 133
    .line 134
    invoke-direct {v3, p0, p1, v2}, Lcom/narvii/comment/list/CommentListAdapter$9;-><init>(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/comment/post/CommentPostActivity;Landroid/graphics/Rect;)V

    .line 135
    .line 136
    .line 137
    invoke-static {v3, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 138
    :goto_2
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 1
    instance-of v4, v0, Lcom/narvii/model/Comment;

    if-eqz v4, :cond_2d

    .line 2
    move-object v4, v0

    check-cast v4, Lcom/narvii/model/Comment;

    const/4 v5, 0x0

    if-nez v3, :cond_0

    return v5

    :cond_0
    const/4 v6, 0x3

    const v7, 0x7f0a035d

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v3, v2, :cond_17

    .line 3
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v10

    if-ne v10, v7, :cond_1

    goto/16 :goto_7

    .line 4
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v7

    const v10, 0x7f0a053c

    if-ne v7, v10, :cond_3

    iget-object v0, v1, Lcom/narvii/comment/list/CommentListAdapter;->expands:Ljava/util/HashSet;

    .line 5
    invoke-virtual {v4}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/narvii/comment/list/CommentListAdapter;->expands:Ljava/util/HashSet;

    .line 6
    invoke-virtual {v4}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/comment/list/CommentListAdapter;->notifyDataSetChanged()V

    return v9

    .line 8
    :cond_3
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v7

    const v10, 0x7f0a0171

    if-eq v7, v10, :cond_12

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v7

    const v10, 0x7f0a09f9

    if-ne v7, v10, :cond_4

    goto/16 :goto_6

    .line 9
    :cond_4
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v7

    const v10, 0x7f0a06ec

    const v11, 0x7f0a06f0

    const v12, 0x7f0a06ef

    const v13, 0x7f0a06ee

    const v14, 0x7f0a06ed

    if-eq v7, v10, :cond_c

    .line 10
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v7

    if-eq v7, v14, :cond_c

    .line 11
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v7

    if-eq v7, v13, :cond_c

    .line 12
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v7

    if-eq v7, v12, :cond_c

    .line 13
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v11, :cond_5

    goto :goto_3

    .line 14
    :cond_5
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f0a1008

    const v8, 0x7f0a0fff

    if-eq v6, v7, :cond_8

    .line 15
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v6, v8, :cond_6

    goto :goto_1

    .line 16
    :cond_6
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f0a1000

    if-ne v6, v7, :cond_2e

    .line 17
    iget v6, v4, Lcom/narvii/model/Comment;->votedValue:I

    if-ne v6, v9, :cond_7

    goto :goto_0

    :cond_7
    move v5, v9

    :goto_0
    invoke-direct {v1, v4, v5, v9}, Lcom/narvii/comment/list/CommentListAdapter;->vote(Lcom/narvii/model/Comment;IZ)V

    goto/16 :goto_18

    :cond_8
    :goto_1
    iget-object v0, v1, Lcom/narvii/comment/list/CommentListAdapter;->voting:Ljava/util/HashSet;

    .line 18
    invoke-virtual {v4}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v9

    .line 19
    :cond_9
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v8, :cond_a

    const/4 v0, -0x1

    goto :goto_2

    :cond_a
    move v0, v9

    .line 20
    :goto_2
    iget v2, v4, Lcom/narvii/model/Comment;->votedValue:I

    mul-int/2addr v2, v0

    if-lez v2, :cond_b

    move v0, v5

    :cond_b
    invoke-direct {v1, v4, v0, v5}, Lcom/narvii/comment/list/CommentListAdapter;->vote(Lcom/narvii/model/Comment;IZ)V

    return v9

    .line 21
    :cond_c
    :goto_3
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v14, :cond_d

    move v5, v9

    goto :goto_4

    .line 22
    :cond_d
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v13, :cond_e

    move v5, v8

    goto :goto_4

    .line 23
    :cond_e
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v12, :cond_f

    move v5, v6

    goto :goto_4

    .line 24
    :cond_f
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v11, :cond_10

    const/4 v5, 0x4

    .line 25
    :cond_10
    :goto_4
    iget-object v0, v4, Lcom/narvii/model/Comment;->mediaList:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    .line 26
    invoke-virtual {v0}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_11

    const-class v2, Lcom/narvii/optionmenu/OptionMenuFragment;

    .line 27
    invoke-static {v0, v4, v2}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/narvii/comment/list/CommentListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    goto :goto_5

    .line 28
    :cond_11
    new-instance v0, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/narvii/media/MediaGalleryOptionActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "parent"

    .line 29
    invoke-static {v4}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "parentClass"

    const-class v3, Lcom/narvii/model/Comment;

    .line 30
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 31
    iget-object v2, v4, Lcom/narvii/model/Comment;->mediaList:Ljava/util/List;

    .line 32
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "list"

    .line 33
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "position"

    .line 34
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    invoke-static {v1, v0}, Lcom/narvii/comment/list/CommentListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    :goto_5
    return v9

    .line 36
    :cond_12
    :goto_6
    iget-object v0, v4, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    if-eqz v0, :cond_13

    iget-boolean v0, v0, Lcom/narvii/model/User;->isGlobal:Z

    if-eqz v0, :cond_13

    move v5, v9

    :cond_13
    const-string v0, "config"

    .line 37
    invoke-virtual {v1, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 38
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    if-nez v5, :cond_14

    if-eqz v0, :cond_14

    iget-object v2, v1, Lcom/narvii/comment/list/CommentListAdapter;->communityHelper:Lcom/narvii/community/CommunityHelper;

    .line 39
    invoke-virtual {v2, v0}, Lcom/narvii/community/CommunityHelper;->checkCommunityJoined(I)Z

    move-result v0

    if-nez v0, :cond_14

    return v9

    .line 40
    :cond_14
    iget-object v0, v4, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    sget-object v2, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v1, v0, v2}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 41
    iget-object v0, v4, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    invoke-static {v1, v0}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_15

    return v9

    :cond_15
    const-string v2, "Source"

    iget-object v3, v1, Lcom/narvii/comment/list/CommentListAdapter;->sourceComment:Ljava/lang/String;

    .line 42
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v1, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 43
    instance-of v3, v2, Lcom/narvii/detail/FeedDetailFragment;

    if-eqz v3, :cond_16

    .line 44
    check-cast v2, Lcom/narvii/detail/FeedDetailFragment;

    iget-object v2, v2, Lcom/narvii/detail/FeedDetailFragment;->blockPass:Lcom/narvii/util/statistics/TmpValue;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 45
    :cond_16
    invoke-static {v1, v0}, Lcom/narvii/comment/list/CommentListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    return v9

    .line 46
    :cond_17
    :goto_7
    iget v0, v4, Lcom/narvii/model/Comment;->type:I

    if-ne v0, v6, :cond_18

    invoke-virtual {v4}, Lcom/narvii/model/Comment;->getCommentSticker()Lcom/narvii/model/Sticker;

    move-result-object v0

    if-nez v0, :cond_18

    move v0, v9

    goto :goto_8

    :cond_18
    move v0, v5

    .line 47
    :goto_8
    iget-object v3, v4, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    const/4 v6, 0x0

    if-nez v3, :cond_19

    move-object v3, v6

    goto :goto_9

    :cond_19
    iget-object v3, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    :goto_9
    iget-object v10, v1, Lcom/narvii/comment/list/CommentListAdapter;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v10}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    iget-object v10, v1, Lcom/narvii/comment/list/CommentListAdapter;->account:Lcom/narvii/account/AccountService;

    .line 48
    invoke-virtual {v10}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v10

    if-eqz v10, :cond_1a

    iget-object v10, v1, Lcom/narvii/comment/list/CommentListAdapter;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v10}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v10

    invoke-virtual {v10}, Lcom/narvii/model/User;->isCurator()Z

    move-result v10

    if-eqz v10, :cond_1a

    move v10, v9

    goto :goto_a

    :cond_1a
    move v10, v5

    .line 49
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/comment/list/CommentListAdapter;->ownParent()Z

    move-result v11

    if-eqz v0, :cond_1b

    if-nez v3, :cond_1b

    if-nez v10, :cond_1b

    if-nez v11, :cond_1b

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f1202e9

    invoke-static {v0, v2, v9}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    return v9

    :cond_1b
    const/4 v0, 0x7

    new-array v10, v0, [I

    .line 51
    invoke-virtual {v4}, Lcom/narvii/model/Comment;->isStickerComment()Z

    move-result v12

    .line 52
    instance-of v0, v2, Lcom/narvii/comment/list/CommentItem;

    if-eqz v0, :cond_1c

    .line 53
    move-object v0, v2

    check-cast v0, Lcom/narvii/comment/list/CommentItem;

    goto :goto_b

    .line 54
    :cond_1c
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/comment/list/CommentItem;

    :goto_b
    if-eqz v0, :cond_1d

    .line 55
    invoke-virtual {v0}, Lcom/narvii/comment/list/CommentItem;->hasVotes()Z

    move-result v0

    goto :goto_c

    :cond_1d
    move v0, v5

    .line 56
    :goto_c
    new-instance v7, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v7, v13}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    if-eqz v3, :cond_1e

    const v13, 0x7f120438

    aput v13, v10, v5

    .line 57
    invoke-virtual {v7, v13, v5}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    move v13, v9

    goto :goto_d

    :cond_1e
    move v13, v5

    :goto_d
    add-int/lit8 v14, v13, 0x1

    const v15, 0x7f120ff7

    .line 58
    aput v15, v10, v13

    .line 59
    invoke-virtual {v7, v15, v5}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    if-nez v0, :cond_20

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/comment/list/CommentListAdapter;->isAnnouncement()Z

    move-result v15

    if-nez v15, :cond_20

    .line 61
    iget v15, v4, Lcom/narvii/model/Comment;->votedValue:I

    if-ne v15, v9, :cond_1f

    add-int/2addr v13, v8

    const v8, 0x7f12120e

    .line 62
    aput v8, v10, v14

    .line 63
    invoke-virtual {v7, v8, v5}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    :goto_e
    move v14, v13

    goto :goto_f

    :cond_1f
    add-int/2addr v13, v8

    const v8, 0x7f120b8c

    .line 64
    aput v8, v10, v14

    .line 65
    invoke-virtual {v7, v8, v5}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    goto :goto_e

    :cond_20
    :goto_f
    if-eqz v0, :cond_21

    add-int/lit8 v0, v14, 0x1

    const v8, 0x7f1202f1

    .line 66
    aput v8, v10, v14

    .line 67
    invoke-virtual {v7, v8, v5}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    :goto_10
    move v14, v0

    goto :goto_11

    .line 68
    :cond_21
    iget v0, v4, Lcom/narvii/model/Comment;->votesSum:I

    if-lez v0, :cond_22

    add-int/lit8 v0, v14, 0x1

    const v8, 0x7f1202f0

    .line 69
    aput v8, v10, v14

    .line 70
    invoke-virtual {v7, v8, v5}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    goto :goto_10

    .line 71
    :cond_22
    :goto_11
    invoke-virtual {v4}, Lcom/narvii/model/Comment;->isStickerComment()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {v4}, Lcom/narvii/model/Comment;->getCommentSticker()Lcom/narvii/model/Sticker;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 72
    iget-object v0, v4, Lcom/narvii/model/Comment;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v8, "sticker"

    const-string v13, "stickerCollectionSummary"

    filled-new-array {v8, v13}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 73
    :try_start_0
    sget-object v8, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v13, Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {v8, v0, v13}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    goto :goto_12

    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_23
    :goto_12
    if-eqz v6, :cond_24

    .line 75
    invoke-virtual {v6}, Lcom/narvii/monetization/sticker/model/StickerCollection;->canBeFlagged()Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_13

    :cond_24
    move v0, v5

    goto :goto_14

    :cond_25
    :goto_13
    move v0, v9

    :goto_14
    if-nez v3, :cond_26

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/comment/list/CommentListAdapter;->isAnnouncement()Z

    move-result v6

    if-nez v6, :cond_26

    if-eqz v0, :cond_26

    add-int/lit8 v0, v14, 0x1

    const v6, 0x7f120781

    .line 77
    aput v6, v10, v14

    .line 78
    invoke-virtual {v7, v6, v5}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    move v14, v0

    :cond_26
    if-nez v3, :cond_27

    if-eqz v11, :cond_28

    :cond_27
    add-int/lit8 v0, v14, 0x1

    const v3, 0x7f1203a0

    .line 79
    aput v3, v10, v14

    .line 80
    invoke-virtual {v7, v3, v9}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    move v14, v0

    :cond_28
    if-eqz v12, :cond_29

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/comment/list/CommentListAdapter;->allowViewStickerDetail()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {v4}, Lcom/narvii/model/Comment;->getCommentSticker()Lcom/narvii/model/Sticker;

    move-result-object v0

    if-eqz v0, :cond_2a

    add-int/lit8 v0, v14, 0x1

    const v3, 0x7f12126f    # 1.94163E38f

    .line 82
    aput v3, v10, v14

    .line 83
    invoke-virtual {v7, v3, v5}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    :goto_15
    move v14, v0

    goto :goto_16

    :cond_29
    add-int/lit8 v0, v14, 0x1

    const v3, 0x7f120348

    .line 84
    aput v3, v10, v14

    .line 85
    invoke-virtual {v7, v3, v5}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    goto :goto_15

    :cond_2a
    :goto_16
    iget-object v0, v1, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    const-string v3, "account"

    .line 86
    invoke-interface {v0, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 87
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v3

    if-eqz v3, :cond_2b

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/comment/list/CommentListAdapter;->isAnnouncement()Z

    move-result v0

    if-nez v0, :cond_2b

    const v0, 0x7f12009d

    .line 89
    aput v0, v10, v14

    const v3, 0x7f0d0185

    .line 90
    invoke-virtual {v7, v0, v5, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(III)V

    .line 91
    :cond_2b
    new-instance v0, Lcom/narvii/comment/list/CommentListAdapter$4;

    invoke-direct {v0, v1, v10, v4}, Lcom/narvii/comment/list/CommentListAdapter$4;-><init>(Lcom/narvii/comment/list/CommentListAdapter;[ILcom/narvii/model/Comment;)V

    invoke-virtual {v7, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 92
    :try_start_1
    invoke-virtual {v7}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_17

    :catchall_0
    move-exception v0

    move-object v3, v0

    const-string v0, "comment"

    .line 93
    invoke-static {v0, v3}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    :goto_17
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/widget/NVListView;

    if-eqz v0, :cond_2c

    .line 95
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {v0, v2}, Lcom/narvii/widget/NVListView;->startBlinkLong(Landroid/view/View;)V

    :cond_2c
    return v9

    .line 96
    :cond_2d
    instance-of v4, v0, Lcom/narvii/comment/list/CommentListAdapter$ReadMore;

    if-eqz v4, :cond_2e

    .line 97
    move-object v4, v0

    check-cast v4, Lcom/narvii/comment/list/CommentListAdapter$ReadMore;

    iget-object v4, v4, Lcom/narvii/comment/list/CommentListAdapter$ReadMore;->head:Lcom/narvii/model/Comment;

    invoke-virtual {v1, v4}, Lcom/narvii/comment/list/CommentListAdapter;->loadSubComment(Lcom/narvii/model/Comment;)V

    .line 98
    :cond_2e
    :goto_18
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

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "new"

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_9

    .line 8
    .line 9
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 10
    .line 11
    instance-of v3, v0, Lcom/narvii/model/Comment;

    .line 12
    .line 13
    if-eqz v3, :cond_9

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/model/Comment;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 19
    move-result v3

    .line 20
    .line 21
    iget v4, v0, Lcom/narvii/model/Comment;->ndcId:I

    .line 22
    const/4 v5, 0x0

    .line 23
    .line 24
    if-nez v4, :cond_0

    .line 25
    move v4, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v4, v5

    .line 28
    .line 29
    :goto_0
    if-eq v3, v4, :cond_1

    .line 30
    return-void

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    if-eqz v3, :cond_9

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 44
    move-result-object v3

    .line 45
    .line 46
    .line 47
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    move-result v3

    .line 49
    .line 50
    if-nez v3, :cond_9

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    iget-object v4, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result v3

    .line 65
    .line 66
    if-eqz v3, :cond_9

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Lcom/narvii/comment/list/CommentListAdapter;->isSubComment(Lcom/narvii/model/Comment;)Z

    .line 70
    move-result v3

    .line 71
    .line 72
    const-string v4, "edit"

    .line 73
    .line 74
    if-eqz v3, :cond_7

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 78
    move-result-object v3

    .line 79
    .line 80
    iget-object v5, v0, Lcom/narvii/model/Comment;->headCommentId:Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    invoke-static {v3, v5}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 84
    move-result v3

    .line 85
    .line 86
    if-ltz v3, :cond_9

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 90
    move-result-object v5

    .line 91
    .line 92
    .line 93
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    move-result-object v3

    .line 95
    .line 96
    check-cast v3, Lcom/narvii/model/Comment;

    .line 97
    .line 98
    iget-object v5, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 99
    .line 100
    const-string v6, "update"

    .line 101
    .line 102
    if-eq v5, v6, :cond_6

    .line 103
    .line 104
    if-ne v5, v4, :cond_2

    .line 105
    goto :goto_1

    .line 106
    .line 107
    :cond_2
    if-ne v5, v1, :cond_5

    .line 108
    .line 109
    new-instance v4, Ljava/util/ArrayList;

    .line 110
    .line 111
    .line 112
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    iget-object v5, v3, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    .line 118
    .line 119
    if-eqz v5, :cond_4

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    .line 123
    move-result-object v0

    .line 124
    .line 125
    .line 126
    invoke-static {v5, v0}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 127
    move-result v0

    .line 128
    .line 129
    if-eqz v0, :cond_3

    .line 130
    return-void

    .line 131
    .line 132
    :cond_3
    iget-object v0, v3, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 136
    .line 137
    :cond_4
    iput-object v4, v3, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    .line 138
    .line 139
    iget v0, v3, Lcom/narvii/model/Comment;->subcommentsCount:I

    .line 140
    add-int/2addr v0, v2

    .line 141
    .line 142
    iput v0, v3, Lcom/narvii/model/Comment;->subcommentsCount:I

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->notifyDataSetChanged()V

    .line 146
    .line 147
    goto/16 :goto_2

    .line 148
    .line 149
    :cond_5
    const-string v4, "delete"

    .line 150
    .line 151
    if-ne v5, v4, :cond_9

    .line 152
    .line 153
    iget-object v4, v3, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    .line 154
    .line 155
    if-eqz v4, :cond_9

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    .line 159
    move-result-object v0

    .line 160
    .line 161
    .line 162
    invoke-static {v4, v0}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 163
    move-result v0

    .line 164
    .line 165
    if-ltz v0, :cond_9

    .line 166
    .line 167
    new-instance v4, Ljava/util/ArrayList;

    .line 168
    .line 169
    .line 170
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .line 172
    iget-object v5, v3, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 179
    .line 180
    iput-object v4, v3, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    .line 181
    .line 182
    iget v0, v3, Lcom/narvii/model/Comment;->subcommentsCount:I

    .line 183
    sub-int/2addr v0, v2

    .line 184
    .line 185
    iput v0, v3, Lcom/narvii/model/Comment;->subcommentsCount:I

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->notifyDataSetChanged()V

    .line 189
    .line 190
    goto/16 :goto_2

    .line 191
    .line 192
    :cond_6
    :goto_1
    iget-object v4, v3, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    .line 193
    .line 194
    if-eqz v4, :cond_9

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    .line 198
    move-result-object v5

    .line 199
    .line 200
    .line 201
    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 202
    move-result v4

    .line 203
    .line 204
    if-ltz v4, :cond_9

    .line 205
    .line 206
    new-instance v5, Ljava/util/ArrayList;

    .line 207
    .line 208
    .line 209
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .line 211
    iget-object v6, v3, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 215
    .line 216
    .line 217
    invoke-virtual {v5, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    iput-object v5, v3, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->notifyDataSetChanged()V

    .line 223
    goto :goto_2

    .line 224
    .line 225
    :cond_7
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 226
    .line 227
    if-ne v0, v4, :cond_8

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 231
    move-result-object v0

    .line 232
    .line 233
    iget-object v3, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    invoke-static {v0, v3}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 237
    move-result v3

    .line 238
    .line 239
    if-ltz v3, :cond_8

    .line 240
    .line 241
    .line 242
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 243
    move-result-object v0

    .line 244
    .line 245
    check-cast v0, Lcom/narvii/model/Comment;

    .line 246
    .line 247
    iget-object v3, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 248
    .line 249
    check-cast v3, Lcom/narvii/model/Comment;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v3}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 253
    move-result-object v3

    .line 254
    .line 255
    check-cast v3, Lcom/narvii/model/Comment;

    .line 256
    .line 257
    iget-boolean v4, v0, Lcom/narvii/model/Comment;->subcommentIsEnd:Z

    .line 258
    .line 259
    iput-boolean v4, v3, Lcom/narvii/model/Comment;->subcommentIsEnd:Z

    .line 260
    .line 261
    iget v4, v0, Lcom/narvii/model/Comment;->subcommentsCount:I

    .line 262
    .line 263
    iput v4, v3, Lcom/narvii/model/Comment;->subcommentsCount:I

    .line 264
    .line 265
    iget v4, v0, Lcom/narvii/model/Comment;->subcommentStart:I

    .line 266
    .line 267
    iput v4, v3, Lcom/narvii/model/Comment;->subcommentStart:I

    .line 268
    .line 269
    iget-object v4, v0, Lcom/narvii/model/Comment;->subcommentStoptime:Ljava/lang/String;

    .line 270
    .line 271
    iput-object v4, v3, Lcom/narvii/model/Comment;->subcommentStoptime:Ljava/lang/String;

    .line 272
    .line 273
    iget-object v0, v0, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    .line 274
    .line 275
    iput-object v0, v3, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    .line 276
    .line 277
    new-instance v0, Lcom/narvii/notification/Notification;

    .line 278
    .line 279
    iget-object p1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    invoke-direct {v0, p1, v3}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 283
    move-object p1, v0

    .line 284
    .line 285
    .line 286
    :cond_8
    invoke-virtual {p0, p1, v5}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 287
    .line 288
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 289
    .line 290
    if-ne v0, v1, :cond_9

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    .line 294
    move-result-object v0

    .line 295
    .line 296
    instance-of v0, v0, Lcom/narvii/list/NVListFragment;

    .line 297
    .line 298
    if-eqz v0, :cond_9

    .line 299
    .line 300
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->focusingCommentRect:Landroid/graphics/Rect;

    .line 301
    .line 302
    if-nez v0, :cond_9

    .line 303
    .line 304
    .line 305
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    .line 306
    move-result-object v0

    .line 307
    .line 308
    check-cast v0, Lcom/narvii/list/NVListFragment;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0}, Lcom/narvii/list/NVListFragment;->getHoverCurrentView()Landroid/view/View;

    .line 312
    move-result-object v0

    .line 313
    .line 314
    if-eqz v0, :cond_9

    .line 315
    .line 316
    new-instance v0, Lcom/narvii/comment/list/CommentListAdapter$6;

    .line 317
    .line 318
    .line 319
    invoke-direct {v0, p0}, Lcom/narvii/comment/list/CommentListAdapter$6;-><init>(Lcom/narvii/comment/list/CommentListAdapter;)V

    .line 320
    .line 321
    const-wide/16 v3, 0xc8

    .line 322
    .line 323
    .line 324
    invoke-static {v0, v3, v4}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 325
    .line 326
    :cond_9
    :goto_2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 327
    .line 328
    if-ne v0, v1, :cond_a

    .line 329
    .line 330
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 331
    .line 332
    instance-of v0, v0, Lcom/narvii/model/Comment;

    .line 333
    .line 334
    if-eqz v0, :cond_a

    .line 335
    .line 336
    .line 337
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    .line 338
    move-result-object v0

    .line 339
    .line 340
    instance-of v0, v0, Lcom/narvii/list/NVListFragment;

    .line 341
    .line 342
    if-eqz v0, :cond_a

    .line 343
    .line 344
    .line 345
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    .line 346
    move-result-object v0

    .line 347
    .line 348
    check-cast v0, Lcom/narvii/list/NVListFragment;

    .line 349
    .line 350
    iget-object p1, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    .line 351
    .line 352
    const-wide/16 v3, 0x190

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/narvii/list/NVListFragment;->blinkItem(Ljava/lang/String;ZJ)V

    .line 356
    :cond_a
    return-void
.end method

.method public onPostDone(Lcom/narvii/comment/post/CommentPostActivity;Z)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/narvii/comment/post/CommentPostActivity;->setStatusListener(Lcom/narvii/comment/post/CommentPostActivity$StatusListener;)V

    .line 5
    .line 6
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->focusingCommentRect:Landroid/graphics/Rect;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->bottomPadding()I

    .line 10
    move-result p1

    .line 11
    .line 12
    iput p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->bottomPadding:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->notifyDataSetChanged()V

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    .line 20
    .line 21
    const-string p2, "scenario_comment"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lcom/narvii/account/push/PushNotificationHelper;->showRemindDialogIfNeeded(Ljava/lang/String;)Z

    .line 25
    :cond_0
    return-void
.end method

.method protected onReply()V
    .locals 0

    return-void
.end method

.method protected onViewStickerClicked(Landroid/content/Intent;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 4
    return-void
.end method

.method protected ownParent()Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    const-string v2, "account"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    check-cast v2, Lcom/narvii/account/AccountService;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    return v1

    .line 24
    .line 25
    :cond_1
    iget-object v1, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    move-result v0

    .line 34
    return v0
.end method

.method public resetList()V
    .locals 3

    .line 1
    .line 2
    const-string v0, "api"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListAdapter;->subloading:Ljava/util/HashMap;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v2

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    check-cast v2, Lcom/narvii/util/http/ApiRequest;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->subloading:Ljava/util/HashMap;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->notifyDataSetChanged()V

    .line 43
    .line 44
    .line 45
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 46
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

    const-class v0, Lcom/narvii/model/api/CommentListResponse;

    return-object v0
.end method

.method setFocusingComment(Lcom/narvii/model/Comment;)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 9
    move-result v0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 21
    move-result v2

    .line 22
    .line 23
    .line 24
    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x0

    .line 27
    .line 28
    :goto_0
    if-ge v4, v2, :cond_2

    .line 29
    .line 30
    add-int v5, v4, v0

    .line 31
    .line 32
    if-ge v5, v3, :cond_2

    .line 33
    .line 34
    if-ltz v0, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-interface {v1, v5}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 38
    move-result-object v5

    .line 39
    .line 40
    instance-of v6, v5, Lcom/narvii/model/Comment;

    .line 41
    .line 42
    if-eqz v6, :cond_1

    .line 43
    .line 44
    check-cast v5, Lcom/narvii/model/Comment;

    .line 45
    .line 46
    .line 47
    invoke-static {v5, p1}, Lcom/narvii/util/Utils;->isIdEquals(Lcom/narvii/model/NVObject;Lcom/narvii/model/NVObject;)Z

    .line 48
    move-result v5

    .line 49
    .line 50
    if-eqz v5, :cond_1

    .line 51
    .line 52
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    new-instance v0, Landroid/graphics/Rect;

    .line 59
    .line 60
    .line 61
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 62
    .line 63
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListAdapter;->listView:Landroid/widget/ListView;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 67
    .line 68
    new-instance v1, Landroid/graphics/Rect;

    .line 69
    .line 70
    .line 71
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 72
    .line 73
    iput-object v1, p0, Lcom/narvii/comment/list/CommentListAdapter;->focusingCommentRect:Landroid/graphics/Rect;

    .line 74
    .line 75
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 76
    .line 77
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 78
    .line 79
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 80
    .line 81
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 82
    .line 83
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 87
    move-result v3

    .line 88
    add-int/2addr v2, v3

    .line 89
    .line 90
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 91
    .line 92
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListAdapter;->focusingCommentRect:Landroid/graphics/Rect;

    .line 93
    .line 94
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 98
    move-result p1

    .line 99
    add-int/2addr v0, p1

    .line 100
    .line 101
    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 102
    goto :goto_1

    .line 103
    .line 104
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 105
    goto :goto_0

    .line 106
    :cond_2
    :goto_1
    return-void
.end method

.method public setSort(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->sort:I

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->sort:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->resetList()V

    .line 10
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

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->sort:I

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    const/4 v1, 0x2

    .line 9
    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->isQuestionAndAnswer()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    return v1

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :cond_1
    return v0
.end method

.method protected sortName()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->sort()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    const/4 v1, 0x2

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    const-string v0, "newest"

    .line 13
    return-object v0

    .line 14
    .line 15
    :cond_0
    const-string v0, "vote"

    .line 16
    return-object v0

    .line 17
    .line 18
    :cond_1
    const-string v0, "oldest"

    .line 19
    return-object v0
.end method

.method protected subCommentLayoutId()I
    .locals 1

    const v0, 0x7f0d0108

    return v0
.end method
