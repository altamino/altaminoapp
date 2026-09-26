.class public Lcom/narvii/chat/video/overlay/ParticipantsListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;
.implements Lcom/narvii/chat/video/events/LocalMuteUserListChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;,
        Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersAdapter;,
        Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantHeaderAdapter;,
        Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersHeaderAdapter;,
        Lcom/narvii/chat/video/overlay/ParticipantsListFragment$FooterAdapter;,
        Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;
    }
.end annotation


# static fields
.field public static final KEY_CHANNEL_TYPE:Ljava/lang/String; = "key_channel_type"

.field private static final SUB_FRAGMENT_TAG_BG:Ljava/lang/String; = "vv_background"


# instance fields
.field VVProfileClickListener:Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;

.field private accountService:Lcom/narvii/account/AccountService;

.field private channelType:I

.field chatHelper:Lcom/narvii/chat/util/ChatHelper;

.field private communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field private guestIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inviteMemberView:Landroid/widget/ImageView;

.field localMutedUserList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private localUid:I

.field mergeAdapter:Lcom/narvii/list/MergeAdapter;

.field participantHeaderAdapter:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantHeaderAdapter;

.field private participantsAdapter:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;

.field private participantsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private rtcService:Lcom/narvii/chat/rtc/RtcService;

.field private screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

.field private thread:Lcom/narvii/model/ChatThread;

.field private uidChannelWrapperMapper:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;"
        }
    .end annotation
.end field

.field userWrapperList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private viewersAdapter:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersAdapter;

.field viewersHeaderAdapter:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersHeaderAdapter;

