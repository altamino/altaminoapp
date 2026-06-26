.class public Lcom/narvii/chat/ChatFragment;
.super Lcom/narvii/app/NVFragment;
.source "ChatFragment.java"

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

    .line 105
    const-class v0, Lcom/narvii/chat/ChatActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/narvii/chat/ChatFragment;->WRAPPER_ACTIVITY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 100
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/ChatFragment;->actions:Ljava/util/List;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/ChatFragment;->params:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/narvii/chat/ChatFragment;->isKeyboardVisible:Z

    .line 118
    iput-boolean v0, p0, Lcom/narvii/chat/ChatFragment;->isChatInputPanelShown:Z

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/narvii/chat/ChatFragment;->allowFloatingWindow:Z

    .line 147
    new-instance v0, Lcom/narvii/chat/ChatFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/ChatFragment$1;-><init>(Lcom/narvii/chat/ChatFragment;)V

    iput-object v0, p0, Lcom/narvii/chat/ChatFragment;->panelHideListener:Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;

    .line 328
    new-instance v0, Lcom/narvii/chat/ChatFragment$3;

    invoke-direct {v0, p0}, Lcom/narvii/chat/ChatFragment$3;-><init>(Lcom/narvii/chat/ChatFragment;)V

    iput-object v0, p0, Lcom/narvii/chat/ChatFragment;->menuClickListener:Landroid/view/View$OnClickListener;

    .line 841
    new-instance v0, Lcom/narvii/chat/ChatFragment$9;

    const-class v1, Lcom/narvii/chat/ThreadResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/chat/ChatFragment$9;-><init>(Lcom/narvii/chat/ChatFragment;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/narvii/chat/ChatFragment;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 1114
    new-instance v0, Lcom/narvii/chat/ChatFragment$10;

    invoke-direct {v0, p0}, Lcom/narvii/chat/ChatFragment$10;-><init>(Lcom/narvii/chat/ChatFragment;)V

    iput-object v0, p0, Lcom/narvii/chat/ChatFragment;->reportLiveLayerActiveRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Lcom/narvii/chat/ChatFragment;Z)Z
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/narvii/chat/ChatFragment;->isChatInputPanelShown:Z

    return p1
.end method

