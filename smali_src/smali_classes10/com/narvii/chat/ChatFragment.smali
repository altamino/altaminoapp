.class public Lcom/narvii/chat/ChatFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;
.implements Lcom/narvii/app/FragmentOnBackListener;
.implements Lcom/narvii/chat/video/ILiveChannelCollapseChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/util/ws/WsService$WsListener;
.implements Lcom/narvii/chat/video/events/LiveChannelChangeListener;
.implements Lcom/narvii/chat/video/events/MyChannelUserStatusChangeListener;
.implements Lcom/narvii/chat/ThreadConfigChangeListener;
.implements Lcom/narvii/chat/ThreadInfoHost;


# static fields
.field public static final FRAGMENT_TAG_FANS_ONLY:Ljava/lang/String; = "fansOnlyMask"

.field public static final FRAGMENT_TAG_INVITATION:Ljava/lang/String; = "invitation"

.field public static final FRAGMENT_TAG_ORGANIZER_LEFT:Ljava/lang/String; = "organizer_left"

.field public static final FRAGMENT_TAG_VV_MAIN:Ljava/lang/String; = "vvChat"

.field private static final REPORT_ACTIVE_INTERVAL:I = 0x493e0

.field public static final TEXT_FLOATING_ENABLED:Z

.field public static final WRAPPER_ACTIVITY:Ljava/lang/String;


# instance fields
.field private actionBarLeftView:Landroid/view/View;

.field public final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field allowFloatingWindow:Z

.field private announcementContainer:Landroid/view/ViewGroup;

.field private announcementText:Landroid/widget/TextView;

.field private btnLeaveConversation:Landroid/view/View;

.field chatHelper:Lcom/narvii/chat/util/ChatHelper;

.field private chatInputFragment:Lcom/narvii/chat/input/ChatInputFragment;

.field private chatInviteFrame:Landroid/view/View;

.field chatService:Lcom/narvii/chat/core/ChatService;

.field private chatTipBroadcastHelper:Lcom/narvii/chat/ChatTipBroadcastHelper;

.field private disableBar:Landroid/widget/TextView;

.field private disabledLayout:Landroid/view/View;

.field private fansOnlyMask:Landroid/view/View;

.field floatingPermissionUtils:Lcom/narvii/video/ui/floating/FloatingPermissionUtils;

.field private fromGlobalChat:Z

.field private isChatFullInfoFetched:Z

.field private isChatInputPanelShown:Z

.field private isKeyboardVisible:Z

.field private isLiveChannelShow:Z

.field keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

.field private listViewFrame:Landroid/view/View;

.field private listViewFrameBg:Landroid/view/View;

.field private final listener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/chat/ThreadResponse;",
            ">;"
        }
    .end annotation
.end field

.field public liveLayerTarget:Ljava/lang/String;

.field private liveLayout:Landroid/view/View;

.field menuClickListener:Landroid/view/View$OnClickListener;

.field menuClosePopupWindow:Landroid/widget/PopupWindow;

.field private organizerTransContainer:Landroid/view/View;

.field panelHideListener:Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;

.field public final params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field reportLiveLayerActiveRunnable:Ljava/lang/Runnable;

.field private root:Lcom/narvii/chat/ChatContentContainer;

.field rtcService:Lcom/narvii/chat/rtc/RtcService;

.field statSend:Z

.field thread:Lcom/narvii/model/ChatThread;

.field private threadRequest:Lcom/narvii/util/http/ApiRequest;

.field private tipBroadcastLayout:Landroid/view/ViewGroup;

.field private tvChatTileView:Landroid/widget/TextView;

.field private tvMemberCount:Landroid/widget/TextView;

.field vvChatMainFragment:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

.field private wsService:Lcom/narvii/util/ws/WsService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/narvii/chat/ChatActivity;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lcom/narvii/chat/ChatFragment;->WRAPPER_ACTIVITY:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/chat/ChatFragment;->actions:Ljava/util/List;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/chat/ChatFragment;->params:Ljava/util/HashMap;

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/narvii/chat/ChatFragment;->isKeyboardVisible:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/narvii/chat/ChatFragment;->isChatInputPanelShown:Z

    .line 23
    const/4 v0, 0x1

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/narvii/chat/ChatFragment;->allowFloatingWindow:Z

    .line 26
    .line 27
    new-instance v0, Lcom/narvii/chat/ChatFragment$1;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/narvii/chat/ChatFragment$1;-><init>(Lcom/narvii/chat/ChatFragment;)V

    .line 31
    .line 32
    iput-object v0, p0, Lcom/narvii/chat/ChatFragment;->panelHideListener:Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;

    .line 33
    .line 34
    new-instance v0, Lcom/narvii/chat/ChatFragment$2;

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, p0}, Lcom/narvii/chat/ChatFragment$2;-><init>(Lcom/narvii/chat/ChatFragment;)V

    .line 38
    .line 39
    iput-object v0, p0, Lcom/narvii/chat/ChatFragment;->menuClickListener:Landroid/view/View$OnClickListener;

    .line 40
    .line 41
    new-instance v0, Lcom/narvii/chat/ChatFragment$8;

    .line 42
    .line 43
    const-class v1, Lcom/narvii/chat/ThreadResponse;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, p0, v1}, Lcom/narvii/chat/ChatFragment$8;-><init>(Lcom/narvii/chat/ChatFragment;Ljava/lang/Class;)V

    .line 47
    .line 48
    iput-object v0, p0, Lcom/narvii/chat/ChatFragment;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 49
    .line 50
    new-instance v0, Lcom/narvii/chat/ChatFragment$9;

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/narvii/chat/ChatFragment$9;-><init>(Lcom/narvii/chat/ChatFragment;)V

    .line 54
    .line 55
    iput-object v0, p0, Lcom/narvii/chat/ChatFragment;->reportLiveLayerActiveRunnable:Ljava/lang/Runnable;

    .line 56
    return-void
.end method

.method private beginReportActive()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->reportLiveLayerActiveRunnable:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->reportLiveLayerActiveRunnable:Ljava/lang/Runnable;

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 13
    return-void
.end method

