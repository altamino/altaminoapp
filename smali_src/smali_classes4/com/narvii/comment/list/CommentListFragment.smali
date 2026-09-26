.class public Lcom/narvii/comment/list/CommentListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/theme/IFakeActionBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/comment/list/CommentListFragment$Adapter;,
        Lcom/narvii/comment/list/CommentListFragment$AddNewCommentAdapter;,
        Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;
    }
.end annotation


# static fields
.field public static final COMMENT_KEY_AUTO_JOIN:Ljava/lang/String; = "autoJoin"

.field public static final COMMENT_KEY_BACKGROUND:Ljava/lang/String; = "background"

.field public static final COMMENT_KEY_BACKGROUND_TYPE:Ljava/lang/String; = "backgroundType"

.field public static final COMMENT_KEY_BLUR_BACKGROUND:Ljava/lang/String; = "blurBackground"

.field public static final COMMENT_KEY_FEED:Ljava/lang/String; = "feed"

.field public static final COMMENT_KEY_IS_ANNOUNCEMENT:Ljava/lang/String; = "isAnnouncement"

.field public static final COMMENT_KEY_IS_QUESTION:Ljava/lang/String; = "isQuestion"

.field public static final COMMENT_KEY_LOGGING_ORIGIN:Ljava/lang/String; = "loggingOrigin"

.field public static final COMMENT_KEY_LOGGING_SOURCE:Ljava/lang/String; = "loggingSource"

.field public static final COMMENT_KEY_PARENT_ID:Ljava/lang/String; = "parent-id"

.field public static final COMMENT_KEY_PARENT_TYPE:Ljava/lang/String; = "parent-type"

.field public static final COMMENT_KEY_SHOW_EMOJI_ONLY:Ljava/lang/String; = "showEmojiOnly"

.field public static final COMMENT_KEY_SOURCE:Ljava/lang/String; = "source"

.field public static final COMMENT_KEY_TYPE:Ljava/lang/String; = "type"

.field public static final COMMENT_KEY_id:Ljava/lang/String; = "id"

.field private static final votesComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/narvii/model/Comment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actionBarOverlay:Landroid/view/View;

.field adapter:Lcom/narvii/comment/list/CommentListFragment$Adapter;

.field private autoKeyboardShowed:Z

.field fakeActionBar:Landroid/view/View;

.field private isQuestion:Z

.field onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field parent:Lcom/narvii/model/NVObject;

.field private pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

