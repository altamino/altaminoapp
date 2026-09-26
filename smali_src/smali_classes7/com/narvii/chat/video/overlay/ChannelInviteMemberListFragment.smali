.class public Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$MyDividerAdapter;,
        Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteNewUSerListAdapter;,
        Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteUserListAdapter;
    }
.end annotation


# static fields
.field static final ADD_MEMBBER:I = 0x2

.field static final INVITE:I = 0x1

.field private static final SUB_FRAGMENT_TAG_BG:Ljava/lang/String; = "vv_background"


# instance fields
.field finishListener:Landroid/view/View$OnClickListener;

.field private inviteNewUserAdapter:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteNewUSerListAdapter;

.field private inviteUserListAdapter:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteUserListAdapter;

.field membersAlreadyInChannel:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;"
        }
    .end annotation
.end field

.field membersAlreadyJoinedMapper:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mergeAdapter:Lcom/narvii/list/MergeAdapter;

.field private myDividerAdapter:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$MyDividerAdapter;

.field rtcService:Lcom/narvii/chat/rtc/RtcService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->membersAlreadyJoinedMapper:Ljava/util/HashMap;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$3;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$3;-><init>(Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->finishListener:Landroid/view/View$OnClickListener;

    .line 18
    return-void
.end method

.method private inviteUser(Lcom/narvii/model/User;)V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    const-string v2, "/chat/thread/"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "id"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v2, "/member/"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v2, "/invite-av-chat"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    const-string v1, "api"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 66
    .line 67
    new-instance v2, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4;

    .line 68
    .line 69
    const-class v3, Lcom/narvii/model/api/ApiResponse;

    .line 70
    .line 71
    .line 72
    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4;-><init>(Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;Ljava/lang/Class;Lcom/narvii/model/User;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 76
    .line 77
    const-string p1, "statistics"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 84
    .line 85
    const-string v0, "Notify User To Join VV Chat"

    .line 86
    .line 87
    .line 88
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    const-string v0, "channel_type"

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 95
    move-result v0

    .line 96
    .line 97
    .line 98
    invoke-static {v0}, Lcom/narvii/chat/ChatActivity;->statChannelType(I)Ljava/lang/String;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    const-string v1, "Type"

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    const-string v0, "thread"

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    const-class v1, Lcom/narvii/model/ChatThread;

    .line 114
    .line 115
    .line 116
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 117
    move-result-object v0

    .line 118
    .line 119
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 120
    const/4 v1, 0x0

    .line 121
    .line 122
    .line 123
    invoke-static {v0, v1}, Lcom/narvii/util/StatisticHelper;->getChatThreadType(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    move-result-object v0

    .line 125
    .line 126
    const-string v1, "Chat Type"

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 130
    move-result-object p1

    .line 131
    .line 132
    const-string v0, "Notify User To Join VV Chat Total"

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 136
    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;)Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteUserListAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->inviteUserListAdapter:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteUserListAdapter;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;)Lcom/narvii/list/MergeAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    return-object p0
.end method

.method static bridge synthetic v(Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;Lcom/narvii/model/User;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->inviteUser(Lcom/narvii/model/User;)V

    return-void
.end method


# virtual methods
.method public addMembers(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    new-instance v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v4

    .line 30
    .line 31
    if-eqz v4, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v4

    .line 36
    .line 37
    check-cast v4, Lcom/narvii/model/User;

    .line 38
    .line 39
    iget-object v5, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    move-result v5

    .line 44
    .line 45
    if-eqz v5, :cond_1

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_1
    iget-object v5, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    iget-object v5, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v5}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 60
    move-result-object v4

    .line 61
    .line 62
    check-cast v4, Lcom/narvii/model/User;

    .line 63
    const/4 v5, 0x2

    .line 64
    .line 65
    iput v5, v4, Lcom/narvii/model/User;->membershipStatus:I

    .line 66
    .line 67
    .line 68
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    goto :goto_0

    .line 70
    .line 71
    :cond_2
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 75
    move-result-object v4

    .line 76
    .line 77
    .line 78
    invoke-direct {p1, v4}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 79
    .line 80
    new-instance v4, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$2;

    .line 81
    .line 82
    .line 83
    invoke-direct {v4, p0, v0, v2, v1}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$2;-><init>(Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;Lcom/narvii/model/ChatThread;Ljava/util/List;Ljava/util/List;)V

    .line 84
    .line 85
    iput-object v4, p1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 89
    .line 90
    .line 91
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 92
    move-result-object v1

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 100
    move-result-object v1

    .line 101
    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    const-string v4, "/chat/thread/"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v0, "/member/invite"

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v0

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 128
    move-result-object v0

    .line 129
    .line 130
    const-string v1, "uids"

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 134
    move-result-object v0

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 138
    move-result-object v0

    .line 139
    .line 140
    const-string v1, "api"

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    move-result-object v1

    .line 145
    .line 146
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 147
    .line 148
    iget-object p1, p1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v0, p1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 152
    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$MyDividerAdapter;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$MyDividerAdapter;-><init>(Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->myDividerAdapter:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$MyDividerAdapter;

    .line 15
    .line 16
    new-instance p1, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteNewUSerListAdapter;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteNewUSerListAdapter;-><init>(Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;)V

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->inviteNewUserAdapter:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteNewUSerListAdapter;

    .line 22
    .line 23
    new-instance p1, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteUserListAdapter;

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, p0}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteUserListAdapter;-><init>(Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;)V

    .line 27
    .line 28
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->inviteUserListAdapter:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteUserListAdapter;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->myDividerAdapter:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$MyDividerAdapter;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->myDividerAdapter:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$MyDividerAdapter;

    .line 38
    const/4 v1, 0x1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 42
    .line 43
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->inviteNewUserAdapter:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteNewUSerListAdapter;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 51
    return-object p1
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 7
    return-object v0
.end method

.method public getThread()Lcom/narvii/model/ChatThread;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/chat/ChatFragment;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/chat/ChatFragment;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    .line 21
    :cond_0
    const-string v0, "thread"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    const-class v1, Lcom/narvii/model/ChatThread;

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 34
    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public inviteMembers()V
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget v1, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 10
    .line 11
    const-string v2, "threadId"

    .line 12
    .line 13
    const-string v3, "maxMember"

    .line 14
    .line 15
    const-string v4, "exists"

    .line 16
    .line 17
    const-class v5, Lcom/narvii/user/picker/MultiUserPickerFragment;

    .line 18
    .line 19
    const-string v6, "showSearchBar"

    .line 20
    const/4 v7, 0x1

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    iget v8, v0, Lcom/narvii/model/ChatThread;->membershipStatus:I

    .line 25
    .line 26
    if-ne v8, v7, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-static {v5}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget-object v5, v0, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    .line 33
    .line 34
    .line 35
    invoke-static {v5}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    move-result-object v5

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 43
    .line 44
    const/16 v4, 0x64

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    invoke-static {p0, v1, v7}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const/4 v8, 0x2

    .line 63
    .line 64
    if-eq v1, v7, :cond_2

    .line 65
    .line 66
    if-ne v1, v8, :cond_5

    .line 67
    .line 68
    :cond_2
    iget v1, v0, Lcom/narvii/model/ChatThread;->membersCount:I

    .line 69
    .line 70
    iget-object v9, v0, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    .line 71
    .line 72
    if-eqz v9, :cond_3

    .line 73
    .line 74
    .line 75
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 76
    move-result v9

    .line 77
    .line 78
    .line 79
    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    .line 80
    move-result v1

    .line 81
    .line 82
    :cond_3
    iget v9, v0, Lcom/narvii/model/ChatThread;->membersQuota:I

    .line 83
    .line 84
    if-lt v1, v9, :cond_4

    .line 85
    .line 86
    new-instance v1, Lcom/narvii/util/dialog/AlertDialog;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 90
    move-result-object v2

    .line 91
    .line 92
    .line 93
    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 94
    .line 95
    new-array v2, v7, [Ljava/lang/Object;

    .line 96
    .line 97
    iget v0, v0, Lcom/narvii/model/ChatThread;->membersQuota:I

    .line 98
    .line 99
    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object v0

    .line 102
    const/4 v3, 0x0

    .line 103
    .line 104
    aput-object v0, v2, v3

    .line 105
    .line 106
    .line 107
    const v0, 0x7f12027e

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v0}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    const v0, 0x104000a

    .line 118
    const/4 v2, 0x0

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v0, v3, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    .line 125
    goto :goto_0

    .line 126
    .line 127
    .line 128
    :cond_4
    invoke-static {v5}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 129
    move-result-object v1

    .line 130
    .line 131
    iget-object v5, v0, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    .line 132
    .line 133
    .line 134
    invoke-static {v5}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 135
    move-result-object v5

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    .line 140
    iget v4, v0, Lcom/narvii/model/ChatThread;->membersQuota:I

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 147
    move-result-object v0

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 154
    .line 155
    .line 156
    invoke-static {p0, v1, v8}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 157
    :cond_5
    :goto_0
    return-void
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    const-class v1, Lcom/narvii/model/User;

    .line 4
    .line 5
    const-string v2, "users"

    .line 6
    const/4 v3, -0x1

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    if-ne p2, v3, :cond_0

    .line 11
    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 26
    move-result v4

    .line 27
    .line 28
    if-nez v4, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->addMembers(Ljava/util/List;)V

    .line 32
    :cond_0
    const/4 v0, 0x1

    .line 33
    const/4 v4, 0x0

    .line 34
    .line 35
    if-ne p1, v0, :cond_5

    .line 36
    .line 37
    if-ne p2, v3, :cond_5

    .line 38
    .line 39
    if-eqz p3, :cond_5

    .line 40
    .line 41
    const-string v3, "account"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    move-result-object v3

    .line 46
    .line 47
    check-cast v3, Lcom/narvii/account/AccountService;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    .line 58
    invoke-static {v2, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    if-eqz v2, :cond_5

    .line 66
    .line 67
    iget-object v5, v2, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    .line 68
    .line 69
    if-eqz v5, :cond_5

    .line 70
    .line 71
    if-eqz v1, :cond_5

    .line 72
    .line 73
    .line 74
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 75
    move-result v5

    .line 76
    .line 77
    if-lez v5, :cond_5

    .line 78
    .line 79
    new-instance v5, Ljava/util/ArrayList;

    .line 80
    .line 81
    .line 82
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    iget-object v2, v2, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    .line 85
    .line 86
    .line 87
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 88
    move-result-object v2

    .line 89
    .line 90
    .line 91
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    move-result v6

    .line 93
    .line 94
    if-eqz v6, :cond_2

    .line 95
    .line 96
    .line 97
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    move-result-object v6

    .line 99
    .line 100
    check-cast v6, Lcom/narvii/model/User;

    .line 101
    .line 102
    iget-object v7, v6, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    invoke-static {v7, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    move-result v7

    .line 107
    .line 108
    if-nez v7, :cond_1

    .line 109
    .line 110
    iget-object v6, v6, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    goto :goto_0

    .line 115
    .line 116
    .line 117
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 118
    move-result-object v1

    .line 119
    .line 120
    .line 121
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    move-result v2

    .line 123
    .line 124
    if-eqz v2, :cond_4

    .line 125
    .line 126
    .line 127
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    move-result-object v2

    .line 129
    .line 130
    check-cast v2, Lcom/narvii/model/User;

    .line 131
    .line 132
    iget-object v6, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    invoke-static {v6, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    move-result v6

    .line 137
    .line 138
    if-nez v6, :cond_3

    .line 139
    .line 140
    iget-object v6, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 144
    move-result v6

    .line 145
    .line 146
    if-nez v6, :cond_3

    .line 147
    .line 148
    iget-object v2, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    goto :goto_1

    .line 153
    .line 154
    .line 155
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 156
    move-result-object v1

    .line 157
    .line 158
    const-string v2, "chatInvite"

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 162
    move-result-object v1

    .line 163
    .line 164
    check-cast v1, Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 165
    .line 166
    if-eqz v1, :cond_5

    .line 167
    .line 168
    .line 169
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 170
    move-result v2

    .line 171
    .line 172
    if-le v2, v0, :cond_5

    .line 173
    .line 174
    .line 175
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 176
    move-result v0

    .line 177
    .line 178
    new-array v2, v4, [Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 182
    move-result-object v2

    .line 183
    .line 184
    check-cast v2, [Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v2}, Lcom/narvii/chat/invite/ChatInviteFragment;->askInvite([Ljava/lang/String;)V

    .line 188
    .line 189
    new-instance v2, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$1;

    .line 190
    .line 191
    .line 192
    invoke-direct {v2, p0}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$1;-><init>(Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;)V

    .line 193
    .line 194
    iput-object v2, v1, Lcom/narvii/chat/invite/ChatInviteFragment;->onStartListener:Lcom/narvii/util/Callback;

    .line 195
    move v4, v0

    .line 196
    .line 197
    :cond_5
    if-lez v4, :cond_6

    .line 198
    .line 199
    const-string v0, "statistics"

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 203
    move-result-object v0

    .line 204
    .line 205
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 206
    .line 207
    const-string v1, "Invite Friends to Join VV Chat"

    .line 208
    .line 209
    .line 210
    invoke-interface {v0, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 211
    move-result-object v0

    .line 212
    .line 213
    const-string v1, "Number of members invited"

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v1, v4}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;I)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 217
    move-result-object v0

    .line 218
    .line 219
    const-string v1, "channel_type"

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 223
    move-result v1

    .line 224
    .line 225
    .line 226
    invoke-static {v1}, Lcom/narvii/chat/ChatActivity;->statChannelType(I)Ljava/lang/String;

    .line 227
    move-result-object v1

    .line 228
    .line 229
    const-string v2, "Type"

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 233
    move-result-object v0

    .line 234
    .line 235
    const-string v1, "thread"

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    move-result-object v1

    .line 240
    .line 241
    const-class v2, Lcom/narvii/model/ChatThread;

    .line 242
    .line 243
    .line 244
    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 245
    move-result-object v1

    .line 246
    .line 247
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 248
    const/4 v2, 0x0

    .line 249
    .line 250
    .line 251
    invoke-static {v1, v2}, Lcom/narvii/util/StatisticHelper;->getChatThreadType(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    move-result-object v1

    .line 253
    .line 254
    const-string v2, "Chat Type"

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 258
    move-result-object v0

    .line 259
    .line 260
    const-string v1, "Invite Friends to Join VV Chat Total"

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 264
    .line 265
    .line 266
    :cond_6
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 267
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a0743

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->inviteMembers()V

    .line 13
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f12085a

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 10
    .line 11
    const-string v0, "rtc"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelUserWrapperList()Landroid/util/SparseArray;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->membersAlreadyInChannel:Landroid/util/SparseArray;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    const/4 v0, 0x0

    .line 33
    .line 34
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->membersAlreadyInChannel:Landroid/util/SparseArray;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 38
    move-result v1

    .line 39
    .line 40
    if-ge v0, v1, :cond_1

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->membersAlreadyInChannel:Landroid/util/SparseArray;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    check-cast v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 49
    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    iget-object v2, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 53
    .line 54
    if-eqz v2, :cond_0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    .line 61
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    move-result v2

    .line 63
    .line 64
    if-nez v2, :cond_0

    .line 65
    .line 66
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->membersAlreadyJoinedMapper:Ljava/util/HashMap;

    .line 67
    .line 68
    iget-object v3, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 72
    move-result-object v3

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 78
    goto :goto_0

    .line 79
    .line 80
    :cond_1
    if-nez p1, :cond_2

    .line 81
    .line 82
    new-instance p1, Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 83
    .line 84
    .line 85
    invoke-direct {p1}, Lcom/narvii/chat/invite/ChatInviteFragment;-><init>()V

    .line 86
    .line 87
    new-instance v0, Landroid/os/Bundle;

    .line 88
    .line 89
    .line 90
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 91
    .line 92
    const-string v1, "Source"

    .line 93
    .line 94
    const-string v2, "1-1 > Group Chat"

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    const-string v1, "chatInvite"

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 114
    move-result-object p1

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 118
    .line 119
    new-instance p1, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;

    .line 120
    .line 121
    .line 122
    invoke-direct {p1}, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;-><init>()V

    .line 123
    .line 124
    new-instance v0, Landroid/os/Bundle;

    .line 125
    .line 126
    .line 127
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 131
    move-result-object v1

    .line 132
    .line 133
    .line 134
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 135
    move-result-object v1

    .line 136
    .line 137
    const-string v2, "key_chat_thread"

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 147
    move-result-object v0

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 151
    move-result-object v0

    .line 152
    .line 153
    .line 154
    const v1, 0x7f0a028c

    .line 155
    .line 156
    const-string v2, "vv_background"

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1, p1, v2}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 160
    move-result-object p1

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 164
    .line 165
    const-string p1, "statistics"

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 169
    move-result-object p1

    .line 170
    .line 171
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 172
    .line 173
    const-string v0, "Tapped Invite to VV Chat"

    .line 174
    .line 175
    .line 176
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 177
    move-result-object p1

    .line 178
    .line 179
    const-string v0, "channel_type"

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 183
    move-result v0

    .line 184
    .line 185
    .line 186
    invoke-static {v0}, Lcom/narvii/chat/ChatActivity;->statChannelType(I)Ljava/lang/String;

    .line 187
    move-result-object v0

    .line 188
    .line 189
    const-string v1, "Type"

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 193
    move-result-object p1

    .line 194
    .line 195
    const-string v0, "thread"

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    move-result-object v0

    .line 200
    .line 201
    const-class v1, Lcom/narvii/model/ChatThread;

    .line 202
    .line 203
    .line 204
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 205
    move-result-object v0

    .line 206
    .line 207
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 208
    const/4 v1, 0x0

    .line 209
    .line 210
    .line 211
    invoke-static {v0, v1}, Lcom/narvii/util/StatisticHelper;->getChatThreadType(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    move-result-object v0

    .line 213
    .line 214
    const-string v1, "Chat Type"

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 218
    move-result-object p1

    .line 219
    .line 220
    const-string v0, "Tapped Invite to VV Chat Total"

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 224
    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d0340

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

.method public onDestroy()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 4
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 12
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0d020a

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    const p2, 0x7f0a0743

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    return-void
.end method
