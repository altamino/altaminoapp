.class public Lcom/narvii/chat/video/overlay/ParticipantsListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "ParticipantsListFragment.java"

# interfaces
.implements Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;
.implements Lcom/narvii/chat/video/events/LocalMuteUserListChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/video/overlay/ParticipantsListFragment$FooterAdapter;,
        Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;,
        Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersAdapter;,
        Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersHeaderAdapter;,
        Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;,
        Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantHeaderAdapter;
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

    .line 82
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->uidChannelWrapperMapper:Ljava/util/HashMap;

    .line 749
    new-instance v0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$1;-><init>(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)V

    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->VVProfileClickListener:Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)I
    .locals 0

    .line 82
    iget p0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->channelType:I

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->participantsAdapter:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Lcom/narvii/chat/screenroom/ScreenRoomService;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;Lcom/narvii/model/User;)Lcom/narvii/chat/rtc/ChannelUserWrapper;
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->getChannelUserWrapper(Lcom/narvii/model/User;)Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Ljava/lang/String;
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->getThreadId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Ljava/util/List;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->guestIdList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;Lcom/narvii/model/ChatThread;)Lcom/narvii/model/ChatThread;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->thread:Lcom/narvii/model/ChatThread;

    return-object p1
.end method

.method static synthetic access$200(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Ljava/util/List;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->participantsList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->participantsList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Ljava/util/List;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->viewersList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->viewersList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;Lcom/narvii/model/User;)I
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->getChannelId(Lcom/narvii/model/User;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersAdapter;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->viewersAdapter:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersAdapter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Ljava/util/HashMap;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->uidChannelWrapperMapper:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)I
    .locals 0

    .line 82
    iget p0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->localUid:I

    return p0
.end method

.method static synthetic access$900(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Lcom/narvii/chat/rtc/RtcService;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    return-object p0
.end method

.method private addLiveChannelRelatedListener(Ljava/lang/String;)V
    .locals 1

    .line 768
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->addChannelUserWrapperUpdateListener(Ljava/lang/String;Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;)V

    .line 772
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->addLocalMuteUserListChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LocalMuteUserListChangeListener;)V

    return-void
.end method

