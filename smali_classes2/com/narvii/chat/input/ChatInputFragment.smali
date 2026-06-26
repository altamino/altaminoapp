.class public Lcom/narvii/chat/input/ChatInputFragment;
.super Lcom/narvii/app/NVFragment;
.source "ChatInputFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/media/MediaPickerFragment$OnResultListener;
.implements Lcom/narvii/monetization/sticker/picker/StickerSelectListener;
.implements Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;
.implements Lcom/narvii/chat/video/events/MyChannelUserStatusChangeListener;
.implements Lcom/narvii/chat/video/events/LiveChannelChangeListener;
.implements Lcom/narvii/chat/video/overlay/VVchatPermissionInviteListener;
.implements Lcom/narvii/chat/screenroom/SRPermissionActionChangeListener;
.implements Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;
.implements Lcom/narvii/chat/waitinglist/WaitingListListener;
.implements Lcom/narvii/chat/input/MentionedEditText$OnMentionInputListener;
.implements Lcom/narvii/chat/input/ChatMentionUserListFragment$MentionRelatedUsersCallback;
.implements Lcom/narvii/chat/ThreadInfoHost;
.implements Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatJoinEventListener;
.implements Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;,
        Lcom/narvii/chat/input/ChatInputFragment$SwitchKeyboard;,
        Lcom/narvii/chat/input/ChatInputFragment$PanelHideAdapter;,
        Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;
    }
.end annotation


# static fields
.field private static final ATTACH_MESSAGE:Ljava/lang/String; = "attachMessage"

.field private static final ATTACH_OBJ:Ljava/lang/String; = "attachObj"

.field private static final ATTACH_OBJ_ID:Ljava/lang/String; = "attachObjId"

.field private static final ATTACH_OBJ_TYPE:Ljava/lang/String; = "attachObjType"

.field public static final KEY_AUTO_CHECK:Ljava/lang/String; = "autoCheckStrike"

.field private static final REQUEST_CODE_PICKERAVATAR:I = 0xc9


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field private adBanner:Landroid/view/View;

.field private addButton:Lcom/narvii/widget/TintButton;

.field attachContent:Ljava/lang/String;

.field attachLink:Ljava/lang/String;

.field attachMediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field attachMessage:Ljava/lang/String;

.field attachObjStr:Ljava/lang/String;

.field attachObject:Lcom/narvii/model/NVObject;

.field attachObjectId:Ljava/lang/String;

.field attachObjectType:I

.field attachTitle:Ljava/lang/String;

.field private blockUntil:J

.field private callScreenService:Lcom/narvii/chat/call/CallScreenService;

.field private chatAddButtonView:Landroid/view/View;

.field chatHelper:Lcom/narvii/chat/util/ChatHelper;

.field private chatInputBlur:Landroid/view/View;

.field private chatInputButton:Landroid/widget/TextView;

.field private chatInputMain:Landroid/view/View;

.field private chatInputMask:Landroid/view/View;

.field private chatInputOptionMenu:Lcom/narvii/chat/input/ChatInputOptionMenu;

.field private chatReplyLayout:Lcom/narvii/chat/ChatReplyLayout;

.field private chatReplyMainView:Landroid/view/View;

.field private chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

.field protected chatService:Lcom/narvii/chat/core/ChatService;

.field private chatStickerButtonView:Landroid/view/View;

.field private chatThreadCheckFragment:Lcom/narvii/chat/input/ChatThreadCheckFragment;

.field private chatWaitingListService:Lcom/narvii/chat/setting/helper/ChatWaitingListService;

.field private cid:I

.field protected edit:Lcom/narvii/chat/input/MentionedEditText;

.field private globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

.field private isKeyboardVisible:Z

.field protected mediaPicker:Lcom/narvii/media/MediaPickerFragment;

.field private mentionEnabled:Z

.field private mentionTextBuilder:Ljava/lang/StringBuilder;

.field private mentionTextStartIndex:I

.field private mentionUserListFragment:Lcom/narvii/chat/input/ChatMentionUserListFragment;

.field private mentioning:Z

.field private menuEventDealer:Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;

.field private messageSenderHelper:Lcom/narvii/chat/input/ChatInputMessageSenderHelper;

.field oldDraft:Ljava/lang/String;

.field panelHideEventDispatcher:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;",
            ">;"
        }
    .end annotation
.end field

.field private panelHideMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;",
            ">;"
        }
    .end annotation
.end field

.field private pushInviteHelper:Lcom/narvii/services/PushInviteHelper;

.field private pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

.field private replyMessage:Lcom/narvii/model/ChatMessage;

.field private replying:Z

.field private requireAccountReceiver:Landroid/content/BroadcastReceiver;

.field private returnToSend:Z

.field private rtcService:Lcom/narvii/chat/rtc/RtcService;

.field private sendButton:Lcom/narvii/widget/TintButton;

.field private sendButtonContainer:Landroid/view/View;

.field private shieldInputEvent:Z

.field showedAttachment:Z

.field private signallingChannel:Lcom/narvii/chat/signalling/SignallingChannel;

.field public source:Ljava/lang/String;

.field private srLandscapeButtons:Landroid/view/View;

.field private srs:Lcom/narvii/chat/screenroom/ScreenRoomService;

.field private stickerButton:Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;

.field private stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

.field private final switchingKeyboard:Lcom/narvii/util/statistics/TmpValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/statistics/TmpValue<",
            "Lcom/narvii/chat/input/ChatInputFragment$SwitchKeyboard;",
            ">;"
        }
    .end annotation
.end field

.field private tvTypingUser:Landroid/widget/TextView;

.field private tvTypingUserHelper:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

.field private final updateSendBtn:Ljava/lang/Runnable;

.field private updating:Z

.field private viewOnlyInputButton:Landroid/widget/TextView;

.field private vvchatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

.field private waitingListUsers:Ljava/util/List;
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
    .locals 3

    .line 129
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 142
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->switchingKeyboard:Lcom/narvii/util/statistics/TmpValue;

    const-string v0, "Chat Thread"

    .line 143
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->source:Ljava/lang/String;

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->panelHideMap:Ljava/util/HashMap;

    .line 174
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->panelHideEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 185
    new-instance v0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;-><init>(Lcom/narvii/chat/input/ChatInputFragment;Lcom/narvii/chat/input/ChatInputFragment$1;)V

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->menuEventDealer:Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;

    const/4 v0, 0x0

    .line 192
    iput-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentioning:Z

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionTextBuilder:Ljava/lang/StringBuilder;

    const/4 v2, -0x1

    .line 194
    iput v2, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionTextStartIndex:I

    .line 212
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/narvii/chat/input/ChatInputFragment;->waitingListUsers:Ljava/util/List;

    .line 213
    iput-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->shieldInputEvent:Z

    .line 215
    iput-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->replying:Z

    .line 216
    iput-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->replyMessage:Lcom/narvii/model/ChatMessage;

    .line 1159
    new-instance v0, Lcom/narvii/chat/input/ChatInputFragment$17;

    invoke-direct {v0, p0}, Lcom/narvii/chat/input/ChatInputFragment$17;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->updateSendBtn:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/chat/input/ChatInputFragment;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->stopReplaing()V

    return-void
.end method

.method static synthetic access$1000(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputTypingUserHelper;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->tvTypingUserHelper:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputOptionMenu;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputOptionMenu:Lcom/narvii/chat/input/ChatInputOptionMenu;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/util/statistics/TmpValue;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->switchingKeyboard:Lcom/narvii/util/statistics/TmpValue;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/narvii/chat/input/ChatInputFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment;->updateReplyMainView(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->stickerButton:Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/narvii/chat/input/ChatInputFragment;)Landroid/widget/TextView;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputButton:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/narvii/chat/input/ChatInputFragment;)I
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->checkThreadStatus()I

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getMessageAttachmentNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputMessageSenderHelper;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->messageSenderHelper:Lcom/narvii/chat/input/ChatInputMessageSenderHelper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/chat/input/ChatInputFragment;)Z
    .locals 0

    .line 129
    iget-boolean p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentioning:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/narvii/chat/input/ChatInputFragment;Ljava/lang/String;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment;->logSendChatMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/narvii/chat/input/ChatInputFragment;Z)Z
    .locals 0

    .line 129
    iput-boolean p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentioning:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/narvii/chat/input/ChatInputFragment;)Landroid/widget/TextView;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->viewOnlyInputButton:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatThreadCheckFragment;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatThreadCheckFragment:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/widget/TintButton;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->sendButton:Lcom/narvii/widget/TintButton;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/narvii/chat/input/ChatInputFragment;)J
    .locals 2

    .line 129
    iget-wide v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->blockUntil:J

    return-wide v0
.end method

.method static synthetic access$2500(Lcom/narvii/chat/input/ChatInputFragment;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->hideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$2600(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputRightViewContainer;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/narvii/chat/input/ChatInputFragment;)Landroid/view/View;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->adBanner:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->signallingChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/narvii/chat/input/ChatInputFragment;)Ljava/util/List;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->waitingListUsers:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/chat/input/ChatInputFragment;)I
    .locals 0

    .line 129
    iget p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionTextStartIndex:I

    return p0
.end method

.method static synthetic access$3000(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/rtc/RtcService;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/call/CallScreenService;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/setting/helper/ChatWaitingListService;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatWaitingListService:Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/video/utils/VVChatHelper;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->vvchatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/chat/input/ChatInputFragment;)Ljava/lang/StringBuilder;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionTextBuilder:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/chat/input/ChatInputFragment;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->stopMentioning()V

    return-void
.end method