.method private isChatThreadDisabledOrDelete()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isChatThreadDisabledOrDelete(Lcom/narvii/model/ChatThread;)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private isThreadDelete()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->isDeleted()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method private synthetic lambda$onActivityCreated$0(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 12
    .line 13
    instance-of v0, p1, Lcom/narvii/app/DrawerActivity;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/app/DrawerActivity;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/app/DrawerActivity;->openDrawer()V

    .line 21
    :cond_0
    return-void
.end method

.method private synthetic lambda$updateFloatView$1()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->announcementText:Landroid/widget/TextView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    return-void
.end method

.method private synthetic lambda$updateFloatView$2(Lcom/narvii/model/ChatThread;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    const-string v0, "Announcement"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 14
    .line 15
    sget-object p2, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->Companion:Lcom/narvii/chat/detail/ThreadAnnouncementFragment$Companion;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$Companion;->intent(Lcom/narvii/model/ChatThread;)Landroid/content/Intent;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-static {p0, p1}, Lcom/narvii/chat/ChatFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 23
    return-void
.end method

.method public static synthetic n(Lcom/narvii/chat/ChatFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatFragment;->lambda$onActivityCreated$0(Landroid/view/View;)V

    return-void
.end method

.method private notifyTipBroadcastActiveChange()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->chatTipBroadcastHelper:Lcom/narvii/chat/ChatTipBroadcastHelper;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isActive()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/narvii/util/Utils;->isLandscape(Landroid/content/Context;)Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    const/4 v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/chat/ChatTipBroadcastHelper;->onActiveChanged(Z)V

    .line 27
    :cond_1
    return-void
.end method

.method public static synthetic o(Lcom/narvii/chat/ChatFragment;Lcom/narvii/model/ChatThread;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/ChatFragment;->lambda$updateFloatView$2(Lcom/narvii/model/ChatThread;Landroid/view/View;)V

    return-void
.end method

.method private onChatCloseClicked(Landroid/view/View;)V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/utils/VVChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    iget-object v2, p0, Lcom/narvii/chat/ChatFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    iget-object v2, v2, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result v1

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/utils/VVChatHelper;->isCurrentChannelLive(Lcom/narvii/chat/signalling/SignallingChannel;)Z

    .line 45
    move-result v0

    .line 46
    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->vvChatMainFragment:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 50
    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    const v1, 0x7f0d00da

    .line 63
    const/4 v2, 0x0

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    new-instance v1, Landroid/widget/PopupWindow;

    .line 70
    const/4 v2, -0x2

    .line 71
    const/4 v3, 0x1

    .line 72
    .line 73
    .line 74
    invoke-direct {v1, v0, v2, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 75
    .line 76
    iput-object v1, p0, Lcom/narvii/chat/ChatFragment;->menuClosePopupWindow:Landroid/widget/PopupWindow;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 80
    move-result-object v2

    .line 81
    .line 82
    .line 83
    const v4, 0x7f08012a

    .line 84
    .line 85
    .line 86
    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 87
    move-result-object v2

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    .line 92
    .line 93
    const v1, 0x7f0a0321

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    new-instance v2, Lcom/narvii/chat/ChatFragment$6;

    .line 100
    .line 101
    .line 102
    invoke-direct {v2, p0}, Lcom/narvii/chat/ChatFragment$6;-><init>(Lcom/narvii/chat/ChatFragment;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    .line 107
    .line 108
    const v1, 0x7f0a0976

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    new-instance v1, Lcom/narvii/chat/ChatFragment$7;

    .line 115
    .line 116
    .line 117
    invoke-direct {v1, p0}, Lcom/narvii/chat/ChatFragment$7;-><init>(Lcom/narvii/chat/ChatFragment;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    .line 122
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->menuClosePopupWindow:Landroid/widget/PopupWindow;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 126
    .line 127
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->menuClosePopupWindow:Landroid/widget/PopupWindow;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 131
    .line 132
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->menuClosePopupWindow:Landroid/widget/PopupWindow;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 136
    goto :goto_0

    .line 137
    .line 138
    :cond_0
    new-instance p1, Lcom/narvii/chat/video/ChatLogEventHelper;

    .line 139
    .line 140
    .line 141
    invoke-direct {p1, p0}, Lcom/narvii/chat/video/ChatLogEventHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getLogObject()Lcom/narvii/model/NVObject;

    .line 145
    move-result-object v0

    .line 146
    .line 147
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 148
    const/4 v1, -0x1

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v1, v0}, Lcom/narvii/chat/video/ChatLogEventHelper;->logQuitChat(ILcom/narvii/model/ChatThread;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 155
    move-result-object p1

    .line 156
    .line 157
    if-eqz p1, :cond_1

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 161
    move-result-object p1

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 165
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic p(Lcom/narvii/chat/ChatFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->lambda$updateFloatView$1()V

    return-void
.end method

.method static bridge synthetic q(Lcom/narvii/chat/ChatFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/ChatFragment;->isChatFullInfoFetched:Z

    return-void
.end method

.method static bridge synthetic r(Lcom/narvii/chat/ChatFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/ChatFragment;->isChatInputPanelShown:Z

    return-void
.end method

.method private reportActive()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/LiveLayerUtils;->isStatusOk(Lcom/narvii/model/NVObject;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->liveLayerTarget:Ljava/lang/String;

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->organizerLeft()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/narvii/chat/ChatFragment;->isChatFullInfoFetched:Z

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    const-string v0, "liveLayer"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    .line 35
    .line 36
    if-nez v0, :cond_0

    .line 37
    return-void

    .line 38
    .line 39
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->isFansOnly()Z

    .line 43
    move-result v1

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 48
    .line 49
    iget-boolean v1, v1, Lcom/narvii/model/ChatThread;->needHidden:Z

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    return-void

    .line 53
    .line 54
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    const/16 v2, 0xc

    .line 60
    .line 61
    .line 62
    invoke-static {v2}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v2, "/"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    iget-object v2, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 77
    move-result-object v2

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    iput-object v1, p0, Lcom/narvii/chat/ChatFragment;->liveLayerTarget:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->params:Ljava/util/HashMap;

    .line 89
    .line 90
    iget-object v2, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 91
    .line 92
    iget v2, v2, Lcom/narvii/model/ChatThread;->type:I

    .line 93
    .line 94
    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    move-result-object v2

    .line 97
    .line 98
    const-string v3, "threadType"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->params:Ljava/util/HashMap;

    .line 104
    .line 105
    iget-object v2, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 106
    .line 107
    iget v2, v2, Lcom/narvii/model/ChatThread;->membershipStatus:I

    .line 108
    .line 109
    .line 110
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    move-result-object v2

    .line 112
    .line 113
    const-string v3, "membershipStatus"

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->actions:Ljava/util/List;

    .line 119
    .line 120
    iget-object v2, p0, Lcom/narvii/chat/ChatFragment;->liveLayerTarget:Ljava/lang/String;

    .line 121
    .line 122
    iget-object v3, p0, Lcom/narvii/chat/ChatFragment;->params:Ljava/util/HashMap;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/livelayer/LiveLayerService;->reportActive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 126
    .line 127
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 128
    .line 129
    iget v0, v0, Lcom/narvii/model/ChatThread;->membershipStatus:I

    .line 130
    .line 131
    if-nez v0, :cond_2

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    .line 135
    move-result-object v0

    .line 136
    .line 137
    .line 138
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 139
    move-result v0

    .line 140
    .line 141
    if-nez v0, :cond_2

    .line 142
    .line 143
    const-string v0, "chat"

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    move-result-object v0

    .line 148
    .line 149
    check-cast v0, Lcom/narvii/chat/core/ChatService;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    .line 153
    move-result-object v1

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v1}, Lcom/narvii/chat/core/ChatService;->addGuestThreadId(Ljava/lang/String;)V

    .line 157
    :cond_2
    return-void
.end method

.method static bridge synthetic s(Lcom/narvii/chat/ChatFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/ChatFragment;->isKeyboardVisible:Z

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

.method private shouldShowLiveChannelFloating()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method private shouldShowThreadFloating()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private stopReportActive()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->reportLiveLayerActiveRunnable:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/chat/ChatFragment;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/chat/ChatFragment;->threadRequest:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method static bridge synthetic u(Lcom/narvii/chat/ChatFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->beginReportActive()V

    return-void
.end method

.method private updateActionBarTitle()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->tvChatTileView:Landroid/widget/TextView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v1, Lcom/narvii/chat/util/ChatHelper;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lcom/narvii/chat/util/ChatHelper;->getThreadTitle(Lcom/narvii/model/ChatThread;)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->tvMemberCount:Landroid/widget/TextView;

    .line 27
    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    new-instance v0, Lcom/narvii/chat/util/ChatHelper;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->getMemberCount(Lcom/narvii/model/ChatThread;)I

    .line 45
    move-result v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 49
    move-result-object v1

    .line 50
    const/4 v2, 0x0

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    iget v1, v1, Lcom/narvii/model/ChatThread;->type:I

    .line 59
    .line 60
    if-nez v1, :cond_1

    .line 61
    move v0, v2

    .line 62
    .line 63
    :cond_1
    if-gtz v0, :cond_2

    .line 64
    .line 65
    const-string v0, ""

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    const-string v3, " ("

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v0, ")"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->tvMemberCount:Landroid/widget/TextView;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->tvMemberCount:Landroid/widget/TextView;

    .line 96
    .line 97
    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 99
    move-result v0

    .line 100
    .line 101
    if-eqz v0, :cond_3

    .line 102
    .line 103
    const/16 v2, 0x8

    .line 104
    .line 105
    .line 106
    :cond_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 107
    :cond_4
    return-void
.end method

.method private updateActionbarView()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->actionBarLeftView:Landroid/view/View;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    const v1, 0x7f0a0079

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    :cond_1
    return-void
.end method

.method private updateChatListFrame()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->root:Lcom/narvii/chat/ChatContentContainer;

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/narvii/chat/ChatFragment;->isLiveChannelShow:Z

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/narvii/chat/ChatFragment;->isKeyboardVisible:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/narvii/chat/ChatFragment;->isChatInputPanelShown:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    :cond_0
    const/4 v1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move v1, v2

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/chat/ChatContentContainer;->setShouldChangeOrder(Z)V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->listViewFrame:Landroid/view/View;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Lcom/narvii/util/Utils;->getActionBarHeight(Landroid/content/Context;)I

    .line 37
    move-result v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    .line 44
    invoke-static {v3}, Lcom/narvii/util/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 45
    move-result v3

    .line 46
    add-int/2addr v1, v3

    .line 47
    .line 48
    iget-boolean v3, p0, Lcom/narvii/chat/ChatFragment;->isLiveChannelShow:Z

    .line 49
    .line 50
    if-eqz v3, :cond_3

    .line 51
    .line 52
    iget-object v3, p0, Lcom/narvii/chat/ChatFragment;->vvChatMainFragment:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 53
    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getLiveContentHeight()I

    .line 58
    move-result v3

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    move v3, v2

    .line 61
    :goto_1
    add-int/2addr v1, v3

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    move v1, v2

    .line 64
    .line 65
    :goto_2
    iget-boolean v3, p0, Lcom/narvii/chat/ChatFragment;->isKeyboardVisible:Z

    .line 66
    .line 67
    if-nez v3, :cond_4

    .line 68
    .line 69
    iget-boolean v4, p0, Lcom/narvii/chat/ChatFragment;->isChatInputPanelShown:Z

    .line 70
    .line 71
    if-eqz v4, :cond_5

    .line 72
    :cond_4
    move v1, v2

    .line 73
    .line 74
    :cond_5
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 75
    .line 76
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->listViewFrameBg:Landroid/view/View;

    .line 77
    .line 78
    iget-boolean v4, p0, Lcom/narvii/chat/ChatFragment;->isLiveChannelShow:Z

    .line 79
    .line 80
    if-eqz v4, :cond_6

    .line 81
    .line 82
    if-nez v3, :cond_7

    .line 83
    .line 84
    iget-boolean v3, p0, Lcom/narvii/chat/ChatFragment;->isChatInputPanelShown:Z

    .line 85
    .line 86
    if-eqz v3, :cond_6

    .line 87
    goto :goto_3

    .line 88
    .line 89
    :cond_6
    const/16 v2, 0x8

    .line 90
    .line 91
    .line 92
    :cond_7
    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->listViewFrame:Landroid/view/View;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    return-void
.end method

.method private updateChatThreadInList()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    new-instance v0, Lcom/narvii/notification/Notification;

    .line 8
    .line 9
    const-string v1, "update"

    .line 10
    .line 11
    iget-object v2, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 15
    .line 16
    const-string v1, "notification"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcom/narvii/notification/NotificationCenter;

    .line 23
    .line 24
    new-instance v2, Landroid/os/Bundle;

    .line 25
    .line 26
    .line 27
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 28
    .line 29
    iput-object v2, v0, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    .line 30
    .line 31
    const-string v3, "_fromChatFragment"

    .line 32
    const/4 v4, 0x1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v0}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V

    .line 39
    return-void
.end method

.method private updateDisabledBar()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->disabledLayout:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->isChatThreadDisabledOrDelete()Z

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->btnLeaveConversation:Landroid/view/View;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x1

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    iget v1, v1, Lcom/narvii/model/ChatThread;->membershipStatus:I

    .line 25
    .line 26
    if-ne v1, v2, :cond_0

    .line 27
    move v1, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, 0x0

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->isChatThreadDisabledOrDelete()Z

    .line 40
    move-result v1

    .line 41
    xor-int/2addr v1, v2

    .line 42
    .line 43
    .line 44
    const v2, 0x7f0a02a1

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v2, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->isChatThreadDisabledOrDelete()Z

    .line 51
    move-result v0

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->disableBar:Landroid/widget/TextView;

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->disableBar:Landroid/widget/TextView;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->isDeleted()Z

    .line 73
    move-result v1

    .line 74
    .line 75
    if-eqz v1, :cond_1

    .line 76
    .line 77
    .line 78
    const v1, 0x7f12022e

    .line 79
    goto :goto_1

    .line 80
    .line 81
    .line 82
    :cond_1
    const v1, 0x7f120230

    .line 83
    .line 84
    .line 85
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 86
    :cond_2
    return-void
.end method

.method private updateFansOnlyMask()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->fansOnlyMask:Landroid/view/View;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->isMeAccessibleToThisChat()Z

    .line 9
    move-result v1

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    return-void
.end method

.method private updateFloatView()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->isDisabled()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->isDeleted()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->isPinAnnouncement()Ljava/lang/Boolean;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getAnnouncement()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    move-result v1

    .line 37
    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->announcementContainer:Landroid/view/ViewGroup;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 50
    move-result v2

    .line 51
    const/4 v3, 0x0

    .line 52
    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->isThreadDelete()Z

    .line 57
    move-result v2

    .line 58
    .line 59
    if-nez v2, :cond_0

    .line 60
    .line 61
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 62
    goto :goto_0

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    const/high16 v4, 0x41200000    # 10.0f

    .line 69
    .line 70
    .line 71
    invoke-static {v2, v4}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 72
    move-result v2

    .line 73
    .line 74
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 75
    .line 76
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->announcementContainer:Landroid/view/ViewGroup;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->announcementText:Landroid/widget/TextView;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getAnnouncement()Ljava/lang/String;

    .line 85
    move-result-object v2

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->announcementText:Landroid/widget/TextView;

    .line 91
    .line 92
    new-instance v2, Lcom/narvii/chat/k;

    .line 93
    .line 94
    .line 95
    invoke-direct {v2, p0}, Lcom/narvii/chat/k;-><init>(Lcom/narvii/chat/ChatFragment;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 99
    .line 100
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->announcementContainer:Landroid/view/ViewGroup;

    .line 101
    .line 102
    new-instance v2, Lcom/narvii/chat/l;

    .line 103
    .line 104
    .line 105
    invoke-direct {v2, p0, v0}, Lcom/narvii/chat/l;-><init>(Lcom/narvii/chat/ChatFragment;Lcom/narvii/model/ChatThread;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    goto :goto_1

    .line 110
    .line 111
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->announcementContainer:Landroid/view/ViewGroup;

    .line 112
    .line 113
    const/16 v1, 0x8

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    :goto_1
    return-void
.end method

.method private updateLiveLabel(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->liveLayout:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    goto :goto_1

    .line 8
    .line 9
    :cond_0
    iget v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Lcom/narvii/chat/signalling/SignallingChannel;->isNotGuestRole(I)Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 31
    move-result p1

    .line 32
    .line 33
    if-lez p1, :cond_1

    .line 34
    const/4 p1, 0x0

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_1
    const/16 p1, 0x8

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    :cond_2
    :goto_1
    return-void
.end method

.method private updateOrganizerTransView()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->organizerTransContainer:Landroid/view/View;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->chatInputFragment:Lcom/narvii/chat/input/ChatInputFragment;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/narvii/chat/input/ChatInputFragment;->isAllPanelHidden()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    :cond_0
    iget-boolean v1, p0, Lcom/narvii/chat/ChatFragment;->isKeyboardVisible:Z

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->isChatThreadDisabledOrDelete()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    const/4 v1, 0x0

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    const/16 v1, 0x8

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    return-void
.end method

.method private updatePrivateContentViews()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updateActionbarView()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updateFansOnlyMask()V

    .line 7
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/chat/ChatFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatFragment;->onChatCloseClicked(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/chat/ChatFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->reportActive()V

    return-void
.end method

.method static bridge synthetic x(Lcom/narvii/chat/ChatFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updateChatListFrame()V

    return-void
.end method

.method static bridge synthetic y(Lcom/narvii/chat/ChatFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updateChatThreadInList()V

    return-void
.end method

.method static bridge synthetic z(Lcom/narvii/chat/ChatFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updateOrganizerTransView()V

    return-void
.end method


# virtual methods
.method public announcementPinBehaviorChanged(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->sendGetThreadReqeust()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updateChatThreadInList()V

    .line 13
    :cond_0
    return-void
.end method

.method public completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->getLogEvent()Lcom/narvii/logging/LogEvent;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iget-object v0, v0, Lcom/narvii/logging/LogEvent;->objectId:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getLogObject()Lcom/narvii/model/NVObject;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 19
    .line 20
    :cond_0
    sget-object v0, Lcom/narvii/logging/LogEventType;->AppEvent:Lcom/narvii/logging/LogEventType;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->getLogEvent()Lcom/narvii/logging/LogEvent;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    iget-object v1, v1, Lcom/narvii/logging/LogEvent;->eventType:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    const-string v0, "chatArea"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->areaIfNotSet(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lcom/narvii/chat/video/ChatLogEventHelper;->getChatProperty(I)Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    const-string v1, "chatProperty"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 59
    .line 60
    :cond_2
    const-string v0, "chatType"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->containExtraKey(Ljava/lang/String;)Z

    .line 64
    move-result v1

    .line 65
    .line 66
    if-nez v1, :cond_4

    .line 67
    .line 68
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    if-eqz v1, :cond_3

    .line 75
    .line 76
    iget v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 77
    .line 78
    .line 79
    invoke-static {v1}, Lcom/narvii/chat/video/ChatLogEventHelper;->getChatType(I)Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 84
    goto :goto_0

    .line 85
    .line 86
    :cond_3
    const-string v1, "textChat"

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 90
    .line 91
    :cond_4
    :goto_0
    const-string v0, "chatId"

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    .line 95
    move-result-object v1

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 99
    return-void
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method public getLogObject()Lcom/narvii/model/NVObject;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-object v0

    .line 8
    .line 9
    :cond_0
    new-instance v0, Lcom/narvii/model/ChatThread;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lcom/narvii/model/ChatThread;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    iput-object v1, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 19
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "chat_room"

    return-object v0
.end method

.method public getThread()Lcom/narvii/model/ChatThread;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 1

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
    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hideCBBInHomeFragment()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isMeAccessibleToThisChat()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isMeAccessibleToThisChat(Lcom/narvii/model/ChatThread;)Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActiveChanged(Z)V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string v0, "push"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/pushservice/PushService;

    .line 14
    .line 15
    const-string v1, "config"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 25
    move-result v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/narvii/pushservice/PushService;->dismissChatNotification(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->beginReportActive()V

    .line 36
    .line 37
    :cond_0
    if-nez p1, :cond_2

    .line 38
    .line 39
    const-string p1, "mediaPlayer"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    check-cast p1, Lcom/narvii/media/MediaPlayerManager;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/narvii/media/MediaPlayerManager;->releaseMediaPlayer()V

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment;->liveLayerTarget:Ljava/lang/String;

    .line 51
    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    const-string p1, "liveLayer"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    check-cast p1, Lcom/narvii/livelayer/LiveLayerService;

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->actions:Ljava/util/List;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->liveLayerTarget:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v2, p0, Lcom/narvii/chat/ChatFragment;->params:Ljava/util/HashMap;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/livelayer/LiveLayerService;->reportInactive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 70
    const/4 p1, 0x0

    .line 71
    .line 72
    iput-object p1, p0, Lcom/narvii/chat/ChatFragment;->liveLayerTarget:Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    :cond_1
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->stopReportActive()V

    .line 76
    .line 77
    .line 78
    :cond_2
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->notifyTipBroadcastActiveChange()V

    .line 79
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0d00a1

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/chat/ChatFragment;->actionBarLeftView:Landroid/view/View;

    .line 22
    .line 23
    .line 24
    const v0, 0x7f0a0553

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    check-cast p1, Landroid/widget/TextView;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/narvii/chat/ChatFragment;->tvChatTileView:Landroid/widget/TextView;

    .line 33
    .line 34
    new-instance v0, Lcom/narvii/chat/m;

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, p0}, Lcom/narvii/chat/m;-><init>(Lcom/narvii/chat/ChatFragment;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment;->actionBarLeftView:Landroid/view/View;

    .line 43
    .line 44
    .line 45
    const v0, 0x7f0a093e

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    check-cast p1, Landroid/widget/TextView;

    .line 52
    .line 53
    iput-object p1, p0, Lcom/narvii/chat/ChatFragment;->tvMemberCount:Landroid/widget/TextView;

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updateActionBarTitle()V

    .line 57
    .line 58
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment;->actionBarLeftView:Landroid/view/View;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setActionBarLeftView(Landroid/view/View;)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updatePrivateContentViews()V

    .line 65
    .line 66
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatFragment;->updateLiveLabel(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 78
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment;->chatInputFragment:Lcom/narvii/chat/input/ChatInputFragment;

    .line 10
    const/4 v0, 0x1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/chat/input/ChatInputFragment;->onBackPressed()Z

    .line 16
    move-result p1

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    return v0

    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment;->vvChatMainFragment:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->onBackPressed()Z

    .line 27
    move-result p1

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    return v0

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->shouldShowThreadFloating()Z

    .line 34
    move-result p1

    .line 35
    const/4 v0, 0x0

    .line 36
    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    const-string p1, "config"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 49
    move-result p1

    .line 50
    .line 51
    if-nez p1, :cond_2

    .line 52
    return v0

    .line 53
    .line 54
    :cond_2
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 55
    .line 56
    new-instance v2, Lcom/narvii/chat/video/floating/CommunityThread;

    .line 57
    .line 58
    iget-object v3, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 59
    .line 60
    .line 61
    invoke-direct {v2, p1, v3}, Lcom/narvii/chat/video/floating/CommunityThread;-><init>(ILcom/narvii/model/ChatThread;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Lcom/narvii/chat/rtc/RtcService;->showThreadDetailWindow(Lcom/narvii/chat/video/floating/CommunityThread;)V

    .line 65
    .line 66
    :cond_3
    new-instance p1, Lcom/narvii/chat/video/ChatLogEventHelper;

    .line 67
    .line 68
    .line 69
    invoke-direct {p1, p0}, Lcom/narvii/chat/video/ChatLogEventHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getLogObject()Lcom/narvii/model/NVObject;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 76
    const/4 v2, -0x1

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v2, v1}, Lcom/narvii/chat/video/ChatLogEventHelper;->logQuitChat(ILcom/narvii/model/ChatThread;)V

    .line 80
    return v0
.end method

.method public onChannelForceQuit(Lcom/narvii/chat/signalling/SignallingChannel;I)V
    .locals 0
    .param p1    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment;->liveLayout:Landroid/view/View;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/16 p2, 0x8

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :cond_0
    return-void
.end method

.method public onChannelStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0
    .param p1    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatFragment;->updateLiveLabel(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 4
    return-void
.end method

.method public onChannelUserListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;Landroid/util/SparseArray;)V
    .locals 0
    .param p1    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/SparseArray;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatFragment;->updateLiveLabel(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 4
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a02a7

    .line 8
    .line 9
    if-eq p1, v0, :cond_3

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a07d5

    .line 13
    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    goto :goto_1

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    const-string v0, "joinThread"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentTransaction;->t(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 43
    .line 44
    :cond_1
    new-instance p1, Lcom/narvii/chat/invite/JoinThreadFragment;

    .line 45
    .line 46
    .line 47
    invoke-direct {p1}, Lcom/narvii/chat/invite/JoinThreadFragment;-><init>()V

    .line 48
    .line 49
    new-instance v1, Landroid/os/Bundle;

    .line 50
    .line 51
    .line 52
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 53
    .line 54
    const-string v2, "id"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    if-nez v2, :cond_2

    .line 68
    const/4 v2, 0x0

    .line 69
    goto :goto_0

    .line 70
    .line 71
    .line 72
    :cond_2
    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->getBriefContent()Lcom/narvii/model/ChatThread;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    .line 76
    :goto_0
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    move-result-object v2

    .line 78
    .line 79
    const-string v3, "thread"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 93
    move-result-object v1

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->i0()Z

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/narvii/chat/invite/JoinThreadFragment;->leaveConversation()V

    .line 111
    goto :goto_1

    .line 112
    .line 113
    .line 114
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 115
    move-result-object p1

    .line 116
    .line 117
    .line 118
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 119
    :goto_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    .line 5
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 6
    const/4 v0, 0x2

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    const v1, 0x7f0a100f

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    xor-int/lit8 v1, p1, 0x1

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->chatInviteFrame:Landroid/view/View;

    .line 34
    .line 35
    xor-int/lit8 v1, p1, 0x1

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 52
    goto :goto_1

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 64
    .line 65
    .line 66
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    instance-of v0, v0, Lcom/narvii/app/DrawerActivity;

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    check-cast v0, Lcom/narvii/app/DrawerActivity;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p1}, Lcom/narvii/app/DrawerActivity;->setDisableDrawer(Z)V

    .line 81
    .line 82
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p1}, Lcom/narvii/chat/rtc/RtcService;->setCameraLandScape(Z)V

    .line 86
    .line 87
    .line 88
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->notifyTipBroadcastActiveChange()V

    .line 89
    return-void
.end method

.method public onConnect(Lcom/narvii/util/ws/WsService;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->reportActive()V

    .line 4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "rtc"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/chat/ChatFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/rtc/RtcService;->addMyChannelUserStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/MyChannelUserStatusChangeListener;)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/rtc/RtcService;->addLiveChannelChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LiveChannelChangeListener;)V

    .line 30
    .line 31
    new-instance v0, Lcom/narvii/chat/util/ChatHelper;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    iput-object v0, p0, Lcom/narvii/chat/ChatFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 41
    const/4 v0, 0x1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getMenuController()Lcom/narvii/app/NVFragment$MenuController;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getMenuController()Lcom/narvii/app/NVFragment$MenuController;

    .line 54
    move-result-object v0

    .line 55
    const/4 v1, 0x0

    .line 56
    .line 57
    .line 58
    invoke-interface {v0, v1}, Lcom/narvii/app/NVFragment$MenuController;->setScrollEnabled(Z)V

    .line 59
    .line 60
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->actions:Ljava/util/List;

    .line 61
    .line 62
    sget-object v1, Lcom/narvii/livelayer/LiveLayerService;->ACTION_CHATTING:Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    const/4 v0, 0x0

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    const-string v0, "thread"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    const-class v1, Lcom/narvii/model/ChatThread;

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 84
    .line 85
    iput-object v0, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 86
    .line 87
    new-instance v0, Lcom/narvii/video/ui/floating/FloatingPermissionUtils;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 91
    move-result-object v1

    .line 92
    .line 93
    .line 94
    invoke-direct {v0, v1}, Lcom/narvii/video/ui/floating/FloatingPermissionUtils;-><init>(Landroid/content/Context;)V

    .line 95
    .line 96
    iput-object v0, p0, Lcom/narvii/chat/ChatFragment;->floatingPermissionUtils:Lcom/narvii/video/ui/floating/FloatingPermissionUtils;

    .line 97
    .line 98
    const-string v0, "__fromGlobalChat"

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 102
    move-result v0

    .line 103
    .line 104
    iput-boolean v0, p0, Lcom/narvii/chat/ChatFragment;->fromGlobalChat:Z

    .line 105
    .line 106
    const-string v0, "ws"

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    check-cast v0, Lcom/narvii/util/ws/WsService;

    .line 113
    .line 114
    iput-object v0, p0, Lcom/narvii/chat/ChatFragment;->wsService:Lcom/narvii/util/ws/WsService;

    .line 115
    .line 116
    iget-object v0, v0, Lcom/narvii/util/ws/WsService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, p0}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 120
    .line 121
    const-string v0, "chat"

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    check-cast v0, Lcom/narvii/chat/core/ChatService;

    .line 128
    .line 129
    iput-object v0, p0, Lcom/narvii/chat/ChatFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    .line 133
    move-result-object v1

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/core/ChatService;->addLiveChannelPermissionListener(Ljava/lang/String;Lcom/narvii/chat/ThreadConfigChangeListener;)V

    .line 137
    .line 138
    if-nez p1, :cond_1

    .line 139
    .line 140
    const-string p1, "justCreated"

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 144
    move-result p1

    .line 145
    .line 146
    if-eqz p1, :cond_1

    .line 147
    .line 148
    sget-object p1, Lcom/narvii/logging/ActSemantic;->createChat:Lcom/narvii/logging/ActSemantic;

    .line 149
    .line 150
    .line 151
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 152
    move-result-object p1

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 156
    .line 157
    new-instance p1, Lcom/narvii/account/push/PushNotificationHelper;

    .line 158
    .line 159
    .line 160
    invoke-direct {p1, p0}, Lcom/narvii/account/push/PushNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 161
    .line 162
    const-string v0, "scenario_chat"

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v0}, Lcom/narvii/account/push/PushNotificationHelper;->showRemindDialogIfNeeded(Ljava/lang/String;)Z

    .line 166
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    const v0, 0x7f120267

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, p2, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    const v2, 0x7f0803f5

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 19
    move-result-object v0

    .line 20
    const/4 v2, 0x2

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 24
    .line 25
    .line 26
    const v0, 0x7f0a0321

    .line 27
    .line 28
    .line 29
    const v3, 0x7f1202ba

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, p2, v0, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    const p2, 0x7f0d059c

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    iget-object p2, p0, Lcom/narvii/chat/ChatFragment;->menuClickListener:Landroid/view/View$OnClickListener;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d00d7

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
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->dispose()V

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->chatTipBroadcastHelper:Lcom/narvii/chat/ChatTipBroadcastHelper;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/chat/ChatTipBroadcastHelper;->onDestroy()V

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeLiveChannelChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LiveChannelChangeListener;)V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeMyChannelUserStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/MyChannelUserStatusChangeListener;)V

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/core/ChatService;->removeLiveChannelPermissionListener(Ljava/lang/String;Lcom/narvii/chat/ThreadConfigChangeListener;)V

    .line 45
    return-void
.end method

.method public onDisconnect(Lcom/narvii/util/ws/WsService;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onLiveContentStatusChanged(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->vvChatMainFragment:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    goto :goto_1

    .line 18
    .line 19
    :cond_0
    if-eqz p1, :cond_1

    .line 20
    const/4 p1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    .line 24
    :goto_0
    iput-boolean p1, p0, Lcom/narvii/chat/ChatFragment;->isLiveChannelShow:Z

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updateChatListFrame()V

    .line 28
    :cond_2
    :goto_1
    return-void
.end method

.method public onLivePermissionChanged(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/narvii/model/ChatThread;->setVvChatJoinType(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatFragment;->setThread(Lcom/narvii/model/ChatThread;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updateChatThreadInList()V

    .line 24
    :cond_0
    return-void
.end method

.method public onMyChannelUserStatusChanged(ILcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/ChannelUser;)V
    .locals 0
    .param p2    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/chat/signalling/ChannelUser;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p3, 0x3

    .line 2
    .line 3
    if-ne p1, p3, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2}, Lcom/narvii/chat/ChatFragment;->updateLiveLabel(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 7
    :cond_0
    return-void
.end method

.method public onNewTipLog(Lcom/narvii/tipping/model/TipLog;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->chatTipBroadcastHelper:Lcom/narvii/chat/ChatTipBroadcastHelper;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/chat/ChatTipBroadcastHelper;->onNewTipLog(Lcom/narvii/tipping/model/TipLog;)V

    .line 8
    :cond_0
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_5

    .line 13
    .line 14
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 15
    .line 16
    const-string v1, "update"

    .line 17
    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    const-string v1, "edit"

    .line 21
    .line 22
    if-ne v0, v1, :cond_3

    .line 23
    .line 24
    :cond_0
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 25
    .line 26
    instance-of v1, v1, Lcom/narvii/model/ChatThread;

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    iget-object v0, p1, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const-string v1, "_fromChatFragment"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 38
    move-result v0

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    return-void

    .line 42
    .line 43
    :cond_1
    iget-object v0, p1, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    .line 44
    const/4 v1, 0x0

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    const-string v2, "_instantFullInfo"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 52
    move-result v1

    .line 53
    .line 54
    :cond_2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/ChatFragment;->setThread(Lcom/narvii/model/ChatThread;Z)V

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_3
    const-string v1, "delete"

    .line 63
    .line 64
    if-ne v0, v1, :cond_5

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 68
    move-result v0

    .line 69
    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->sendGetThreadReqeust()V

    .line 74
    goto :goto_0

    .line 75
    .line 76
    .line 77
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 78
    .line 79
    .line 80
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    iget-object v1, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    move-result v0

    .line 88
    .line 89
    const-string v1, "account"

    .line 90
    .line 91
    if-eqz v0, :cond_6

    .line 92
    .line 93
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 94
    .line 95
    instance-of v0, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;

    .line 96
    .line 97
    if-eqz v0, :cond_6

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    if-eqz v0, :cond_6

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 113
    move-result-object v2

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 117
    move-result-object v0

    .line 118
    .line 119
    iget-object v3, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v3, Lcom/narvii/model/ChatBubbleNotificationWrapper;

    .line 122
    .line 123
    iget-object v3, v3, Lcom/narvii/model/ChatBubbleNotificationWrapper;->chatBubble:Lcom/narvii/model/ChatBubble;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v0, v3}, Lcom/narvii/model/ChatThread;->updateBubble(Ljava/lang/String;Lcom/narvii/model/ChatBubble;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 130
    move-result-object v0

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v0}, Lcom/narvii/chat/ChatFragment;->setThread(Lcom/narvii/model/ChatThread;)V

    .line 134
    .line 135
    :cond_6
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 136
    .line 137
    instance-of v2, v0, Lcom/narvii/influencer/FanClub;

    .line 138
    .line 139
    if-eqz v2, :cond_9

    .line 140
    .line 141
    check-cast v0, Lcom/narvii/influencer/FanClub;

    .line 142
    .line 143
    iget-object v0, v0, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 147
    move-result-object v2

    .line 148
    .line 149
    if-nez v2, :cond_7

    .line 150
    const/4 v2, 0x0

    .line 151
    goto :goto_1

    .line 152
    .line 153
    .line 154
    :cond_7
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 155
    move-result-object v2

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    .line 159
    move-result-object v2

    .line 160
    .line 161
    .line 162
    :goto_1
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 163
    move-result v0

    .line 164
    .line 165
    if-eqz v0, :cond_9

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->isMeAccessibleToThisChat()Z

    .line 169
    move-result v0

    .line 170
    .line 171
    if-nez v0, :cond_9

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 175
    move-result-object v0

    .line 176
    .line 177
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 178
    .line 179
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast p1, Lcom/narvii/influencer/FanClub;

    .line 182
    .line 183
    iget-object p1, p1, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, p1}, Lcom/narvii/account/AccountService;->getFanClub(Ljava/lang/String;)Lcom/narvii/influencer/FanClub;

    .line 187
    move-result-object p1

    .line 188
    .line 189
    if-eqz p1, :cond_8

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1}, Lcom/narvii/influencer/FanClub;->isActive()Z

    .line 193
    move-result p1

    .line 194
    .line 195
    if-eqz p1, :cond_8

    .line 196
    .line 197
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment;->fansOnlyMask:Landroid/view/View;

    .line 198
    .line 199
    if-eqz p1, :cond_8

    .line 200
    .line 201
    const/16 v0, 0x8

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 205
    .line 206
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment;->vvChatMainFragment:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 207
    .line 208
    if-eqz p1, :cond_8

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->onFansClubStatusActive()V

    .line 212
    .line 213
    .line 214
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->sendGetThreadReqeust()V

    .line 215
    :cond_9
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/ChatFragment;->isKeyboardVisible:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 13
    return v1

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 17
    move-result v0

    .line 18
    .line 19
    .line 20
    const v2, 0x7f120267

    .line 21
    .line 22
    if-ne v0, v2, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    const-string v0, "SettingButton"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 36
    .line 37
    const-class p1, Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    const-string v0, "id"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    const-string v2, "prefetch"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    .line 65
    const-string v0, "customFinishAnimIn"

    .line 66
    .line 67
    .line 68
    const v2, 0x7f010010

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    .line 73
    const-string v0, "customFinishAnimOut"

    .line 74
    .line 75
    .line 76
    const v2, 0x7f010011

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    .line 81
    const-string v0, "__fromGlobalChat"

    .line 82
    .line 83
    iget-boolean v2, p0, Lcom/narvii/chat/ChatFragment;->fromGlobalChat:Z

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 87
    .line 88
    const-string v0, "__community"

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    move-result-object v2

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    .line 97
    const-string v0, "fromRecentChat"

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 101
    move-result v2

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 105
    .line 106
    .line 107
    invoke-static {p0, p1}, Lcom/narvii/chat/ChatFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 111
    move-result-object p1

    .line 112
    .line 113
    .line 114
    const v0, 0x7f01000e

    .line 115
    .line 116
    .line 117
    const v2, 0x7f01000f

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v0, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 121
    return v1

    .line 122
    .line 123
    .line 124
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 125
    move-result p1

    .line 126
    return p1
.end method

.method public onPause()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->vvChatMainFragment:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isFinishing()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->floatingPermissionUtils:Lcom/narvii/video/ui/floating/FloatingPermissionUtils;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/video/ui/floating/FloatingPermissionUtils;->canDrawOverlays()Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/narvii/chat/ChatFragment;->allowFloatingWindow:Z

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    instance-of v0, v0, Lcom/narvii/chat/ChatActivity;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    check-cast v0, Lcom/narvii/chat/ChatActivity;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/narvii/chat/ChatActivity;->DISABLE_FLOATING_WINDOW:Lcom/narvii/util/statistics/TmpValue;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/narvii/util/statistics/TmpValue;->getAndRemove()Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    check-cast v0, Ljava/lang/Boolean;

    .line 56
    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 61
    move-result v0

    .line 62
    .line 63
    if-eqz v0, :cond_0

    .line 64
    return-void

    .line 65
    .line 66
    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->shouldShowLiveChannelFloating()Z

    .line 68
    move-result v0

    .line 69
    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->vvChatMainFragment:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->showFloatingWindow()V

    .line 76
    :cond_1
    const/4 v0, 0x1

    .line 77
    .line 78
    iput-boolean v0, p0, Lcom/narvii/chat/ChatFragment;->allowFloatingWindow:Z

    .line 79
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0321

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    xor-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 20
    .line 21
    .line 22
    const v0, 0x7f120267

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->isThreadDelete()Z

    .line 30
    move-result v0

    .line 31
    .line 32
    xor-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 36
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->hideThreadDetailWindow()V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getFloatingLiveChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getShowingWindowType()I

    .line 28
    move-result v1

    .line 29
    const/4 v2, -0x1

    .line 30
    .line 31
    if-eq v1, v2, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    move-result v0

    .line 42
    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->cleaningAttachedWindows()V

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getPendingFloatingThreadId()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    move-result v0

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->removePendingFloatingRunnable()V

    .line 70
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->safeWriteAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "thread"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    const-string v0, "statSend"

    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/narvii/chat/ChatFragment;->statSend:Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 22
    .line 23
    const-string v0, "isChatFullInfoFetched"

    .line 24
    .line 25
    iget-boolean v1, p0, Lcom/narvii/chat/ChatFragment;->isChatFullInfoFetched:Z

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    .line 30
    const-string v0, "isLiveChannelShow"

    .line 31
    .line 32
    iget-boolean v1, p0, Lcom/narvii/chat/ChatFragment;->isLiveChannelShow:Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    return-void
.end method

.method public onThreadChanged(Lcom/narvii/model/ChatThread;)V
    .locals 0

    return-void
.end method

.method public onTipBroadcastLayoutCreated(Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/ChatFragment$3;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/ChatFragment$3;-><init>(Lcom/narvii/chat/ChatFragment;Landroid/view/ViewGroup;)V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/chat/ChatFragment;->chatTipBroadcastHelper:Lcom/narvii/chat/ChatTipBroadcastHelper;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->notifyTipBroadcastActiveChange()V

    .line 11
    return-void
.end method

.method public onTipEnableChanged(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, v0, Lcom/narvii/model/ChatThread;->tipInfo:Lcom/narvii/model/TippingInfo;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iput-boolean p1, v1, Lcom/narvii/model/TippingInfo;->tippable:Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/chat/ChatFragment;->setThread(Lcom/narvii/model/ChatThread;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updateChatThreadInList()V

    .line 17
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0c4c

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/chat/ChatContentContainer;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/chat/ChatFragment;->root:Lcom/narvii/chat/ChatContentContainer;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a02a6

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    iput-object v1, p0, Lcom/narvii/chat/ChatFragment;->listViewFrame:Landroid/view/View;

    .line 24
    .line 25
    .line 26
    const v1, 0x7f0a02a7

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iput-object v1, p0, Lcom/narvii/chat/ChatFragment;->listViewFrameBg:Landroid/view/View;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    .line 37
    .line 38
    const v1, 0x7f0a0445

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    iput-object v1, p0, Lcom/narvii/chat/ChatFragment;->disabledLayout:Landroid/view/View;

    .line 45
    .line 46
    .line 47
    const v1, 0x7f0a0443

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    check-cast v1, Landroid/widget/TextView;

    .line 54
    .line 55
    iput-object v1, p0, Lcom/narvii/chat/ChatFragment;->disableBar:Landroid/widget/TextView;

    .line 56
    .line 57
    .line 58
    const v1, 0x7f0a07d5

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    iput-object v1, p0, Lcom/narvii/chat/ChatFragment;->btnLeaveConversation:Landroid/view/View;

    .line 65
    .line 66
    new-instance v2, Lcom/narvii/chat/j;

    .line 67
    .line 68
    .line 69
    invoke-direct {v2, p0}, Lcom/narvii/chat/j;-><init>(Lcom/narvii/chat/ChatFragment;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    .line 74
    .line 75
    const v1, 0x7f0a02a1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    move-result-object v2

    .line 80
    .line 81
    iput-object v2, p0, Lcom/narvii/chat/ChatFragment;->chatInviteFrame:Landroid/view/View;

    .line 82
    .line 83
    .line 84
    const v2, 0x7f0a0560

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    move-result-object v3

    .line 89
    .line 90
    iput-object v3, p0, Lcom/narvii/chat/ChatFragment;->fansOnlyMask:Landroid/view/View;

    .line 91
    .line 92
    .line 93
    const v3, 0x7f0a0115

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    move-result-object v3

    .line 98
    .line 99
    check-cast v3, Landroid/view/ViewGroup;

    .line 100
    .line 101
    iput-object v3, p0, Lcom/narvii/chat/ChatFragment;->announcementContainer:Landroid/view/ViewGroup;

    .line 102
    .line 103
    .line 104
    const v3, 0x7f0a0118

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    move-result-object v3

    .line 109
    .line 110
    check-cast v3, Landroid/widget/TextView;

    .line 111
    .line 112
    iput-object v3, p0, Lcom/narvii/chat/ChatFragment;->announcementText:Landroid/widget/TextView;

    .line 113
    .line 114
    .line 115
    const v3, 0x7f0a0e85

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    move-result-object v3

    .line 120
    .line 121
    check-cast v3, Landroid/view/ViewGroup;

    .line 122
    .line 123
    iput-object v3, p0, Lcom/narvii/chat/ChatFragment;->tipBroadcastLayout:Landroid/view/ViewGroup;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v3}, Lcom/narvii/chat/ChatFragment;->onTipBroadcastLayoutCreated(Landroid/view/ViewGroup;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 130
    move-result-object v3

    .line 131
    .line 132
    .line 133
    invoke-static {v3}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 134
    .line 135
    .line 136
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updateActionBarTitle()V

    .line 137
    .line 138
    .line 139
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updateFloatView()V

    .line 140
    .line 141
    .line 142
    const v3, 0x7f0a0280

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    move-result-object v3

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 150
    move-result-object v4

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 154
    move-result v5

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 158
    move-result v6

    .line 159
    add-int/2addr v5, v6

    .line 160
    .line 161
    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    .line 166
    const-string v3, "vvChat"

    .line 167
    .line 168
    .line 169
    const v4, 0x7f0a02b2

    .line 170
    .line 171
    const-string v5, "chatInput"

    .line 172
    .line 173
    const-string v6, "thread"

    .line 174
    .line 175
    if-nez p2, :cond_1

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 179
    move-result-object v7

    .line 180
    .line 181
    new-instance v8, Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 182
    .line 183
    .line 184
    invoke-direct {v8}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;-><init>()V

    .line 185
    .line 186
    iput-object v8, p0, Lcom/narvii/chat/ChatFragment;->vvChatMainFragment:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 187
    .line 188
    new-instance v8, Landroid/os/Bundle;

    .line 189
    .line 190
    .line 191
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 192
    .line 193
    const-string v9, "id"

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, v9}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    move-result-object v10

    .line 198
    .line 199
    .line 200
    invoke-virtual {v8, v9, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 204
    move-result-object v9

    .line 205
    .line 206
    if-nez v9, :cond_0

    .line 207
    const/4 v9, 0x0

    .line 208
    goto :goto_0

    .line 209
    .line 210
    .line 211
    :cond_0
    invoke-virtual {v9}, Lcom/narvii/model/ChatThread;->getBriefContent()Lcom/narvii/model/ChatThread;

    .line 212
    move-result-object v9

    .line 213
    .line 214
    .line 215
    :goto_0
    invoke-static {v9}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 216
    move-result-object v9

    .line 217
    .line 218
    .line 219
    invoke-virtual {v8, v6, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .line 221
    const-string v9, "payload"

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0, v9}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 225
    move-result-object v10

    .line 226
    .line 227
    .line 228
    invoke-virtual {v8, v9, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .line 230
    iget-object v9, p0, Lcom/narvii/chat/ChatFragment;->vvChatMainFragment:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v9, v8}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 234
    .line 235
    new-instance v8, Lcom/narvii/chat/input/ChatInputFragment;

    .line 236
    .line 237
    .line 238
    invoke-direct {v8}, Lcom/narvii/chat/input/ChatInputFragment;-><init>()V

    .line 239
    .line 240
    iput-object v8, p0, Lcom/narvii/chat/ChatFragment;->chatInputFragment:Lcom/narvii/chat/input/ChatInputFragment;

    .line 241
    .line 242
    new-instance v8, Landroid/os/Bundle;

    .line 243
    .line 244
    .line 245
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 246
    .line 247
    const-string v9, "stickerCollectionId"

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0, v9}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 251
    move-result-object v10

    .line 252
    .line 253
    .line 254
    invoke-virtual {v8, v9, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    iget-object v9, p0, Lcom/narvii/chat/ChatFragment;->chatInputFragment:Lcom/narvii/chat/input/ChatInputFragment;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v9, v8}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 260
    .line 261
    new-instance v8, Lcom/narvii/chat/ChatListFragment;

    .line 262
    .line 263
    .line 264
    invoke-direct {v8}, Lcom/narvii/chat/ChatListFragment;-><init>()V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 268
    move-result v9

    .line 269
    .line 270
    xor-int/lit8 v9, v9, 0x1

    .line 271
    .line 272
    .line 273
    invoke-virtual {v8, v9}, Lcom/narvii/list/NVListFragment;->setSwipeRefreshEnabled(Z)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v7}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 277
    move-result-object v7

    .line 278
    .line 279
    new-instance v9, Lcom/narvii/chat/ChatBackgroundFragment;

    .line 280
    .line 281
    .line 282
    invoke-direct {v9}, Lcom/narvii/chat/ChatBackgroundFragment;-><init>()V

    .line 283
    .line 284
    const-string v10, "chatBackground"

    .line 285
    .line 286
    .line 287
    const v11, 0x7f0a028c

    .line 288
    .line 289
    .line 290
    invoke-virtual {v7, v11, v9, v10}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 291
    move-result-object v7

    .line 292
    .line 293
    .line 294
    const v9, 0x7f0a029d

    .line 295
    .line 296
    iget-object v10, p0, Lcom/narvii/chat/ChatFragment;->chatInputFragment:Lcom/narvii/chat/input/ChatInputFragment;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v7, v9, v10, v5}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 300
    move-result-object v5

    .line 301
    .line 302
    const-string v7, "chatList"

    .line 303
    .line 304
    .line 305
    invoke-virtual {v5, v0, v8, v7}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 306
    move-result-object v0

    .line 307
    .line 308
    new-instance v5, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;

    .line 309
    .line 310
    .line 311
    invoke-direct {v5}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;-><init>()V

    .line 312
    .line 313
    const-string v7, "chatOrganizerTrans"

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0, v4, v5, v7}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 317
    move-result-object v0

    .line 318
    .line 319
    .line 320
    const v5, 0x7f0a100d

    .line 321
    .line 322
    iget-object v7, p0, Lcom/narvii/chat/ChatFragment;->vvChatMainFragment:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0, v5, v7, v3}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 326
    move-result-object v0

    .line 327
    .line 328
    new-instance v3, Lcom/narvii/chat/invite/ChatInvitationFragment;

    .line 329
    .line 330
    .line 331
    invoke-direct {v3}, Lcom/narvii/chat/invite/ChatInvitationFragment;-><init>()V

    .line 332
    .line 333
    const-string v5, "invitation"

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0, v1, v3, v5}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 337
    move-result-object v0

    .line 338
    .line 339
    new-instance v1, Lcom/narvii/chat/ChatFansOnlyMaskFragment;

    .line 340
    .line 341
    .line 342
    invoke-direct {v1}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;-><init>()V

    .line 343
    .line 344
    const-string v3, "fansOnlyMask"

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, v2, v1, v3}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 348
    move-result-object v0

    .line 349
    .line 350
    new-instance v1, Lcom/narvii/chat/invite/JoinThreadFragment;

    .line 351
    .line 352
    .line 353
    invoke-direct {v1}, Lcom/narvii/chat/invite/JoinThreadFragment;-><init>()V

    .line 354
    .line 355
    const-string v2, "joinThread"

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 359
    move-result-object v0

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 363
    goto :goto_1

    .line 364
    .line 365
    .line 366
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 367
    move-result-object v0

    .line 368
    .line 369
    .line 370
    invoke-virtual {v0, v5}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 371
    move-result-object v0

    .line 372
    .line 373
    check-cast v0, Lcom/narvii/chat/input/ChatInputFragment;

    .line 374
    .line 375
    iput-object v0, p0, Lcom/narvii/chat/ChatFragment;->chatInputFragment:Lcom/narvii/chat/input/ChatInputFragment;

    .line 376
    .line 377
    .line 378
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 379
    move-result-object v0

    .line 380
    .line 381
    .line 382
    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 383
    move-result-object v0

    .line 384
    .line 385
    check-cast v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 386
    .line 387
    iput-object v0, p0, Lcom/narvii/chat/ChatFragment;->vvChatMainFragment:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 388
    .line 389
    :goto_1
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->chatInputFragment:Lcom/narvii/chat/input/ChatInputFragment;

    .line 390
    .line 391
    if-eqz v0, :cond_2

    .line 392
    .line 393
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->panelHideListener:Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0, v1}, Lcom/narvii/chat/input/ChatInputFragment;->addPanelHideListener(Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;)V

    .line 397
    .line 398
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->vvChatMainFragment:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 399
    .line 400
    if-eqz v0, :cond_3

    .line 401
    .line 402
    .line 403
    invoke-virtual {v0, p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->setContentVisibilityChangeListener(Lcom/narvii/chat/video/ILiveChannelCollapseChangeListener;)V

    .line 404
    .line 405
    :cond_3
    const-class v0, Lcom/narvii/model/ChatThread;

    .line 406
    .line 407
    if-nez p2, :cond_4

    .line 408
    .line 409
    .line 410
    invoke-virtual {p0, v6}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 411
    move-result-object p2

    .line 412
    .line 413
    .line 414
    invoke-static {p2, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 415
    move-result-object p2

    .line 416
    .line 417
    check-cast p2, Lcom/narvii/model/ChatThread;

    .line 418
    goto :goto_2

    .line 419
    .line 420
    .line 421
    :cond_4
    invoke-virtual {p2, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 422
    move-result-object v1

    .line 423
    .line 424
    .line 425
    invoke-static {v1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 426
    move-result-object v0

    .line 427
    .line 428
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 429
    .line 430
    const-string v1, "statSend"

    .line 431
    .line 432
    .line 433
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 434
    move-result v1

    .line 435
    .line 436
    iput-boolean v1, p0, Lcom/narvii/chat/ChatFragment;->statSend:Z

    .line 437
    .line 438
    const-string v1, "isChatFullInfoFetched"

    .line 439
    .line 440
    .line 441
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 442
    move-result v1

    .line 443
    .line 444
    iput-boolean v1, p0, Lcom/narvii/chat/ChatFragment;->isChatFullInfoFetched:Z

    .line 445
    .line 446
    const-string v1, "isLiveChannelShow"

    .line 447
    .line 448
    .line 449
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 450
    move-result p2

    .line 451
    .line 452
    iput-boolean p2, p0, Lcom/narvii/chat/ChatFragment;->isLiveChannelShow:Z

    .line 453
    move-object p2, v0

    .line 454
    .line 455
    :goto_2
    if-eqz p2, :cond_5

    .line 456
    .line 457
    new-instance v0, Lcom/narvii/chat/ChatFragment$4;

    .line 458
    .line 459
    .line 460
    invoke-direct {v0, p0, p2}, Lcom/narvii/chat/ChatFragment$4;-><init>(Lcom/narvii/chat/ChatFragment;Lcom/narvii/model/ChatThread;)V

    .line 461
    .line 462
    .line 463
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {p0, p2}, Lcom/narvii/chat/ChatFragment;->stat(Lcom/narvii/model/ChatThread;)V

    .line 467
    .line 468
    .line 469
    :cond_5
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 470
    move-result-object p1

    .line 471
    .line 472
    iput-object p1, p0, Lcom/narvii/chat/ChatFragment;->organizerTransContainer:Landroid/view/View;

    .line 473
    .line 474
    new-instance p2, Lcom/narvii/chat/ChatFragment$5;

    .line 475
    .line 476
    .line 477
    invoke-direct {p2, p0}, Lcom/narvii/chat/ChatFragment$5;-><init>(Lcom/narvii/chat/ChatFragment;)V

    .line 478
    .line 479
    .line 480
    invoke-static {p1, p2}, Lcom/narvii/util/SoftKeyboard;->observeKeyboard(Landroid/view/View;Lcom/narvii/util/Callback;)Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    .line 481
    move-result-object p1

    .line 482
    .line 483
    iput-object p1, p0, Lcom/narvii/chat/ChatFragment;->keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    .line 484
    .line 485
    .line 486
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->sendGetThreadReqeust()V

    .line 487
    return-void
.end method

.method public onWsError(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsError;)V
    .locals 0

    return-void
.end method

.method public onWsMessage(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsMessage;)V
    .locals 0

    return-void
.end method

.method public sendGetThreadReqeust()V
    .locals 4

    .line 1
    .line 2
    const-string v0, "api"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->threadRequest:Lcom/narvii/util/http/ApiRequest;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    iput-object v1, p0, Lcom/narvii/chat/ChatFragment;->threadRequest:Lcom/narvii/util/http/ApiRequest;

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    const-string v3, "/chat/thread/"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    iput-object v1, p0, Lcom/narvii/chat/ChatFragment;->threadRequest:Lcom/narvii/util/http/ApiRequest;

    .line 58
    .line 59
    iget-object v2, p0, Lcom/narvii/chat/ChatFragment;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 63
    return-void
.end method

.method public setAllowFloatingWindow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/chat/ChatFragment;->allowFloatingWindow:Z

    return-void
.end method

.method public setThread(Lcom/narvii/model/ChatThread;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/narvii/chat/ChatFragment;->setThread(Lcom/narvii/model/ChatThread;Z)V

    return-void
.end method

.method public setThread(Lcom/narvii/model/ChatThread;Z)V
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    iput-object p1, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    if-eqz v0, :cond_0

    .line 1
    iget-object p2, v0, Lcom/narvii/model/ChatThread;->tipInfo:Lcom/narvii/model/TippingInfo;

    if-eqz p2, :cond_0

    iget-object v1, p1, Lcom/narvii/model/ChatThread;->tipInfo:Lcom/narvii/model/TippingInfo;

    if-nez v1, :cond_0

    .line 2
    iput-object p2, p1, Lcom/narvii/model/ChatThread;->tipInfo:Lcom/narvii/model/TippingInfo;

    .line 3
    :cond_0
    iget-object p2, p1, Lcom/narvii/model/ChatThread;->tipInfo:Lcom/narvii/model/TippingInfo;

    if-eqz p2, :cond_1

    iget-boolean p2, p2, Lcom/narvii/model/TippingInfo;->tippable:Z

    if-nez p2, :cond_2

    :cond_1
    iget-object p2, p0, Lcom/narvii/chat/ChatFragment;->chatTipBroadcastHelper:Lcom/narvii/chat/ChatTipBroadcastHelper;

    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p2}, Lcom/narvii/chat/ChatTipBroadcastHelper;->clearPendingTipLog()V

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->B0()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->B0()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 7
    instance-of v2, v1, Lcom/narvii/chat/ThreadInfoHost;

    if-eqz v2, :cond_3

    .line 8
    check-cast v1, Lcom/narvii/chat/ThreadInfoHost;

    iget-object v2, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    invoke-interface {v1, v2}, Lcom/narvii/chat/ThreadInfoHost;->onThreadChanged(Lcom/narvii/model/ChatThread;)V

    goto :goto_0

    .line 9
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->B0()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->B0()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 11
    instance-of v2, v1, Lcom/narvii/chat/IThreadInfoListener;

    if-eqz v2, :cond_5

    .line 12
    check-cast v1, Lcom/narvii/chat/IThreadInfoListener;

    iget-object v2, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    invoke-interface {v1, v2}, Lcom/narvii/chat/IThreadInfoListener;->onThreadUpdate(Lcom/narvii/model/ChatThread;)V

    goto :goto_1

    :cond_6
    if-eqz p1, :cond_9

    .line 13
    iget p2, p1, Lcom/narvii/model/ChatThread;->type:I

    const/4 v1, 0x2

    if-ne p2, v1, :cond_8

    iget p2, p1, Lcom/narvii/model/ChatThread;->condition:I

    if-ne p2, v1, :cond_8

    if-eqz v0, :cond_7

    iget p2, v0, Lcom/narvii/model/ChatThread;->condition:I

    if-eq p2, v1, :cond_8

    .line 14
    :cond_7
    new-instance p2, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120223

    .line 15
    invoke-virtual {p2, v0}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x104000a

    .line 16
    invoke-virtual {p2, v2, v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 17
    invoke-virtual {p2}, Lcom/narvii/app/NVDialog;->show()V

    .line 18
    :cond_8
    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatFragment;->stat(Lcom/narvii/model/ChatThread;)V

    .line 19
    :cond_9
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updateActionBarTitle()V

    .line 20
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updatePrivateContentViews()V

    .line 21
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updateOrganizerTransView()V

    .line 22
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 23
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updateDisabledBar()V

    .line 24
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->beginReportActive()V

    .line 25
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updateFloatView()V

    const-string p1, "chat"

    .line 26
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/core/ChatService;

    .line 27
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p2

    if-eqz p2, :cond_a

    iget-boolean p2, p0, Lcom/narvii/chat/ChatFragment;->isChatFullInfoFetched:Z

    if-eqz p2, :cond_a

    .line 28
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p2

    iget p2, p2, Lcom/narvii/model/ChatThread;->membershipStatus:I

    if-eqz p2, :cond_a

    .line 29
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/chat/core/ChatService;->containGuestThreadId(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 30
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/chat/core/ChatService;->removeGuestThreadId(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method stat(Lcom/narvii/model/ChatThread;)V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/ChatFragment;->statSend:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "Others"

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/narvii/util/StatisticHelper;->getChatThreadType(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string v0, "Source"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "statistics"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Lcom/narvii/util/statistics/StatisticsService;

    .line 25
    .line 26
    const-string v2, "Enter Chat Thread"

    .line 27
    .line 28
    .line 29
    invoke-interface {v1, v2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    const-string v2, "Entered Chat Thread Total"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    const-string v2, "Type"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->isMeAccessibleToThisChat()Z

    .line 46
    move-result v1

    .line 47
    const/4 v2, 0x1

    .line 48
    xor-int/2addr v1, v2

    .line 49
    .line 50
    const-string v3, "Gated"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v3, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 58
    .line 59
    iput-boolean v2, p0, Lcom/narvii/chat/ChatFragment;->statSend:Z

    .line 60
    :cond_0
    return-void
.end method

.method public tryShowLiveChannelFloating()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->vvChatMainFragment:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->floatingPermissionUtils:Lcom/narvii/video/ui/floating/FloatingPermissionUtils;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/video/ui/floating/FloatingPermissionUtils;->canDrawOverlays()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->shouldShowLiveChannelFloating()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->vvChatMainFragment:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->showFloatingWindow()V

    .line 32
    :cond_0
    return-void
.end method

.method public viewOnlyChanged(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->isViewOnly()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eq v0, p1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/narvii/model/ChatThread;->setViewOnly(Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatFragment;->setThread(Lcom/narvii/model/ChatThread;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updateChatThreadInList()V

    .line 34
    :cond_0
    return-void
.end method