.method static synthetic access$100(Lcom/narvii/chat/ChatFragment;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updateOrganizerTransView()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/chat/ChatFragment;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updateChatListFrame()V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/chat/ChatFragment;Landroid/view/View;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatFragment;->onChatCloseClicked(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$402(Lcom/narvii/chat/ChatFragment;Z)Z
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/narvii/chat/ChatFragment;->isKeyboardVisible:Z

    return p1
.end method

.method static synthetic access$502(Lcom/narvii/chat/ChatFragment;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/narvii/chat/ChatFragment;->threadRequest:Lcom/narvii/util/http/ApiRequest;

    return-object p1
.end method

.method static synthetic access$602(Lcom/narvii/chat/ChatFragment;Z)Z
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/narvii/chat/ChatFragment;->isChatFullInfoFetched:Z

    return p1
.end method

.method static synthetic access$700(Lcom/narvii/chat/ChatFragment;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->beginReportActive()V

    return-void
.end method

.method static synthetic access$800(Lcom/narvii/chat/ChatFragment;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updateChatThreadInList()V

    return-void
.end method

.method static synthetic access$900(Lcom/narvii/chat/ChatFragment;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->reportActive()V

    return-void
.end method

.method private beginReportActive()V
    .locals 2

    .line 1105
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->reportLiveLayerActiveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1106
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->reportLiveLayerActiveRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private isChatThreadDisabledOrDelete()Z
    .locals 2

    .line 1076
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isChatThreadDisabledOrDelete(Lcom/narvii/model/ChatThread;)Z

    move-result v0

    return v0
.end method

.method private isThreadDelete()Z
    .locals 1

    .line 325
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyTipBroadcastActiveChange()V
    .locals 2

    .line 662
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->chatTipBroadcastHelper:Lcom/narvii/chat/ChatTipBroadcastHelper;

    if-eqz v0, :cond_1

    .line 663
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Utils;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/chat/ChatTipBroadcastHelper;->onActiveChanged(Z)V

    :cond_1
    return-void
.end method

.method private onChatCloseClicked(Landroid/view/View;)V
    .locals 5

    .line 553
    new-instance v0, Lcom/narvii/chat/video/utils/VVChatHelper;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/utils/VVChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 554
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/narvii/chat/ChatFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v3}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v3

    iget-object v3, v3, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 556
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/utils/VVChatHelper;->isCurrentChannelLive(Lcom/narvii/chat/signalling/SignallingChannel;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->vvChatMainFragment:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    if-eqz v0, :cond_1

    .line 558
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00c4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 559
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v3, -0x2

    invoke-direct {v1, v0, v3, v3, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/narvii/chat/ChatFragment;->menuClosePopupWindow:Landroid/widget/PopupWindow;

    .line 560
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->menuClosePopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0800a2

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f09025e

    .line 561
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/narvii/chat/ChatFragment$7;

    invoke-direct {v3, p0}, Lcom/narvii/chat/ChatFragment$7;-><init>(Lcom/narvii/chat/ChatFragment;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090714

    .line 574
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/narvii/chat/ChatFragment$8;

    invoke-direct {v1, p0}, Lcom/narvii/chat/ChatFragment$8;-><init>(Lcom/narvii/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 582
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->menuClosePopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 583
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->menuClosePopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 584
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->menuClosePopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_1

    .line 586
    :cond_1
    new-instance p1, Lcom/narvii/chat/video/ChatLogEventHelper;

    invoke-direct {p1, p0}, Lcom/narvii/chat/video/ChatLogEventHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getLogObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/ChatThread;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/chat/video/ChatLogEventHelper;->logQuitChat(ILcom/narvii/model/ChatThread;)V

    .line 587
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 588
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_1
    return-void
.end method

.method private reportActive()V
    .locals 4

    .line 1084
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/narvii/util/LiveLayerUtils;->isStatusOk(Lcom/narvii/model/NVObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->liveLayerTarget:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->organizerLeft()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/narvii/chat/ChatFragment;->isChatFullInfoFetched:Z

    if-eqz v0, :cond_2

    const-string v0, "liveLayer"

    .line 1085
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    if-nez v0, :cond_0

    return-void

    .line 1089
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->isFansOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    iget-boolean v1, v1, Lcom/narvii/model/ChatThread;->needHidden:Z

    if-eqz v1, :cond_1

    return-void

    .line 1092
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xc

    invoke-static {v2}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/chat/ChatFragment;->liveLayerTarget:Ljava/lang/String;

    .line 1093
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->params:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    iget v2, v2, Lcom/narvii/model/ChatThread;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "threadType"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->params:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    iget v2, v2, Lcom/narvii/model/ChatThread;->membershipStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "membershipStatus"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->actions:Ljava/util/List;

    iget-object v2, p0, Lcom/narvii/chat/ChatFragment;->liveLayerTarget:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/chat/ChatFragment;->params:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/livelayer/LiveLayerService;->reportActive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1096
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    iget v0, v0, Lcom/narvii/model/ChatThread;->membershipStatus:I

    if-nez v0, :cond_2

    .line 1097
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "chat"

    .line 1098
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/core/ChatService;

    .line 1099
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/core/ChatService;->addGuestThreadId(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private shouldShowLiveChannelFloating()Z
    .locals 2

    .line 896
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 897
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private shouldShowThreadFloating()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private stopReportActive()V
    .locals 2

    .line 1110
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->reportLiveLayerActiveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateActionBarTitle()V
    .locals 4

    .line 779
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->tvChatTileView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 780
    new-instance v1, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/chat/util/ChatHelper;->getThreadTitle(Lcom/narvii/model/ChatThread;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->tvMemberCount:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 783
    new-instance v0, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->getMemberCount(Lcom/narvii/model/ChatThread;)I

    move-result v0

    .line 784
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    iget v1, v1, Lcom/narvii/model/ChatThread;->type:I

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    if-gtz v0, :cond_2

    const-string v0, ""

    goto :goto_0

    .line 787
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 788
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->tvMemberCount:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 789
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->tvMemberCount:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v2, 0x8

    :cond_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method private updateActionbarView()V
    .locals 2

    .line 1066
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->actionBarLeftView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f090048

    .line 1069
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 1071
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private updateChatListFrame()V
    .locals 4

    .line 1041
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->root:Lcom/narvii/chat/ChatContentContainer;

    iget-boolean v1, p0, Lcom/narvii/chat/ChatFragment;->isLiveChannelShow:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/narvii/chat/ChatFragment;->isKeyboardVisible:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/narvii/chat/ChatFragment;->isChatInputPanelShown:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/chat/ChatContentContainer;->setShouldChangeOrder(Z)V

    .line 1042
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->listViewFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1043
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Utils;->getActionBarHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/narvii/util/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1044
    iget-boolean v3, p0, Lcom/narvii/chat/ChatFragment;->isLiveChannelShow:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/narvii/chat/ChatFragment;->vvChatMainFragment:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getLiveContentHeight()I

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v1, v3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 1045
    :goto_2
    iget-boolean v3, p0, Lcom/narvii/chat/ChatFragment;->isKeyboardVisible:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/narvii/chat/ChatFragment;->isChatInputPanelShown:Z

    if-eqz v3, :cond_5

    :cond_4
    const/4 v1, 0x0

    :cond_5
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1046
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->listViewFrameBg:Landroid/view/View;

    iget-boolean v3, p0, Lcom/narvii/chat/ChatFragment;->isLiveChannelShow:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/narvii/chat/ChatFragment;->isKeyboardVisible:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/narvii/chat/ChatFragment;->isChatInputPanelShown:Z

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    const/16 v2, 0x8

    :cond_7
    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1047
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->listViewFrame:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateChatThreadInList()V
    .locals 5

    .line 1183
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    if-nez v0, :cond_0

    return-void

    .line 1186
    :cond_0
    new-instance v1, Lcom/narvii/notification/Notification;

    const-string/jumbo v2, "update"

    invoke-direct {v1, v2, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    const-string v0, "notification"

    .line 1187
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 1188
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    .line 1189
    iget-object v2, v1, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    const/4 v3, 0x1

    const-string v4, "_fromChatFragment"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1190
    invoke-static {v0, v1}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method private updateDisabledBar()V
    .locals 4

    .line 755
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->disabledLayout:Landroid/view/View;

    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->isChatThreadDisabledOrDelete()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 756
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->btnLeaveConversation:Landroid/view/View;

    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    iget v1, v1, Lcom/narvii/model/ChatThread;->membershipStatus:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 757
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901ea

    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->isChatThreadDisabledOrDelete()Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 758
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->isChatThreadDisabledOrDelete()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->disableBar:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 759
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->disableBar:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->isDeleted()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0f01df

    goto :goto_1

    :cond_1
    const v1, 0x7f0f01e1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    return-void
.end method

.method private updateFansOnlyMask()V
    .locals 2

    .line 1058
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->fansOnlyMask:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 1062
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->isMeAccessibleToThisChat()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateFloatView()V
    .locals 5

    .line 501
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 502
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->isDisabled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->isDeleted()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->isPinAnnouncement()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getAnnouncement()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 503
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->announcementContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 504
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->isThreadDelete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 505
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    .line 507
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v2, v4}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 509
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->announcementContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 510
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->announcementText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getAnnouncement()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->announcementText:Landroid/widget/TextView;

    new-instance v2, Lcom/narvii/chat/-$$Lambda$ChatFragment$7hLoGErzA5ZLEmbYgtzJTZ3P5ZU;

    invoke-direct {v2, p0}, Lcom/narvii/chat/-$$Lambda$ChatFragment$7hLoGErzA5ZLEmbYgtzJTZ3P5ZU;-><init>(Lcom/narvii/chat/ChatFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 514
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->announcementContainer:Landroid/view/ViewGroup;

    new-instance v2, Lcom/narvii/chat/-$$Lambda$ChatFragment$hAX_VnDy_32BchcR9RvhW5Mgr54;

    invoke-direct {v2, p0, v0}, Lcom/narvii/chat/-$$Lambda$ChatFragment$hAX_VnDy_32BchcR9RvhW5Mgr54;-><init>(Lcom/narvii/chat/ChatFragment;Lcom/narvii/model/ChatThread;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->announcementContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private updateLiveLabel(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 2

    .line 1148
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->liveLayout:Landroid/view/View;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 1151
    :cond_0
    iget v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-static {v1}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    invoke-static {v1}, Lcom/narvii/chat/signalling/SignallingChannel;->isNotGuestRole(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateOrganizerTransView()V
    .locals 2

    .line 594
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->organizerTransContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->chatInputFragment:Lcom/narvii/chat/input/ChatInputFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/narvii/chat/input/ChatInputFragment;->isAllPanelHidden()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/narvii/chat/ChatFragment;->isKeyboardVisible:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->isChatThreadDisabledOrDelete()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updatePrivateContentViews()V
    .locals 0

    .line 1052
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updateActionbarView()V

    .line 1053
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updateFansOnlyMask()V

    return-void
.end method


# virtual methods
.method public announcementPinBehaviorChanged(Z)V
    .locals 0

    .line 1175
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1176
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->sendGetThreadReqeust()V

    .line 1177
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updateChatThreadInList()V

    :cond_0
    return-void
.end method

.method public completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V
    .locals 2

    .line 203
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V

    .line 204
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->getLogEvent()Lcom/narvii/logging/LogEvent;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/logging/LogEvent;->objectId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getLogObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 207
    :cond_0
    sget-object v0, Lcom/narvii/logging/LogEventType;->AppEvent:Lcom/narvii/logging/LogEventType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->getLogEvent()Lcom/narvii/logging/LogEvent;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/logging/LogEvent;->eventType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "chatArea"

    .line 208
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->areaIfNotSet(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 211
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 213
    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    invoke-static {v0}, Lcom/narvii/chat/video/ChatLogEventHelper;->getChatProperty(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chatProperty"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    :cond_2
    const-string v0, "chatType"

    .line 216
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->containExtraKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 217
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 219
    iget v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-static {v1}, Lcom/narvii/chat/video/ChatLogEventHelper;->getChatType(I)Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-virtual {p1, v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    goto :goto_0

    :cond_3
    const-string v1, "textChat"

    .line 222
    invoke-virtual {p1, v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 226
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chatId"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    return-void
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public getLogObject()Lcom/narvii/model/NVObject;
    .locals 2

    .line 192
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 196
    :cond_0
    new-instance v0, Lcom/narvii/model/ChatThread;

    invoke-direct {v0}, Lcom/narvii/model/ChatThread;-><init>()V

    .line 197
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "ChatRoom"

    return-object v0
.end method

.method public getThread()Lcom/narvii/model/ChatThread;
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 1

    const-string v0, "id"

    .line 679
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 243
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public hideCBBInHomeFragment()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isMeAccessibleToThisChat()Z
    .locals 2

    .line 1080
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isMeAccessibleToThisChat(Lcom/narvii/model/ChatThread;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$updateFloatView$0$ChatFragment()V
    .locals 2

    .line 512
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->announcementText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$updateFloatView$1$ChatFragment(Lcom/narvii/model/ChatThread;Landroid/view/View;)V
    .locals 1

    .line 515
    invoke-static {p0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    const-string v0, "Announcement"

    invoke-virtual {p2, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 516
    sget-object p2, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->Companion:Lcom/narvii/chat/detail/ThreadAnnouncementFragment$Companion;

    invoke-virtual {p2, p1}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$Companion;->intent(Lcom/narvii/model/ChatThread;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 3

    .line 635
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActiveChanged(Z)V

    if-eqz p1, :cond_0

    const-string v0, "push"

    .line 639
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/pushservice/PushService;

    const-string v1, "config"

    .line 640
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 641
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/narvii/pushservice/PushService;->dismissChatNotification(ILjava/lang/String;)V

    .line 643
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->beginReportActive()V

    :cond_0
    if-nez p1, :cond_2

    const-string p1, "mediaPlayer"

    .line 647
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/media/MediaPlayerManager;

    .line 648
    invoke-virtual {p1}, Lcom/narvii/media/MediaPlayerManager;->releaseMediaPlayer()V

    .line 650
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment;->liveLayerTarget:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string p1, "liveLayer"

    .line 651
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/livelayer/LiveLayerService;

    .line 652
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->actions:Ljava/util/List;

    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->liveLayerTarget:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/chat/ChatFragment;->params:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/livelayer/LiveLayerService;->reportInactive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    const/4 p1, 0x0

    .line 653
    iput-object p1, p0, Lcom/narvii/chat/ChatFragment;->liveLayerTarget:Ljava/lang/String;

    .line 655
    :cond_1
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->stopReportActive()V

    .line 658
    :cond_2
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->notifyTipBroadcastActiveChange()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 287
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 288
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b008b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/ChatFragment;->actionBarLeftView:Landroid/view/View;

    .line 289
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment;->actionBarLeftView:Landroid/view/View;

    const v0, 0x7f090681

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/ChatFragment;->liveLayout:Landroid/view/View;

    .line 290
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment;->actionBarLeftView:Landroid/view/View;

    const v0, 0x7f090419

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/chat/ChatFragment;->tvChatTileView:Landroid/widget/TextView;

    .line 291
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment;->tvChatTileView:Landroid/widget/TextView;

    new-instance v0, Lcom/narvii/chat/ChatFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/chat/ChatFragment$2;-><init>(Lcom/narvii/chat/ChatFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment;->actionBarLeftView:Landroid/view/View;

    const v0, 0x7f0906dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/chat/ChatFragment;->tvMemberCount:Landroid/widget/TextView;

    .line 303
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updateActionBarTitle()V

    .line 304
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment;->actionBarLeftView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setActionBarLeftView(Landroid/view/View;)V

    .line 305
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updatePrivateContentViews()V

    .line 306
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatFragment;->updateLiveLabel(Lcom/narvii/chat/signalling/SignallingChannel;)V

    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 4

    .line 871
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 873
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment;->chatInputFragment:Lcom/narvii/chat/input/ChatInputFragment;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/chat/input/ChatInputFragment;->onBackPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    .line 878
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment;->vvChatMainFragment:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->onBackPressed()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 882
    :cond_1
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->shouldShowThreadFloating()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string p1, "config"

    .line 883
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 884
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    if-nez p1, :cond_2

    return v0

    .line 888
    :cond_2
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    new-instance v2, Lcom/narvii/chat/video/floating/CommunityThread;

    iget-object v3, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    invoke-direct {v2, p1, v3}, Lcom/narvii/chat/video/floating/CommunityThread;-><init>(ILcom/narvii/model/ChatThread;)V

    invoke-virtual {v1, v2}, Lcom/narvii/chat/rtc/RtcService;->showThreadDetailWindow(Lcom/narvii/chat/video/floating/CommunityThread;)V

    .line 891
    :cond_3
    new-instance p1, Lcom/narvii/chat/video/ChatLogEventHelper;

    invoke-direct {p1, p0}, Lcom/narvii/chat/video/ChatLogEventHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getLogObject()Lcom/narvii/model/NVObject;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/ChatThread;

    invoke-virtual {p1, v1, v2}, Lcom/narvii/chat/video/ChatLogEventHelper;->logQuitChat(ILcom/narvii/model/ChatThread;)V

    return v0
.end method

.method public onChannelForceQuit(Lcom/narvii/chat/signalling/SignallingChannel;I)V
    .locals 0

    .line 1135
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment;->liveLayout:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 p2, 0x8

    .line 1136
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onChannelStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0

    .line 1125
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatFragment;->updateLiveLabel(Lcom/narvii/chat/signalling/SignallingChannel;)V

    return-void
.end method

.method public onChannelUserListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;Landroid/util/SparseArray;)V
    .locals 0
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

    .line 1130
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatFragment;->updateLiveLabel(Lcom/narvii/chat/signalling/SignallingChannel;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 525
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0901f0

    if-eq p1, v0, :cond_3

    const v0, 0x7f090652

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 530
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "joinThread"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 533
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 534
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 537
    :cond_1
    new-instance p1, Lcom/narvii/chat/invite/JoinThreadFragment;

    invoke-direct {p1}, Lcom/narvii/chat/invite/JoinThreadFragment;-><init>()V

    .line 538
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "id"

    .line 539
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    .line 541
    :cond_2
    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->getBriefContent()Lcom/narvii/model/ChatThread;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "thread"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 543
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 544
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 545
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 547
    invoke-virtual {p1}, Lcom/narvii/chat/invite/JoinThreadFragment;->leaveConversation()V

    goto :goto_1

    .line 527
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    :goto_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 999
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1000
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1002
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090cea

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    xor-int/lit8 v2, p1, 0x1

    .line 1003
    invoke-static {v1, v2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 1004
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->chatInviteFrame:Landroid/view/View;

    xor-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 1005
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1006
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09005e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1008
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, -0x2

    .line 1010
    :goto_1
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1011
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 1017
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    goto :goto_2

    .line 1019
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 1022
    :goto_2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/DrawerActivity;

    if-eqz v0, :cond_4

    .line 1023
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/DrawerActivity;

    invoke-virtual {v0, p1}, Lcom/narvii/app/DrawerActivity;->setDisableDrawer(Z)V

    .line 1026
    :cond_4
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/rtc/RtcService;->setCameraLandScape(Z)V

    .line 1027
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->notifyTipBroadcastActiveChange()V

    return-void
.end method

.method public onConnect(Lcom/narvii/util/ws/WsService;)V
    .locals 0

    .line 172
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->reportActive()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 252
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "rtc"

    .line 253
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    iput-object v0, p0, Lcom/narvii/chat/ChatFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 254
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/rtc/RtcService;->addMyChannelUserStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/MyChannelUserStatusChangeListener;)V

    .line 255
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/rtc/RtcService;->addLiveChannelChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LiveChannelChangeListener;)V

    .line 256
    new-instance v0, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/chat/ChatFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    const/4 v0, 0x1

    .line 257
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 258
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getMenuController()Lcom/narvii/app/NVFragment$MenuController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getMenuController()Lcom/narvii/app/NVFragment$MenuController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/narvii/app/NVFragment$MenuController;->setScrollEnabled(Z)V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->actions:Ljava/util/List;

    sget-object v1, Lcom/narvii/livelayer/LiveLayerService;->ACTION_CHATTING:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 262
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "thread"

    .line 263
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/ChatThread;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatThread;

    iput-object v0, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 264
    new-instance v0, Lcom/narvii/video/ui/floating/FloatingPermissionUtils;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/video/ui/floating/FloatingPermissionUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/chat/ChatFragment;->floatingPermissionUtils:Lcom/narvii/video/ui/floating/FloatingPermissionUtils;

    const-string v0, "__fromGlobalChat"

    .line 265
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/chat/ChatFragment;->fromGlobalChat:Z

    const-string/jumbo v0, "ws"

    .line 266
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/ws/WsService;

    iput-object v0, p0, Lcom/narvii/chat/ChatFragment;->wsService:Lcom/narvii/util/ws/WsService;

    .line 267
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->wsService:Lcom/narvii/util/ws/WsService;

    iget-object v0, v0, Lcom/narvii/util/ws/WsService;->listeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p0}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    const-string v0, "chat"

    .line 268
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/core/ChatService;

    iput-object v0, p0, Lcom/narvii/chat/ChatFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 269
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/core/ChatService;->addLiveChannelPermissionListener(Ljava/lang/String;Lcom/narvii/chat/ThreadConfigChangeListener;)V

    if-nez p1, :cond_1

    const-string p1, "justCreated"

    .line 271
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 272
    sget-object p1, Lcom/narvii/logging/ActSemantic;->createChat:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 273
    new-instance p1, Lcom/narvii/account/push/PushNotificationHelper;

    invoke-direct {p1, p0}, Lcom/narvii/account/push/PushNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v0, "scenario_chat"

    .line 274
    invoke-virtual {p1, v0}, Lcom/narvii/account/push/PushNotificationHelper;->showRemindDialogIfNeeded(Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .line 312
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 p2, 0x1

    const v0, 0x7f0f0224

    const/4 v1, 0x0

    .line 313
    invoke-interface {p1, v1, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f0802eb

    .line 314
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x2

    .line 315
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f09025e

    const v3, 0x7f0f0274

    .line 317
    invoke-interface {p1, v1, v0, p2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f0b051b

    .line 318
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 319
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 320
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    .line 321
    iget-object p2, p0, Lcom/narvii/chat/ChatFragment;->menuClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b00c1

    const/4 v0, 0x0

    .line 282
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 610
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 611
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    if-eqz v0, :cond_0

    .line 612
    invoke-virtual {v0}, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->dispose()V

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->chatTipBroadcastHelper:Lcom/narvii/chat/ChatTipBroadcastHelper;

    if-eqz v0, :cond_1

    .line 616
    invoke-virtual {v0}, Lcom/narvii/chat/ChatTipBroadcastHelper;->onDestroy()V

    .line 618
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeLiveChannelChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LiveChannelChangeListener;)V

    .line 619
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeMyChannelUserStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/MyChannelUserStatusChangeListener;)V

    .line 620
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/core/ChatService;->removeLiveChannelPermissionListener(Ljava/lang/String;Lcom/narvii/chat/ThreadConfigChangeListener;)V

    return-void
.end method

.method public onDisconnect(Lcom/narvii/util/ws/WsService;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onLiveContentStatusChanged(I)V
    .locals 1

    .line 1033
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->vvChatMainFragment:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1036
    :goto_0
    iput-boolean p1, p0, Lcom/narvii/chat/ChatFragment;->isLiveChannelShow:Z

    .line 1037
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updateChatListFrame()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onLivePermissionChanged(I)V
    .locals 1

    .line 1156
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1157
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/model/ChatThread;->setVvChatJoinType(I)V

    .line 1158
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatFragment;->setThread(Lcom/narvii/model/ChatThread;)V

    .line 1159
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updateChatThreadInList()V

    :cond_0
    return-void
.end method

.method public onMyChannelUserStatusChanged(ILcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/ChannelUser;)V
    .locals 0

    const/4 p3, 0x3

    if-ne p1, p3, :cond_0

    .line 1143
    invoke-direct {p0, p2}, Lcom/narvii/chat/ChatFragment;->updateLiveLabel(Lcom/narvii/chat/signalling/SignallingChannel;)V

    :cond_0
    return-void
.end method

.method public onNewTipLog(Lcom/narvii/tipping/model/TipLog;)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->chatTipBroadcastHelper:Lcom/narvii/chat/ChatTipBroadcastHelper;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0, p1}, Lcom/narvii/chat/ChatTipBroadcastHelper;->onNewTipLog(Lcom/narvii/tipping/model/TipLog;)V

    :cond_0
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 4

    .line 796
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 797
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string/jumbo v1, "update"

    if-eq v0, v1, :cond_0

    const-string v1, "edit"

    if-ne v0, v1, :cond_3

    :cond_0
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_3

    .line 799
    iget-object v0, p1, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v1, "_fromChatFragment"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 803
    :cond_1
    iget-object v0, p1, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "_instantFullInfo"

    .line 804
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 806
    :cond_2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/narvii/model/ChatThread;

    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/ChatFragment;->setThread(Lcom/narvii/model/ChatThread;Z)V

    goto :goto_0

    .line 807
    :cond_3
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "delete"

    if-ne v0, v1, :cond_5

    .line 808
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 809
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->sendGetThreadReqeust()V

    goto :goto_0

    .line 811
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 815
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "account"

    if-eqz v0, :cond_6

    .line 816
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;

    if-eqz v0, :cond_6

    .line 817
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 818
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 819
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v2

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/narvii/model/ChatBubbleNotificationWrapper;

    iget-object v3, v3, Lcom/narvii/model/ChatBubbleNotificationWrapper;->chatBubble:Lcom/narvii/model/ChatBubble;

    invoke-virtual {v2, v0, v3}, Lcom/narvii/model/ChatThread;->updateBubble(Ljava/lang/String;Lcom/narvii/model/ChatBubble;)V

    .line 820
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/chat/ChatFragment;->setThread(Lcom/narvii/model/ChatThread;)V

    .line 825
    :cond_6
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v2, v0, Lcom/narvii/influencer/FanClub;

    if-eqz v2, :cond_9

    .line 826
    check-cast v0, Lcom/narvii/influencer/FanClub;

    iget-object v0, v0, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x0

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 827
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->isMeAccessibleToThisChat()Z

    move-result v0

    if-nez v0, :cond_9

    .line 828
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 829
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/narvii/influencer/FanClub;

    iget-object p1, p1, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/narvii/account/AccountService;->getFanClub(Ljava/lang/String;)Lcom/narvii/influencer/FanClub;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 830
    invoke-virtual {p1}, Lcom/narvii/influencer/FanClub;->isActive()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/narvii/chat/ChatFragment;->fansOnlyMask:Landroid/view/View;

    if-eqz p1, :cond_8

    const/16 v0, 0x8

    .line 831
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 832
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment;->vvChatMainFragment:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    if-eqz p1, :cond_8

    .line 833
    invoke-virtual {p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->onFansClubStatusActive()V

    .line 836
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->sendGetThreadReqeust()V

    :cond_9
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 347
    iget-boolean v0, p0, Lcom/narvii/chat/ChatFragment;->isKeyboardVisible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    return v1

    .line 351
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0f0224

    if-ne v0, v2, :cond_1

    .line 352
    invoke-static {p0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "SettingButton"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 353
    const-class p1, Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 354
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "id"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "prefetch"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x7f010010

    const-string v2, "customFinishAnimIn"

    .line 356
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v0, 0x7f010011

    const-string v2, "customFinishAnimOut"

    .line 357
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 358
    iget-boolean v0, p0, Lcom/narvii/chat/ChatFragment;->fromGlobalChat:Z

    const-string v2, "__fromGlobalChat"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "__community"

    .line 359
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "fromRecentChat"

    .line 360
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 361
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 362
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f01000e

    const v2, 0x7f01000f

    invoke-virtual {p1, v0, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return v1

    .line 365
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 946
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    .line 947
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->vvChatMainFragment:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    if-eqz v0, :cond_1

    .line 948
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->floatingPermissionUtils:Lcom/narvii/video/ui/floating/FloatingPermissionUtils;

    if-eqz v0, :cond_1

    .line 950
    invoke-virtual {v0}, Lcom/narvii/video/ui/floating/FloatingPermissionUtils;->canDrawOverlays()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/chat/ChatFragment;->allowFloatingWindow:Z

    if-eqz v0, :cond_1

    .line 952
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/chat/ChatActivity;

    if-eqz v0, :cond_0

    .line 953
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/ChatActivity;

    iget-object v0, v0, Lcom/narvii/chat/ChatActivity;->DISABLE_FLOATING_WINDOW:Lcom/narvii/util/statistics/TmpValue;

    invoke-virtual {v0}, Lcom/narvii/util/statistics/TmpValue;->getAndRemove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 954
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 958
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->shouldShowLiveChannelFloating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 959
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->vvChatMainFragment:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->showFloatingWindow()V

    :cond_1
    const/4 v0, 0x1

    .line 963
    iput-boolean v0, p0, Lcom/narvii/chat/ChatFragment;->allowFloatingWindow:Z

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .line 340
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const v0, 0x7f09025e

    .line 341
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0f0224

    .line 342
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->isThreadDelete()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 981
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 982
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-nez v0, :cond_1

    .line 983
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->hideThreadDetailWindow()V

    .line 986
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getFloatingLiveChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 987
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getShowingWindowType()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->cleaningAttachedWindows()V

    .line 991
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getPendingFloatingThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 992
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->removePendingFloatingRunnable()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 626
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 627
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->safeWriteAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "thread"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-boolean v0, p0, Lcom/narvii/chat/ChatFragment;->statSend:Z

    const-string v1, "statSend"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 629
    iget-boolean v0, p0, Lcom/narvii/chat/ChatFragment;->isChatFullInfoFetched:Z

    const-string v1, "isChatFullInfoFetched"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 630
    iget-boolean v0, p0, Lcom/narvii/chat/ChatFragment;->isLiveChannelShow:Z

    const-string v1, "isLiveChannelShow"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onThreadChanged(Lcom/narvii/model/ChatThread;)V
    .locals 0

    return-void
.end method

.method public onTipBroadcastLayoutCreated(Landroid/view/ViewGroup;)V
    .locals 1

    .line 369
    new-instance v0, Lcom/narvii/chat/ChatFragment$4;

    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/ChatFragment$4;-><init>(Lcom/narvii/chat/ChatFragment;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/narvii/chat/ChatFragment;->chatTipBroadcastHelper:Lcom/narvii/chat/ChatTipBroadcastHelper;

    .line 389
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->notifyTipBroadcastActiveChange()V

    return-void
.end method

.method public onTipEnableChanged(Z)V
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/narvii/model/ChatThread;->tipInfo:Lcom/narvii/model/TippingInfo;

    if-eqz v1, :cond_0

    .line 394
    iput-boolean p1, v1, Lcom/narvii/model/TippingInfo;->tippable:Z

    .line 395
    invoke-virtual {p0, v0}, Lcom/narvii/chat/ChatFragment;->setThread(Lcom/narvii/model/ChatThread;)V

    .line 396
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updateChatThreadInList()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12

    .line 402
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f09098b

    .line 403
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/ChatContentContainer;

    iput-object v0, p0, Lcom/narvii/chat/ChatFragment;->root:Lcom/narvii/chat/ChatContentContainer;

    const v0, 0x7f0901ef

    .line 404
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/chat/ChatFragment;->listViewFrame:Landroid/view/View;

    const v1, 0x7f0901f0

    .line 405
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/chat/ChatFragment;->listViewFrameBg:Landroid/view/View;

    .line 406
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->listViewFrameBg:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09035d

    .line 407
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/chat/ChatFragment;->disabledLayout:Landroid/view/View;

    const v1, 0x7f09035b

    .line 408
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/narvii/chat/ChatFragment;->disableBar:Landroid/widget/TextView;

    const v1, 0x7f090652

    .line 409
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/chat/ChatFragment;->btnLeaveConversation:Landroid/view/View;

    .line 410
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->btnLeaveConversation:Landroid/view/View;

    new-instance v2, Lcom/narvii/chat/-$$Lambda$1cc1cjl_xniWI4jXMQCTOL09SmQ;

    invoke-direct {v2, p0}, Lcom/narvii/chat/-$$Lambda$1cc1cjl_xniWI4jXMQCTOL09SmQ;-><init>(Lcom/narvii/chat/ChatFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0901ea

    .line 411
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/narvii/chat/ChatFragment;->chatInviteFrame:Landroid/view/View;

    const v2, 0x7f090428

    .line 412
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/narvii/chat/ChatFragment;->fansOnlyMask:Landroid/view/View;

    const v3, 0x7f0900aa

    .line 413
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/narvii/chat/ChatFragment;->announcementContainer:Landroid/view/ViewGroup;

    const v3, 0x7f0900ad

    .line 414
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/narvii/chat/ChatFragment;->announcementText:Landroid/widget/TextView;

    const v3, 0x7f090b7f

    .line 415
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/narvii/chat/ChatFragment;->tipBroadcastLayout:Landroid/view/ViewGroup;

    .line 416
    iget-object v3, p0, Lcom/narvii/chat/ChatFragment;->tipBroadcastLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v3}, Lcom/narvii/chat/ChatFragment;->onTipBroadcastLayoutCreated(Landroid/view/ViewGroup;)V

    .line 418
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 419
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updateActionBarTitle()V

    .line 420
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updateFloatView()V

    const v3, 0x7f0901c9

    .line 422
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 423
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 424
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v5

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 425
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v3, 0x7f0901fb

    const-string/jumbo v4, "vvChat"

    const-string v5, "chatInput"

    const-string v6, "thread"

    if-nez p2, :cond_1

    .line 428
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    .line 429
    new-instance v8, Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-direct {v8}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;-><init>()V

    iput-object v8, p0, Lcom/narvii/chat/ChatFragment;->vvChatMainFragment:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 430
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v9, "id"

    .line 431
    invoke-virtual {p0, v9}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v9

    if-nez v9, :cond_0

    const/4 v9, 0x0

    goto :goto_0

    .line 433
    :cond_0
    invoke-virtual {v9}, Lcom/narvii/model/ChatThread;->getBriefContent()Lcom/narvii/model/ChatThread;

    move-result-object v9

    :goto_0
    invoke-static {v9}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "payload"

    .line 434
    invoke-virtual {p0, v9}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v9, p0, Lcom/narvii/chat/ChatFragment;->vvChatMainFragment:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-virtual {v9, v8}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 436
    new-instance v8, Lcom/narvii/chat/input/ChatInputFragment;

    invoke-direct {v8}, Lcom/narvii/chat/input/ChatInputFragment;-><init>()V

    iput-object v8, p0, Lcom/narvii/chat/ChatFragment;->chatInputFragment:Lcom/narvii/chat/input/ChatInputFragment;

    .line 437
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v9, "stickerCollectionId"

    .line 438
    invoke-virtual {p0, v9}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v9, p0, Lcom/narvii/chat/ChatFragment;->chatInputFragment:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-virtual {v9, v8}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 440
    new-instance v8, Lcom/narvii/chat/ChatListFragment;

    invoke-direct {v8}, Lcom/narvii/chat/ChatListFragment;-><init>()V

    .line 441
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Lcom/narvii/list/NVListFragment;->setSwipeRefreshEnabled(Z)V

    .line 442
    invoke-virtual {v7}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v7

    const v9, 0x7f0901d5

    new-instance v10, Lcom/narvii/chat/ChatBackgroundFragment;

    invoke-direct {v10}, Lcom/narvii/chat/ChatBackgroundFragment;-><init>()V

    const-string v11, "chatBackground"

    invoke-virtual {v7, v9, v10, v11}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v7

    const v9, 0x7f0901e6

    iget-object v10, p0, Lcom/narvii/chat/ChatFragment;->chatInputFragment:Lcom/narvii/chat/input/ChatInputFragment;

    .line 443
    invoke-virtual {v7, v9, v10, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    const-string v7, "chatList"

    .line 444
    invoke-virtual {v5, v0, v8, v7}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v5, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;

    invoke-direct {v5}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;-><init>()V

    const-string v7, "chatOrganizerTrans"

    .line 445
    invoke-virtual {v0, v3, v5, v7}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v5, 0x7f090ce8

    iget-object v7, p0, Lcom/narvii/chat/ChatFragment;->vvChatMainFragment:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 446
    invoke-virtual {v0, v5, v7, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v4, Lcom/narvii/chat/invite/ChatInvitationFragment;

    invoke-direct {v4}, Lcom/narvii/chat/invite/ChatInvitationFragment;-><init>()V

    const-string v5, "invitation"

    .line 447
    invoke-virtual {v0, v1, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/narvii/chat/ChatFansOnlyMaskFragment;

    invoke-direct {v1}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;-><init>()V

    const-string v4, "fansOnlyMask"

    .line 448
    invoke-virtual {v0, v2, v1, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/narvii/chat/invite/JoinThreadFragment;

    invoke-direct {v1}, Lcom/narvii/chat/invite/JoinThreadFragment;-><init>()V

    const-string v2, "joinThread"

    .line 449
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 450
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_1

    .line 452
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/input/ChatInputFragment;

    iput-object v0, p0, Lcom/narvii/chat/ChatFragment;->chatInputFragment:Lcom/narvii/chat/input/ChatInputFragment;

    .line 453
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    iput-object v0, p0, Lcom/narvii/chat/ChatFragment;->vvChatMainFragment:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 455
    :goto_1
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->chatInputFragment:Lcom/narvii/chat/input/ChatInputFragment;

    if-eqz v0, :cond_2

    .line 456
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->panelHideListener:Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/input/ChatInputFragment;->addPanelHideListener(Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;)V

    .line 458
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->vvChatMainFragment:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    if-eqz v0, :cond_3

    .line 459
    invoke-virtual {v0, p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->setContentVisibilityChangeListener(Lcom/narvii/chat/video/ILiveChannelCollapseChangeListener;)V

    :cond_3
    if-nez p2, :cond_4

    .line 464
    invoke-virtual {p0, v6}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-class v0, Lcom/narvii/model/ChatThread;

    invoke-static {p2, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/ChatThread;

    goto :goto_2

    .line 466
    :cond_4
    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/ChatThread;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatThread;

    const-string v1, "statSend"

    .line 468
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/narvii/chat/ChatFragment;->statSend:Z

    const-string v1, "isChatFullInfoFetched"

    .line 469
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/narvii/chat/ChatFragment;->isChatFullInfoFetched:Z

    const-string v1, "isLiveChannelShow"

    .line 470
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/chat/ChatFragment;->isLiveChannelShow:Z

    move-object p2, v0

    :goto_2
    if-eqz p2, :cond_5

    .line 474
    new-instance v0, Lcom/narvii/chat/ChatFragment$5;

    invoke-direct {v0, p0, p2}, Lcom/narvii/chat/ChatFragment$5;-><init>(Lcom/narvii/chat/ChatFragment;Lcom/narvii/model/ChatThread;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 482
    invoke-virtual {p0, p2}, Lcom/narvii/chat/ChatFragment;->stat(Lcom/narvii/model/ChatThread;)V

    .line 485
    :cond_5
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/ChatFragment;->organizerTransContainer:Landroid/view/View;

    .line 486
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment;->organizerTransContainer:Landroid/view/View;

    new-instance p2, Lcom/narvii/chat/ChatFragment$6;

    invoke-direct {p2, p0}, Lcom/narvii/chat/ChatFragment$6;-><init>(Lcom/narvii/chat/ChatFragment;)V

    invoke-static {p1, p2}, Lcom/narvii/util/SoftKeyboard;->observeKeyboard(Landroid/view/View;Lcom/narvii/util/Callback;)Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/ChatFragment;->keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    .line 497
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->sendGetThreadReqeust()V

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

    const-string v0, "api"

    .line 669
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 670
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->threadRequest:Lcom/narvii/util/http/ApiRequest;

    if-eqz v1, :cond_0

    .line 671
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    const/4 v1, 0x0

    .line 672
    iput-object v1, p0, Lcom/narvii/chat/ChatFragment;->threadRequest:Lcom/narvii/util/http/ApiRequest;

    .line 674
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/chat/thread/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/chat/ChatFragment;->threadRequest:Lcom/narvii/util/http/ApiRequest;

    .line 675
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->threadRequest:Lcom/narvii/util/http/ApiRequest;

    iget-object v2, p0, Lcom/narvii/chat/ChatFragment;->listener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public setAllowFloatingWindow(Z)V
    .locals 0

    .line 941
    iput-boolean p1, p0, Lcom/narvii/chat/ChatFragment;->allowFloatingWindow:Z

    return-void
.end method

.method public setThread(Lcom/narvii/model/ChatThread;)V
    .locals 1

    const/4 v0, 0x0

    .line 751
    invoke-virtual {p0, p1, v0}, Lcom/narvii/chat/ChatFragment;->setThread(Lcom/narvii/model/ChatThread;Z)V

    return-void
.end method

.method public setThread(Lcom/narvii/model/ChatThread;Z)V
    .locals 3

    .line 693
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 694
    iput-object p1, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 696
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    if-eqz v1, :cond_2

    if-nez p2, :cond_0

    if-eqz v0, :cond_0

    .line 698
    iget-object p2, v0, Lcom/narvii/model/ChatThread;->tipInfo:Lcom/narvii/model/TippingInfo;

    if-eqz p2, :cond_0

    iget-object v2, v1, Lcom/narvii/model/ChatThread;->tipInfo:Lcom/narvii/model/TippingInfo;

    if-nez v2, :cond_0

    .line 699
    iput-object p2, v1, Lcom/narvii/model/ChatThread;->tipInfo:Lcom/narvii/model/TippingInfo;

    .line 702
    :cond_0
    iget-object p2, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    iget-object p2, p2, Lcom/narvii/model/ChatThread;->tipInfo:Lcom/narvii/model/TippingInfo;

    if-eqz p2, :cond_1

    iget-boolean p2, p2, Lcom/narvii/model/TippingInfo;->tippable:Z

    if-nez p2, :cond_2

    .line 703
    :cond_1
    iget-object p2, p0, Lcom/narvii/chat/ChatFragment;->chatTipBroadcastHelper:Lcom/narvii/chat/ChatTipBroadcastHelper;

    if-eqz p2, :cond_2

    .line 704
    invoke-virtual {p2}, Lcom/narvii/chat/ChatTipBroadcastHelper;->clearPendingTipLog()V

    .line 709
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 710
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

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

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 711
    instance-of v2, v1, Lcom/narvii/chat/ThreadInfoHost;

    if-eqz v2, :cond_3

    .line 712
    check-cast v1, Lcom/narvii/chat/ThreadInfoHost;

    iget-object v2, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    invoke-interface {v1, v2}, Lcom/narvii/chat/ThreadInfoHost;->onThreadChanged(Lcom/narvii/model/ChatThread;)V

    goto :goto_0

    .line 716
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 717
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

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

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 718
    instance-of v2, v1, Lcom/narvii/chat/IThreadInfoListener;

    if-eqz v2, :cond_5

    .line 719
    check-cast v1, Lcom/narvii/chat/IThreadInfoListener;

    iget-object v2, p0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    invoke-interface {v1, v2}, Lcom/narvii/chat/IThreadInfoListener;->onThreadUpdate(Lcom/narvii/model/ChatThread;)V

    goto :goto_1

    :cond_6
    if-eqz p1, :cond_9

    .line 725
    iget p2, p1, Lcom/narvii/model/ChatThread;->type:I

    const/4 v1, 0x2

    if-ne p2, v1, :cond_8

    iget p2, p1, Lcom/narvii/model/ChatThread;->condition:I

    if-ne p2, v1, :cond_8

    if-eqz v0, :cond_7

    iget p2, v0, Lcom/narvii/model/ChatThread;->condition:I

    if-eq p2, v1, :cond_8

    .line 726
    :cond_7
    new-instance p2, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f01d4

    .line 727
    invoke-virtual {p2, v0}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    const v0, 0x104000a

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 728
    invoke-virtual {p2, v0, v1, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 729
    invoke-virtual {p2}, Lcom/narvii/app/NVDialog;->show()V

    .line 731
    :cond_8
    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatFragment;->stat(Lcom/narvii/model/ChatThread;)V

    .line 733
    :cond_9
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updateActionBarTitle()V

    .line 734
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updatePrivateContentViews()V

    .line 735
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updateOrganizerTransView()V

    .line 736
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 737
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updateDisabledBar()V

    .line 739
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->beginReportActive()V

    .line 740
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updateFloatView()V

    const-string p1, "chat"

    .line 741
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/core/ChatService;

    .line 742
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p2

    if-eqz p2, :cond_a

    iget-boolean p2, p0, Lcom/narvii/chat/ChatFragment;->isChatFullInfoFetched:Z

    if-eqz p2, :cond_a

    .line 744
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p2

    iget p2, p2, Lcom/narvii/model/ChatThread;->membershipStatus:I

    if-eqz p2, :cond_a

    .line 745
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/chat/core/ChatService;->containGuestThreadId(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 746
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThreadId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/chat/core/ChatService;->removeGuestThreadId(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method stat(Lcom/narvii/model/ChatThread;)V
    .locals 0

    return-void
.end method

.method public tryShowLiveChannelFloating()V
    .locals 1

    .line 969
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->vvChatMainFragment:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->floatingPermissionUtils:Lcom/narvii/video/ui/floating/FloatingPermissionUtils;

    if-eqz v0, :cond_0

    .line 971
    invoke-virtual {v0}, Lcom/narvii/video/ui/floating/FloatingPermissionUtils;->canDrawOverlays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 972
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->shouldShowLiveChannelFloating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment;->vvChatMainFragment:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->showFloatingWindow()V

    :cond_0
    return-void
.end method

.method public viewOnlyChanged(Z)V
    .locals 1

    .line 1166
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->isViewOnly()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1167
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/model/ChatThread;->setViewOnly(Z)V

    .line 1168
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatFragment;->setThread(Lcom/narvii/model/ChatThread;)V

    .line 1169
    invoke-direct {p0}, Lcom/narvii/chat/ChatFragment;->updateChatThreadInList()V

    :cond_0
    return-void
.end method