.field private viewersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field


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
    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->uidChannelWrapperMapper:Ljava/util/HashMap;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$1;-><init>(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->VVProfileClickListener:Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;

    .line 18
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Lcom/narvii/chat/screenroom/ScreenRoomService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    return-object p0
.end method

.method static bridge synthetic B(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->uidChannelWrapperMapper:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic C(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->viewersAdapter:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersAdapter;

    return-object p0
.end method

.method static bridge synthetic D(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->viewersList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic E(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->participantsList:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic F(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->thread:Lcom/narvii/model/ChatThread;

    return-void
.end method

.method static bridge synthetic G(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->viewersList:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic H(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;Lcom/narvii/model/User;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->getChannelId(Lcom/narvii/model/User;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic I(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;Lcom/narvii/model/User;)Lcom/narvii/chat/rtc/ChannelUserWrapper;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->getChannelUserWrapper(Lcom/narvii/model/User;)Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic J(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->getThreadId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private addLiveChannelRelatedListener(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->addChannelUserWrapperUpdateListener(Ljava/lang/String;Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->addLocalMuteUserListChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LocalMuteUserListChangeListener;)V

    .line 18
    return-void
.end method

.method private buildUidChannelMapper()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    .line 8
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 12
    move-result v1

    .line 13
    .line 14
    if-ge v0, v1, :cond_2

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    move-result v2

    .line 35
    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->uidChannelWrapperMapper:Ljava/util/HashMap;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    iget-object v3, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    check-cast v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    return-void
.end method

.method private configAttachFragment()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/chat/invite/ChatInviteFragment;-><init>()V

    .line 6
    .line 7
    new-instance v1, Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    const-string v2, "Source"

    .line 13
    .line 14
    const-string v3, "Participants"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    const-string v2, "chatInvite"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 38
    .line 39
    new-instance v0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0}, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;-><init>()V

    .line 43
    .line 44
    new-instance v1, Landroid/os/Bundle;

    .line 45
    .line 46
    .line 47
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    .line 54
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    const-string v3, "key_chat_thread"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    .line 74
    const v2, 0x7f0a028c

    .line 75
    .line 76
    const-string v3, "vv_background"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 84
    return-void
.end method

.method private fetchChatThread()V
    .locals 4

    .line 1
    .line 2
    const-string v0, "id"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    return-void

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    const-string v3, "/chat/thread/"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    const-string v1, "api"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 55
    .line 56
    new-instance v2, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$2;

    .line 57
    .line 58
    const-class v3, Lcom/narvii/chat/ThreadResponse;

    .line 59
    .line 60
    .line 61
    invoke-direct {v2, p0, v3}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$2;-><init>(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;Ljava/lang/Class;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 65
    return-void
.end method

.method private getChannelId(Lcom/narvii/model/User;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-ge v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    check-cast v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 38
    .line 39
    iget-object v1, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    .line 50
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    move-result v1

    .line 52
    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    check-cast p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 62
    .line 63
    iget p1, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 64
    goto :goto_1

    .line 65
    .line 66
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const/4 p1, -0x1

    .line 69
    :goto_1
    return p1
.end method

.method private getChannelUserWrapper(Lcom/narvii/model/User;)Lcom/narvii/chat/rtc/ChannelUserWrapper;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-ge v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    check-cast v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 38
    .line 39
    iget-object v1, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    .line 50
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    move-result v1

    .line 52
    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    check-cast p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 62
    return-object p1

    .line 63
    .line 64
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    const/4 p1, 0x0

    .line 67
    return-object p1
.end method

.method private getThreadId()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private initActionBarRightButton()V
    .locals 6

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/util/ChatHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isHostOrCoHost(Lcom/narvii/model/ChatThread;)Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    const/high16 v1, 0x41200000    # 10.0f

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 35
    move-result v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    const/high16 v2, 0x41700000    # 15.0f

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 45
    move-result v1

    .line 46
    .line 47
    new-instance v2, Landroid/widget/ImageView;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    .line 54
    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    iput-object v2, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->inviteMemberView:Landroid/widget/ImageView;

    .line 57
    .line 58
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 62
    move-result-object v3

    .line 63
    .line 64
    const/high16 v4, 0x42700000    # 60.0f

    .line 65
    .line 66
    .line 67
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 68
    move-result v3

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 72
    move-result-object v4

    .line 73
    .line 74
    const/high16 v5, 0x42200000    # 40.0f

    .line 75
    .line 76
    .line 77
    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 78
    move-result v4

    .line 79
    .line 80
    .line 81
    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 82
    .line 83
    iget-object v3, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->inviteMemberView:Landroid/widget/ImageView;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v1, v0, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 87
    .line 88
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->inviteMemberView:Landroid/widget/ImageView;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    .line 93
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->inviteMemberView:Landroid/widget/ImageView;

    .line 94
    .line 95
    .line 96
    const v1, 0x7f0805c0

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    .line 101
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->inviteMemberView:Landroid/widget/ImageView;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setActionBarRightView(Landroid/view/View;)V

    .line 105
    .line 106
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->inviteMemberView:Landroid/widget/ImageView;

    .line 107
    .line 108
    new-instance v1, Lcom/narvii/chat/video/overlay/c;

    .line 109
    .line 110
    .line 111
    invoke-direct {v1, p0}, Lcom/narvii/chat/video/overlay/c;-><init>(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    :cond_0
    return-void
.end method

.method private synthetic lambda$initActionBarRightButton$0(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->openChannelInvitePage()V

    .line 4
    return-void
.end method

.method private openChannelInvitePage()V
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "channel_type"

    .line 9
    .line 10
    iget v2, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->channelType:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    const-string v2, "thread"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    const-string v1, "id"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 43
    return-void
.end method

.method private removeChannelRelatedListener(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeChannelUserWrapperUpdateListener(Ljava/lang/String;Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeLocalMuteUserListChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LocalMuteUserListChangeListener;)V

    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic t(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->lambda$initActionBarRightButton$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic u(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->channelType:I

    return p0
.end method

.method static bridge synthetic v(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->guestIdList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->localUid:I

    return p0
.end method

.method static bridge synthetic x(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->participantsAdapter:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;

    return-object p0
.end method

.method static bridge synthetic y(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->participantsList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic z(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Lcom/narvii/chat/rtc/RtcService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    return-object p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 6

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;-><init>(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->participantsAdapter:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersAdapter;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersAdapter;-><init>(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->viewersAdapter:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersAdapter;

    .line 15
    .line 16
    new-instance p1, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantHeaderAdapter;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantHeaderAdapter;-><init>(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)V

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->participantHeaderAdapter:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantHeaderAdapter;

    .line 22
    .line 23
    new-instance p1, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersHeaderAdapter;

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersHeaderAdapter;-><init>(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)V

    .line 27
    .line 28
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->viewersHeaderAdapter:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersHeaderAdapter;

    .line 29
    .line 30
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 31
    .line 32
    .line 33
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 34
    .line 35
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 36
    .line 37
    new-instance p1, Lcom/narvii/list/DivideColumnAdapter;

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, p0}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->participantsAdapter:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;

    .line 43
    const/4 v1, 0x4

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 47
    .line 48
    new-instance v0, Lcom/narvii/list/DivideColumnAdapter;

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, p0}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 52
    .line 53
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->viewersAdapter:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersAdapter;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2, v1}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 57
    .line 58
    new-instance v1, Lcom/narvii/list/StaticViewAdapter;

    .line 59
    .line 60
    .line 61
    invoke-direct {v1}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 62
    const/4 v2, 0x1

    .line 63
    .line 64
    new-array v3, v2, [Landroid/view/View;

    .line 65
    .line 66
    new-instance v4, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 70
    move-result-object v5

    .line 71
    .line 72
    .line 73
    invoke-direct {v4, v5}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    .line 74
    const/4 v5, 0x0

    .line 75
    .line 76
    aput-object v4, v3, v5

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v3}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 80
    .line 81
    new-instance v3, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$FooterAdapter;

    .line 82
    .line 83
    .line 84
    invoke-direct {v3, p0, p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$FooterAdapter;-><init>(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;Lcom/narvii/app/NVContext;)V

    .line 85
    .line 86
    iget-object v4, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    .line 91
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 92
    .line 93
    iget-object v4, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->participantHeaderAdapter:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantHeaderAdapter;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v4}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    .line 98
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, p1, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 102
    .line 103
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 104
    .line 105
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->viewersHeaderAdapter:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersHeaderAdapter;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    .line 110
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    .line 115
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    .line 120
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 121
    return-object p1
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f130013

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

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "live_chat_participants"

    return-object v0
.end method

.method public getThread()Lcom/narvii/model/ChatThread;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    instance-of v0, v0, Lcom/narvii/chat/ChatFragment;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/chat/ChatFragment;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 23
    move-result-object v0

    .line 24
    return-object v0

    .line 25
    .line 26
    :cond_1
    const-string v0, "thread"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    const-class v1, Lcom/narvii/model/ChatThread;

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 39
    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onAttach(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->fetchChatThread()V

    .line 7
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f120e56

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/chat/util/ChatHelper;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 25
    .line 26
    const-string v0, "rtc"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 35
    .line 36
    const-string v0, "account"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 45
    .line 46
    const-string v0, "key_channel_type"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 50
    move-result v1

    .line 51
    .line 52
    iput v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->channelType:I

    .line 53
    .line 54
    const-string v1, "id"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, v1}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->addLiveChannelRelatedListener(Ljava/lang/String;)V

    .line 62
    .line 63
    const-string v1, "screenRoom"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    check-cast v1, Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 70
    .line 71
    iput-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelUserWrapperList()Landroid/util/SparseArray;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    iput-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    .line 84
    .line 85
    new-instance v1, Ljava/util/ArrayList;

    .line 86
    .line 87
    .line 88
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    iput-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->guestIdList:Ljava/util/List;

    .line 91
    .line 92
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    .line 93
    .line 94
    if-eqz v1, :cond_1

    .line 95
    const/4 v1, 0x0

    .line 96
    .line 97
    :goto_0
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 101
    move-result v2

    .line 102
    .line 103
    if-ge v1, v2, :cond_1

    .line 104
    .line 105
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 109
    move-result-object v2

    .line 110
    .line 111
    check-cast v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 112
    .line 113
    iget-object v2, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 114
    .line 115
    if-eqz v2, :cond_0

    .line 116
    .line 117
    iget v3, v2, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 118
    const/4 v4, 0x3

    .line 119
    .line 120
    if-ne v3, v4, :cond_0

    .line 121
    .line 122
    iget-object v3, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->guestIdList:Ljava/util/List;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 126
    move-result-object v2

    .line 127
    .line 128
    .line 129
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 132
    goto :goto_0

    .line 133
    .line 134
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getLocalMutedUserList()Ljava/util/Set;

    .line 138
    move-result-object v1

    .line 139
    .line 140
    iput-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->localMutedUserList:Ljava/util/Set;

    .line 141
    .line 142
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 146
    move-result-object v1

    .line 147
    .line 148
    if-eqz v1, :cond_2

    .line 149
    .line 150
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 154
    move-result-object v1

    .line 155
    .line 156
    iget v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 157
    .line 158
    iput v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->localUid:I

    .line 159
    .line 160
    :cond_2
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->localMutedUserList:Ljava/util/Set;

    .line 161
    .line 162
    if-nez v1, :cond_3

    .line 163
    .line 164
    new-instance v1, Ljava/util/HashSet;

    .line 165
    .line 166
    .line 167
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 168
    .line 169
    iput-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->localMutedUserList:Ljava/util/Set;

    .line 170
    .line 171
    :cond_3
    new-instance v1, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 172
    .line 173
    .line 174
    invoke-direct {v1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 175
    .line 176
    iput-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 177
    .line 178
    .line 179
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->buildUidChannelMapper()V

    .line 180
    .line 181
    if-nez p1, :cond_4

    .line 182
    .line 183
    .line 184
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->configAttachFragment()V

    .line 185
    .line 186
    const-string p1, "statistics"

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 190
    move-result-object p1

    .line 191
    .line 192
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 193
    .line 194
    const-string v1, "VV Chat Participants"

    .line 195
    .line 196
    .line 197
    invoke-interface {p1, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 198
    move-result-object p1

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 202
    move-result v0

    .line 203
    .line 204
    .line 205
    invoke-static {v0}, Lcom/narvii/chat/ChatActivity;->statChannelType(I)Ljava/lang/String;

    .line 206
    move-result-object v0

    .line 207
    .line 208
    const-string v1, "Type"

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 212
    move-result-object p1

    .line 213
    .line 214
    const-string v0, "thread"

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 218
    move-result-object v0

    .line 219
    .line 220
    const-class v1, Lcom/narvii/model/ChatThread;

    .line 221
    .line 222
    .line 223
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 224
    move-result-object v0

    .line 225
    .line 226
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 227
    const/4 v1, 0x0

    .line 228
    .line 229
    .line 230
    invoke-static {v0, v1}, Lcom/narvii/util/StatisticHelper;->getChatThreadType(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Ljava/lang/String;

    .line 231
    move-result-object v0

    .line 232
    .line 233
    const-string v1, "Chat Type"

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 237
    move-result-object p1

    .line 238
    .line 239
    const-string v0, "VV Chat Participants Total"

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 243
    .line 244
    .line 245
    :cond_4
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->initActionBarRightButton()V

    .line 246
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d02fb

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
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 4
    .line 5
    const-string v0, "id"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->removeChannelRelatedListener(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    const/4 p2, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 10
    :cond_0
    return-void
.end method

.method public onLocalMuteUserListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Set;)V
    .locals 0
    .param p1    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getLocalMutedUserList()Ljava/util/Set;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->localMutedUserList:Ljava/util/Set;

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 16
    :cond_0
    return-void
.end method

.method public onUserWrapperStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 1
    .param p1    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/chat/rtc/ChannelUserWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object p1, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->uidChannelWrapperMapper:Ljava/util/HashMap;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->uidChannelWrapperMapper:Ljava/util/HashMap;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 36
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    return-void
.end method