.method private buildUidChannelMapper()V
    .locals 4

    .line 220
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 223
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 224
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget-object v1, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v1, :cond_1

    .line 225
    invoke-virtual {v1}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 226
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->uidChannelWrapperMapper:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private configAttachFragment()V
    .locals 4

    .line 232
    new-instance v0, Lcom/narvii/chat/invite/ChatInviteFragment;

    invoke-direct {v0}, Lcom/narvii/chat/invite/ChatInviteFragment;-><init>()V

    .line 233
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "Source"

    const-string v3, "Participants"

    .line 234
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 236
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "chatInvite"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 239
    new-instance v0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;

    invoke-direct {v0}, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;-><init>()V

    .line 240
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 241
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_chat_thread"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 244
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 245
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0901d5

    const-string/jumbo v3, "vv_background"

    .line 246
    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private fetchChatThread()V
    .locals 4

    const-string v0, "id"

    .line 784
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 785
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 788
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/chat/thread/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 789
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 790
    new-instance v2, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$2;

    const-class v3, Lcom/narvii/chat/ThreadResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$2;-><init>(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private getChannelId(Lcom/narvii/model/User;)I
    .locals 3

    const/4 v0, 0x0

    .line 714
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 715
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    .line 716
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget-object v1, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    .line 717
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget-object v1, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    invoke-virtual {v1}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v1

    .line 718
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v2

    .line 717
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 719
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget p1, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_1
    return p1
.end method

.method private getChannelUserWrapper(Lcom/narvii/model/User;)Lcom/narvii/chat/rtc/ChannelUserWrapper;
    .locals 3

    const/4 v0, 0x0

    .line 727
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 728
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    .line 729
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget-object v1, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    .line 730
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget-object v1, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    invoke-virtual {v1}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v1

    .line 731
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v2

    .line 730
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 732
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getThreadId()Ljava/lang/String;
    .locals 1

    .line 650
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initActionBarRightButton()V
    .locals 6

    .line 161
    new-instance v0, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 162
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isHostOrCoHost(Lcom/narvii/model/ChatThread;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v0

    .line 164
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v1

    .line 166
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->inviteMemberView:Landroid/widget/ImageView;

    .line 167
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x42700000    # 60.0f

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 169
    iget-object v3, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->inviteMemberView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1, v0, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 170
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->inviteMemberView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->inviteMemberView:Landroid/widget/ImageView;

    const v1, 0x7f080497

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->inviteMemberView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setActionBarRightView(Landroid/view/View;)V

    .line 173
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->inviteMemberView:Landroid/widget/ImageView;

    new-instance v1, Lcom/narvii/chat/video/overlay/-$$Lambda$ParticipantsListFragment$CHwegScmB3Zuh7oZV_bvakg579Y;

    invoke-direct {v1, p0}, Lcom/narvii/chat/video/overlay/-$$Lambda$ParticipantsListFragment$CHwegScmB3Zuh7oZV_bvakg579Y;-><init>(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private openChannelInvitePage()V
    .locals 3

    .line 181
    const-class v0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 182
    iget v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->channelType:I

    const-string v2, "channel_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "thread"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "id"

    .line 184
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private removeChannelRelatedListener(Ljava/lang/String;)V
    .locals 1

    .line 776
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    if-nez v0, :cond_0

    goto :goto_0

    .line 779
    :cond_0
    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeChannelUserWrapperUpdateListener(Ljava/lang/String;Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;)V

    .line 780
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeLocalMuteUserListChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LocalMuteUserListChangeListener;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 6

    .line 274
    new-instance p1, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;-><init>(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)V

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->participantsAdapter:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;

    .line 275
    new-instance p1, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersAdapter;-><init>(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)V

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->viewersAdapter:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersAdapter;

    .line 276
    new-instance p1, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantHeaderAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantHeaderAdapter;-><init>(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)V

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->participantHeaderAdapter:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantHeaderAdapter;

    .line 277
    new-instance p1, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersHeaderAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersHeaderAdapter;-><init>(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)V

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->viewersHeaderAdapter:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersHeaderAdapter;

    .line 278
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 279
    new-instance p1, Lcom/narvii/list/DivideColumnAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 280
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->participantsAdapter:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 281
    new-instance v0, Lcom/narvii/list/DivideColumnAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 282
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->viewersAdapter:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersAdapter;

    invoke-virtual {v0, v2, v1}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 284
    new-instance v1, Lcom/narvii/list/StaticViewAdapter;

    invoke-direct {v1}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/view/View;

    .line 285
    new-instance v4, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 286
    new-instance v3, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$FooterAdapter;

    invoke-direct {v3, p0, p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$FooterAdapter;-><init>(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;Lcom/narvii/app/NVContext;)V

    .line 288
    iget-object v4, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    invoke-virtual {v4, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 289
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    iget-object v4, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->participantHeaderAdapter:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantHeaderAdapter;

    invoke-virtual {v1, v4}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 290
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    invoke-virtual {v1, p1, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 291
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->viewersHeaderAdapter:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersHeaderAdapter;

    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 292
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 293
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    invoke-virtual {p1, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 294
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    return-object p1
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f100012

    return v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 253
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "LiveChatParticipants"

    return-object v0
.end method

.method public getThread()Lcom/narvii/model/ChatThread;
    .locals 2

    .line 739
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->thread:Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_0

    return-object v0

    .line 742
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/chat/ChatFragment;

    if-eqz v0, :cond_1

    .line 743
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/ChatFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "thread"

    .line 745
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/ChatThread;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatThread;

    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 264
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$initActionBarRightButton$0$ParticipantsListFragment(Landroid/view/View;)V
    .locals 0

    .line 174
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->openChannelInvitePage()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 190
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onAttach(Landroid/content/Context;)V

    .line 191
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->fetchChatThread()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 116
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0f0d31

    .line 117
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    new-instance v0, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    const-string v0, "rtc"

    .line 119
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    const-string v0, "account"

    .line 120
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->accountService:Lcom/narvii/account/AccountService;

    const-string v0, "key_channel_type"

    .line 121
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->channelType:I

    const-string v1, "id"

    .line 122
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->addLiveChannelRelatedListener(Ljava/lang/String;)V

    const-string v1, "screenRoom"

    .line 123
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/screenroom/ScreenRoomService;

    iput-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 125
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelUserWrapperList()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->guestIdList:Ljava/util/List;

    .line 127
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 128
    :goto_0
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 129
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget-object v2, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v2, :cond_0

    .line 130
    iget v3, v2, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 131
    iget-object v3, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->guestIdList:Ljava/util/List;

    invoke-virtual {v2}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getLocalMutedUserList()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->localMutedUserList:Ljava/util/Set;

    .line 136
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 137
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v1

    iget v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    iput v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->localUid:I

    .line 139
    :cond_2
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->localMutedUserList:Ljava/util/Set;

    if-nez v1, :cond_3

    .line 140
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->localMutedUserList:Ljava/util/Set;

    .line 143
    :cond_3
    new-instance v1, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 145
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->buildUidChannelMapper()V

    if-nez p1, :cond_4

    .line 147
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->configAttachFragment()V

    .line 157
    :cond_4
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->initActionBarRightButton()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b02c8

    const/4 v0, 0x0

    .line 196
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 214
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    const-string v0, "id"

    .line 215
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->removeChannelRelatedListener(Ljava/lang/String;)V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 206
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 208
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public onLocalMuteUserListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 315
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getLocalMutedUserList()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->localMutedUserList:Ljava/util/Set;

    .line 316
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    if-eqz p1, :cond_0

    .line 317
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onUserWrapperStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 1

    .line 299
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 302
    :cond_0
    iget-object p1, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz p1, :cond_1

    .line 303
    invoke-virtual {p1}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object p1

    .line 304
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->uidChannelWrapperMapper:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->uidChannelWrapperMapper:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    if-eqz p1, :cond_1

    .line 307
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 201
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
