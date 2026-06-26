.class public Lcom/narvii/chat/input/ChatInputRightViewContainer;
.super Landroid/widget/FrameLayout;
.source "ChatInputRightViewContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;
    }
.end annotation


# static fields
.field public static final TYPE_JOINED:I = 0x0

.field public static final TYPE_JOIN_DISABLED:I = 0x2

.field public static final TYPE_UN_JOINED:I = 0x1


# instance fields
.field private callScreenService:Lcom/narvii/chat/call/CallScreenService;

.field private chatWaitingListService:Lcom/narvii/chat/setting/helper/ChatWaitingListService;

.field private final chathelper:Lcom/narvii/chat/util/ChatHelper;

.field private disallowTip:Z

.field private final endView:Landroid/view/View;

.field private isEmbedFragment:Z

.field private isInvite:Z

.field private isJoining:Z

.field private final joinButton:Landroid/view/View;

.field private final joinIcon:Landroid/widget/ImageView;

.field private final joinLoading:Landroid/view/View;

.field private final joinText:Lcom/narvii/widget/AutoSizingTextView;

.field private final joinView:Landroid/view/View;

.field private final menuView:Landroid/view/View;

.field private final muteButton:Lcom/narvii/chat/video/view/CheckableImageView;

.field private final muteView:Landroid/view/View;

.field private final nvcontext:Lcom/narvii/app/NVContext;

.field private oldWaitList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private onClickRightViewListener:Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;

.field private final requestView:Landroid/view/View;

.field private rtcService:Lcom/narvii/chat/rtc/RtcService;

.field private screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

.field private thread:Lcom/narvii/model/ChatThread;

.field private threadId:Ljava/lang/String;

.field private final tipView:Landroid/view/View;

.field private tmpNewUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private toolTipHelper:Lcom/narvii/util/ToolTipHelper;

.field private tooltipView:Landroid/view/View;

.field private final voiceView:Landroid/view/View;

.field private vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