.field private requestBack:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/comment/list/CommentListFragment$4;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/comment/list/CommentListFragment$4;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/comment/list/CommentListFragment;->votesComparator:Ljava/util/Comparator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/comment/list/CommentListFragment$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/comment/list/CommentListFragment$1;-><init>(Lcom/narvii/comment/list/CommentListFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/comment/list/CommentListFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 11
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/comment/list/CommentListFragment;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    .line 3
    return p0
.end method

.method private autoShowKeyboard()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/comment/list/CommentListFragment;->autoKeyboardShowed:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment;->adapter:Lcom/narvii/comment/list/CommentListFragment$Adapter;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/narvii/comment/list/CommentListFragment;->requestBack:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    const/4 v0, 0x1

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/narvii/comment/list/CommentListFragment;->autoKeyboardShowed:Z

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/narvii/comment/list/CommentListFragment;->commentNew(Ljava/lang/String;)V

    .line 21
    :cond_1
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

.method private supportPermissionSetting()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListFragment;->parentType()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment;->parent:Lcom/narvii/model/NVObject;

    .line 10
    .line 11
    instance-of v0, v0, Lcom/narvii/model/Blog;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListFragment;->isMine()Z

    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method static bridge synthetic t(Lcom/narvii/comment/list/CommentListFragment;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/comment/list/CommentListFragment;->actionBarOverlay:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/comment/list/CommentListFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/comment/list/CommentListFragment;->isQuestion:Z

    return p0
.end method

.method static bridge synthetic v(Lcom/narvii/comment/list/CommentListFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/comment/list/CommentListFragment;->requestBack:Z

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/comment/list/CommentListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/comment/list/CommentListFragment;->autoShowKeyboard()V

    return-void
.end method


# virtual methods
.method commentNew(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

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
    const-string v1, "parentType"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListFragment;->parentType()I

    .line 17
    move-result v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21
    .line 22
    const-string v1, "parentId"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListFragment;->parentId()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListFragment;->parent:Lcom/narvii/model/NVObject;

    .line 32
    .line 33
    instance-of v2, v1, Lcom/narvii/model/Blog;

    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    check-cast v1, Lcom/narvii/model/Blog;

    .line 38
    .line 39
    iget v1, v1, Lcom/narvii/model/Blog;->type:I

    .line 40
    .line 41
    const-string v2, "parentSubType"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 45
    .line 46
    :cond_0
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListFragment;->parent:Lcom/narvii/model/NVObject;

    .line 47
    .line 48
    instance-of v2, v1, Lcom/narvii/model/Feed;

    .line 49
    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    const-string v2, "feed"

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    .line 61
    :cond_1
    const-string v1, "__communityId"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListFragment;->communityId()I

    .line 65
    move-result v2

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListFragment;->parent:Lcom/narvii/model/NVObject;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListFragment;->parentType()I

    .line 74
    move-result v2

    .line 75
    .line 76
    .line 77
    invoke-static {p0, v1, v2}, Lcom/narvii/util/StatisticHelper;->getStatisticSource(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    const-string v2, "stat_parent_type"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    .line 85
    const-string v1, "Source"

    .line 86
    .line 87
    const-string v2, "Comment List"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    .line 92
    sget-object v1, Lcom/narvii/util/logging/LoggingSource;->CommentDetailView:Lcom/narvii/util/logging/LoggingSource;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    const-string v2, "loggingSource"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    .line 103
    const-string v1, "loggingOrigin"

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    move-result-object v2

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    .line 112
    const-string v1, "autoJoin"

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 116
    move-result v2

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 120
    .line 121
    const-string v1, "isAnnouncement"

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 125
    move-result v2

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    .line 130
    const-string v1, "showEmojiOnly"

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 134
    move-result v2

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    .line 139
    const-string v1, "stickerCollectionId"

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    .line 144
    const-string p1, "__interactionScope"

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 148
    move-result v1

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 152
    .line 153
    .line 154
    invoke-static {p0, v0}, Lcom/narvii/comment/list/CommentListFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 155
    .line 156
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListFragment;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/narvii/account/push/PushNotificationHelper;->checkRemindDialogWhenPostFinished()V

    .line 160
    return-void
.end method

.method communityId()I
    .locals 1

    .line 1
    .line 2
    const-string v0, "__communityId"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 6

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/comment/list/CommentListFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/comment/list/CommentListFragment$Adapter;-><init>(Lcom/narvii/comment/list/CommentListFragment;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListFragment;->adapter:Lcom/narvii/comment/list/CommentListFragment$Adapter;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListFragment;->isDarkTheme()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 15
    .line 16
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 20
    .line 21
    new-instance v0, Lcom/narvii/comment/list/CommentListFragment$AddNewCommentAdapter;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/narvii/comment/list/CommentListFragment$AddNewCommentAdapter;-><init>(Lcom/narvii/comment/list/CommentListFragment;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListFragment;->isDarkTheme()Z

    .line 28
    move-result v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 32
    .line 33
    new-instance v1, Lcom/narvii/list/StaticViewAdapter;

    .line 34
    .line 35
    .line 36
    invoke-direct {v1}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 37
    const/4 v2, 0x1

    .line 38
    .line 39
    new-array v3, v2, [Landroid/view/View;

    .line 40
    .line 41
    new-instance v4, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 45
    move-result-object v5

    .line 46
    .line 47
    .line 48
    invoke-direct {v4, v5}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v5, 0x0

    .line 50
    .line 51
    aput-object v4, v3, v5

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v3}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListFragment;->isDarkTheme()Z

    .line 58
    move-result v3

    .line 59
    .line 60
    if-eqz v3, :cond_0

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    invoke-virtual {p1, v0, v5}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 67
    .line 68
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment;->adapter:Lcom/narvii/comment/list/CommentListFragment$Adapter;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 72
    .line 73
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment;->adapter:Lcom/narvii/comment/list/CommentListFragment$Adapter;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/narvii/comment/list/CommentListFragment$Adapter;->isQuestionAndAnswer()Z

    .line 77
    move-result v0

    .line 78
    .line 79
    if-eqz v0, :cond_1

    .line 80
    .line 81
    .line 82
    const v0, 0x7f12014c

    .line 83
    goto :goto_0

    .line 84
    .line 85
    .line 86
    :cond_1
    const v0, 0x7f1202f7

    .line 87
    .line 88
    .line 89
    :goto_0
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 90
    .line 91
    new-instance v0, Lcom/narvii/list/StaticViewAdapter;

    .line 92
    .line 93
    .line 94
    invoke-direct {v0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 95
    .line 96
    const-string v1, "show_footer"

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v1, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 100
    move-result v1

    .line 101
    .line 102
    if-eqz v1, :cond_3

    .line 103
    .line 104
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListFragment;->parent:Lcom/narvii/model/NVObject;

    .line 105
    .line 106
    instance-of v3, v1, Lcom/narvii/model/Feed;

    .line 107
    .line 108
    if-eqz v3, :cond_3

    .line 109
    .line 110
    check-cast v1, Lcom/narvii/model/Feed;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 114
    move-result v3

    .line 115
    xor-int/2addr v3, v2

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v3}, Lcom/narvii/model/Feed;->getCommentsCount(Z)I

    .line 119
    move-result v1

    .line 120
    .line 121
    if-lez v1, :cond_3

    .line 122
    .line 123
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment;->parent:Lcom/narvii/model/NVObject;

    .line 124
    .line 125
    check-cast v0, Lcom/narvii/model/Feed;

    .line 126
    .line 127
    iget v1, v0, Lcom/narvii/model/Feed;->ndcId:I

    .line 128
    .line 129
    if-gez v1, :cond_2

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListFragment;->communityId()I

    .line 133
    move-result v1

    .line 134
    .line 135
    iput v1, v0, Lcom/narvii/model/Feed;->ndcId:I

    .line 136
    .line 137
    .line 138
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 139
    move-result v1

    .line 140
    xor-int/2addr v1, v2

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1}, Lcom/narvii/model/Feed;->getCommentsCount(Z)I

    .line 144
    move-result v1

    .line 145
    .line 146
    if-lez v1, :cond_4

    .line 147
    .line 148
    new-instance v1, Lcom/narvii/comment/CommentListFooterAdapter;

    .line 149
    const/4 v3, 0x0

    .line 150
    .line 151
    .line 152
    invoke-direct {v1, p0, v0, v2, v3}, Lcom/narvii/comment/CommentListFooterAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;ZLcom/narvii/model/Community;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 156
    goto :goto_1

    .line 157
    .line 158
    .line 159
    :cond_3
    const v1, 0x7f0d04e2

    .line 160
    .line 161
    .line 162
    filled-new-array {v1}, [I

    .line 163
    move-result-object v1

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v1}, Lcom/narvii/list/StaticViewAdapter;->addLayouts([I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    :cond_4
    :goto_1
    return-object p1
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "comment_list"

    return-object v0
.end method

.method public getPostEntryLift()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lcom/narvii/wallet/optinads/OptinAdsUtil;->getBannerLift(Lcom/narvii/app/NVContext;I)I

    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public isDarkTheme()Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "background"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public isMine()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment;->parent:Lcom/narvii/model/NVObject;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v0, "account"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListFragment;->parent:Lcom/narvii/model/NVObject;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    return v0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected observeThemeDownloadFinish()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onActiveChanged(Z)V

    .line 4
    .line 5
    const-string v0, "config"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const-string v0, "liveLayer"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    const-string v2, "comment-list?parent-type="

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListFragment;->parentType()I

    .line 41
    move-result v2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v2, "&parent-id="

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListFragment;->parentId()Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1, p1}, Lcom/narvii/livelayer/LiveLayerService;->reportBrowsing(Ljava/lang/String;Z)V

    .line 64
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x6f

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    const/4 v0, -0x1

    .line 6
    .line 7
    if-ne p2, v0, :cond_0

    .line 8
    .line 9
    const-string v0, "collectionId"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/narvii/comment/list/CommentListFragment;->commentNew(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 20
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 8
    .line 9
    const-string v0, "feed"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    new-instance v1, Lcom/narvii/model/Feed$FeedDeserializer;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1}, Lcom/narvii/model/Feed$FeedDeserializer;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readUsing(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Lcom/narvii/model/NVObject;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/comment/list/CommentListFragment;->parent:Lcom/narvii/model/NVObject;

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    new-instance v0, Lcom/narvii/comment/list/CommentListFragment$2;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/narvii/comment/list/CommentListFragment$2;-><init>(Lcom/narvii/comment/list/CommentListFragment;)V

    .line 34
    .line 35
    iput-object v0, p0, Lcom/narvii/comment/list/CommentListFragment;->parent:Lcom/narvii/model/NVObject;

    .line 36
    .line 37
    :cond_0
    const-string v0, "isQuestion"

    .line 38
    .line 39
    if-nez p1, :cond_1

    .line 40
    const/4 p1, 0x0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 44
    move-result p1

    .line 45
    .line 46
    iput-boolean p1, p0, Lcom/narvii/comment/list/CommentListFragment;->isQuestion:Z

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 51
    move-result p1

    .line 52
    .line 53
    iput-boolean p1, p0, Lcom/narvii/comment/list/CommentListFragment;->isQuestion:Z

    .line 54
    .line 55
    :goto_0
    new-instance p1, Lcom/narvii/account/push/PushNotificationHelper;

    .line 56
    .line 57
    .line 58
    invoke-direct {p1, p0}, Lcom/narvii/account/push/PushNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 59
    .line 60
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListFragment;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    .line 61
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/comment/list/CommentListFragment;->supportPermissionSetting()Z

    .line 7
    move-result p2

    .line 8
    const/4 v0, 0x2

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    .line 14
    const p2, 0x7f120f45

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v1, p2, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    const v3, 0x7f08033d

    .line 26
    .line 27
    .line 28
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    .line 32
    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    .line 36
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    const p2, 0x7f1202f2

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, v1, p2, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    .line 50
    const v1, 0x7f080214

    .line 51
    .line 52
    .line 53
    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 54
    move-result-object p2

    .line 55
    .line 56
    .line 57
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 62
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d02bc

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object p2, p0, Lcom/narvii/comment/list/CommentListFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 9
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f1202f2

    .line 8
    .line 9
    if-ne v0, v1, :cond_4

    .line 10
    .line 11
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    const-string v0, "isAnnouncement"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    const/16 v1, 0x8

    .line 27
    const/4 v2, 0x4

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    iget-object v3, p0, Lcom/narvii/comment/list/CommentListFragment;->adapter:Lcom/narvii/comment/list/CommentListFragment$Adapter;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/narvii/comment/list/CommentListAdapter;->sort()I

    .line 35
    move-result v3

    .line 36
    const/4 v4, 0x2

    .line 37
    .line 38
    if-ne v3, v4, :cond_0

    .line 39
    move v3, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v3, v1

    .line 42
    .line 43
    .line 44
    :goto_0
    const v4, 0x7f1202f5

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v4, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 48
    .line 49
    :cond_1
    iget-object v3, p0, Lcom/narvii/comment/list/CommentListFragment;->adapter:Lcom/narvii/comment/list/CommentListFragment$Adapter;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/narvii/comment/list/CommentListAdapter;->sort()I

    .line 53
    move-result v3

    .line 54
    .line 55
    if-nez v3, :cond_2

    .line 56
    move v3, v2

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    move v3, v1

    .line 59
    .line 60
    .line 61
    :goto_1
    const v4, 0x7f1202f3

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v4, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 65
    .line 66
    iget-object v3, p0, Lcom/narvii/comment/list/CommentListFragment;->adapter:Lcom/narvii/comment/list/CommentListFragment$Adapter;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/narvii/comment/list/CommentListAdapter;->sort()I

    .line 70
    move-result v3

    .line 71
    const/4 v4, 0x1

    .line 72
    .line 73
    if-ne v3, v4, :cond_3

    .line 74
    move v1, v2

    .line 75
    .line 76
    .line 77
    :cond_3
    const v2, 0x7f1202f4

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v2, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 81
    .line 82
    .line 83
    const v1, 0x7f120fc9

    .line 84
    const/4 v2, 0x0

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 88
    .line 89
    new-instance v1, Lcom/narvii/comment/list/CommentListFragment$3;

    .line 90
    .line 91
    .line 92
    invoke-direct {v1, p0, v0}, Lcom/narvii/comment/list/CommentListFragment$3;-><init>(Lcom/narvii/comment/list/CommentListFragment;Z)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 99
    return v4

    .line 100
    .line 101
    .line 102
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 103
    move-result v0

    .line 104
    .line 105
    .line 106
    const v1, 0x7f120f45

    .line 107
    .line 108
    if-ne v0, v1, :cond_5

    .line 109
    .line 110
    const-class v0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    .line 111
    .line 112
    .line 113
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    const-string v1, "blogId"

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListFragment;->parentId()Ljava/lang/String;

    .line 120
    move-result-object v2

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    .line 125
    .line 126
    invoke-static {p0, v0}, Lcom/narvii/comment/list/CommentListFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 127
    .line 128
    .line 129
    :cond_5
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 130
    move-result p1

    .line 131
    return p1
.end method

.method public onResume()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/comment/list/CommentListFragment;->autoShowKeyboard()V

    .line 7
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
    const-string v0, "isQuestion"

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/narvii/comment/list/CommentListFragment;->isQuestion:Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a0192

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Lcom/narvii/widget/FullscreenBackgroundView;

    .line 13
    .line 14
    const-string v0, "backgroundType"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p2, Lcom/narvii/widget/FullscreenBackgroundView;->backgroundView:Lcom/narvii/widget/NVImageView;

    .line 23
    const/4 v2, 0x1

    .line 24
    .line 25
    iput-boolean v2, v1, Lcom/narvii/widget/NVImageView;->hidePlayButton:Z

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iput-object v0, v1, Lcom/narvii/widget/NVImageView;->imageType:Ljava/lang/String;

    .line 32
    .line 33
    :cond_0
    const-string v0, "background"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    const-class v1, Lcom/narvii/model/Media;

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Lcom/narvii/model/Media;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v0}, Lcom/narvii/widget/FullscreenBackgroundView;->setBackgroundMedia(Lcom/narvii/model/Media;)V

    .line 49
    .line 50
    .line 51
    const p2, 0x7f0a01da

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object p2

    .line 56
    .line 57
    check-cast p2, Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 58
    const/4 v0, 0x0

    .line 59
    .line 60
    if-eqz p2, :cond_2

    .line 61
    .line 62
    const-string v1, "blurBackground"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 66
    move-result v1

    .line 67
    .line 68
    if-eqz v1, :cond_1

    .line 69
    move v1, v0

    .line 70
    goto :goto_0

    .line 71
    .line 72
    :cond_1
    const/16 v1, 0x8

    .line 73
    .line 74
    .line 75
    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    :cond_2
    const p2, 0x7f0a0550

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    move-result-object p2

    .line 83
    .line 84
    iput-object p2, p0, Lcom/narvii/comment/list/CommentListFragment;->fakeActionBar:Landroid/view/View;

    .line 85
    .line 86
    .line 87
    const p2, 0x7f0a0061

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListFragment;->actionBarOverlay:Landroid/view/View;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListFragment;->updateFakeActionBarThemeUI()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 100
    move-result-object p1

    .line 101
    const/4 p2, 0x0

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 112
    return-void
.end method

.method parentId()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment;->parent:Lcom/narvii/model/NVObject;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "parent-id"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    :goto_0
    return-object v0
.end method

.method parentType()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment;->parent:Lcom/narvii/model/NVObject;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "parent-type"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->objectType()I

    .line 15
    move-result v0

    .line 16
    :goto_0
    return v0
.end method

.method public updateFakeActionBarThemeUI()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment;->fakeActionBar:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    const-string v0, "config"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->fakeActionbarBackground()Landroid/graphics/drawable/Drawable;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListFragment;->fakeActionBar:Landroid/view/View;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment;->fakeActionBar:Landroid/view/View;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListFragment;->isDarkTheme()Z

    .line 31
    move-result v1

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 37
    move-result v1

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v1, 0x0

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :cond_1
    :goto_0
    const/16 v1, 0x8

    .line 45
    .line 46
    .line 47
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    :cond_2
    return-void
.end method