.method static synthetic access$600(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatMentionUserListFragment;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionUserListFragment:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/chat/input/ChatInputFragment;)Z
    .locals 0

    .line 129
    iget-boolean p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->shieldInputEvent:Z

    return p0
.end method

.method static synthetic access$702(Lcom/narvii/chat/input/ChatInputFragment;Z)Z
    .locals 0

    .line 129
    iput-boolean p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->shieldInputEvent:Z

    return p1
.end method

.method static synthetic access$800(Lcom/narvii/chat/input/ChatInputFragment;)Z
    .locals 0

    .line 129
    iget-boolean p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->isKeyboardVisible:Z

    return p0
.end method

.method static synthetic access$802(Lcom/narvii/chat/input/ChatInputFragment;Z)Z
    .locals 0

    .line 129
    iput-boolean p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->isKeyboardVisible:Z

    return p1
.end method

.method static synthetic access$900(Lcom/narvii/chat/input/ChatInputFragment;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->showSoftKeyboard()V

    return-void
.end method

.method private checkCommunityAvailability(Landroid/view/View;)Z
    .locals 3

    const-string v0, "config"

    .line 1407
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 1408
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    .line 1409
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    new-instance v2, Lcom/narvii/chat/input/ChatInputFragment$22;

    invoke-direct {v2, p0, p1}, Lcom/narvii/chat/input/ChatInputFragment$22;-><init>(Lcom/narvii/chat/input/ChatInputFragment;Landroid/view/View;)V

    const/4 p1, 0x1

    invoke-virtual {v1, v0, p1, v2}, Lcom/narvii/chat/global/GlobalChatHelper;->tryJoinCommunity(IZLcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)Z

    move-result v0

    xor-int/2addr p1, v0

    return p1
.end method

.method private checkThreadStatus()I
    .locals 6

    .line 1064
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_0

    goto :goto_1

    .line 1067
    :cond_0
    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    iget v5, p0, Lcom/narvii/chat/input/ChatInputFragment;->cid:I

    invoke-virtual {v4, v5}, Lcom/narvii/chat/global/GlobalChatHelper;->isCommunityJoined(I)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 1069
    :cond_1
    iget v4, v0, Lcom/narvii/model/ChatThread;->status:I

    const/16 v5, 0x9

    if-eq v4, v5, :cond_6

    iget-object v4, v0, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    if-eqz v4, :cond_2

    iget v4, v4, Lcom/narvii/model/User;->status:I

    if-eq v4, v5, :cond_6

    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    goto :goto_0

    .line 1072
    :cond_2
    iget v4, v0, Lcom/narvii/model/ChatThread;->condition:I

    if-ne v4, v2, :cond_4

    .line 1074
    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    if-ne v0, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    move v3, v1

    goto :goto_1

    .line 1075
    :cond_4
    iget v0, v0, Lcom/narvii/model/ChatThread;->membershipStatus:I

    if-eq v0, v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v3, 0x2

    :goto_1
    return v3
.end method

.method private getMessageAttachmentNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 8

    .line 1973
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjectId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-boolean v2, p0, Lcom/narvii/chat/input/ChatInputFragment;->showedAttachment:Z

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    .line 1976
    iput-boolean v2, p0, Lcom/narvii/chat/input/ChatInputFragment;->showedAttachment:Z

    .line 1978
    iget v2, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjectType:I

    .line 1979
    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachLink:Ljava/lang/String;

    .line 1980
    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachTitle:Ljava/lang/String;

    .line 1981
    iget-object v5, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachContent:Ljava/lang/String;

    .line 1982
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v6

    const-string v7, "objectId"

    .line 1983
    invoke-virtual {v6, v7, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v0, "objectType"

    .line 1984
    invoke-virtual {v6, v0, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v0, "link"

    .line 1985
    invoke-virtual {v6, v0, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v0, "title"

    .line 1986
    invoke-virtual {v6, v0, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v0, "content"

    .line 1987
    invoke-virtual {v6, v0, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 1988
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    instance-of v2, v0, Lcom/narvii/model/Comment;

    const-string v3, "parentType"

    const-string v4, "parentId"

    if-eqz v2, :cond_1

    .line 1989
    check-cast v0, Lcom/narvii/model/Comment;

    iget-object v0, v0, Lcom/narvii/model/Comment;->parentId:Ljava/lang/String;

    invoke-virtual {v6, v4, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 1990
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    check-cast v0, Lcom/narvii/model/Comment;

    iget v0, v0, Lcom/narvii/model/Comment;->parentType:I

    invoke-virtual {v6, v3, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_0

    .line 1991
    :cond_1
    instance-of v2, v0, Lcom/narvii/model/ChatMessage;

    if-eqz v2, :cond_2

    .line 1992
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->parentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v4, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/16 v0, 0xc

    .line 1993
    invoke-virtual {v6, v3, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 1995
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachMediaList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->createArrayNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 1996
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachMediaList:Ljava/util/List;

    if-nez v2, :cond_3

    move-object v0, v1

    :cond_3
    const-string v1, "mediaList"

    invoke-virtual {v6, v1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    return-object v6

    :cond_4
    :goto_1
    return-object v1
.end method

.method private hideSoftKeyboard()V
    .locals 1

    .line 1518
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    return-void
.end method

.method private isInputButton(I)Z
    .locals 1

    const v0, 0x7f090aac

    if-eq p1, v0, :cond_1

    const v0, 0x7f0901e1

    if-eq p1, v0, :cond_1

    const v0, 0x7f090cb7

    if-eq p1, v0, :cond_1

    const v0, 0x7f0901ca

    if-eq p1, v0, :cond_1

    const v0, 0x7f090204

    if-eq p1, v0, :cond_1

    const v0, 0x7f0901db

    if-eq p1, v0, :cond_1

    const v0, 0x7f090c9c

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private logSendChatMessage(Ljava/lang/String;)V
    .locals 2

    .line 1248
    sget-object v0, Lcom/narvii/logging/ActSemantic;->sendChatMessage:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "messageType"

    invoke-virtual {v0, v1, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method private onChatInputClicked()V
    .locals 2

    .line 1445
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1446
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1447
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    iget v0, v0, Lcom/narvii/model/ChatThread;->membershipStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1449
    invoke-virtual {p0, v1, v0}, Lcom/narvii/chat/input/ChatInputFragment;->showJoinChatDialog(ZLandroid/view/View;)V

    return-void

    .line 1452
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->showChatInputLayout()V

    return-void
.end method

.method private parseObject(Ljava/lang/String;I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_7

    const/4 v1, 0x1

    if-eq p2, v1, :cond_6

    const/4 v1, 0x2

    if-eq p2, v1, :cond_5

    const/4 v1, 0x3

    if-eq p2, v1, :cond_4

    const/4 v1, 0x7

    if-eq p2, v1, :cond_3

    const/16 v1, 0xc

    if-eq p2, v1, :cond_2

    const/16 v1, 0x6d

    if-eq p2, v1, :cond_1

    const/16 v1, 0x83

    if-eq p2, v1, :cond_6

    move-object v1, v0

    goto :goto_0

    .line 1912
    :cond_1
    const-class v1, Lcom/narvii/model/SharedFile;

    goto :goto_0

    .line 1909
    :cond_2
    const-class v1, Lcom/narvii/model/ChatThread;

    goto :goto_0

    .line 1906
    :cond_3
    const-class v1, Lcom/narvii/model/ChatMessage;

    goto :goto_0

    .line 1903
    :cond_4
    const-class v1, Lcom/narvii/model/Comment;

    goto :goto_0

    .line 1900
    :cond_5
    const-class v1, Lcom/narvii/model/Item;

    goto :goto_0

    .line 1897
    :cond_6
    const-class v1, Lcom/narvii/model/Blog;

    goto :goto_0

    .line 1893
    :cond_7
    const-class v1, Lcom/narvii/model/User;

    :goto_0
    if-nez v1, :cond_8

    return-void

    .line 1916
    :cond_8
    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/NVObject;

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    .line 1917
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    if-nez p1, :cond_9

    return-void

    .line 1918
    :cond_9
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjectId:Ljava/lang/String;

    .line 1919
    iput p2, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjectType:I

    const-string p1, "ndc://"

    .line 1922
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    instance-of v2, v1, Lcom/narvii/model/Blog;

    const-string v3, "/"

    if-eqz v2, :cond_a

    .line 1923
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjStr:Ljava/lang/String;

    const-class v1, Lcom/narvii/model/Blog;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/NVObject;

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    .line 1924
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    check-cast v0, Lcom/narvii/model/Blog;

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->getShowTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachTitle:Ljava/lang/String;

    .line 1925
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    check-cast v0, Lcom/narvii/model/Blog;

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->getShowContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachContent:Ljava/lang/String;

    .line 1926
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    check-cast v0, Lcom/narvii/model/Blog;

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->getFeedPreviewMediaList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachMediaList:Ljava/util/List;

    .line 1927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachLink:Ljava/lang/String;

    goto/16 :goto_3

    .line 1928
    :cond_a
    instance-of v2, v1, Lcom/narvii/model/Item;

    if-eqz v2, :cond_b

    .line 1929
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjStr:Ljava/lang/String;

    const-class v1, Lcom/narvii/model/Item;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/NVObject;

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    .line 1930
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    check-cast v0, Lcom/narvii/model/Item;

    invoke-virtual {v0}, Lcom/narvii/model/Item;->title()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachTitle:Ljava/lang/String;

    .line 1931
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    check-cast v0, Lcom/narvii/model/Item;

    invoke-virtual {v0}, Lcom/narvii/model/Item;->content()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachContent:Ljava/lang/String;

    .line 1932
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    check-cast v0, Lcom/narvii/model/Item;

    iget-object v0, v0, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachMediaList:Ljava/util/List;

    .line 1933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachLink:Ljava/lang/String;

    goto/16 :goto_3

    .line 1934
    :cond_b
    instance-of v2, v1, Lcom/narvii/model/ChatMessage;

    if-eqz v2, :cond_e

    .line 1935
    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjStr:Ljava/lang/String;

    const-class v1, Lcom/narvii/model/ChatMessage;

    invoke-static {p2, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/NVObject;

    iput-object p2, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    .line 1936
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachTitle:Ljava/lang/String;

    .line 1937
    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    move-object v1, p2

    check-cast v1, Lcom/narvii/model/ChatMessage;

    iget-object v1, v1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    iput-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachContent:Ljava/lang/String;

    .line 1938
    move-object v1, p2

    check-cast v1, Lcom/narvii/model/ChatMessage;

    iget v1, v1, Lcom/narvii/model/ChatMessage;->mediaType:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_d

    move-object v1, p2

    check-cast v1, Lcom/narvii/model/ChatMessage;

    iget v1, v1, Lcom/narvii/model/ChatMessage;->mediaType:I

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_d

    check-cast p2, Lcom/narvii/model/ChatMessage;

    iget p2, p2, Lcom/narvii/model/ChatMessage;->mediaType:I

    const/16 v1, 0x67

    if-ne p2, v1, :cond_c

    goto :goto_1

    .line 1946
    :cond_c
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachMediaList:Ljava/util/List;

    goto :goto_2

    .line 1941
    :cond_d
    :goto_1
    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    check-cast p2, Lcom/narvii/model/ChatMessage;

    invoke-virtual {p2}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    move-result-object p2

    .line 1942
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1943
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1944
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachMediaList:Ljava/util/List;

    .line 1948
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "chat-thread/"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->parentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachLink:Ljava/lang/String;

    goto/16 :goto_3

    .line 1949
    :cond_e
    instance-of v2, v1, Lcom/narvii/model/Comment;

    if-eqz v2, :cond_f

    .line 1950
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjStr:Ljava/lang/String;

    const-class v2, Lcom/narvii/model/Comment;

    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/NVObject;

    iput-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    .line 1951
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachTitle:Ljava/lang/String;

    .line 1952
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    move-object v1, v0

    check-cast v1, Lcom/narvii/model/Comment;

    iget-object v1, v1, Lcom/narvii/model/Comment;->content:Ljava/lang/String;

    iput-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachContent:Ljava/lang/String;

    .line 1953
    check-cast v0, Lcom/narvii/model/Comment;

    iget-object v0, v0, Lcom/narvii/model/Comment;->mediaList:Ljava/util/List;

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachMediaList:Ljava/util/List;

    .line 1954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    check-cast p1, Lcom/narvii/model/Comment;

    iget p1, p1, Lcom/narvii/model/Comment;->parentType:I

    invoke-static {p1}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    check-cast p1, Lcom/narvii/model/Comment;

    iget-object p1, p1, Lcom/narvii/model/Comment;->parentId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1955
    invoke-static {p2}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachLink:Ljava/lang/String;

    goto/16 :goto_3

    .line 1956
    :cond_f
    instance-of v2, v1, Lcom/narvii/model/ChatThread;

    if-eqz v2, :cond_10

    .line 1957
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjStr:Ljava/lang/String;

    const-class v2, Lcom/narvii/model/ChatThread;

    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/NVObject;

    iput-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    .line 1958
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachTitle:Ljava/lang/String;

    .line 1959
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    check-cast v1, Lcom/narvii/model/ChatThread;

    iget-object v1, v1, Lcom/narvii/model/ChatThread;->content:Ljava/lang/String;

    iput-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachContent:Ljava/lang/String;

    .line 1960
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachMediaList:Ljava/util/List;

    .line 1961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachLink:Ljava/lang/String;

    goto :goto_3

    .line 1962
    :cond_10
    instance-of v1, v1, Lcom/narvii/model/User;

    if-eqz v1, :cond_11

    .line 1963
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjStr:Ljava/lang/String;

    const-class v2, Lcom/narvii/model/User;

    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/NVObject;

    iput-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    .line 1964
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachTitle:Ljava/lang/String;

    .line 1965
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    move-object v1, v0

    check-cast v1, Lcom/narvii/model/User;

    iget-object v1, v1, Lcom/narvii/model/User;->content:Ljava/lang/String;

    iput-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachContent:Ljava/lang/String;

    .line 1966
    check-cast v0, Lcom/narvii/model/User;

    iget-object v0, v0, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachMediaList:Ljava/util/List;

    .line 1967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachLink:Ljava/lang/String;

    :cond_11
    :goto_3
    return-void
.end method

.method private showChatInputLayout()V
    .locals 1

    .line 1456
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1457
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->showSoftKeyboard()V

    return-void
.end method

.method private showSoftKeyboard()V
    .locals 1

    .line 1514
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    return-void
.end method

.method private stopMentioning()V
    .locals 3

    const/4 v0, 0x0

    .line 711
    iput-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentioning:Z

    .line 712
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionTextBuilder:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    .line 713
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 715
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionUserListFragment:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private stopReplaing()V
    .locals 2

    const/4 v0, 0x0

    .line 719
    iput-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->replying:Z

    const/4 v0, 0x0

    .line 720
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->replyMessage:Lcom/narvii/model/ChatMessage;

    .line 721
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatReplyMainView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateReplyMainView(Ljava/lang/Boolean;)V
    .locals 3

    .line 695
    iget-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->replying:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatReplyMainView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 696
    new-instance v0, Lcom/narvii/chat/input/-$$Lambda$ChatInputFragment$Ez0pDWfoZakIIwY8d1CRHOmuxTw;

    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/input/-$$Lambda$ChatInputFragment$Ez0pDWfoZakIIwY8d1CRHOmuxTw;-><init>(Lcom/narvii/chat/input/ChatInputFragment;Ljava/lang/Boolean;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private updateSRViews()V
    .locals 7

    .line 862
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 866
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 867
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->isAllPanelHidden()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/narvii/chat/input/ChatInputFragment;->isKeyboardVisible:Z

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 868
    :goto_0
    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputFragment;->srLandscapeButtons:Landroid/view/View;

    invoke-static {v4, v3}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 869
    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputMain:Landroid/view/View;

    xor-int/lit8 v5, v3, 0x1

    invoke-static {v4, v5}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 870
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f090bfd

    xor-int/lit8 v6, v0, 0x1

    invoke-static {v4, v5, v6}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    if-eqz v3, :cond_2

    .line 874
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, -0x2

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 876
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, -0x1

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 879
    :goto_1
    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v3}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 880
    iget v4, v3, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_3

    goto :goto_5

    :cond_3
    if-nez v0, :cond_4

    return-void

    :cond_4
    const-string v0, "screenRoom"

    .line 888
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 890
    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputFragment;->srLandscapeButtons:Landroid/view/View;

    const v5, 0x7f090a82

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 891
    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputFragment;->srLandscapeButtons:Landroid/view/View;

    const v5, 0x7f090a86

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 892
    iget v3, v3, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    if-ne v3, v2, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    .line 893
    :goto_2
    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputFragment;->srLandscapeButtons:Landroid/view/View;

    invoke-static {v4, v5, v3}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 895
    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    if-nez v3, :cond_6

    const/4 v3, 0x0

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object v3

    :goto_3
    if-eqz v3, :cond_7

    .line 899
    iget-object v4, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    iget-boolean v4, v4, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    .line 900
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getLocalMicMuted()Z

    move-result v0

    goto :goto_4

    :cond_7
    if-eqz v3, :cond_8

    .line 902
    iget-object v0, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    .line 904
    :goto_4
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->srLandscapeButtons:Landroid/view/View;

    const v2, 0x7f09073e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/video/view/CheckableImageView;

    if-eqz v1, :cond_9

    .line 906
    invoke-virtual {v1, v0}, Lcom/narvii/chat/video/view/CheckableImageView;->setChecked(Z)V

    :cond_9
    :goto_5
    return-void
.end method

.method private updateSendBtn()V
    .locals 1

    .line 1156
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->updateSendBtn:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public addPanelHideListener(Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;)V
    .locals 1

    .line 1487
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->panelHideEventDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method public checkDismissMaskShown(Z)V
    .locals 1

    .line 1461
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputMask:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1463
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1467
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->isAllPanelHidden()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputOptionMenu:Lcom/narvii/chat/input/ChatInputOptionMenu;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/chat/input/ChatInputOptionMenu;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1468
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputMask:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public checkThreadAvailable(Landroid/view/View;)Z
    .locals 5

    .line 1374
    invoke-direct {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment;->checkCommunityAvailability(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1375
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1378
    :cond_0
    iget v2, v0, Lcom/narvii/model/ChatThread;->status:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_7

    iget-object v2, v0, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    if-eqz v2, :cond_1

    iget v2, v2, Lcom/narvii/model/User;->status:I

    if-eq v2, v3, :cond_7

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    goto/16 :goto_1

    .line 1380
    :cond_1
    iget v2, v0, Lcom/narvii/model/ChatThread;->condition:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget v2, v0, Lcom/narvii/model/ChatThread;->type:I

    if-ne v2, v3, :cond_2

    .line 1381
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f01d4

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_2

    .line 1382
    :cond_2
    iget v2, v0, Lcom/narvii/model/ChatThread;->membershipStatus:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    .line 1383
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f0233

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    .line 1391
    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    if-ne v0, v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0, v4, p1}, Lcom/narvii/chat/input/ChatInputFragment;->showJoinChatDialog(ZLandroid/view/View;)V

    goto :goto_2

    .line 1392
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment;->isInputButton(I)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->isViewOnly()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p1, v0}, Lcom/narvii/chat/util/ChatHelper;->isHostOrCoHost(Lcom/narvii/model/ChatThread;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1393
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f021b

    .line 1394
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v0, 0x7f0f073e

    const/4 v2, 0x0

    .line 1395
    invoke-virtual {p1, v0, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 1396
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_2

    :cond_6
    return v4

    .line 1379
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f01e1

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :cond_8
    :goto_2
    return v1
.end method

.method protected geChatListFragment()Lcom/narvii/chat/ChatListFragment;
    .locals 2

    .line 975
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "chatList"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/ChatListFragment;

    return-object v0
.end method

.method public getSignallingChannel()Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 1

    .line 961
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->signallingChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    return-object v0
.end method

.method public getThread()Lcom/narvii/model/ChatThread;
    .locals 1

    .line 956
    sget-object v0, Lcom/narvii/chat/util/ChatHelper;->Companion:Lcom/narvii/chat/util/ChatHelper$Companion;

    invoke-virtual {v0, p0}, Lcom/narvii/chat/util/ChatHelper$Companion;->getThreadFromThreadInfoHost(Lcom/narvii/app/NVFragment;)Lcom/narvii/model/ChatThread;

    move-result-object v0

    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 1

    const-string v0, "id"

    .line 951
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValidPanelHeight()I
    .locals 3

    .line 1601
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/AndroidBug5497Workaround;->getKeyboardHeight(Landroid/app/Activity;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1603
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07031d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hideAllPanels()V
    .locals 5

    .line 1558
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1561
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09081a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1562
    :goto_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1563
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    .line 1564
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1565
    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputFragment;->panelHideMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;

    if-eqz v3, :cond_1

    .line 1567
    invoke-interface {v3}, Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;->onPanelHide()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1571
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->panelHideEventDispatcher:Lcom/narvii/util/EventDispatcher;

    new-instance v2, Lcom/narvii/chat/input/ChatInputFragment$24;

    invoke-direct {v2, p0}, Lcom/narvii/chat/input/ChatInputFragment$24;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    invoke-virtual {v0, v2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 1578
    invoke-virtual {p0, v1}, Lcom/narvii/chat/input/ChatInputFragment;->checkDismissMaskShown(Z)V

    .line 1580
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->updateBackground()V

    return-void
.end method

.method public hideKeyboardAndPanel()V
    .locals 1

    .line 1495
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->hideSoftKeyboard()V

    .line 1496
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->hideAllPanels()V

    .line 1497
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputOptionMenu:Lcom/narvii/chat/input/ChatInputOptionMenu;

    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputOptionMenu;->hide()V

    const/4 v0, 0x0

    .line 1498
    invoke-virtual {p0, v0}, Lcom/narvii/chat/input/ChatInputFragment;->checkDismissMaskShown(Z)V

    .line 1499
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/chat/input/ChatInputFragment;->updateReplyMainView(Ljava/lang/Boolean;)V

    return-void
.end method

.method public hidePanelWithKeyBoardSwitch(Landroid/view/View;)V
    .locals 3

    .line 1509
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->switchingKeyboard:Lcom/narvii/util/statistics/TmpValue;

    new-instance v1, Lcom/narvii/chat/input/ChatInputFragment$SwitchKeyboard;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lcom/narvii/chat/input/ChatInputFragment$SwitchKeyboard;-><init>(ZLandroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 1510
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->showSoftKeyboard()V

    return-void
.end method

.method public isAllPanelHidden()Z
    .locals 5

    .line 1584
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1588
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f09081a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1589
    :goto_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1590
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1591
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$onMentionCharacterInput$1$ChatInputFragment(Ljava/lang/String;I)V
    .locals 3

    .line 1629
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionTextBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1630
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionTextBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1632
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionTextBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    .line 1633
    iput-boolean p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentioning:Z

    .line 1634
    iput p2, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionTextStartIndex:I

    .line 1635
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionUserListFragment:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-virtual {p2, v0}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1636
    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionUserListFragment:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->fetchMentionRelatedUserList(Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic lambda$onReplybyLongClick$2$ChatInputFragment()V
    .locals 0

    .line 1679
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->onChatInputClicked()V

    .line 1680
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->scrollChatListToBottom()V

    return-void
.end method

.method public synthetic lambda$updateReplyMainView$0$ChatInputFragment(Ljava/lang/Boolean;)V
    .locals 1

    .line 697
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 698
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatReplyMainView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 699
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatReplyMainView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 702
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatReplyMainView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    .line 703
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatReplyMainView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 0

    .line 730
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActiveChanged(Z)V

    if-eqz p1, :cond_0

    .line 732
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->updateViews()V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 1474
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->isAllPanelHidden()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1475
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->hideAllPanels()V

    return v1

    .line 1478
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatWaitingListService:Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1479
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatWaitingListService:Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    invoke-virtual {v0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->dismiss()V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onChannelForceQuit(Lcom/narvii/chat/signalling/SignallingChannel;I)V
    .locals 0

    .line 773
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->signallingChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 776
    iget-boolean p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->isKeyboardVisible:Z

    invoke-virtual {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment;->updateRightView(Z)V

    return-void
.end method

.method public onChannelStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0

    .line 761
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->signallingChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 762
    iget-boolean p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->isKeyboardVisible:Z

    invoke-virtual {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment;->updateRightView(Z)V

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

    .line 767
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->signallingChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 768
    iget-boolean p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->isKeyboardVisible:Z

    invoke-virtual {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment;->updateRightView(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1278
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0901e5

    if-ne v0, v1, :cond_0

    .line 1282
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->hideKeyboardAndPanel()V

    return-void

    .line 1285
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment;->checkThreadAvailable(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1289
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1294
    :sswitch_0
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->menuEventDealer:Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;

    invoke-virtual {p1, v0}, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->toggleMute(Z)V

    goto/16 :goto_1

    .line 1291
    :sswitch_1
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->onChatInputClicked()V

    goto/16 :goto_1

    .line 1321
    :sswitch_2
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p1

    iget p1, p1, Lcom/narvii/model/ChatThread;->type:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p1}, Lcom/narvii/chat/core/ChatService;->isSendTooFast()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1322
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0f023f

    invoke-static {p1, v1, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 1324
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->blockUntil:J

    .line 1325
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->updateSendBtn()V

    goto/16 :goto_1

    .line 1327
    :cond_2
    iget-boolean p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentioning:Z

    if-eqz p1, :cond_3

    .line 1328
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->stopMentioning()V

    .line 1331
    :cond_3
    iget-boolean p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->replying:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1332
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->replyMessage:Lcom/narvii/model/ChatMessage;

    .line 1333
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->stopReplaing()V

    goto :goto_0

    :cond_4
    move-object p1, v1

    .line 1335
    :goto_0
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputFragment;->messageSenderHelper:Lcom/narvii/chat/input/ChatInputMessageSenderHelper;

    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getMessageAttachmentNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v4

    iget-object v5, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    invoke-virtual {v5}, Lcom/narvii/chat/input/MentionedEditText;->getMentionedRangeList()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4, v5, p1}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->sendMessage(Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/util/ArrayList;Lcom/narvii/model/ChatMessage;)Z

    const-string p1, "text"

    .line 1336
    invoke-direct {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment;->logSendChatMessage(Ljava/lang/String;)V

    .line 1337
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->tvTypingUserHelper:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    invoke-virtual {p1}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->reportTypingEnd()V

    .line 1338
    iput-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentioning:Z

    .line 1339
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionTextBuilder:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_5

    .line 1340
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1342
    :cond_5
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    invoke-virtual {p1}, Lcom/narvii/chat/input/MentionedEditText;->clear()V

    .line 1343
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1317
    :sswitch_3
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->scrollChatListToBottom()V

    goto :goto_1

    .line 1357
    :sswitch_4
    new-instance p1, Lcom/narvii/chat/input/ChatInputFragment$21;

    invoke-direct {p1, p0}, Lcom/narvii/chat/input/ChatInputFragment$21;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1297
    :sswitch_5
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 p1, 0x1

    const-string v1, "add"

    .line 1298
    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1300
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    new-instance v1, Lcom/narvii/chat/input/ChatInputFragment$20;

    invoke-direct {v1, p0}, Lcom/narvii/chat/input/ChatInputFragment$20;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    invoke-virtual {p1, v1}, Lcom/narvii/media/MediaPickerFragment;->setOnCustomOptionSelectedListener(Lcom/narvii/media/MediaPickerFragment$OnCustomOptionSelectedListener;)V

    .line 1309
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1310
    new-instance p1, Lcom/narvii/media/MediaPickerFragment$Option;

    const/16 v1, 0x14

    const v3, 0x7f0f01dc

    invoke-virtual {p0, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v1, v3, v0, v0}, Lcom/narvii/media/MediaPickerFragment$Option;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1312
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p1}, Lcom/narvii/chat/core/ChatService;->getPhotoDir()Ljava/io/File;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;IILjava/util/List;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0901ca -> :sswitch_5
        0x7f0901db -> :sswitch_4
        0x7f0901e1 -> :sswitch_3
        0x7f090204 -> :sswitch_2
        0x7f090a82 -> :sswitch_1
        0x7f090a86 -> :sswitch_0
        0x7f090c9c -> :sswitch_4
    .end sparse-switch
.end method

.method public onCoHostResult(Z)V
    .locals 2

    .line 819
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    if-eqz v0, :cond_0

    .line 820
    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->showView()V

    .line 822
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "account"

    .line 824
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 825
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 827
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getCoHostUidList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 829
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getCoHostUidList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 831
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/chat/ChatFragment;

    if-eqz p1, :cond_2

    .line 832
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/ChatFragment;

    invoke-virtual {p1, v0}, Lcom/narvii/chat/ChatFragment;->setThread(Lcom/narvii/model/ChatThread;)V

    :cond_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 912
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 914
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->updateSRViews()V

    .line 916
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->isLandscape(Landroid/content/Context;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionEnabled:Z

    .line 918
    iget-boolean p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentioning:Z

    if-eqz p1, :cond_0

    .line 919
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->stopMentioning()V

    .line 922
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    if-eqz p1, :cond_1

    .line 923
    iget-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionEnabled:Z

    invoke-virtual {p1, v0}, Lcom/narvii/chat/input/MentionedEditText;->setMentionEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 220
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "config"

    .line 222
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 223
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    iput v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->cid:I

    const-string v0, "chat"

    .line 225
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/core/ChatService;

    iput-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 226
    new-instance v1, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    const-string v1, "account"

    .line 227
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    iput-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->accountService:Lcom/narvii/account/AccountService;

    const-string v1, "callScreen"

    .line 228
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/call/CallScreenService;

    iput-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    const-string v1, "rtc"

    .line 229
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/rtc/RtcService;

    iput-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    const-string v1, "screenRoom"

    .line 230
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/screenroom/ScreenRoomService;

    iput-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->srs:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 231
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->srs:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-virtual {v1, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->addSRPermissionListener(Lcom/narvii/chat/screenroom/SRPermissionActionChangeListener;)V

    .line 232
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/narvii/chat/rtc/RtcService;->addMyChannelUserStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/MyChannelUserStatusChangeListener;)V

    .line 233
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/narvii/chat/rtc/RtcService;->addLiveChannelChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LiveChannelChangeListener;)V

    .line 234
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/narvii/chat/rtc/RtcService;->addChannelUserWrapperUpdateListener(Ljava/lang/String;Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;)V

    .line 235
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/narvii/chat/rtc/RtcService;->addWaitingListListener(Ljava/lang/String;Lcom/narvii/chat/waitinglist/WaitingListListener;)V

    .line 236
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->signallingChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    const-string v1, "pushInvite"

    .line 238
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/services/PushInviteHelper;

    iput-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->pushInviteHelper:Lcom/narvii/services/PushInviteHelper;

    .line 239
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->pushInviteHelper:Lcom/narvii/services/PushInviteHelper;

    invoke-virtual {v1, p0}, Lcom/narvii/services/PushInviteHelper;->addOriganerInviteListener(Lcom/narvii/chat/video/overlay/VVchatPermissionInviteListener;)V

    .line 241
    new-instance v1, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;

    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->messageSenderHelper:Lcom/narvii/chat/input/ChatInputMessageSenderHelper;

    .line 242
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->messageSenderHelper:Lcom/narvii/chat/input/ChatInputMessageSenderHelper;

    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->setThread(Lcom/narvii/model/ChatThread;)V

    .line 243
    new-instance v1, Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->tvTypingUserHelper:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    .line 244
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->tvTypingUserHelper:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->setThread(Lcom/narvii/model/ChatThread;)V

    .line 246
    new-instance v1, Lcom/narvii/chat/global/GlobalChatHelper;

    invoke-direct {v1, p0}, Lcom/narvii/chat/global/GlobalChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    .line 248
    new-instance v1, Lcom/narvii/account/push/PushNotificationHelper;

    invoke-direct {v1, p0}, Lcom/narvii/account/push/PushNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    .line 250
    new-instance v1, Lcom/narvii/chat/video/utils/VVChatHelper;

    invoke-direct {v1, p0}, Lcom/narvii/chat/video/utils/VVChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->vvchatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 252
    invoke-static {p0, p0, p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getInstance(Lcom/narvii/app/NVFragment;Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatJoinEventListener;)Lcom/narvii/chat/input/ChatThreadCheckFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatThreadCheckFragment:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    .line 254
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 258
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "mentionUserList"

    const-string v3, "mediaPicker"

    const-string v4, "attachObjType"

    const-string v5, "attachObj"

    const-string v6, "attachMessage"

    if-nez p1, :cond_1

    .line 260
    invoke-virtual {p0, v6}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachMessage:Ljava/lang/String;

    .line 261
    invoke-virtual {p0, v5}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjStr:Ljava/lang/String;

    .line 262
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjectType:I

    .line 263
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjStr:Ljava/lang/String;

    iget v4, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjectType:I

    invoke-direct {p0, p1, v4}, Lcom/narvii/chat/input/ChatInputFragment;->parseObject(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 264
    iput-boolean p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->showedAttachment:Z

    .line 265
    new-instance p1, Lcom/narvii/media/MediaPickerFragment;

    invoke-direct {p1}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    .line 266
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "folder"

    .line 267
    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v4, "showHQBar"

    .line 268
    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "membershipForVideo"

    .line 269
    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 270
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 271
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {v1, p1, v3}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 272
    new-instance p1, Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-direct {p1}, Lcom/narvii/chat/input/ChatMentionUserListFragment;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionUserListFragment:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 273
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 274
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    move-result-object v0

    const-string v3, "threadId"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionUserListFragment:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const p1, 0x7f090703

    .line 276
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionUserListFragment:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-virtual {v1, p1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 278
    :cond_1
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachMessage:Ljava/lang/String;

    .line 279
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjStr:Ljava/lang/String;

    .line 280
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjectType:I

    .line 281
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjStr:Ljava/lang/String;

    iget v4, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjectType:I

    invoke-direct {p0, v0, v4}, Lcom/narvii/chat/input/ChatInputFragment;->parseObject(Ljava/lang/String;I)V

    const-string v0, "showedAttachment"

    .line 282
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->showedAttachment:Z

    .line 283
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/media/MediaPickerFragment;

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    .line 284
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/input/ChatMentionUserListFragment;

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionUserListFragment:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 286
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 287
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionUserListFragment:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-virtual {p1, p0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->setMentionRelatedUsersCallback(Lcom/narvii/chat/input/ChatMentionUserListFragment$MentionRelatedUsersCallback;)V

    .line 288
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionUserListFragment:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 290
    new-instance p1, Lcom/narvii/chat/input/ChatInputFragment$1;

    invoke-direct {p1, p0}, Lcom/narvii/chat/input/ChatInputFragment$1;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->requireAccountReceiver:Landroid/content/BroadcastReceiver;

    .line 296
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->requireAccountReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const-string p1, "chatWaitingList"

    .line 298
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatWaitingListService:Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b00ba

    const/4 v0, 0x0

    .line 318
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 930
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->tvTypingUser:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->tvTypingUserHelper:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->dislinkLivelayer()V

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->pushInviteHelper:Lcom/narvii/services/PushInviteHelper;

    invoke-virtual {v0, p0}, Lcom/narvii/services/PushInviteHelper;->removeOriganerInviteListener(Lcom/narvii/chat/video/overlay/VVchatPermissionInviteListener;)V

    .line 935
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeMyChannelUserStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/MyChannelUserStatusChangeListener;)V

    .line 936
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeLiveChannelChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LiveChannelChangeListener;)V

    .line 937
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeChannelUserWrapperUpdateListener(Ljava/lang/String;Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;)V

    .line 938
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeWaitingListListener(Ljava/lang/String;Lcom/narvii/chat/waitinglist/WaitingListListener;)V

    .line 939
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->srs:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-virtual {v0, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->removeSRPermissionListener(Lcom/narvii/chat/screenroom/SRPermissionActionChangeListener;)V

    .line 940
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->requireAccountReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 941
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 943
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    if-eqz v0, :cond_2

    .line 944
    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 946
    :cond_2
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    return-void
.end method

.method public onInvited()V
    .locals 3

    .line 790
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 792
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/chat/ChatFragment;

    if-eqz v0, :cond_0

    .line 793
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/ChatFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/ChatFragment;->sendGetThreadReqeust()V

    .line 796
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->isKeyboardVisible:Z

    invoke-virtual {p0, v0}, Lcom/narvii/chat/input/ChatInputFragment;->updateRightView(Z)V

    .line 798
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b01a6

    .line 799
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    const v1, 0x7f090570

    .line 800
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/narvii/chat/input/ChatInputFragment$14;

    invoke-direct {v2, p0, v0}, Lcom/narvii/chat/input/ChatInputFragment$14;-><init>(Lcom/narvii/chat/input/ChatInputFragment;Lcom/narvii/util/dialog/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09060a

    .line 806
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/narvii/chat/input/ChatInputFragment$15;

    invoke-direct {v2, p0, v0}, Lcom/narvii/chat/input/ChatInputFragment$15;-><init>(Lcom/narvii/chat/input/ChatInputFragment;Lcom/narvii/util/dialog/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 813
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    :cond_1
    return-void
.end method

.method public onJoinEnd()V
    .locals 2

    .line 1705
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->setIsJoining(Z)V

    .line 1706
    iget-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->isKeyboardVisible:Z

    invoke-virtual {p0, v0}, Lcom/narvii/chat/input/ChatInputFragment;->updateRightView(Z)V

    return-void
.end method

.method public onJoinStart()V
    .locals 2

    .line 1698
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->setIsJoining(Z)V

    .line 1699
    iget-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->isKeyboardVisible:Z

    invoke-virtual {p0, v0}, Lcom/narvii/chat/input/ChatInputFragment;->updateRightView(Z)V

    return-void
.end method

.method public onMentionCharacterInput(Ljava/lang/String;I)V
    .locals 1

    .line 1624
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1625
    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    if-nez v0, :cond_0

    return-void

    .line 1628
    :cond_0
    new-instance v0, Lcom/narvii/chat/input/-$$Lambda$ChatInputFragment$kVdNA5kRZYMDzJPomNtpxXFlj8E;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/chat/input/-$$Lambda$ChatInputFragment$kVdNA5kRZYMDzJPomNtpxXFlj8E;-><init>(Lcom/narvii/chat/input/ChatInputFragment;Ljava/lang/String;I)V

    const-wide/16 p1, 0xa

    invoke-static {v0, p1, p2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onMentionedUserListUpdated(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 1651
    iget-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentioning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 1654
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1657
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionUserListFragment:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_1

    .line 1655
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionUserListFragment:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :goto_1
    return-void
.end method

.method public onMentionedUserSelected(Lcom/narvii/model/User;)V
    .locals 6

    .line 1642
    invoke-static {p0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "MentionUserList"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 1643
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionUserListFragment:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 v0, 0x0

    .line 1644
    iput-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentioning:Z

    .line 1645
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object p1

    iget v3, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionTextStartIndex:I

    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionTextBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionTextBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/narvii/chat/input/MentionedEditText;->mentionUser(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1646
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionTextBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-void
.end method

.method public onMyChannelUserStatusChanged(ILcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/ChannelUser;)V
    .locals 0

    .line 781
    iput-object p2, p0, Lcom/narvii/chat/input/ChatInputFragment;->signallingChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    nop

    .line 785
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->isKeyboardVisible:Z

    invoke-virtual {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment;->updateRightView(Z)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 839
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    .line 840
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->tvTypingUserHelper:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->reportTypingEnd()V

    .line 841
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    if-eqz v0, :cond_0

    .line 842
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/core/ChatService;->setDraft(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->oldDraft:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/StringUtils;->isStringNotEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 845
    new-instance v0, Lcom/narvii/chat/core/ThreadUpdateObject;

    invoke-direct {v0}, Lcom/narvii/chat/core/ThreadUpdateObject;-><init>()V

    .line 846
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/chat/core/ThreadUpdateObject;->chatThread:Lcom/narvii/model/ChatThread;

    const/4 v1, 0x2

    .line 847
    iput v1, v0, Lcom/narvii/chat/core/ThreadUpdateObject;->action:I

    .line 848
    new-instance v1, Lcom/narvii/notification/Notification;

    const-string/jumbo v2, "update"

    invoke-direct {v1, v2, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 849
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    :cond_1
    return-void
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v1, "isUHQ"

    .line 1221
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 1223
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1224
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Media;

    .line 1225
    invoke-virtual {v2}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/narvii/model/Media;->type:I

    const/16 v4, 0x67

    if-eq v3, v4, :cond_1

    .line 1226
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->messageSenderHelper:Lcom/narvii/chat/input/ChatInputMessageSenderHelper;

    invoke-virtual {v0, v2}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->sendVideoMessage(Lcom/narvii/model/Media;)Z

    const-string/jumbo v0, "video"

    .line 1227
    invoke-direct {p0, v0}, Lcom/narvii/chat/input/ChatInputFragment;->logSendChatMessage(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_1

    .line 1230
    :cond_1
    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputFragment;->messageSenderHelper:Lcom/narvii/chat/input/ChatInputMessageSenderHelper;

    invoke-virtual {v3, v2, v1}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->sendImageMessage(Lcom/narvii/model/Media;Z)Z

    const-string v2, "image"

    .line 1231
    invoke-direct {p0, v2}, Lcom/narvii/chat/input/ChatInputFragment;->logSendChatMessage(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    if-nez p2, :cond_3

    move-object p2, p1

    goto :goto_2

    :cond_3
    const-string v1, "pickSource"

    .line 1235
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_2
    return-void
.end method

.method public onReplybyLongClick(Lcom/narvii/model/ChatMessage;)V
    .locals 3

    const/4 v0, 0x1

    .line 1673
    iput-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->replying:Z

    .line 1674
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->replyMessage:Lcom/narvii/model/ChatMessage;

    .line 1675
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->replyMessage:Lcom/narvii/model/ChatMessage;

    if-eqz p1, :cond_0

    .line 1676
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatReplyLayout:Lcom/narvii/chat/ChatReplyLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lcom/narvii/chat/ChatReplyLayout;->setMessage(Lcom/narvii/model/ChatMessage;IZ)V

    .line 1678
    :cond_0
    new-instance p1, Lcom/narvii/chat/input/-$$Lambda$ChatInputFragment$ghKAJHg_IRDxtRBqqJhC2b0L5TI;

    invoke-direct {p1, p0}, Lcom/narvii/chat/input/-$$Lambda$ChatInputFragment$ghKAJHg_IRDxtRBqqJhC2b0L5TI;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    const-wide/16 v0, 0xc8

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 304
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 305
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachMessage:Ljava/lang/String;

    const-string v1, "attachMessage"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjStr:Ljava/lang/String;

    const-string v1, "attachObj"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjectType:I

    const-string v1, "attachObjType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 308
    iget-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->showedAttachment:Z

    const-string v1, "showedAttachment"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStickerSelected(Lcom/narvii/model/Sticker;Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 1

    .line 1253
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->messageSenderHelper:Lcom/narvii/chat/input/ChatInputMessageSenderHelper;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->sendSticker(Lcom/narvii/model/Sticker;Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    const-string p1, "sticker"

    .line 1254
    invoke-direct {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment;->logSendChatMessage(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    .line 1257
    iget p1, p2, Lcom/narvii/monetization/sticker/model/StickerCollection;->collectionType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "Sticker Sets"

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string p1, "Custom Sticker"

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const-string p1, "Shared Sticker Pack Sticker"

    goto :goto_0

    .line 1263
    :cond_2
    iget-object p1, p2, Lcom/narvii/monetization/sticker/model/StickerCollection;->collectionId:Ljava/lang/String;

    const-string p2, "mood"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Emoji Sticker"

    goto :goto_0

    :cond_3
    const-string p1, "Sticker"

    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 855
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onStop()V

    .line 856
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->oldDraft:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/StringUtils;->isStringNotEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {v0}, Lcom/narvii/chat/core/ChatService;->storeDraft()V

    :cond_0
    return-void
.end method

.method public onThreadActionChanged(I)V
    .locals 0

    .line 1611
    iget-boolean p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->isKeyboardVisible:Z

    invoke-virtual {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment;->updateRightView(Z)V

    return-void
.end method

.method public onThreadChanged(Lcom/narvii/model/ChatThread;)V
    .locals 1

    .line 738
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->messageSenderHelper:Lcom/narvii/chat/input/ChatInputMessageSenderHelper;

    if-eqz p1, :cond_0

    .line 739
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->setThread(Lcom/narvii/model/ChatThread;)V

    .line 741
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->tvTypingUserHelper:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    if-eqz p1, :cond_1

    .line 742
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->setThread(Lcom/narvii/model/ChatThread;)V

    .line 744
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    if-eqz p1, :cond_2

    .line 745
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->setThread(Lcom/narvii/model/ChatThread;)V

    .line 747
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputOptionMenu:Lcom/narvii/chat/input/ChatInputOptionMenu;

    if-eqz p1, :cond_3

    .line 748
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/chat/input/ChatInputOptionMenu;->setThread(Lcom/narvii/model/ChatThread;)V

    .line 750
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 751
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->updateViews()V

    .line 754
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/chat/util/ChatHelper;->isChatThreadDisabledOrDelete(Lcom/narvii/model/ChatThread;)Z

    move-result p1

    if-eqz p1, :cond_5

    nop

    :cond_5
    return-void
.end method

.method public onUserMentionedByLongClick(Lcom/narvii/model/User;)V
    .locals 3

    .line 1662
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionUserListFragment:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 v0, 0x0

    .line 1663
    iput-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentioning:Z

    .line 1664
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionTextBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1665
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionTextBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1667
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    invoke-virtual {v0}, Lcom/narvii/chat/input/MentionedEditText;->markLongClickMention()V

    .line 1668
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    const-string v2, "@"

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1669
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/narvii/chat/input/MentionedEditText;->mentionUser(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUserWrapperStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 0

    .line 1616
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 1617
    iget p2, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    if-ne p1, p2, :cond_0

    .line 1618
    iget-boolean p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->isKeyboardVisible:Z

    invoke-virtual {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment;->updateRightView(Z)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .line 323
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string v0, "config"

    .line 325
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 326
    sget v1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v2, 0x65

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionEnabled:Z

    const/4 v0, 0x0

    .line 332
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901e7

    .line 333
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputMain:Landroid/view/View;

    const v0, 0x7f0901e4

    .line 334
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputBlur:Landroid/view/View;

    const v0, 0x7f090a84

    .line 335
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->srLandscapeButtons:Landroid/view/View;

    .line 337
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0901e9

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/input/ChatInputOptionMenu;

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputOptionMenu:Lcom/narvii/chat/input/ChatInputOptionMenu;

    .line 338
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputOptionMenu:Lcom/narvii/chat/input/ChatInputOptionMenu;

    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputFragment;->menuEventDealer:Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;

    invoke-virtual {v0, v2}, Lcom/narvii/chat/input/ChatInputOptionMenu;->setOnOptionMenuClickListener(Lcom/narvii/chat/input/ChatInputOptionMenu$OnOptionMenuClickListener;)V

    .line 339
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputOptionMenu:Lcom/narvii/chat/input/ChatInputOptionMenu;

    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/chat/input/ChatInputOptionMenu;->setThreadId(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputOptionMenu:Lcom/narvii/chat/input/ChatInputOptionMenu;

    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/chat/input/ChatInputOptionMenu;->setThread(Lcom/narvii/model/ChatThread;)V

    .line 342
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0901e5

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputMask:Landroid/view/View;

    .line 343
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputMask:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901ca

    .line 345
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TintButton;

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->addButton:Lcom/narvii/widget/TintButton;

    .line 346
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->addButton:Lcom/narvii/widget/TintButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09005e

    .line 348
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->adBanner:Landroid/view/View;

    const v0, 0x7f09095b

    .line 350
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatReplyMainView:Landroid/view/View;

    const v0, 0x7f09095a

    .line 351
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/ChatReplyLayout;

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatReplyLayout:Lcom/narvii/chat/ChatReplyLayout;

    .line 352
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatReplyLayout:Lcom/narvii/chat/ChatReplyLayout;

    new-instance v2, Lcom/narvii/chat/input/ChatInputFragment$2;

    invoke-direct {v2, p0}, Lcom/narvii/chat/input/ChatInputFragment$2;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    invoke-virtual {v0, v2}, Lcom/narvii/chat/ChatReplyLayout;->setOnChatReplyClickListener(Lcom/narvii/chat/ChatReplyLayout$OnClickListener;)V

    const v0, 0x7f0901e1

    .line 365
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/input/MentionedEditText;

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 366
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    invoke-virtual {v0, p0}, Lcom/narvii/chat/input/MentionedEditText;->setOnMentionInputListener(Lcom/narvii/chat/input/MentionedEditText$OnMentionInputListener;)V

    .line 367
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    iget-boolean v2, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionEnabled:Z

    invoke-virtual {v0, v2}, Lcom/narvii/chat/input/MentionedEditText;->setMentionEnabled(Z)V

    .line 368
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    new-instance v2, Lcom/narvii/chat/input/ChatInputFragment$3;

    invoke-direct {v2, p0}, Lcom/narvii/chat/input/ChatInputFragment$3;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 419
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    new-instance v2, Lcom/narvii/chat/input/ChatInputFragment$4;

    invoke-direct {v2, p0}, Lcom/narvii/chat/input/ChatInputFragment$4;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 427
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    new-array v2, v1, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    new-instance v4, Lcom/narvii/chat/input/ChatInputFragment$5;

    invoke-direct {v4, p0}, Lcom/narvii/chat/input/ChatInputFragment$5;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 456
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    new-instance v2, Lcom/narvii/chat/input/ChatInputFragment$6;

    invoke-direct {v2, p0}, Lcom/narvii/chat/input/ChatInputFragment$6;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    invoke-static {v0, v2}, Lcom/narvii/util/SoftKeyboard;->observeKeyboard(Landroid/view/View;Lcom/narvii/util/Callback;)Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    const v0, 0x7f0901db

    .line 487
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputButton:Landroid/widget/TextView;

    .line 488
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090c9c

    .line 489
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->viewOnlyInputButton:Landroid/widget/TextView;

    .line 490
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->viewOnlyInputButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090ab7

    .line 493
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    const v3, 0x7f090aac

    .line 495
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;

    iput-object v3, p0, Lcom/narvii/chat/input/ChatInputFragment;->stickerButton:Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;

    .line 497
    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputFragment;->stickerButton:Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;

    const-string v4, "stickerCollectionId"

    if-eqz v3, :cond_1

    if-nez p2, :cond_1

    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 498
    new-instance v3, Lcom/narvii/chat/input/ChatInputFragment$7;

    invoke-direct {v3, p0}, Lcom/narvii/chat/input/ChatInputFragment$7;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    const-wide/16 v5, 0xfa

    invoke-static {v3, v5, v6}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 512
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v5, "stickPicker"

    invoke-virtual {v3, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    iput-object v3, p0, Lcom/narvii/chat/input/ChatInputFragment;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 513
    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputFragment;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    if-nez v3, :cond_2

    .line 514
    new-instance v3, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-direct {v3}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;-><init>()V

    iput-object v3, p0, Lcom/narvii/chat/input/ChatInputFragment;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 515
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v6, "tabBottom"

    .line 516
    invoke-virtual {v3, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "source"

    const-string v6, "Sticker Keyboard"

    .line 517
    invoke-virtual {v3, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "collectionId"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-virtual {v1, v3}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 520
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputFragment;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-virtual {v1, v0, v3, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 522
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-virtual {v0, p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->setStickerSelectListener(Lcom/narvii/monetization/sticker/picker/StickerSelectListener;)V

    .line 525
    new-instance v0, Lcom/narvii/chat/input/ChatInputFragment$8;

    invoke-direct {v0, p0}, Lcom/narvii/chat/input/ChatInputFragment$8;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    .line 550
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->stickerButton:Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;

    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    invoke-virtual {v1, v2, v3, p0}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->bindPanelLayout(Landroid/view/View;Landroid/widget/EditText;Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;)V

    .line 551
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->stickerButton:Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;

    invoke-virtual {v1, v0}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->setPanelHideListener(Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;)V

    .line 553
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->panelHideMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const v0, 0x7f090204

    .line 557
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TintButton;

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->sendButton:Lcom/narvii/widget/TintButton;

    .line 558
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->sendButton:Lcom/narvii/widget/TintButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090205

    .line 559
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->sendButtonContainer:Landroid/view/View;

    const v0, 0x7f090208

    .line 561
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatStickerButtonView:Landroid/view/View;

    const v0, 0x7f0901cb

    .line 562
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatAddButtonView:Landroid/view/View;

    const v0, 0x7f090201

    .line 564
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/input/ChatInputRightViewContainer;

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    .line 565
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->setThreadId(Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->setThread(Lcom/narvii/model/ChatThread;)V

    .line 567
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    const-string v1, "invite"

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->setIsInvite(Z)V

    .line 568
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->menuEventDealer:Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->setOnClickRightViewListener(Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;)V

    .line 569
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->setEmbedFragment(Z)V

    const v0, 0x7f0900d6

    .line 572
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/audio/AudioRecordLayout;

    if-eqz v0, :cond_4

    const v1, 0x7f090cb5

    .line 574
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/audio/AudioBoardLayout;

    const v2, 0x7f090cb7

    .line 575
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/input/ChatInputPanelVoiceButton;

    .line 577
    new-instance v3, Lcom/narvii/chat/input/ChatInputFragment$9;

    invoke-direct {v3, p0, v1, v2}, Lcom/narvii/chat/input/ChatInputFragment$9;-><init>(Lcom/narvii/chat/input/ChatInputFragment;Lcom/narvii/chat/audio/AudioBoardLayout;Lcom/narvii/chat/input/ChatInputPanelVoiceButton;)V

    .line 597
    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    invoke-virtual {v2, v0, v4, p0}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->bindPanelLayout(Landroid/view/View;Landroid/widget/EditText;Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;)V

    .line 598
    invoke-virtual {v2, v3}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->setPanelHideListener(Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;)V

    .line 600
    invoke-virtual {v0, p0}, Lcom/narvii/chat/audio/AudioRecordLayout;->setFragment(Landroid/support/v4/app/Fragment;)V

    .line 601
    invoke-virtual {v0, v1}, Lcom/narvii/chat/audio/AudioRecordLayout;->addOnStatusChangeListener(Lcom/narvii/chat/audio/AudioRecordLayout$OnStatusChangeListener;)V

    .line 602
    invoke-virtual {v0, v1}, Lcom/narvii/chat/audio/AudioRecordLayout;->addOnRecordTimeChangeListener(Lcom/narvii/chat/audio/AudioRecordLayout$OnRecordTimeChangeListener;)V

    .line 604
    new-instance v2, Lcom/narvii/chat/input/ChatInputFragment$10;

    invoke-direct {v2, p0}, Lcom/narvii/chat/input/ChatInputFragment$10;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    invoke-virtual {v0, v2}, Lcom/narvii/chat/audio/AudioRecordLayout;->setRecordFinishListener(Lcom/narvii/chat/RecordFinishListener;)V

    .line 623
    invoke-virtual {v0, v1}, Lcom/narvii/chat/audio/AudioRecordLayout;->addRecordInfoListener(Lcom/narvii/chat/RecordInfoListener;)V

    .line 624
    new-instance v1, Lcom/narvii/chat/input/ChatInputFragment$11;

    invoke-direct {v1, p0}, Lcom/narvii/chat/input/ChatInputFragment$11;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/chat/audio/AudioRecordLayout;->addRecordInfoListener(Lcom/narvii/chat/RecordInfoListener;)V

    .line 655
    new-instance v1, Lcom/narvii/chat/input/ChatInputFragment$12;

    invoke-direct {v1, p0}, Lcom/narvii/chat/input/ChatInputFragment$12;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/chat/audio/AudioRecordLayout;->addRecordEventFinishListener(Lcom/narvii/chat/RecordEventFinishListener;)V

    .line 661
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->panelHideMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const v0, 0x7f090bfc

    .line 665
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->tvTypingUser:Landroid/widget/TextView;

    .line 666
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->tvTypingUserHelper:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->tvTypingUser:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->linkLivelayer(Landroid/widget/TextView;Landroid/widget/EditText;)V

    const-string p1, "showKeyboard"

    .line 668
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 669
    new-instance p1, Lcom/narvii/chat/input/ChatInputFragment$13;

    invoke-direct {p1, p0}, Lcom/narvii/chat/input/ChatInputFragment$13;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_5
    if-nez p2, :cond_6

    .line 684
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    if-eqz p1, :cond_6

    .line 685
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/chat/core/ChatService;->getDraft(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->oldDraft:Ljava/lang/String;

    .line 686
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->oldDraft:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 687
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputFragment;->oldDraft:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 688
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_6
    return-void
.end method

.method public onWaitingListApprove(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 1

    .line 1686
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatThreadCheckFragment:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->signallingChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-virtual {p1, v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->requestToJoinChannel(Lcom/narvii/chat/signalling/SignallingChannel;)V

    return-void
.end method

.method public onWaitingListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            "Ljava/util/Collection<",
            "Lcom/narvii/model/User;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 1691
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    invoke-virtual {p1}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->showView()V

    .line 1692
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->waitingListUsers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1693
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->waitingListUsers:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public removePanelHideListener(Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;)V
    .locals 1

    .line 1491
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->panelHideEventDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public scrollChatListToBottom()V
    .locals 1

    .line 966
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 968
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->geChatListFragment()Lcom/narvii/chat/ChatListFragment;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 971
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/chat/ChatListFragment;->scrollToBottom()V

    return-void
.end method

.method public setAdsVisible(Z)V
    .locals 2

    .line 725
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09005e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected showJoinChatDialog(ZLandroid/view/View;)V
    .locals 2

    .line 1182
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1183
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    return-void

    .line 1187
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_1

    const p1, 0x7f0b01af

    goto :goto_0

    :cond_1
    const p1, 0x7f0b01a8

    .line 1188
    :goto_0
    invoke-virtual {v0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    const p1, 0x7f090193

    .line 1189
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/narvii/chat/input/ChatInputFragment$18;

    invoke-direct {v1, p0, v0}, Lcom/narvii/chat/input/ChatInputFragment$18;-><init>(Lcom/narvii/chat/input/ChatInputFragment;Lcom/narvii/util/dialog/AlertDialog;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090020

    .line 1195
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/narvii/chat/input/ChatInputFragment$19;

    invoke-direct {v1, p0, v0, p2}, Lcom/narvii/chat/input/ChatInputFragment$19;-><init>(Lcom/narvii/chat/input/ChatInputFragment;Lcom/narvii/util/dialog/AlertDialog;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1215
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method public showPanel(Landroid/view/View;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1526
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09081a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1527
    :goto_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1528
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v3, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    .line 1529
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    if-eq v3, p1, :cond_2

    .line 1531
    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputFragment;->panelHideMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;

    if-eqz v3, :cond_3

    .line 1533
    invoke-interface {v3}, Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;->onPanelHide()V

    goto :goto_2

    .line 1536
    :cond_2
    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputFragment;->panelHideMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;

    if-eqz v3, :cond_3

    .line 1538
    invoke-interface {v3}, Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;->onPanelShow()V

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1543
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputOptionMenu:Lcom/narvii/chat/input/ChatInputOptionMenu;

    invoke-virtual {p1}, Lcom/narvii/chat/input/ChatInputOptionMenu;->hide()V

    .line 1545
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->panelHideEventDispatcher:Lcom/narvii/util/EventDispatcher;

    new-instance v0, Lcom/narvii/chat/input/ChatInputFragment$23;

    invoke-direct {v0, p0}, Lcom/narvii/chat/input/ChatInputFragment$23;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    const/4 p1, 0x1

    .line 1552
    invoke-virtual {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment;->checkDismissMaskShown(Z)V

    .line 1553
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->updateBackground()V

    .line 1554
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment;->updateReplyMainView(Ljava/lang/Boolean;)V

    return-void
.end method

.method public showPanelWithKeyBoardSwitch(Landroid/view/View;)V
    .locals 3

    .line 1504
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->switchingKeyboard:Lcom/narvii/util/statistics/TmpValue;

    new-instance v1, Lcom/narvii/chat/input/ChatInputFragment$SwitchKeyboard;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/narvii/chat/input/ChatInputFragment$SwitchKeyboard;-><init>(ZLandroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 1505
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->hideSoftKeyboard()V

    return-void
.end method

.method public updateBackground()V
    .locals 4

    .line 1133
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1136
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->isAllPanelHidden()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->isKeyboardVisible:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1145
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    const v3, 0x7f080135

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1146
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1147
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    const v3, -0x4d000001

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1148
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputBlur:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1149
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->adBanner:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1150
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1137
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    const v3, 0x7f080134

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1138
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1139
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    const v3, -0x4f504f

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1140
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputBlur:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1141
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->adBanner:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1142
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected updateRightView(Z)V
    .locals 4

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_5

    .line 1083
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->isAllPanelHidden()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 1105
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->sendButtonContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1106
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    if-eqz p1, :cond_1

    .line 1107
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1108
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    invoke-virtual {p1}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->showView()V

    .line 1110
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    if-eqz p1, :cond_2

    .line 1111
    invoke-virtual {p1, v1}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->setDisallowTip(Z)V

    .line 1115
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->signallingChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    if-eqz p1, :cond_4

    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1116
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x43a00000    # 320.0f

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v2

    if-gt p1, v2, :cond_3

    .line 1117
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatAddButtonView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1119
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatAddButtonView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1121
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatStickerButtonView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 1123
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatStickerButtonView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1124
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatAddButtonView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 1084
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->signallingChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    if-eqz p1, :cond_6

    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    if-nez p1, :cond_7

    .line 1086
    :cond_6
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->sendButtonContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1087
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    if-eqz p1, :cond_8

    .line 1088
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1089
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    invoke-virtual {p1}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->showView()V

    goto :goto_2

    .line 1092
    :cond_7
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->sendButtonContainer:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1093
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    if-eqz p1, :cond_8

    .line 1094
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1098
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    .line 1099
    invoke-virtual {p1, v0}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->setDisallowTip(Z)V

    .line 1102
    :cond_9
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatStickerButtonView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1103
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatAddButtonView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1129
    :goto_3
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->updateSRViews()V

    return-void
.end method

.method protected updateViews()V
    .locals 8

    .line 980
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->updating:Z

    if-eqz v0, :cond_0

    goto/16 :goto_c

    :cond_0
    const/4 v0, 0x1

    .line 982
    iput-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->updating:Z

    const-string v1, "prefs"

    .line 985
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    const-string v3, "returnToSendChat"

    .line 986
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 987
    iget-boolean v3, p0, Lcom/narvii/chat/input/ChatInputFragment;->returnToSend:Z

    const/4 v4, 0x0

    if-eq v1, v3, :cond_1

    if-eqz v1, :cond_1

    .line 988
    iput-boolean v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->returnToSend:Z

    .line 989
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    .line 990
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 991
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    new-instance v3, Lcom/narvii/chat/input/ChatInputFragment$16;

    invoke-direct {v3, p0}, Lcom/narvii/chat/input/ChatInputFragment$16;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto :goto_0

    .line 1003
    :cond_1
    iget-boolean v3, p0, Lcom/narvii/chat/input/ChatInputFragment;->returnToSend:Z

    if-eq v1, v3, :cond_2

    if-nez v1, :cond_2

    .line 1004
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1005
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1006
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1010
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->checkThreadStatus()I

    move-result v1

    .line 1018
    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    if-eqz v3, :cond_4

    .line 1019
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_4

    .line 1021
    iget-object v6, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v1, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    if-nez v1, :cond_5

    .line 1026
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->updateSendBtn()V

    goto :goto_3

    .line 1028
    :cond_5
    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputFragment;->sendButton:Lcom/narvii/widget/TintButton;

    invoke-virtual {v3, v2}, Lcom/narvii/widget/TintButton;->setEnabled(Z)V

    .line 1031
    :goto_3
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_6

    move-object v3, v4

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    const v5, 0x7f0900d6

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/chat/audio/AudioRecordLayout;

    :goto_4
    if-eqz v3, :cond_7

    .line 1032
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    .line 1033
    :goto_5
    iget-object v5, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    const/16 v6, 0x8

    if-nez v1, :cond_8

    if-nez v3, :cond_8

    const/4 v3, 0x0

    goto :goto_6

    :cond_8
    const/16 v3, 0x8

    :goto_6
    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1035
    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputButton:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    const/4 v5, 0x0

    goto :goto_7

    :cond_9
    const/16 v5, 0x8

    :goto_7
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v1, :cond_c

    .line 1037
    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputButton:Landroid/widget/TextView;

    if-ne v1, v0, :cond_a

    const v5, -0x5f000001

    goto :goto_8

    :cond_a
    const v5, -0xbfbfc0

    :goto_8
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1038
    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputButton:Landroid/widget/TextView;

    if-ne v1, v0, :cond_b

    const v1, 0x7f080135

    goto :goto_9

    :cond_b
    const v1, 0x7f080200

    :goto_9
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1042
    :cond_c
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v1, v0, v3}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 1044
    iget-boolean v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->isKeyboardVisible:Z

    invoke-virtual {p0, v1}, Lcom/narvii/chat/input/ChatInputFragment;->updateRightView(Z)V

    .line 1045
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->updateBackground()V

    .line 1046
    iput-boolean v2, p0, Lcom/narvii/chat/input/ChatInputFragment;->updating:Z

    .line 1048
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 1049
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->isViewOnly()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {v3, v1}, Lcom/narvii/chat/util/ChatHelper;->isHostOrCoHost(Lcom/narvii/model/ChatThread;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-ne v1, v6, :cond_d

    const/4 v1, 0x1

    goto :goto_a

    :cond_d
    const/4 v1, 0x0

    .line 1050
    :goto_a
    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputFragment;->viewOnlyInputButton:Landroid/widget/TextView;

    if-eqz v1, :cond_e

    goto :goto_b

    :cond_e
    const/16 v2, 0x8

    :goto_b
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v1, :cond_f

    .line 1051
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1052
    iput-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->shieldInputEvent:Z

    .line 1053
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1054
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1055
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    if-eqz v0, :cond_f

    .line 1056
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/core/ChatService;->setDraft(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_c
    return-void
.end method