.field private waitingListCount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->oldWaitList:Ljava/util/List;

    .line 89
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->tmpNewUsers:Ljava/util/List;

    .line 95
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0b00bb

    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090cbc

    .line 96
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->voiceView:Landroid/view/View;

    const p1, 0x7f090613

    .line 97
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinView:Landroid/view/View;

    .line 98
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090744

    .line 99
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->muteView:Landroid/view/View;

    .line 100
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->muteView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090708

    .line 101
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->menuView:Landroid/view/View;

    .line 102
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->menuView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090969

    .line 103
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->requestView:Landroid/view/View;

    .line 104
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->requestView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0903f5

    .line 105
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->endView:Landroid/view/View;

    .line 106
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->endView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090b81

    .line 107
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->tipView:Landroid/view/View;

    .line 108
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->tipView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09073e

    .line 110
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/video/view/CheckableImageView;

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->muteButton:Lcom/narvii/chat/video/view/CheckableImageView;

    const p1, 0x7f09060f

    .line 111
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinIcon:Landroid/widget/ImageView;

    const p1, 0x7f090612

    .line 112
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/AutoSizingTextView;

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinText:Lcom/narvii/widget/AutoSizingTextView;

    const p1, 0x7f090611

    .line 113
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinLoading:Landroid/view/View;

    const p1, 0x7f09060b

    .line 114
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinButton:Landroid/view/View;

    .line 116
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->requestView:Landroid/view/View;

    const p2, 0x7f090cf0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->waitingListCount:Landroid/widget/TextView;

    .line 118
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->nvcontext:Lcom/narvii/app/NVContext;

    .line 119
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->nvcontext:Lcom/narvii/app/NVContext;

    if-eqz p1, :cond_0

    const-string p2, "callScreen"

    .line 120
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/call/CallScreenService;

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 121
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->nvcontext:Lcom/narvii/app/NVContext;

    const-string p2, "rtc"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/rtc/RtcService;

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 122
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->nvcontext:Lcom/narvii/app/NVContext;

    const-string p2, "screenRoom"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/screenroom/ScreenRoomService;

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 123
    new-instance p1, Lcom/narvii/chat/video/utils/VVChatHelper;

    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->nvcontext:Lcom/narvii/app/NVContext;

    invoke-direct {p1, p2}, Lcom/narvii/chat/video/utils/VVChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 124
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->nvcontext:Lcom/narvii/app/NVContext;

    const-string p2, "chatWaitingList"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->chatWaitingListService:Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    .line 127
    :cond_0
    new-instance p1, Lcom/narvii/util/ToolTipHelper;

    invoke-direct {p1}, Lcom/narvii/util/ToolTipHelper;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    .line 128
    new-instance p1, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->chathelper:Lcom/narvii/chat/util/ChatHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/input/ChatInputRightViewContainer;)Landroid/view/View;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->tooltipView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$002(Lcom/narvii/chat/input/ChatInputRightViewContainer;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->tooltipView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lcom/narvii/chat/input/ChatInputRightViewContainer;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->tmpNewUsers:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/chat/input/ChatInputRightViewContainer;Landroid/view/View;Ljava/util/List;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->updateWaitingListBubbleViewContent(Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method private getThread()Lcom/narvii/model/ChatThread;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->thread:Lcom/narvii/model/ChatThread;

    return-object v0
.end method

.method private isPrivateVoiceCall(Lcom/narvii/chat/signalling/SignallingChannel;)Z
    .locals 4

    .line 419
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->isCreator()Z

    move-result v0

    .line 420
    new-instance v1, Lcom/narvii/chat/video/view/VoiceCallHelper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/chat/video/view/VoiceCallHelper;-><init>(Landroid/content/Context;)V

    .line 421
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v2

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    :goto_0
    invoke-virtual {v1, v2, p1}, Lcom/narvii/chat/video/view/VoiceCallHelper;->isPrivateCall(Lcom/narvii/model/ChatThread;I)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method private updateJoinButton(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 5

    .line 315
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->thread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getVvChatJoinType()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->chathelper:Lcom/narvii/chat/util/ChatHelper;

    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/chat/util/ChatHelper;->isHostOrCoHost(Lcom/narvii/model/ChatThread;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->isInvite:Z

    if-eqz v0, :cond_2

    .line 316
    invoke-direct {p0, p1}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->isPrivateVoiceCall(Lcom/narvii/chat/signalling/SignallingChannel;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinLoading:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 322
    iget-boolean v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->isJoining:Z

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 324
    iget-boolean v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->isJoining:Z

    if-eqz v0, :cond_3

    .line 325
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinLoading:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 329
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->thread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getVvChatJoinType()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_6

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->chathelper:Lcom/narvii/chat/util/ChatHelper;

    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/narvii/chat/util/ChatHelper;->isHostOrCoHost(Lcom/narvii/model/ChatThread;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 330
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->nvcontext:Lcom/narvii/app/NVContext;

    iget-object v4, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userWaitList:Ljava/util/List;

    invoke-static {v0, v4}, Lcom/narvii/chat/setting/helper/ChatWaitingListServiceKt;->isCurrentUserInWaitingList(Lcom/narvii/app/NVContext;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 331
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinText:Lcom/narvii/widget/AutoSizingTextView;

    const v1, 0x7f0f117a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 334
    :cond_4
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinIcon:Landroid/widget/ImageView;

    const v1, 0x7f0804b1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 335
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinText:Lcom/narvii/widget/AutoSizingTextView;

    const v1, 0x7f0f1092

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 337
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinButton:Landroid/view/View;

    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;->isCurrentChannelLive(Lcom/narvii/chat/signalling/SignallingChannel;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 339
    :cond_6
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinIcon:Landroid/widget/ImageView;

    const v1, 0x7f0804aa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 340
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinText:Lcom/narvii/widget/AutoSizingTextView;

    const v1, 0x7f0f0aa0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 341
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinButton:Landroid/view/View;

    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    if-eqz v1, :cond_7

    invoke-virtual {v1, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;->isCurrentChannelLive(Lcom/narvii/chat/signalling/SignallingChannel;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->onClickRightViewListener:Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;

    if-eqz p1, :cond_7

    .line 342
    invoke-interface {p1}, Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;->checkChannelUserLimit()Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 v2, 0x1

    .line 341
    :cond_7
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 345
    :goto_1
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinText:Lcom/narvii/widget/AutoSizingTextView;

    invoke-virtual {p1}, Lcom/narvii/widget/AutoSizingTextView;->resizingFromMaxSize()V

    return-void
.end method

.method private updateTipViewVisibility()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->tipView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->disallowTip:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->thread:Lcom/narvii/model/ChatThread;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/narvii/model/ChatThread;->tipInfo:Lcom/narvii/model/TippingInfo;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lcom/narvii/model/TippingInfo;->tippable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    return-void
.end method

.method private updateWaitingListBubble(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->chathelper:Lcom/narvii/chat/util/ChatHelper;

    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isHostOrCoHost(Lcom/narvii/model/ChatThread;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->requestView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 360
    :cond_0
    invoke-static {}, Lcom/narvii/util/Tooltip;->builder()Lcom/narvii/util/Tooltip$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->requestView:Landroid/view/View;

    .line 361
    invoke-virtual {v0, v1}, Lcom/narvii/util/Tooltip$Builder;->anchorView(Landroid/view/View;)Lcom/narvii/util/Tooltip$Builder;

    move-result-object v0

    const v1, 0x7f0b00bc

    .line 362
    invoke-virtual {v0, v1}, Lcom/narvii/util/Tooltip$Builder;->customTooltipBubbleLayout(I)Lcom/narvii/util/Tooltip$Builder;

    move-result-object v0

    new-instance v1, Lcom/narvii/chat/input/ChatInputRightViewContainer$1;

    invoke-direct {v1, p0}, Lcom/narvii/chat/input/ChatInputRightViewContainer$1;-><init>(Lcom/narvii/chat/input/ChatInputRightViewContainer;)V

    .line 363
    invoke-virtual {v0, v1}, Lcom/narvii/util/Tooltip$Builder;->doCustomTooltipBubble(Lcom/narvii/util/Callback;)Lcom/narvii/util/Tooltip$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 370
    invoke-virtual {v0, v1}, Lcom/narvii/util/Tooltip$Builder;->indicatorUp(Z)Lcom/narvii/util/Tooltip$Builder;

    move-result-object v0

    const-string v1, "#FF5ED700"

    .line 371
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/Tooltip$Builder;->background(I)Lcom/narvii/util/Tooltip$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 372
    invoke-virtual {v0, v1}, Lcom/narvii/util/Tooltip$Builder;->showOnlyOnce(Z)Lcom/narvii/util/Tooltip$Builder;

    move-result-object v0

    .line 373
    invoke-virtual {v0}, Lcom/narvii/util/Tooltip$Builder;->autoHide()Lcom/narvii/util/Tooltip$Builder;

    move-result-object v0

    .line 374
    invoke-virtual {v0, v1}, Lcom/narvii/util/Tooltip$Builder;->isVibrate(Z)Lcom/narvii/util/Tooltip$Builder;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Lcom/narvii/util/Tooltip$Builder;->linkClickWithAnchorView()Lcom/narvii/util/Tooltip$Builder;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Lcom/narvii/util/Tooltip$Builder;->build()Lcom/narvii/util/Tooltip;

    move-result-object v0

    .line 378
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    invoke-virtual {v2}, Lcom/narvii/util/ToolTipHelper;->isTooltipShowing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 379
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->tmpNewUsers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 382
    :cond_1
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->tmpNewUsers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 383
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 384
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/User;

    .line 385
    invoke-virtual {v3}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 386
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 389
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/User;

    .line 390
    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->oldWaitList:Ljava/util/List;

    invoke-virtual {v3}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 391
    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->tmpNewUsers:Ljava/util/List;

    invoke-virtual {v3}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 392
    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->tmpNewUsers:Ljava/util/List;

    invoke-interface {v4, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 395
    :cond_5
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->oldWaitList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 396
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->oldWaitList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 398
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    invoke-virtual {p1}, Lcom/narvii/util/ToolTipHelper;->isTooltipShowing()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 399
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->tmpNewUsers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 400
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    invoke-virtual {p1}, Lcom/narvii/util/ToolTipHelper;->hideToolTip()V

    goto :goto_2

    .line 402
    :cond_6
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->tooltipView:Landroid/view/View;

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->tmpNewUsers:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->updateWaitingListBubbleViewContent(Landroid/view/View;Ljava/util/List;)V

    goto :goto_2

    .line 404
    :cond_7
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->tmpNewUsers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->isWaitingListShown()Z

    move-result p1

    if-nez p1, :cond_8

    .line 405
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    invoke-virtual {p1, v0}, Lcom/narvii/util/ToolTipHelper;->showToolTip(Lcom/narvii/util/Tooltip;)V

    :cond_8
    :goto_2
    return-void

    .line 352
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    invoke-virtual {v0}, Lcom/narvii/util/ToolTipHelper;->isTooltipShowing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 353
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    invoke-virtual {v0}, Lcom/narvii/util/ToolTipHelper;->hideToolTip()V

    .line 355
    :cond_a
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->oldWaitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 356
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->oldWaitList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private updateWaitingListBubbleViewContent(Landroid/view/View;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f090cf2

    .line 410
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/LiveLayerOnlineBar;

    const/4 v1, 0x1

    .line 411
    invoke-virtual {v0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setAvatarStrokeWidth(I)V

    .line 412
    invoke-virtual {v0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setForceHideOnlineTextLayout(Z)V

    .line 413
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, p2, v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUserList(Ljava/util/List;I)V

    .line 414
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0f117d

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f117e

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const v0, 0x7f090cf1

    .line 415
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public isMuted()Z
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->muteButton:Lcom/narvii/chat/video/view/CheckableImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->muteButton:Lcom/narvii/chat/video/view/CheckableImageView;

    invoke-virtual {v0}, Lcom/narvii/chat/video/view/CheckableImageView;->isChecked()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isWaitingListShown()Z
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->chatWaitingListService:Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/chat/setting/helper/ChatWaitingListService;->isWaitingListShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 144
    :sswitch_0
    invoke-static {p0}, Lcom/narvii/logging/LogUtils;->getPageContext(Landroid/view/View;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "TippingButton"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 145
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->nvcontext:Lcom/narvii/app/NVContext;

    invoke-static {p1}, Lcom/narvii/util/Utils;->shouldShowLoginPage(Lcom/narvii/app/NVContext;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->thread:Lcom/narvii/model/ChatThread;

    if-nez p1, :cond_1

    return-void

    .line 151
    :cond_1
    new-instance p1, Lcom/narvii/tipping/TippingHelper;

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->nvcontext:Lcom/narvii/app/NVContext;

    invoke-direct {p1, v0}, Lcom/narvii/tipping/TippingHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 152
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->thread:Lcom/narvii/model/ChatThread;

    invoke-virtual {p1, v0}, Lcom/narvii/tipping/TippingHelper;->isTipAuthor(Lcom/narvii/model/Tippable;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->thread:Lcom/narvii/model/ChatThread;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/tipping/TippingHelper;->openTippingList(Lcom/narvii/model/Tippable;Lcom/narvii/model/Community;)V

    goto/16 :goto_0

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->thread:Lcom/narvii/model/ChatThread;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/tipping/TippingHelper;->openTipDialog(Lcom/narvii/model/Tippable;Lcom/narvii/monetization/store/TippingConfirmDialog$TipSuccessListener;)Lcom/narvii/monetization/store/TippingConfirmDialog;

    goto/16 :goto_0

    .line 188
    :sswitch_1
    sget-object p1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Landroid/view/View;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "WaitingListIcon"

    .line 189
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 190
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 191
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->onClickRightViewListener:Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;

    if-eqz p1, :cond_6

    .line 192
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    invoke-virtual {p1}, Lcom/narvii/util/ToolTipHelper;->isTooltipShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 193
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    invoke-virtual {p1}, Lcom/narvii/util/ToolTipHelper;->hideToolTip()V

    .line 195
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->onClickRightViewListener:Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;

    invoke-interface {p1}, Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;->openWaitingList()V

    goto :goto_0

    .line 178
    :sswitch_2
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->onClickRightViewListener:Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    .line 179
    invoke-interface {p1, v0}, Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;->toggleMute(Z)V

    goto :goto_0

    .line 159
    :sswitch_3
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->onClickRightViewListener:Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;

    if-eqz p1, :cond_6

    .line 160
    invoke-interface {p1}, Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;->toggleMenu()V

    goto :goto_0

    .line 164
    :sswitch_4
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    .line 165
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->onClickRightViewListener:Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    .line 166
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->nvcontext:Lcom/narvii/app/NVContext;

    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userWaitList:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/narvii/chat/setting/helper/ChatWaitingListServiceKt;->isCurrentUserInWaitingList(Lcom/narvii/app/NVContext;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 167
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->onClickRightViewListener:Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;

    invoke-interface {p1}, Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;->openWaitingList()V

    goto :goto_0

    .line 168
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->thread:Lcom/narvii/model/ChatThread;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getVvChatJoinType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->chathelper:Lcom/narvii/chat/util/ChatHelper;

    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/chat/util/ChatHelper;->isHostOrCoHost(Lcom/narvii/model/ChatThread;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "TalkButton"

    .line 169
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Landroid/view/View;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 170
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->onClickRightViewListener:Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;

    invoke-interface {p1}, Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;->doRequestToSpeak()V

    goto :goto_0

    :cond_5
    const-string p1, "JoinButton"

    .line 172
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Landroid/view/View;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 173
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->onClickRightViewListener:Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;

    invoke-interface {p1}, Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;->doJoin()V

    goto :goto_0

    .line 183
    :sswitch_5
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->onClickRightViewListener:Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;

    if-eqz p1, :cond_6

    .line 184
    invoke-interface {p1}, Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;->doEndChat()V

    :cond_6
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0903f5 -> :sswitch_5
        0x7f090613 -> :sswitch_4
        0x7f090708 -> :sswitch_3
        0x7f090744 -> :sswitch_2
        0x7f090969 -> :sswitch_1
        0x7f090b81 -> :sswitch_0
    .end sparse-switch
.end method

.method public setDisallowTip(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->disallowTip:Z

    .line 133
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->updateTipViewVisibility()V

    return-void
.end method

.method public setEmbedFragment(Z)V
    .locals 0

    .line 429
    iput-boolean p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->isEmbedFragment:Z

    return-void
.end method

.method public setIsInvite(Z)V
    .locals 0

    .line 303
    iput-boolean p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->isInvite:Z

    return-void
.end method

.method public setIsJoining(Z)V
    .locals 0

    .line 307
    iput-boolean p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->isJoining:Z

    return-void
.end method

.method public setOnClickRightViewListener(Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->onClickRightViewListener:Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;

    return-void
.end method

.method public setThread(Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->thread:Lcom/narvii/model/ChatThread;

    .line 434
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->showView()V

    return-void
.end method

.method public setThreadId(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->threadId:Ljava/lang/String;

    return-void
.end method

.method public showView()V
    .locals 9

    .line 202
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->threadId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "chat input right view thread is null"

    .line 203
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    :goto_0
    const/4 v4, 0x0

    goto :goto_1

    .line 211
    :cond_1
    iget v4, v0, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    if-ne v4, v2, :cond_2

    goto :goto_0

    :cond_2
    if-ne v4, v1, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    .line 220
    :goto_1
    iget-object v5, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    if-nez v5, :cond_4

    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object v5

    .line 223
    :goto_2
    iget-object v6, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    const/4 v7, 0x5

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/narvii/chat/call/CallScreenService;->getCurStatus()I

    move-result v6

    if-ne v6, v2, :cond_5

    .line 224
    iget-object v5, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {v5}, Lcom/narvii/chat/call/CallScreenService;->isMuteOn()Z

    move-result v5

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    .line 225
    iget v6, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    if-ne v6, v7, :cond_6

    if-eqz v5, :cond_6

    iget-object v6, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    iget-boolean v6, v6, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    if-eqz v6, :cond_6

    .line 227
    invoke-virtual {v6}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getLocalMicMuted()Z

    move-result v5

    goto :goto_3

    :cond_6
    if-eqz v5, :cond_7

    .line 229
    iget-object v5, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted()Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    .line 235
    :goto_3
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->updateTipViewVisibility()V

    const/16 v6, 0x8

    if-eqz v0, :cond_10

    .line 237
    iget v8, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    if-eq v8, v2, :cond_8

    const/4 v2, 0x4

    if-eq v8, v2, :cond_8

    if-ne v8, v7, :cond_10

    :cond_8
    iget-boolean v2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->isEmbedFragment:Z

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->thread:Lcom/narvii/model/ChatThread;

    if-nez v2, :cond_9

    goto/16 :goto_9

    .line 249
    :cond_9
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->voiceView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->thread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->getVvChatJoinType()I

    move-result v2

    if-ne v2, v1, :cond_d

    if-nez v4, :cond_a

    .line 252
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->chathelper:Lcom/narvii/chat/util/ChatHelper;

    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->thread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v1, v2}, Lcom/narvii/chat/util/ChatHelper;->isHostOrCoHost(Lcom/narvii/model/ChatThread;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 253
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->requestView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 255
    :cond_a
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->requestView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 258
    :goto_4
    iget-object v1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userWaitList:Ljava/util/List;

    .line 260
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 261
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->waitingListCount:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->waitingListCount:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    const/16 v8, 0x63

    if-le v7, v8, :cond_b

    const-string v7, "99+"

    goto :goto_5

    :cond_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_5
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 264
    :cond_c
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->waitingListCount:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    :goto_6
    invoke-direct {p0, v1}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->updateWaitingListBubble(Ljava/util/List;)V

    goto :goto_7

    .line 269
    :cond_d
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->requestView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 272
    :goto_7
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->menuView:Landroid/view/View;

    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->onClickRightViewListener:Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;

    if-eqz v2, :cond_e

    invoke-interface {v2}, Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;->isMenuIconShown()Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    goto :goto_8

    :cond_e
    const/16 v2, 0x8

    :goto_8
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-nez v4, :cond_f

    .line 276
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->muteView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->muteButton:Lcom/narvii/chat/video/view/CheckableImageView;

    invoke-virtual {v0, v5}, Lcom/narvii/chat/video/view/CheckableImageView;->setChecked(Z)V

    .line 279
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->endView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    .line 281
    :cond_f
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 282
    invoke-direct {p0, v0}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->updateJoinButton(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 283
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->muteView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->endView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    .line 241
    :cond_10
    :goto_9
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->voiceView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->muteView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->menuView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->requestView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->endView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_a
    return-void
.end method
