.class public Lcom/narvii/chat/input/ChatInputFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

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
        Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;,
        Lcom/narvii/chat/input/ChatInputFragment$SwitchKeyboard;,
        Lcom/narvii/chat/input/ChatInputFragment$PanelHideAdapter;
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

.field private editMessage:Lcom/narvii/model/ChatMessage;

.field private editAdapter:Lcom/narvii/list/NVAdapter;

.field private chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

.field protected chatService:Lcom/narvii/chat/core/ChatService;

.field private chatStickerButtonView:Landroid/view/View;

.field private chatThreadCheckFragment:Lcom/narvii/chat/input/ChatThreadCheckFragment;

.field private chatWaitingListService:Lcom/narvii/chat/setting/helper/ChatWaitingListService;

.field private cid:I

.field public edit:Lcom/narvii/chat/input/MentionedEditText;

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->switchingKeyboard:Lcom/narvii/util/statistics/TmpValue;

    .line 11
    .line 12
    const-string v0, "Chat Thread"

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->source:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v0, Ljava/util/HashMap;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->panelHideMap:Ljava/util/HashMap;

    .line 22
    .line 23
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->panelHideEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 29
    .line 30
    new-instance v0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;

    .line 31
    const/4 v1, 0x0

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, p0, v1}, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;-><init>(Lcom/narvii/chat/input/ChatInputFragment;Lcom/narvii/chat/input/e;)V

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->menuEventDealer:Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;

    .line 37
    const/4 v0, 0x0

    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentioning:Z

    .line 40
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    iput-object v2, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionTextBuilder:Ljava/lang/StringBuilder;

    .line 47
    const/4 v2, -0x1

    .line 48
    .line 49
    iput v2, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionTextStartIndex:I

    .line 50
    .line 51
    new-instance v2, Ljava/util/ArrayList;

    .line 52
    .line 53
    .line 54
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    iput-object v2, p0, Lcom/narvii/chat/input/ChatInputFragment;->waitingListUsers:Ljava/util/List;

    .line 57
    .line 58
    iput-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->shieldInputEvent:Z

    .line 59
    .line 60
    iput-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->replying:Z

    .line 61
    .line 62
    iput-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->replyMessage:Lcom/narvii/model/ChatMessage;

    .line 63
    .line 64
    new-instance v0, Lcom/narvii/chat/input/ChatInputFragment$17;

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, p0}, Lcom/narvii/chat/input/ChatInputFragment$17;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    .line 68
    .line 69
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->updateSendBtn:Ljava/lang/Runnable;

    .line 70
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatMentionUserListFragment;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionUserListFragment:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    return-object p0
.end method

.method static bridge synthetic B(Lcom/narvii/chat/input/ChatInputFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentioning:Z

    return p0
.end method

.method static bridge synthetic C(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputMessageSenderHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->messageSenderHelper:Lcom/narvii/chat/input/ChatInputMessageSenderHelper;

    return-object p0
.end method

.method static bridge synthetic D(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/rtc/RtcService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    return-object p0
.end method

.method static bridge synthetic E(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/widget/TintButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->sendButton:Lcom/narvii/widget/TintButton;

    return-object p0
.end method

.method static bridge synthetic F(Lcom/narvii/chat/input/ChatInputFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->shieldInputEvent:Z

    return p0
.end method

.method static bridge synthetic G(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->signallingChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    return-object p0
.end method

.method static bridge synthetic H(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->stickerButton:Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;

    return-object p0
.end method

.method static bridge synthetic I(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    return-object p0
.end method

.method static bridge synthetic J(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/util/statistics/TmpValue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->switchingKeyboard:Lcom/narvii/util/statistics/TmpValue;

    return-object p0
.end method

.method static bridge synthetic K(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputTypingUserHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->tvTypingUserHelper:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    return-object p0
.end method

.method static bridge synthetic L(Lcom/narvii/chat/input/ChatInputFragment;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->viewOnlyInputButton:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic M(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/video/utils/VVChatHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->vvchatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    return-object p0
.end method

.method static bridge synthetic N(Lcom/narvii/chat/input/ChatInputFragment;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->waitingListUsers:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic O(Lcom/narvii/chat/input/ChatInputFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->isKeyboardVisible:Z

    return-void
.end method

.method static bridge synthetic P(Lcom/narvii/chat/input/ChatInputFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentioning:Z

    return-void
.end method

.method static bridge synthetic Q(Lcom/narvii/chat/input/ChatInputFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->shieldInputEvent:Z

    return-void
.end method

.method static bridge synthetic R(Lcom/narvii/chat/input/ChatInputFragment;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->checkThreadStatus()I

    move-result p0

    return p0
.end method

.method static bridge synthetic S(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getMessageAttachmentNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic T(Lcom/narvii/chat/input/ChatInputFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->hideSoftKeyboard()V

    return-void
.end method

.method static bridge synthetic U(Lcom/narvii/chat/input/ChatInputFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment;->logSendChatMessage(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic V(Lcom/narvii/chat/input/ChatInputFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->showSoftKeyboard()V

    return-void
.end method

.method static bridge synthetic W(Lcom/narvii/chat/input/ChatInputFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->stopMentioning()V

    return-void
.end method

.method static bridge synthetic X(Lcom/narvii/chat/input/ChatInputFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->stopReplaing()V

    return-void
.end method

.method static bridge synthetic Y(Lcom/narvii/chat/input/ChatInputFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment;->updateReplyMainView(Ljava/lang/Boolean;)V

    return-void
.end method

.method private checkCommunityAvailability(Landroid/view/View;)Z
    .locals 3

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 12
    move-result v0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    .line 15
    .line 16
    new-instance v2, Lcom/narvii/chat/input/ChatInputFragment$22;

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, p0, p1}, Lcom/narvii/chat/input/ChatInputFragment$22;-><init>(Lcom/narvii/chat/input/ChatInputFragment;Landroid/view/View;)V

    .line 20
    const/4 p1, 0x1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0, p1, v2}, Lcom/narvii/chat/global/GlobalChatHelper;->tryJoinCommunity(IZLcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)Z

    .line 24
    move-result v0

    .line 25
    xor-int/2addr p1, v0

    .line 26
    return p1
.end method

.method private checkThreadStatus()I
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    goto :goto_1

    .line 9
    .line 10
    :cond_0
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    .line 11
    .line 12
    iget v3, p0, Lcom/narvii/chat/input/ChatInputFragment;->cid:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v3}, Lcom/narvii/chat/global/GlobalChatHelper;->isCommunityJoined(I)Z

    .line 16
    move-result v2

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    goto :goto_1

    .line 20
    .line 21
    :cond_1
    iget v2, v0, Lcom/narvii/model/ChatThread;->status:I

    .line 22
    .line 23
    const/16 v3, 0x9

    .line 24
    const/4 v4, 0x2

    .line 25
    .line 26
    if-eq v2, v3, :cond_5

    .line 27
    .line 28
    iget-object v2, v0, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    iget v2, v2, Lcom/narvii/model/User;->status:I

    .line 33
    .line 34
    if-eq v2, v3, :cond_5

    .line 35
    .line 36
    const/16 v3, 0xa

    .line 37
    .line 38
    if-ne v2, v3, :cond_2

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_2
    iget v2, v0, Lcom/narvii/model/ChatThread;->condition:I

    .line 42
    const/4 v3, 0x0

    .line 43
    .line 44
    if-ne v2, v4, :cond_3

    .line 45
    .line 46
    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 47
    .line 48
    if-ne v0, v4, :cond_4

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_3
    iget v0, v0, Lcom/narvii/model/ChatThread;->membershipStatus:I

    .line 52
    .line 53
    if-eq v0, v1, :cond_4

    .line 54
    goto :goto_1

    .line 55
    :cond_4
    move v1, v3

    .line 56
    goto :goto_1

    .line 57
    :cond_5
    :goto_0
    move v1, v4

    .line 58
    :goto_1
    return v1
.end method

.method private getMessageAttachmentNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjectId:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    iget-boolean v2, p0, Lcom/narvii/chat/input/ChatInputFragment;->showedAttachment:Z

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    goto :goto_2

    .line 11
    :cond_0
    const/4 v2, 0x1

    .line 12
    .line 13
    iput-boolean v2, p0, Lcom/narvii/chat/input/ChatInputFragment;->showedAttachment:Z

    .line 14
    .line 15
    iget v2, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjectType:I

    .line 16
    .line 17
    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachLink:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachTitle:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v5, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachContent:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 25
    move-result-object v6

    .line 26
    .line 27
    const-string v7, "objectId"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v6, v7, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 31
    .line 32
    const-string v0, "objectType"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v6, v0, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 36
    .line 37
    const-string v0, "link"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6, v0, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 41
    .line 42
    const-string v0, "title"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6, v0, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 46
    .line 47
    const-string v0, "content"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6, v0, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    .line 53
    .line 54
    instance-of v2, v0, Lcom/narvii/model/Comment;

    .line 55
    .line 56
    const-string v3, "parentType"

    .line 57
    .line 58
    const-string v4, "parentId"

    .line 59
    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    check-cast v0, Lcom/narvii/model/Comment;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/narvii/model/Comment;->parentId:Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6, v4, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    .line 70
    .line 71
    check-cast v0, Lcom/narvii/model/Comment;

    .line 72
    .line 73
    iget v0, v0, Lcom/narvii/model/Comment;->parentType:I

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6, v3, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 77
    goto :goto_0

    .line 78
    .line 79
    :cond_1
    instance-of v2, v0, Lcom/narvii/model/ChatMessage;

    .line 80
    .line 81
    if-eqz v2, :cond_2

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->parentId()Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6, v4, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 89
    .line 90
    const/16 v0, 0xc

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6, v3, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 94
    .line 95
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachMediaList:Ljava/util/List;

    .line 96
    .line 97
    .line 98
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    .line 102
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->createArrayNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachMediaList:Ljava/util/List;

    .line 106
    .line 107
    if-nez v2, :cond_3

    .line 108
    goto :goto_1

    .line 109
    :cond_3
    move-object v1, v0

    .line 110
    .line 111
    :goto_1
    const-string v0, "mediaList"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v6, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 115
    return-object v6

    .line 116
    :cond_4
    :goto_2
    return-object v1
.end method

.method private hideSoftKeyboard()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 6
    return-void
.end method

.method private isInputButton(I)Z
    .locals 1

    const v0, 0x7f0a0da6

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0298

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0fdd

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0281

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a02bc

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0292

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0fc0

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

.method private synthetic lambda$onMentionCharacterInput$1(Ljava/lang/String;I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionTextBuilder:Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionTextBuilder:Ljava/lang/StringBuilder;

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 15
    move-result v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionTextBuilder:Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const/4 p1, 0x1

    .line 25
    .line 26
    iput-boolean p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentioning:Z

    .line 27
    .line 28
    iput p2, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionTextStartIndex:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionUserListFragment:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentTransaction;->E(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 46
    .line 47
    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionUserListFragment:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 48
    const/4 v0, 0x0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v0, p1}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->fetchMentionRelatedUserList(Ljava/lang/String;Z)V

    .line 52
    return-void
.end method

.method private synthetic lambda$onReplybyLongClick$2()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->onChatInputClicked()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->scrollChatListToBottom()V

    .line 7
    return-void
.end method

.method private synthetic lambda$updateReplyMainView$0(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatReplyMainView:Landroid/view/View;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatReplyMainView:Landroid/view/View;

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatReplyMainView:Landroid/view/View;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 27
    move-result p1

    .line 28
    .line 29
    const/16 v0, 0x8

    .line 30
    .line 31
    if-eq p1, v0, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatReplyMainView:Landroid/view/View;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 37
    :cond_1
    :goto_0
    return-void
.end method

.method private logSendChatMessage(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/logging/ActSemantic;->sendChatMessage:Lcom/narvii/logging/ActSemantic;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "messageType"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 16
    return-void
.end method

.method public static synthetic n(Lcom/narvii/chat/input/ChatInputFragment;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/input/ChatInputFragment;->lambda$onMentionCharacterInput$1(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic o(Lcom/narvii/chat/input/ChatInputFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment;->lambda$updateReplyMainView$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method private onChatInputClicked()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 13
    const/4 v1, 0x2

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iget v0, v0, Lcom/narvii/model/ChatThread;->membershipStatus:I

    .line 22
    const/4 v1, 0x1

    .line 23
    .line 24
    if-eq v0, v1, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1, v0}, Lcom/narvii/chat/input/ChatInputFragment;->showJoinChatDialog(ZLandroid/view/View;)V

    .line 29
    return-void

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->showChatInputLayout()V

    .line 33
    return-void
.end method

.method public static synthetic p(Lcom/narvii/chat/input/ChatInputFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->lambda$onReplybyLongClick$2()V

    return-void
.end method

.method private parseObject(Ljava/lang/String;I)V
    .locals 10

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    const-class v0, Lcom/narvii/model/User;

    .line 6
    .line 7
    const-class v1, Lcom/narvii/model/Blog;

    .line 8
    .line 9
    const-class v2, Lcom/narvii/model/Item;

    .line 10
    .line 11
    const-class v3, Lcom/narvii/model/Comment;

    .line 12
    .line 13
    const-class v4, Lcom/narvii/model/ChatMessage;

    .line 14
    .line 15
    const-class v5, Lcom/narvii/model/ChatThread;

    .line 16
    const/4 v6, 0x0

    .line 17
    .line 18
    if-eqz p2, :cond_7

    .line 19
    const/4 v7, 0x1

    .line 20
    .line 21
    if-eq p2, v7, :cond_6

    .line 22
    const/4 v7, 0x2

    .line 23
    .line 24
    if-eq p2, v7, :cond_5

    .line 25
    const/4 v7, 0x3

    .line 26
    .line 27
    if-eq p2, v7, :cond_4

    .line 28
    const/4 v7, 0x7

    .line 29
    .line 30
    if-eq p2, v7, :cond_3

    .line 31
    .line 32
    const/16 v7, 0xc

    .line 33
    .line 34
    if-eq p2, v7, :cond_2

    .line 35
    .line 36
    const/16 v7, 0x6d

    .line 37
    .line 38
    if-eq p2, v7, :cond_1

    .line 39
    .line 40
    const/16 v7, 0x83

    .line 41
    .line 42
    if-eq p2, v7, :cond_6

    .line 43
    move-object v7, v6

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_1
    const-class v7, Lcom/narvii/model/SharedFile;

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move-object v7, v5

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    move-object v7, v4

    .line 51
    goto :goto_0

    .line 52
    :cond_4
    move-object v7, v3

    .line 53
    goto :goto_0

    .line 54
    :cond_5
    move-object v7, v2

    .line 55
    goto :goto_0

    .line 56
    :cond_6
    move-object v7, v1

    .line 57
    goto :goto_0

    .line 58
    :cond_7
    move-object v7, v0

    .line 59
    .line 60
    :goto_0
    if-nez v7, :cond_8

    .line 61
    return-void

    .line 62
    .line 63
    .line 64
    :cond_8
    invoke-static {p1, v7}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    check-cast p1, Lcom/narvii/model/NVObject;

    .line 68
    .line 69
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    .line 70
    .line 71
    if-nez p1, :cond_9

    .line 72
    return-void

    .line 73
    .line 74
    .line 75
    :cond_9
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjectId:Ljava/lang/String;

    .line 79
    .line 80
    iput p2, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjectType:I

    .line 81
    .line 82
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    .line 83
    .line 84
    instance-of v7, p1, Lcom/narvii/model/Blog;

    .line 85
    .line 86
    const-string v8, "/"

    .line 87
    .line 88
    const-string v9, "ndc://"

    .line 89
    .line 90
    if-eqz v7, :cond_a

    .line 91
    .line 92
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjStr:Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    check-cast p1, Lcom/narvii/model/NVObject;

    .line 99
    .line 100
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    .line 101
    .line 102
    check-cast p1, Lcom/narvii/model/Blog;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getShowTitle()Ljava/lang/String;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachTitle:Ljava/lang/String;

    .line 109
    .line 110
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    .line 111
    .line 112
    check-cast p1, Lcom/narvii/model/Blog;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getShowContent()Ljava/lang/String;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachContent:Ljava/lang/String;

    .line 119
    .line 120
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    .line 121
    .line 122
    check-cast p1, Lcom/narvii/model/Blog;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getFeedPreviewMediaList()Ljava/util/List;

    .line 126
    move-result-object p1

    .line 127
    .line 128
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachMediaList:Ljava/util/List;

    .line 129
    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-static {p2}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    .line 140
    move-result-object p2

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 152
    move-result-object p2

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    move-result-object p1

    .line 160
    .line 161
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachLink:Ljava/lang/String;

    .line 162
    .line 163
    goto/16 :goto_3

    .line 164
    .line 165
    :cond_a
    instance-of v1, p1, Lcom/narvii/model/Item;

    .line 166
    .line 167
    if-eqz v1, :cond_b

    .line 168
    .line 169
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjStr:Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    invoke-static {p1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 173
    move-result-object p1

    .line 174
    .line 175
    check-cast p1, Lcom/narvii/model/NVObject;

    .line 176
    .line 177
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    .line 178
    .line 179
    check-cast p1, Lcom/narvii/model/Item;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/narvii/model/Item;->title()Ljava/lang/String;

    .line 183
    move-result-object p1

    .line 184
    .line 185
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachTitle:Ljava/lang/String;

    .line 186
    .line 187
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    .line 188
    .line 189
    check-cast p1, Lcom/narvii/model/Item;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1}, Lcom/narvii/model/Item;->content()Ljava/lang/String;

    .line 193
    move-result-object p1

    .line 194
    .line 195
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachContent:Ljava/lang/String;

    .line 196
    .line 197
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    .line 198
    .line 199
    check-cast p1, Lcom/narvii/model/Item;

    .line 200
    .line 201
    iget-object p1, p1, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    .line 202
    .line 203
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachMediaList:Ljava/util/List;

    .line 204
    .line 205
    new-instance p1, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-static {p2}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    .line 215
    move-result-object p2

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 227
    move-result-object p2

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    move-result-object p1

    .line 235
    .line 236
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachLink:Ljava/lang/String;

    .line 237
    .line 238
    goto/16 :goto_3

    .line 239
    .line 240
    :cond_b
    instance-of v1, p1, Lcom/narvii/model/ChatMessage;

    .line 241
    .line 242
    if-eqz v1, :cond_e

    .line 243
    .line 244
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjStr:Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    invoke-static {p1, v4}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 248
    move-result-object p1

    .line 249
    .line 250
    check-cast p1, Lcom/narvii/model/NVObject;

    .line 251
    .line 252
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    .line 253
    .line 254
    iput-object v6, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachTitle:Ljava/lang/String;

    .line 255
    move-object p2, p1

    .line 256
    .line 257
    check-cast p2, Lcom/narvii/model/ChatMessage;

    .line 258
    .line 259
    iget-object p2, p2, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 260
    .line 261
    iput-object p2, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachContent:Ljava/lang/String;

    .line 262
    move-object p2, p1

    .line 263
    .line 264
    check-cast p2, Lcom/narvii/model/ChatMessage;

    .line 265
    .line 266
    iget p2, p2, Lcom/narvii/model/ChatMessage;->mediaType:I

    .line 267
    .line 268
    const/16 v0, 0x64

    .line 269
    .line 270
    if-eq p2, v0, :cond_d

    .line 271
    move-object p2, p1

    .line 272
    .line 273
    check-cast p2, Lcom/narvii/model/ChatMessage;

    .line 274
    .line 275
    iget p2, p2, Lcom/narvii/model/ChatMessage;->mediaType:I

    .line 276
    .line 277
    const/16 v0, 0x7b

    .line 278
    .line 279
    if-eq p2, v0, :cond_d

    .line 280
    move-object p2, p1

    .line 281
    .line 282
    check-cast p2, Lcom/narvii/model/ChatMessage;

    .line 283
    .line 284
    iget p2, p2, Lcom/narvii/model/ChatMessage;->mediaType:I

    .line 285
    .line 286
    const/16 v0, 0x67

    .line 287
    .line 288
    if-ne p2, v0, :cond_c

    .line 289
    goto :goto_1

    .line 290
    .line 291
    :cond_c
    iput-object v6, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachMediaList:Ljava/util/List;

    .line 292
    goto :goto_2

    .line 293
    .line 294
    :cond_d
    :goto_1
    check-cast p1, Lcom/narvii/model/ChatMessage;

    .line 295
    .line 296
    .line 297
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    .line 298
    move-result-object p1

    .line 299
    .line 300
    new-instance p2, Ljava/util/ArrayList;

    .line 301
    .line 302
    .line 303
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .line 305
    .line 306
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    .line 308
    iput-object p2, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachMediaList:Ljava/util/List;

    .line 309
    .line 310
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    const-string p2, "chat-thread/"

    .line 319
    .line 320
    .line 321
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    .line 324
    .line 325
    .line 326
    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->parentId()Ljava/lang/String;

    .line 327
    move-result-object p2

    .line 328
    .line 329
    .line 330
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    move-result-object p1

    .line 335
    .line 336
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachLink:Ljava/lang/String;

    .line 337
    .line 338
    goto/16 :goto_3

    .line 339
    .line 340
    :cond_e
    instance-of v1, p1, Lcom/narvii/model/Comment;

    .line 341
    .line 342
    if-eqz v1, :cond_f

    .line 343
    .line 344
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjStr:Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    invoke-static {p1, v3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 348
    move-result-object p1

    .line 349
    .line 350
    check-cast p1, Lcom/narvii/model/NVObject;

    .line 351
    .line 352
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    .line 353
    .line 354
    iput-object v6, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachTitle:Ljava/lang/String;

    .line 355
    move-object v0, p1

    .line 356
    .line 357
    check-cast v0, Lcom/narvii/model/Comment;

    .line 358
    .line 359
    iget-object v0, v0, Lcom/narvii/model/Comment;->content:Ljava/lang/String;

    .line 360
    .line 361
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachContent:Ljava/lang/String;

    .line 362
    .line 363
    check-cast p1, Lcom/narvii/model/Comment;

    .line 364
    .line 365
    iget-object p1, p1, Lcom/narvii/model/Comment;->mediaList:Ljava/util/List;

    .line 366
    .line 367
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachMediaList:Ljava/util/List;

    .line 368
    .line 369
    new-instance p1, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    .line 374
    .line 375
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    .line 378
    .line 379
    check-cast v0, Lcom/narvii/model/Comment;

    .line 380
    .line 381
    iget v0, v0, Lcom/narvii/model/Comment;->parentType:I

    .line 382
    .line 383
    .line 384
    invoke-static {v0}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    .line 385
    move-result-object v0

    .line 386
    .line 387
    .line 388
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    .line 394
    .line 395
    check-cast v0, Lcom/narvii/model/Comment;

    .line 396
    .line 397
    iget-object v0, v0, Lcom/narvii/model/Comment;->parentId:Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-static {p2}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    .line 407
    move-result-object p2

    .line 408
    .line 409
    .line 410
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    .line 416
    .line 417
    .line 418
    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 419
    move-result-object p2

    .line 420
    .line 421
    .line 422
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 426
    move-result-object p1

    .line 427
    .line 428
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachLink:Ljava/lang/String;

    .line 429
    goto :goto_3

    .line 430
    .line 431
    :cond_f
    instance-of v1, p1, Lcom/narvii/model/ChatThread;

    .line 432
    .line 433
    if-eqz v1, :cond_10

    .line 434
    .line 435
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjStr:Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    invoke-static {p1, v5}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 439
    move-result-object p1

    .line 440
    .line 441
    check-cast p1, Lcom/narvii/model/NVObject;

    .line 442
    .line 443
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    .line 444
    .line 445
    iput-object v6, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachTitle:Ljava/lang/String;

    .line 446
    .line 447
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 448
    .line 449
    iget-object p1, p1, Lcom/narvii/model/ChatThread;->content:Ljava/lang/String;

    .line 450
    .line 451
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachContent:Ljava/lang/String;

    .line 452
    .line 453
    iput-object v6, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachMediaList:Ljava/util/List;

    .line 454
    .line 455
    new-instance p1, Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    .line 460
    .line 461
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-static {p2}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    .line 465
    move-result-object p2

    .line 466
    .line 467
    .line 468
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    .line 474
    .line 475
    .line 476
    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 477
    move-result-object p2

    .line 478
    .line 479
    .line 480
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 484
    move-result-object p1

    .line 485
    .line 486
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachLink:Ljava/lang/String;

    .line 487
    goto :goto_3

    .line 488
    .line 489
    :cond_10
    instance-of p1, p1, Lcom/narvii/model/User;

    .line 490
    .line 491
    if-eqz p1, :cond_11

    .line 492
    .line 493
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjStr:Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 497
    move-result-object p1

    .line 498
    .line 499
    check-cast p1, Lcom/narvii/model/NVObject;

    .line 500
    .line 501
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    .line 502
    .line 503
    iput-object v6, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachTitle:Ljava/lang/String;

    .line 504
    move-object v0, p1

    .line 505
    .line 506
    check-cast v0, Lcom/narvii/model/User;

    .line 507
    .line 508
    iget-object v0, v0, Lcom/narvii/model/User;->content:Ljava/lang/String;

    .line 509
    .line 510
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachContent:Ljava/lang/String;

    .line 511
    .line 512
    check-cast p1, Lcom/narvii/model/User;

    .line 513
    .line 514
    iget-object p1, p1, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    .line 515
    .line 516
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachMediaList:Ljava/util/List;

    .line 517
    .line 518
    new-instance p1, Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 522
    .line 523
    .line 524
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-static {p2}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    .line 528
    move-result-object p2

    .line 529
    .line 530
    .line 531
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObject:Lcom/narvii/model/NVObject;

    .line 537
    .line 538
    .line 539
    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 540
    move-result-object p2

    .line 541
    .line 542
    .line 543
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 547
    move-result-object p1

    .line 548
    .line 549
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachLink:Ljava/lang/String;

    .line 550
    :cond_11
    :goto_3
    return-void
.end method

.method static bridge synthetic q(Lcom/narvii/chat/input/ChatInputFragment;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->blockUntil:J

    return-wide v0
.end method

.method static bridge synthetic r(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/call/CallScreenService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    return-object p0
.end method

.method static bridge synthetic s(Lcom/narvii/chat/input/ChatInputFragment;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputButton:Landroid/widget/TextView;

    return-object p0
.end method

.method public showChatInputLayout()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->showSoftKeyboard()V

    .line 9
    return-void
.end method

.method private showSoftKeyboard()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    .line 6
    return-void
.end method

.method private stopMentioning()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentioning:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionTextBuilder:Ljava/lang/StringBuilder;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 11
    move-result v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionUserListFragment:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->r(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 32
    return-void
.end method

.method private stopReplaing()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->replying:Z

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->replyMessage:Lcom/narvii/model/ChatMessage;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatReplyMainView:Landroid/view/View;

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->cancelEdit()V

    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputOptionMenu;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputOptionMenu:Lcom/narvii/chat/input/ChatInputOptionMenu;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputRightViewContainer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    return-object p0
.end method

.method private updateReplyMainView(Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->replying:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatReplyMainView:Landroid/view/View;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/narvii/chat/input/b;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/input/b;-><init>(Lcom/narvii/chat/input/ChatInputFragment;Ljava/lang/Boolean;)V

    .line 14
    .line 15
    const-wide/16 v1, 0xc8

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 19
    :cond_0
    return-void
.end method

.method private updateSRViews()V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/util/Utils;->isLandscape(Landroid/content/Context;)Z

    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x1

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->isAllPanelHidden()Z

    .line 23
    move-result v3

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    iget-boolean v3, p0, Lcom/narvii/chat/input/ChatInputFragment;->isKeyboardVisible:Z

    .line 28
    .line 29
    if-nez v3, :cond_1

    .line 30
    move v3, v2

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v3, v1

    .line 33
    .line 34
    :goto_0
    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputFragment;->srLandscapeButtons:Landroid/view/View;

    .line 35
    .line 36
    .line 37
    invoke-static {v4, v3}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 38
    .line 39
    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputMain:Landroid/view/View;

    .line 40
    .line 41
    xor-int/lit8 v5, v3, 0x1

    .line 42
    .line 43
    .line 44
    invoke-static {v4, v5}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 48
    move-result-object v4

    .line 49
    .line 50
    xor-int/lit8 v5, v0, 0x1

    .line 51
    .line 52
    .line 53
    const v6, 0x7f0a0f20

    .line 54
    .line 55
    .line 56
    invoke-static {v4, v6, v5}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 57
    .line 58
    if-eqz v3, :cond_2

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 62
    move-result-object v3

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 66
    move-result-object v3

    .line 67
    const/4 v4, -0x2

    .line 68
    .line 69
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 70
    goto :goto_1

    .line 71
    .line 72
    .line 73
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 74
    move-result-object v3

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 78
    move-result-object v3

    .line 79
    const/4 v4, -0x1

    .line 80
    .line 81
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 82
    .line 83
    :goto_1
    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 87
    move-result-object v3

    .line 88
    .line 89
    if-eqz v3, :cond_9

    .line 90
    .line 91
    iget v4, v3, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 92
    const/4 v5, 0x5

    .line 93
    .line 94
    if-eq v4, v5, :cond_3

    .line 95
    .line 96
    goto/16 :goto_5

    .line 97
    .line 98
    :cond_3
    if-nez v0, :cond_4

    .line 99
    return-void

    .line 100
    .line 101
    :cond_4
    const-string v0, "screenRoom"

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    move-result-object v0

    .line 106
    .line 107
    check-cast v0, Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 108
    .line 109
    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputFragment;->srLandscapeButtons:Landroid/view/View;

    .line 110
    .line 111
    .line 112
    const v5, 0x7f0a0d76

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    move-result-object v4

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    .line 121
    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputFragment;->srLandscapeButtons:Landroid/view/View;

    .line 122
    .line 123
    .line 124
    const v5, 0x7f0a0d7a

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 128
    move-result-object v4

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    .line 133
    iget v3, v3, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 134
    .line 135
    if-ne v3, v2, :cond_5

    .line 136
    move v3, v2

    .line 137
    goto :goto_2

    .line 138
    :cond_5
    move v3, v1

    .line 139
    .line 140
    :goto_2
    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputFragment;->srLandscapeButtons:Landroid/view/View;

    .line 141
    .line 142
    .line 143
    invoke-static {v4, v5, v3}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 144
    .line 145
    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 146
    .line 147
    if-nez v3, :cond_6

    .line 148
    const/4 v3, 0x0

    .line 149
    goto :goto_3

    .line 150
    .line 151
    .line 152
    :cond_6
    invoke-virtual {v3}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 153
    move-result-object v3

    .line 154
    .line 155
    :goto_3
    if-eqz v3, :cond_7

    .line 156
    .line 157
    iget-object v4, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 158
    .line 159
    iget-boolean v4, v4, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    .line 160
    .line 161
    if-eqz v4, :cond_7

    .line 162
    .line 163
    if-eqz v0, :cond_7

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getLocalMicMuted()Z

    .line 167
    move-result v0

    .line 168
    goto :goto_4

    .line 169
    .line 170
    :cond_7
    if-eqz v3, :cond_8

    .line 171
    .line 172
    iget-object v0, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 173
    .line 174
    if-eqz v0, :cond_8

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted()Z

    .line 178
    move-result v0

    .line 179
    .line 180
    if-eqz v0, :cond_8

    .line 181
    move v1, v2

    .line 182
    :cond_8
    move v0, v1

    .line 183
    .line 184
    :goto_4
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->srLandscapeButtons:Landroid/view/View;

    .line 185
    .line 186
    .line 187
    const v2, 0x7f0a09c6

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 191
    move-result-object v1

    .line 192
    .line 193
    check-cast v1, Lcom/narvii/chat/video/view/CheckableImageView;

    .line 194
    .line 195
    if-eqz v1, :cond_9

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v0}, Lcom/narvii/chat/video/view/CheckableImageView;->setChecked(Z)V

    .line 199
    :cond_9
    :goto_5
    return-void
.end method

.method private updateSendBtn()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->updateSendBtn:Ljava/lang/Runnable;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 6
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatThreadCheckFragment;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatThreadCheckFragment:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/setting/helper/ChatWaitingListService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatWaitingListService:Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/narvii/chat/input/ChatInputFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->isKeyboardVisible:Z

    return p0
.end method

.method static bridge synthetic y(Lcom/narvii/chat/input/ChatInputFragment;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionTextBuilder:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static bridge synthetic z(Lcom/narvii/chat/input/ChatInputFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionTextStartIndex:I

    return p0
.end method


# virtual methods
.method public addPanelHideListener(Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->panelHideEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public checkDismissMaskShown(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputMask:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->isAllPanelHidden()Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputOptionMenu:Lcom/narvii/chat/input/ChatInputOptionMenu;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/narvii/chat/input/ChatInputOptionMenu;->isVisible()Z

    .line 25
    move-result p1

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputMask:Landroid/view/View;

    .line 30
    .line 31
    const/16 v0, 0x8

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 35
    :cond_1
    return-void
.end method

.method public checkThreadAvailable(Landroid/view/View;)Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment;->checkCommunityAvailability(Landroid/view/View;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_8

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    iget v2, v0, Lcom/narvii/model/ChatThread;->status:I

    .line 18
    .line 19
    const/16 v3, 0x9

    .line 20
    .line 21
    if-eq v2, v3, :cond_7

    .line 22
    .line 23
    iget-object v2, v0, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    iget v2, v2, Lcom/narvii/model/User;->status:I

    .line 28
    .line 29
    if-eq v2, v3, :cond_7

    .line 30
    .line 31
    const/16 v3, 0xa

    .line 32
    .line 33
    if-ne v2, v3, :cond_1

    .line 34
    .line 35
    goto/16 :goto_1

    .line 36
    .line 37
    :cond_1
    iget v2, v0, Lcom/narvii/model/ChatThread;->condition:I

    .line 38
    const/4 v3, 0x2

    .line 39
    .line 40
    if-ne v2, v3, :cond_2

    .line 41
    .line 42
    iget v2, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 43
    .line 44
    if-ne v2, v3, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    const v0, 0x7f120223

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 59
    goto :goto_2

    .line 60
    .line 61
    :cond_2
    iget v2, v0, Lcom/narvii/model/ChatThread;->membershipStatus:I

    .line 62
    const/4 v4, 0x3

    .line 63
    .line 64
    if-ne v2, v4, :cond_3

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    const v0, 0x7f120276

    .line 72
    .line 73
    .line 74
    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 79
    goto :goto_2

    .line 80
    :cond_3
    const/4 v4, 0x1

    .line 81
    .line 82
    if-eq v2, v4, :cond_5

    .line 83
    .line 84
    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 85
    .line 86
    if-ne v0, v3, :cond_4

    .line 87
    goto :goto_0

    .line 88
    :cond_4
    move v4, v1

    .line 89
    .line 90
    .line 91
    :goto_0
    invoke-virtual {p0, v4, p1}, Lcom/narvii/chat/input/ChatInputFragment;->showJoinChatDialog(ZLandroid/view/View;)V

    .line 92
    goto :goto_2

    .line 93
    .line 94
    .line 95
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 96
    move-result p1

    .line 97
    .line 98
    .line 99
    invoke-direct {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment;->isInputButton(I)Z

    .line 100
    move-result p1

    .line 101
    .line 102
    if-eqz p1, :cond_6

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->isViewOnly()Z

    .line 106
    move-result p1

    .line 107
    .line 108
    if-eqz p1, :cond_6

    .line 109
    .line 110
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v0}, Lcom/narvii/chat/util/ChatHelper;->isHostOrCoHost(Lcom/narvii/model/ChatThread;)Z

    .line 114
    move-result p1

    .line 115
    .line 116
    if-nez p1, :cond_6

    .line 117
    .line 118
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 122
    move-result-object v0

    .line 123
    .line 124
    .line 125
    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 126
    .line 127
    .line 128
    const v0, 0x7f12025e

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 132
    .line 133
    .line 134
    const v0, 0x7f1207e7

    .line 135
    const/4 v2, 0x0

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v0, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 142
    goto :goto_2

    .line 143
    :cond_6
    return v4

    .line 144
    .line 145
    .line 146
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 147
    move-result-object p1

    .line 148
    .line 149
    .line 150
    const v0, 0x7f120230

    .line 151
    .line 152
    .line 153
    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 154
    move-result-object p1

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 158
    :cond_8
    :goto_2
    return v1
.end method

.method protected geChatListFragment()Lcom/narvii/chat/ChatListFragment;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "chatList"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/chat/ChatListFragment;

    .line 13
    return-object v0
.end method

.method public getSignallingChannel()Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->signallingChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    return-object v0
.end method

.method public getThread()Lcom/narvii/model/ChatThread;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/chat/util/ChatHelper;->Companion:Lcom/narvii/chat/util/ChatHelper$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/narvii/chat/util/ChatHelper$Companion;->getThreadFromThreadInfoHost(Lcom/narvii/app/NVFragment;)Lcom/narvii/model/ChatThread;

    .line 6
    move-result-object v0

    .line 7
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

.method public getValidPanelHeight()I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/AndroidBug5497Workaround;->getKeyboardHeight(Landroid/app/Activity;)I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    const v2, 0x7f070555

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 21
    move-result v1

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 25
    move-result v0

    .line 26
    return v0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    return v0
.end method

.method public hideAllPanels()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    const v1, 0x7f0a0ac3

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Landroid/widget/FrameLayout;

    .line 21
    const/4 v1, 0x0

    .line 22
    move v2, v1

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 26
    move-result v3

    .line 27
    .line 28
    if-ge v2, v3, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    const/16 v4, 0x8

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputFragment;->panelHideMap:Ljava/util/HashMap;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object v3

    .line 44
    .line 45
    check-cast v3, Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;

    .line 46
    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-interface {v3}, Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;->onPanelHide()V

    .line 51
    .line 52
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->panelHideEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 56
    .line 57
    new-instance v2, Lcom/narvii/chat/input/ChatInputFragment$24;

    .line 58
    .line 59
    .line 60
    invoke-direct {v2, p0}, Lcom/narvii/chat/input/ChatInputFragment$24;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v1}, Lcom/narvii/chat/input/ChatInputFragment;->checkDismissMaskShown(Z)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->updateBackground()V

    .line 70
    return-void
.end method

.method public hideKeyboardAndPanel()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->hideSoftKeyboard()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->hideAllPanels()V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputOptionMenu:Lcom/narvii/chat/input/ChatInputOptionMenu;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputOptionMenu;->hide()V

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/narvii/chat/input/ChatInputFragment;->checkDismissMaskShown(Z)V

    .line 16
    .line 17
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0}, Lcom/narvii/chat/input/ChatInputFragment;->updateReplyMainView(Ljava/lang/Boolean;)V

    .line 21
    return-void
.end method

.method public hidePanelWithKeyBoardSwitch(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->switchingKeyboard:Lcom/narvii/util/statistics/TmpValue;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/chat/input/ChatInputFragment$SwitchKeyboard;

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2, p1}, Lcom/narvii/chat/input/ChatInputFragment$SwitchKeyboard;-><init>(ZLandroid/view/View;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->showSoftKeyboard()V

    .line 15
    return-void
.end method

.method public isAllPanelHidden()Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    const v2, 0x7f0a0ac3

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Landroid/widget/FrameLayout;

    .line 22
    const/4 v2, 0x0

    .line 23
    move v3, v2

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 27
    move-result v4

    .line 28
    .line 29
    if-ge v3, v4, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 33
    move-result-object v4

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 37
    move-result v4

    .line 38
    .line 39
    if-nez v4, :cond_1

    .line 40
    return v2

    .line 41
    .line 42
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    return v1
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActiveChanged(Z)V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->updateViews()V

    .line 9
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->isAllPanelHidden()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->hideAllPanels()V

    .line 11
    return v1

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatWaitingListService:Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->isShowing()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatWaitingListService:Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->dismiss()V

    .line 27
    return v1

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
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
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->signallingChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 3
    .line 4
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 5
    const/4 p2, 0x1

    .line 6
    .line 7
    if-ne p1, p2, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->hideKeyboardAndPanel()V

    .line 11
    .line 12
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->isKeyboardVisible:Z

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment;->updateRightView(Z)V

    .line 16
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
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->signallingChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->isKeyboardVisible:Z

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment;->updateRightView(Z)V

    .line 8
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
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->signallingChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->isKeyboardVisible:Z

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment;->updateRightView(Z)V

    .line 8
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0a029c

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->hideKeyboardAndPanel()V

    .line 13
    return-void

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment;->checkThreadAvailable(Landroid/view/View;)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    return-void

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 24
    move-result p1

    .line 25
    const/4 v0, 0x0

    .line 26
    .line 27
    .line 28
    sparse-switch p1, :sswitch_data_0

    .line 29
    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :sswitch_0
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->menuEventDealer:Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->toggleMute(Z)V

    .line 36
    .line 37
    goto/16 :goto_1

    .line 38
    .line 39
    .line 40
    :sswitch_1
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->onChatInputClicked()V

    .line 41
    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    .line 45
    :sswitch_2
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    iget p1, p1, Lcom/narvii/model/ChatThread;->type:I

    .line 55
    const/4 v1, 0x2

    .line 56
    .line 57
    if-ne p1, v1, :cond_2

    .line 58
    .line 59
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/narvii/chat/core/ChatService;->isSendTooFast()Z

    .line 63
    move-result p1

    .line 64
    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    .line 72
    const v1, 0x7f120282

    .line 73
    .line 74
    .line 75
    invoke-static {p1, v1, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 80
    .line 81
    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 83
    move-result-wide v0

    .line 84
    .line 85
    const-wide/16 v2, 0x2710

    .line 86
    add-long/2addr v0, v2

    .line 87
    .line 88
    iput-wide v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->blockUntil:J

    .line 89
    .line 90
    .line 91
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->updateSendBtn()V

    .line 92
    .line 93
    goto/16 :goto_1

    .line 94
    .line 95
    :cond_2
    iget-boolean p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentioning:Z

    .line 96
    .line 97
    if-eqz p1, :cond_3_stopdone

    .line 98
    .line 99
    .line 100
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->stopMentioning()V

    .line 101
    .line 102
    :cond_3_stopdone

    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->editMessage:Lcom/narvii/model/ChatMessage;

    if-eqz p1, :cond_edit_none

    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->submitEdit()V

    return-void

    :cond_edit_none
    :cond_3
    iget-boolean p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->replying:Z

    .line 103
    const/4 v1, 0x0

    .line 104
    .line 105
    if-eqz p1, :cond_4

    .line 106
    .line 107
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->replyMessage:Lcom/narvii/model/ChatMessage;

    .line 108
    .line 109
    .line 110
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->stopReplaing()V

    .line 111
    goto :goto_0

    .line 112
    :cond_4
    move-object p1, v1

    .line 113
    .line 114
    :goto_0
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputFragment;->messageSenderHelper:Lcom/narvii/chat/input/ChatInputMessageSenderHelper;

    .line 115
    .line 116
    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 120
    move-result-object v3

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 124
    move-result-object v3

    .line 125
    .line 126
    .line 127
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getMessageAttachmentNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 128
    move-result-object v4

    .line 129
    .line 130
    iget-object v5, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5}, Lcom/narvii/chat/input/MentionedEditText;->getMentionedRangeList()Ljava/util/List;

    .line 134
    move-result-object v5

    .line 135
    .line 136
    check-cast v5, Ljava/util/ArrayList;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v3, v4, v5, p1}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->sendMessage(Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/util/ArrayList;Lcom/narvii/model/ChatMessage;)Z

    .line 140
    .line 141
    const-string p1, "text"

    .line 142
    .line 143
    .line 144
    invoke-direct {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment;->logSendChatMessage(Ljava/lang/String;)V

    .line 145
    .line 146
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->tvTypingUserHelper:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->reportTypingEnd()V

    .line 150
    .line 151
    iput-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentioning:Z

    .line 152
    .line 153
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionTextBuilder:Ljava/lang/StringBuilder;

    .line 154
    .line 155
    if-eqz p1, :cond_5

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 159
    move-result v2

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    :cond_5
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, Lcom/narvii/chat/input/MentionedEditText;->clear()V

    .line 168
    .line 169
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    const-string p1, "statistics"

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 178
    move-result-object p1

    .line 179
    .line 180
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 181
    .line 182
    const-string v0, "Chat Message Sent"

    .line 183
    .line 184
    .line 185
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 186
    move-result-object p1

    .line 187
    .line 188
    const-string v0, "Message Sent Total"

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 192
    move-result-object p1

    .line 193
    .line 194
    const-string v0, "Message Type"

    .line 195
    .line 196
    const-string v2, "Text"

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, v0, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 200
    move-result-object p1

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 204
    move-result-object v0

    .line 205
    .line 206
    .line 207
    invoke-static {v0, v1}, Lcom/narvii/util/StatisticHelper;->getChatThreadType(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    move-result-object v0

    .line 209
    .line 210
    const-string v1, "Type"

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 214
    move-result-object p1

    .line 215
    .line 216
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->source:Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 220
    move-result-object p1

    .line 221
    .line 222
    .line 223
    invoke-static {p0, p1}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsEventBuilder;)V

    .line 224
    goto :goto_1

    .line 225
    .line 226
    .line 227
    :sswitch_3
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->scrollChatListToBottom()V

    .line 228
    goto :goto_1

    .line 229
    .line 230
    :sswitch_4
    new-instance p1, Lcom/narvii/chat/input/ChatInputFragment$21;

    .line 231
    .line 232
    .line 233
    invoke-direct {p1, p0}, Lcom/narvii/chat/input/ChatInputFragment$21;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    .line 234
    .line 235
    .line 236
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 237
    goto :goto_1

    .line 238
    .line 239
    :sswitch_5
    new-instance v2, Landroid/os/Bundle;

    .line 240
    .line 241
    .line 242
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 243
    .line 244
    const-string p1, "add"

    .line 245
    const/4 v1, 0x1

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2, p1, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 249
    .line 250
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    .line 251
    .line 252
    new-instance v1, Lcom/narvii/chat/input/ChatInputFragment$20;

    .line 253
    .line 254
    .line 255
    invoke-direct {v1, p0}, Lcom/narvii/chat/input/ChatInputFragment$20;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p1, v1}, Lcom/narvii/media/MediaPickerFragment;->setOnCustomOptionSelectedListener(Lcom/narvii/media/MediaPickerFragment$OnCustomOptionSelectedListener;)V

    .line 259
    .line 260
    new-instance v5, Ljava/util/ArrayList;

    .line 261
    .line 262
    .line 263
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .line 265
    new-instance p1, Lcom/narvii/media/MediaPickerFragment$Option;

    .line 266
    .line 267
    .line 268
    const v1, 0x7f12022b

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 272
    move-result-object v1

    .line 273
    .line 274
    const/16 v3, 0x14

    .line 275
    .line 276
    .line 277
    invoke-direct {p1, v3, v1, v0, v0}, Lcom/narvii/media/MediaPickerFragment$Option;-><init>(ILjava/lang/String;II)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    .line 282
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    .line 283
    .line 284
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 285
    .line 286
    .line 287
    invoke-virtual {p1}, Lcom/narvii/chat/core/ChatService;->getPhotoDir()Ljava/io/File;

    .line 288
    move-result-object v1

    .line 289
    const/4 v3, 0x0

    .line 290
    const/4 v4, 0x3

    .line 291
    .line 292
    .line 293
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;IILjava/util/List;)V

    .line 294
    :goto_1
    return-void

    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    :sswitch_data_0
    .sparse-switch
        0x7f0a0281 -> :sswitch_5
        0x7f0a0292 -> :sswitch_4
        0x7f0a0298 -> :sswitch_3
        0x7f0a02bc -> :sswitch_2
        0x7f0a0d76 -> :sswitch_1
        0x7f0a0d7a -> :sswitch_0
        0x7f0a0fc0 -> :sswitch_4
    .end sparse-switch
.end method

.method public onCoHostResult(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->showView()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    const-string v1, "account"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getCoHostUidList()Ljava/util/List;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getCoHostUidList()Ljava/util/List;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    instance-of p1, p1, Lcom/narvii/chat/ChatFragment;

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    check-cast p1, Lcom/narvii/chat/ChatFragment;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lcom/narvii/chat/ChatFragment;->setThread(Lcom/narvii/model/ChatThread;)V

    .line 60
    :cond_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->updateSRViews()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/util/Utils;->isLandscape(Landroid/content/Context;)Z

    .line 14
    move-result p1

    .line 15
    .line 16
    xor-int/lit8 p1, p1, 0x1

    .line 17
    .line 18
    iput-boolean p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionEnabled:Z

    .line 19
    .line 20
    iget-boolean p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentioning:Z

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->stopMentioning()V

    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionEnabled:Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/narvii/chat/input/MentionedEditText;->setMentionEnabled(Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->hideKeyboardAndPanel()V

    .line 38
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

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
    iput v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->cid:I

    .line 18
    .line 19
    const-string v0, "chat"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Lcom/narvii/chat/core/ChatService;

    .line 26
    .line 27
    iput-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 28
    .line 29
    new-instance v1, Lcom/narvii/chat/util/ChatHelper;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    iput-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 39
    .line 40
    const-string v1, "account"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 47
    .line 48
    iput-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 49
    .line 50
    const-string v1, "callScreen"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    check-cast v1, Lcom/narvii/chat/call/CallScreenService;

    .line 57
    .line 58
    iput-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 59
    .line 60
    const-string v1, "rtc"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    check-cast v1, Lcom/narvii/chat/rtc/RtcService;

    .line 67
    .line 68
    iput-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 69
    .line 70
    const-string v1, "screenRoom"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    check-cast v1, Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 77
    .line 78
    iput-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->srs:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->addSRPermissionListener(Lcom/narvii/chat/screenroom/SRPermissionActionChangeListener;)V

    .line 82
    .line 83
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    .line 87
    move-result-object v2

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v2, p0}, Lcom/narvii/chat/rtc/RtcService;->addMyChannelUserStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/MyChannelUserStatusChangeListener;)V

    .line 91
    .line 92
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    .line 96
    move-result-object v2

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2, p0}, Lcom/narvii/chat/rtc/RtcService;->addLiveChannelChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LiveChannelChangeListener;)V

    .line 100
    .line 101
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    .line 105
    move-result-object v2

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v2, p0}, Lcom/narvii/chat/rtc/RtcService;->addChannelUserWrapperUpdateListener(Ljava/lang/String;Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;)V

    .line 109
    .line 110
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    .line 114
    move-result-object v2

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v2, p0}, Lcom/narvii/chat/rtc/RtcService;->addWaitingListListener(Ljava/lang/String;Lcom/narvii/chat/waitinglist/WaitingListListener;)V

    .line 118
    .line 119
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    .line 123
    move-result-object v2

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v2}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 127
    move-result-object v1

    .line 128
    .line 129
    iput-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->signallingChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 130
    .line 131
    const-string v1, "pushInvite"

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    move-result-object v1

    .line 136
    .line 137
    check-cast v1, Lcom/narvii/services/PushInviteHelper;

    .line 138
    .line 139
    iput-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->pushInviteHelper:Lcom/narvii/services/PushInviteHelper;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, p0}, Lcom/narvii/services/PushInviteHelper;->addOriganerInviteListener(Lcom/narvii/chat/video/overlay/VVchatPermissionInviteListener;)V

    .line 143
    .line 144
    new-instance v1, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    .line 148
    move-result-object v2

    .line 149
    .line 150
    .line 151
    invoke-direct {v1, p0, v2}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 152
    .line 153
    iput-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->messageSenderHelper:Lcom/narvii/chat/input/ChatInputMessageSenderHelper;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 157
    move-result-object v2

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v2}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->setThread(Lcom/narvii/model/ChatThread;)V

    .line 161
    .line 162
    new-instance v1, Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    .line 166
    move-result-object v2

    .line 167
    .line 168
    .line 169
    invoke-direct {v1, p0, v2}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 170
    .line 171
    iput-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->tvTypingUserHelper:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 175
    move-result-object v2

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v2}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->setThread(Lcom/narvii/model/ChatThread;)V

    .line 179
    .line 180
    new-instance v1, Lcom/narvii/chat/global/GlobalChatHelper;

    .line 181
    .line 182
    .line 183
    invoke-direct {v1, p0}, Lcom/narvii/chat/global/GlobalChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 184
    .line 185
    iput-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    .line 186
    .line 187
    new-instance v1, Lcom/narvii/account/push/PushNotificationHelper;

    .line 188
    .line 189
    .line 190
    invoke-direct {v1, p0}, Lcom/narvii/account/push/PushNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 191
    .line 192
    iput-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    .line 193
    .line 194
    new-instance v1, Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 195
    .line 196
    .line 197
    invoke-direct {v1, p0}, Lcom/narvii/chat/video/utils/VVChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 198
    .line 199
    iput-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->vvchatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 200
    .line 201
    .line 202
    invoke-static {p0, p0, p0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getInstance(Lcom/narvii/app/NVFragment;Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatJoinEventListener;)Lcom/narvii/chat/input/ChatThreadCheckFragment;

    .line 203
    move-result-object v1

    .line 204
    .line 205
    iput-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatThreadCheckFragment:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 209
    move-result v1

    .line 210
    .line 211
    if-nez v1, :cond_0

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 215
    move-result-object v1

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 219
    move-result-object v1

    .line 220
    const/4 v2, 0x2

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 224
    .line 225
    .line 226
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 227
    move-result-object v1

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 231
    move-result-object v1

    .line 232
    .line 233
    const-string v2, "mentionUserList"

    .line 234
    .line 235
    const-string v3, "mediaPicker"

    .line 236
    .line 237
    const-string v4, "attachObjType"

    .line 238
    .line 239
    const-string v5, "attachObj"

    .line 240
    .line 241
    const-string v6, "attachMessage"

    .line 242
    .line 243
    if-nez p1, :cond_1

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0, v6}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 247
    move-result-object p1

    .line 248
    .line 249
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachMessage:Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0, v5}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 253
    move-result-object p1

    .line 254
    .line 255
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjStr:Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 259
    move-result p1

    .line 260
    .line 261
    iput p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjectType:I

    .line 262
    .line 263
    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjStr:Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    invoke-direct {p0, v4, p1}, Lcom/narvii/chat/input/ChatInputFragment;->parseObject(Ljava/lang/String;I)V

    .line 267
    const/4 p1, 0x0

    .line 268
    .line 269
    iput-boolean p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->showedAttachment:Z

    .line 270
    .line 271
    new-instance p1, Lcom/narvii/media/MediaPickerFragment;

    .line 272
    .line 273
    .line 274
    invoke-direct {p1}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    .line 275
    .line 276
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    .line 277
    .line 278
    new-instance p1, Landroid/os/Bundle;

    .line 279
    .line 280
    .line 281
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 282
    .line 283
    const-string v4, "folder"

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    const-string v0, "showHQBar"

    .line 289
    const/4 v4, 0x1

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 293
    .line 294
    const-string v0, "membershipForVideo"

    .line 295
    .line 296
    .line 297
    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 298
    .line 299
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 303
    .line 304
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v1, p1, v3}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 308
    .line 309
    new-instance p1, Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 310
    .line 311
    .line 312
    invoke-direct {p1}, Lcom/narvii/chat/input/ChatMentionUserListFragment;-><init>()V

    .line 313
    .line 314
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionUserListFragment:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 315
    .line 316
    new-instance p1, Landroid/os/Bundle;

    .line 317
    .line 318
    .line 319
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 320
    .line 321
    const-string v0, "threadId"

    .line 322
    .line 323
    .line 324
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    .line 325
    move-result-object v3

    .line 326
    .line 327
    .line 328
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .line 330
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionUserListFragment:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 334
    .line 335
    .line 336
    const p1, 0x7f0a0965

    .line 337
    .line 338
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionUserListFragment:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v1, p1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 342
    goto :goto_0

    .line 343
    .line 344
    .line 345
    :cond_1
    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 346
    move-result-object v0

    .line 347
    .line 348
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachMessage:Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 352
    move-result-object v0

    .line 353
    .line 354
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjStr:Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 358
    move-result v0

    .line 359
    .line 360
    iput v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjectType:I

    .line 361
    .line 362
    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjStr:Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    invoke-direct {p0, v4, v0}, Lcom/narvii/chat/input/ChatInputFragment;->parseObject(Ljava/lang/String;I)V

    .line 366
    .line 367
    const-string v0, "showedAttachment"

    .line 368
    .line 369
    .line 370
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 371
    move-result p1

    .line 372
    .line 373
    iput-boolean p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->showedAttachment:Z

    .line 374
    .line 375
    .line 376
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 377
    move-result-object p1

    .line 378
    .line 379
    .line 380
    invoke-virtual {p1, v3}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 381
    move-result-object p1

    .line 382
    .line 383
    check-cast p1, Lcom/narvii/media/MediaPickerFragment;

    .line 384
    .line 385
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    .line 386
    .line 387
    .line 388
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 389
    move-result-object p1

    .line 390
    .line 391
    .line 392
    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 393
    move-result-object p1

    .line 394
    .line 395
    check-cast p1, Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 396
    .line 397
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionUserListFragment:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 398
    .line 399
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    .line 400
    .line 401
    .line 402
    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 403
    .line 404
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionUserListFragment:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 405
    .line 406
    .line 407
    invoke-virtual {p1, p0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->setMentionRelatedUsersCallback(Lcom/narvii/chat/input/ChatMentionUserListFragment$MentionRelatedUsersCallback;)V

    .line 408
    .line 409
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionUserListFragment:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentTransaction;->r(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 413
    move-result-object p1

    .line 414
    .line 415
    .line 416
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 417
    .line 418
    new-instance p1, Lcom/narvii/chat/input/ChatInputFragment$1;

    .line 419
    .line 420
    .line 421
    invoke-direct {p1, p0}, Lcom/narvii/chat/input/ChatInputFragment$1;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    .line 422
    .line 423
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->requireAccountReceiver:Landroid/content/BroadcastReceiver;

    .line 424
    .line 425
    new-instance v0, Landroid/content/IntentFilter;

    .line 426
    .line 427
    const-string v1, "com.narvii.action.ACCOUNT_CHANGED"

    .line 428
    .line 429
    .line 430
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 434
    .line 435
    const-string p1, "chatWaitingList"

    .line 436
    .line 437
    .line 438
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 439
    move-result-object p1

    .line 440
    .line 441
    check-cast p1, Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    .line 442
    .line 443
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatWaitingListService:Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    .line 444
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

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d00d0

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
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->tvTypingUser:Landroid/widget/TextView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->tvTypingUserHelper:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->dislinkLivelayer()V

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->pushInviteHelper:Lcom/narvii/services/PushInviteHelper;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lcom/narvii/services/PushInviteHelper;->removeOriganerInviteListener(Lcom/narvii/chat/video/overlay/VVchatPermissionInviteListener;)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeMyChannelUserStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/MyChannelUserStatusChangeListener;)V

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeLiveChannelChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LiveChannelChangeListener;)V

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeChannelUserWrapperUpdateListener(Ljava/lang/String;Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;)V

    .line 42
    .line 43
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeWaitingListListener(Ljava/lang/String;Lcom/narvii/chat/waitinglist/WaitingListListener;)V

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->srs:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->removeSRPermissionListener(Lcom/narvii/chat/screenroom/SRPermissionActionChangeListener;)V

    .line 56
    .line 57
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->requireAccountReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 63
    .line 64
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    .line 65
    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 73
    return-void
.end method

.method public onInvited()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    instance-of v0, v0, Lcom/narvii/chat/ChatFragment;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/narvii/chat/ChatFragment;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/chat/ChatFragment;->sendGetThreadReqeust()V

    .line 24
    .line 25
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->isKeyboardVisible:Z

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/narvii/chat/input/ChatInputFragment;->updateRightView(Z)V

    .line 29
    .line 30
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    const v1, 0x7f0d01c7

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 44
    .line 45
    .line 46
    const v1, 0x7f0a06e9

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    new-instance v2, Lcom/narvii/chat/input/ChatInputFragment$14;

    .line 53
    .line 54
    .line 55
    invoke-direct {v2, p0, v0}, Lcom/narvii/chat/input/ChatInputFragment$14;-><init>(Lcom/narvii/chat/input/ChatInputFragment;Lcom/narvii/util/dialog/AlertDialog;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .line 60
    .line 61
    const v1, 0x7f0a0788

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    new-instance v2, Lcom/narvii/chat/input/ChatInputFragment$15;

    .line 68
    .line 69
    .line 70
    invoke-direct {v2, p0, v0}, Lcom/narvii/chat/input/ChatInputFragment$15;-><init>(Lcom/narvii/chat/input/ChatInputFragment;Lcom/narvii/util/dialog/AlertDialog;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 77
    :cond_1
    return-void
.end method

.method public onJoinEnd()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->setIsJoining(Z)V

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->isKeyboardVisible:Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/narvii/chat/input/ChatInputFragment;->updateRightView(Z)V

    .line 12
    return-void
.end method

.method public onJoinStart()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->setIsJoining(Z)V

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->isKeyboardVisible:Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/narvii/chat/input/ChatInputFragment;->updateRightView(Z)V

    .line 12
    return-void
.end method

.method public onMentionCharacterInput(Ljava/lang/String;I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/narvii/chat/input/c;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/chat/input/c;-><init>(Lcom/narvii/chat/input/ChatInputFragment;Ljava/lang/String;I)V

    .line 17
    .line 18
    const-wide/16 p1, 0xa

    .line 19
    .line 20
    .line 21
    invoke-static {v0, p1, p2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 22
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

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentioning:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    if-eqz p1, :cond_2

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 11
    move-result p1

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionUserListFragment:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->E(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 32
    goto :goto_1

    .line 33
    .line 34
    .line 35
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionUserListFragment:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->r(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 50
    :goto_1
    return-void
.end method

.method public onMentionedUserSelected(Lcom/narvii/model/User;)V
    .locals 6
    .param p1    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "MentionUserList"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionUserListFragment:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->r(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 31
    const/4 v0, 0x0

    .line 32
    .line 33
    iput-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentioning:Z

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    iget v3, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionTextStartIndex:I

    .line 46
    .line 47
    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionTextBuilder:Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    .line 51
    move-result v4

    .line 52
    const/4 v5, 0x1

    .line 53
    .line 54
    if-le v4, v5, :cond_0

    .line 55
    .line 56
    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionTextBuilder:Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    .line 60
    move-result-object v4

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 v4, 0x0

    .line 63
    .line 64
    .line 65
    :goto_0
    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/narvii/chat/input/MentionedEditText;->mentionUser(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 66
    .line 67
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionTextBuilder:Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 71
    move-result v1

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 75
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
    .line 2
    iput-object p2, p0, Lcom/narvii/chat/input/ChatInputFragment;->signallingChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 3
    const/4 p3, 0x2

    .line 4
    .line 5
    if-ne p1, p3, :cond_0

    .line 6
    .line 7
    iget p1, p2, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 8
    const/4 p2, 0x1

    .line 9
    .line 10
    if-ne p1, p2, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->hideKeyboardAndPanel()V

    .line 14
    .line 15
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->isKeyboardVisible:Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment;->updateRightView(Z)V

    .line 19
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->tvTypingUserHelper:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->reportTypingEnd()V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/core/ChatService;->setDraft(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->oldDraft:Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v1}, Lcom/narvii/util/StringUtils;->isStringNotEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 51
    move-result v0

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    new-instance v0, Lcom/narvii/chat/core/ThreadUpdateObject;

    .line 56
    .line 57
    .line 58
    invoke-direct {v0}, Lcom/narvii/chat/core/ThreadUpdateObject;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    iput-object v1, v0, Lcom/narvii/chat/core/ThreadUpdateObject;->chatThread:Lcom/narvii/model/ChatThread;

    .line 65
    const/4 v1, 0x2

    .line 66
    .line 67
    iput v1, v0, Lcom/narvii/chat/core/ThreadUpdateObject;->action:I

    .line 68
    .line 69
    new-instance v1, Lcom/narvii/notification/Notification;

    .line 70
    .line 71
    const-string v2, "update"

    .line 72
    .line 73
    .line 74
    invoke-direct {v1, v2, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 78
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

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const-string v1, "isUHQ"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 9
    move-result v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v0

    .line 12
    .line 13
    :goto_0
    if-eqz p2, :cond_2

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 17
    move-result v2

    .line 18
    .line 19
    if-lez v2, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v2

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    check-cast v2, Lcom/narvii/model/Media;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/narvii/model/Media;->isVideo()Z

    .line 39
    move-result v3

    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    iget v3, v2, Lcom/narvii/model/Media;->type:I

    .line 44
    .line 45
    const/16 v4, 0x67

    .line 46
    .line 47
    if-eq v3, v4, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->messageSenderHelper:Lcom/narvii/chat/input/ChatInputMessageSenderHelper;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->sendVideoMessage(Lcom/narvii/model/Media;)Z

    .line 53
    .line 54
    const-string v0, "video"

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, v0}, Lcom/narvii/chat/input/ChatInputFragment;->logSendChatMessage(Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x1

    .line 59
    goto :goto_1

    .line 60
    .line 61
    :cond_1
    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputFragment;->messageSenderHelper:Lcom/narvii/chat/input/ChatInputMessageSenderHelper;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v2, v1}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->sendImageMessage(Lcom/narvii/model/Media;Z)Z

    .line 65
    .line 66
    const-string v2, "image"

    .line 67
    .line 68
    .line 69
    invoke-direct {p0, v2}, Lcom/narvii/chat/input/ChatInputFragment;->logSendChatMessage(Ljava/lang/String;)V

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    const/4 p1, 0x0

    .line 72
    .line 73
    if-nez p2, :cond_3

    .line 74
    move-object p2, p1

    .line 75
    goto :goto_2

    .line 76
    .line 77
    :cond_3
    const-string v1, "pickSource"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    move-result-object p2

    .line 82
    .line 83
    :goto_2
    if-eqz p2, :cond_5

    .line 84
    .line 85
    const-string v1, "statistics"

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    check-cast v1, Lcom/narvii/util/statistics/StatisticsService;

    .line 92
    .line 93
    const-string v2, "Chat Message Sent"

    .line 94
    .line 95
    .line 96
    invoke-interface {v1, v2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    const-string v2, "Message Sent Total"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    if-eqz v0, :cond_4

    .line 106
    .line 107
    const-string p2, "Video"

    .line 108
    goto :goto_3

    .line 109
    .line 110
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    const-string v2, "Other("

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string p2, ")"

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object p2

    .line 131
    .line 132
    :goto_3
    const-string v0, "Message Type"

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v0, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 136
    move-result-object p2

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 140
    move-result-object v0

    .line 141
    .line 142
    .line 143
    invoke-static {v0, p1}, Lcom/narvii/util/StatisticHelper;->getChatThreadType(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    move-result-object p1

    .line 145
    .line 146
    const-string v0, "Type"

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2, v0, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 150
    move-result-object p1

    .line 151
    .line 152
    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputFragment;->source:Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 156
    move-result-object p1

    .line 157
    .line 158
    .line 159
    invoke-static {p0, p1}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsEventBuilder;)V

    .line 160
    :cond_5
    return-void
.end method

.method public onReplybyLongClick(Lcom/narvii/model/ChatMessage;)V
    .locals 3
    .param p1    # Lcom/narvii/model/ChatMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param


    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->cancelEdit()V

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->replying:Z

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->replyMessage:Lcom/narvii/model/ChatMessage;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatReplyLayout:Lcom/narvii/chat/ChatReplyLayout;

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1, v2, v0}, Lcom/narvii/chat/ChatReplyLayout;->setMessage(Lcom/narvii/model/ChatMessage;IZ)V

    .line 14
    .line 15
    :cond_0
    new-instance p1, Lcom/narvii/chat/input/a;

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, p0}, Lcom/narvii/chat/input/a;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    .line 19
    .line 20
    const-wide/16 v0, 0xc8

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 24
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
    const-string v0, "attachMessage"

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachMessage:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "attachObj"

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjStr:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    const-string v0, "attachObjType"

    .line 20
    .line 21
    iget v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->attachObjectType:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 25
    .line 26
    const-string v0, "showedAttachment"

    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->showedAttachment:Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 32
    return-void
.end method

.method public onStickerSelected(Lcom/narvii/model/Sticker;Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->messageSenderHelper:Lcom/narvii/chat/input/ChatInputMessageSenderHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->sendSticker(Lcom/narvii/model/Sticker;Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    .line 6
    .line 7
    const-string p1, "sticker"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment;->logSendChatMessage(Ljava/lang/String;)V

    .line 11
    .line 12
    if-eqz p2, :cond_3

    .line 13
    .line 14
    iget p1, p2, Lcom/narvii/monetization/sticker/model/StickerCollection;->collectionType:I

    .line 15
    const/4 v0, 0x1

    .line 16
    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    const-string p1, "Sticker Sets"

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x2

    .line 22
    .line 23
    if-ne p1, v0, :cond_1

    .line 24
    .line 25
    const-string p1, "Custom Sticker"

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x3

    .line 28
    .line 29
    if-ne p1, v0, :cond_2

    .line 30
    .line 31
    const-string p1, "Shared Sticker Pack Sticker"

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_2
    const-string p1, "mood"

    .line 35
    .line 36
    iget-object p2, p2, Lcom/narvii/monetization/sticker/model/StickerCollection;->collectionId:Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result p1

    .line 41
    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    const-string p1, "Emoji Sticker"

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_3
    const-string p1, "Sticker"

    .line 48
    .line 49
    :goto_0
    const-string p2, "statistics"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    move-result-object p2

    .line 54
    .line 55
    check-cast p2, Lcom/narvii/util/statistics/StatisticsService;

    .line 56
    .line 57
    const-string v0, "Chat Message Sent"

    .line 58
    .line 59
    .line 60
    invoke-interface {p2, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 61
    move-result-object p2

    .line 62
    .line 63
    const-string v0, "Message Sent Total"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 67
    move-result-object p2

    .line 68
    .line 69
    const-string v0, "Message Type"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, v0, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 77
    move-result-object p2

    .line 78
    const/4 v0, 0x0

    .line 79
    .line 80
    .line 81
    invoke-static {p2, v0}, Lcom/narvii/util/StatisticHelper;->getChatThreadType(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object p2

    .line 83
    .line 84
    const-string v0, "Type"

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputFragment;->source:Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 94
    move-result-object p1

    .line 95
    .line 96
    .line 97
    invoke-static {p0, p1}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsEventBuilder;)V

    .line 98
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onStop()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->oldDraft:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/narvii/util/StringUtils;->isStringNotEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/chat/core/ChatService;->storeDraft()V

    .line 29
    :cond_0
    return-void
.end method

.method public onThreadActionChanged(I)V
    .locals 0

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->isKeyboardVisible:Z

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment;->updateRightView(Z)V

    .line 6
    return-void
.end method

.method public onThreadChanged(Lcom/narvii/model/ChatThread;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->messageSenderHelper:Lcom/narvii/chat/input/ChatInputMessageSenderHelper;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->setThread(Lcom/narvii/model/ChatThread;)V

    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->tvTypingUserHelper:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->setThread(Lcom/narvii/model/ChatThread;)V

    .line 23
    .line 24
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->setThread(Lcom/narvii/model/ChatThread;)V

    .line 34
    .line 35
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputOptionMenu:Lcom/narvii/chat/input/ChatInputOptionMenu;

    .line 36
    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lcom/narvii/chat/input/ChatInputOptionMenu;->setThread(Lcom/narvii/model/ChatThread;)V

    .line 45
    .line 46
    .line 47
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 48
    move-result p1

    .line 49
    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    if-eqz p1, :cond_4

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->updateViews()V

    .line 60
    .line 61
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lcom/narvii/chat/util/ChatHelper;->isChatThreadDisabledOrDelete(Lcom/narvii/model/ChatThread;)Z

    .line 69
    move-result p1

    .line 70
    .line 71
    if-eqz p1, :cond_5

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->hideKeyboardAndPanel()V

    .line 75
    :cond_5
    return-void
.end method

.method public onUserMentionedByLongClick(Lcom/narvii/model/User;)V
    .locals 3
    .param p1    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionUserListFragment:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->r(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentioning:Z

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionTextBuilder:Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 26
    move-result v1

    .line 27
    .line 28
    if-lez v1, :cond_0

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionTextBuilder:Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 34
    move-result v2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/narvii/chat/input/MentionedEditText;->markLongClickMention()V

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    .line 54
    move-result v1

    .line 55
    .line 56
    const-string v2, "@"

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1, p1}, Lcom/narvii/chat/input/MentionedEditText;->mentionUser(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public onUserWrapperStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 0
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
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 3
    .line 4
    iget p2, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 5
    .line 6
    if-ne p1, p2, :cond_0

    .line 7
    .line 8
    iget-boolean p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->isKeyboardVisible:Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment;->updateRightView(Z)V

    .line 12
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
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
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/narvii/util/Utils;->isLandscape(Landroid/content/Context;)Z

    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    xor-int/2addr v0, v1

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionEnabled:Z

    .line 24
    const/4 v0, 0x0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    .line 29
    .line 30
    const v0, 0x7f0a029e

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputMain:Landroid/view/View;

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a029b

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputBlur:Landroid/view/View;

    .line 46
    .line 47
    .line 48
    const v0, 0x7f0a0d78

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->srLandscapeButtons:Landroid/view/View;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    .line 61
    const v2, 0x7f0a02a0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    check-cast v0, Lcom/narvii/chat/input/ChatInputOptionMenu;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputOptionMenu:Lcom/narvii/chat/input/ChatInputOptionMenu;

    .line 70
    .line 71
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputFragment;->menuEventDealer:Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v2}, Lcom/narvii/chat/input/ChatInputOptionMenu;->setOnOptionMenuClickListener(Lcom/narvii/chat/input/ChatInputOptionMenu$OnOptionMenuClickListener;)V

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputOptionMenu:Lcom/narvii/chat/input/ChatInputOptionMenu;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    .line 80
    move-result-object v2

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v2}, Lcom/narvii/chat/input/ChatInputOptionMenu;->setThreadId(Ljava/lang/String;)V

    .line 84
    .line 85
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputOptionMenu:Lcom/narvii/chat/input/ChatInputOptionMenu;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 89
    move-result-object v2

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v2}, Lcom/narvii/chat/input/ChatInputOptionMenu;->setThread(Lcom/narvii/model/ChatThread;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    .line 99
    const v2, 0x7f0a029c

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputMask:Landroid/view/View;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    .line 110
    .line 111
    const v0, 0x7f0a0281

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    check-cast v0, Lcom/narvii/widget/TintButton;

    .line 118
    .line 119
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->addButton:Lcom/narvii/widget/TintButton;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    .line 124
    .line 125
    const v0, 0x7f0a0c17

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 129
    move-result-object v0

    .line 130
    .line 131
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatReplyMainView:Landroid/view/View;

    .line 132
    .line 133
    .line 134
    const v0, 0x7f0a0c16

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 138
    move-result-object v0

    .line 139
    .line 140
    check-cast v0, Lcom/narvii/chat/ChatReplyLayout;

    .line 141
    .line 142
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatReplyLayout:Lcom/narvii/chat/ChatReplyLayout;

    .line 143
    .line 144
    new-instance v2, Lcom/narvii/chat/input/ChatInputFragment$2;

    .line 145
    .line 146
    .line 147
    invoke-direct {v2, p0}, Lcom/narvii/chat/input/ChatInputFragment$2;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v2}, Lcom/narvii/chat/ChatReplyLayout;->setOnChatReplyClickListener(Lcom/narvii/chat/ChatReplyLayout$OnClickListener;)V

    .line 151
    .line 152
    .line 153
    const v0, 0x7f0a0298

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 157
    move-result-object v0

    .line 158
    .line 159
    check-cast v0, Lcom/narvii/chat/input/MentionedEditText;

    .line 160
    .line 161
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, p0}, Lcom/narvii/chat/input/MentionedEditText;->setOnMentionInputListener(Lcom/narvii/chat/input/MentionedEditText$OnMentionInputListener;)V

    .line 165
    .line 166
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 167
    .line 168
    iget-boolean v2, p0, Lcom/narvii/chat/input/ChatInputFragment;->mentionEnabled:Z

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v2}, Lcom/narvii/chat/input/MentionedEditText;->setMentionEnabled(Z)V

    .line 172
    .line 173
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 174
    .line 175
    new-instance v2, Lcom/narvii/chat/input/ChatInputFragment$3;

    .line 176
    .line 177
    .line 178
    invoke-direct {v2, p0}, Lcom/narvii/chat/input/ChatInputFragment$3;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 182
    .line 183
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 184
    .line 185
    new-instance v2, Lcom/narvii/chat/input/ChatInputFragment$4;

    .line 186
    .line 187
    .line 188
    invoke-direct {v2, p0}, Lcom/narvii/chat/input/ChatInputFragment$4;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 192
    .line 193
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 194
    .line 195
    new-array v2, v1, [Landroid/text/InputFilter;

    .line 196
    .line 197
    new-instance v3, Lcom/narvii/chat/input/ChatInputFragment$5;

    .line 198
    .line 199
    .line 200
    invoke-direct {v3, p0}, Lcom/narvii/chat/input/ChatInputFragment$5;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    .line 201
    const/4 v4, 0x0

    .line 202
    .line 203
    aput-object v3, v2, v4

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 207
    .line 208
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    .line 213
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 214
    .line 215
    new-instance v2, Lcom/narvii/chat/input/ChatInputFragment$6;

    .line 216
    .line 217
    .line 218
    invoke-direct {v2, p0}, Lcom/narvii/chat/input/ChatInputFragment$6;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    .line 219
    .line 220
    .line 221
    invoke-static {v0, v2}, Lcom/narvii/util/SoftKeyboard;->observeKeyboard(Landroid/view/View;Lcom/narvii/util/Callback;)Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    .line 222
    .line 223
    .line 224
    const v0, 0x7f0a0292

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 228
    move-result-object v0

    .line 229
    .line 230
    check-cast v0, Landroid/widget/TextView;

    .line 231
    .line 232
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputButton:Landroid/widget/TextView;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    .line 237
    .line 238
    const v0, 0x7f0a0fc0

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 242
    move-result-object v0

    .line 243
    .line 244
    check-cast v0, Landroid/widget/TextView;

    .line 245
    .line 246
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->viewOnlyInputButton:Landroid/widget/TextView;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    .line 251
    .line 252
    const v0, 0x7f0a0db1

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 256
    move-result-object v2

    .line 257
    .line 258
    if-eqz v2, :cond_2

    .line 259
    .line 260
    .line 261
    const v3, 0x7f0a0da6

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 265
    move-result-object v3

    .line 266
    .line 267
    check-cast v3, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;

    .line 268
    .line 269
    iput-object v3, p0, Lcom/narvii/chat/input/ChatInputFragment;->stickerButton:Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;

    .line 270
    .line 271
    const-string v4, "stickerCollectionId"

    .line 272
    .line 273
    if-eqz v3, :cond_0

    .line 274
    .line 275
    if-nez p2, :cond_0

    .line 276
    .line 277
    .line 278
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 279
    move-result-object v3

    .line 280
    .line 281
    if-eqz v3, :cond_0

    .line 282
    .line 283
    new-instance v3, Lcom/narvii/chat/input/ChatInputFragment$7;

    .line 284
    .line 285
    .line 286
    invoke-direct {v3, p0}, Lcom/narvii/chat/input/ChatInputFragment$7;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    .line 287
    .line 288
    const-wide/16 v5, 0xfa

    .line 289
    .line 290
    .line 291
    invoke-static {v3, v5, v6}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 292
    .line 293
    .line 294
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 295
    move-result-object v3

    .line 296
    .line 297
    const-string v5, "stickPicker"

    .line 298
    .line 299
    .line 300
    invoke-virtual {v3, v5}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 301
    move-result-object v3

    .line 302
    .line 303
    check-cast v3, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 304
    .line 305
    iput-object v3, p0, Lcom/narvii/chat/input/ChatInputFragment;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 306
    .line 307
    if-nez v3, :cond_1

    .line 308
    .line 309
    new-instance v3, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 310
    .line 311
    .line 312
    invoke-direct {v3}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;-><init>()V

    .line 313
    .line 314
    iput-object v3, p0, Lcom/narvii/chat/input/ChatInputFragment;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 315
    .line 316
    new-instance v3, Landroid/os/Bundle;

    .line 317
    .line 318
    .line 319
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 320
    .line 321
    const-string v6, "tabBottom"

    .line 322
    .line 323
    .line 324
    invoke-virtual {v3, v6, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 325
    .line 326
    const-string v1, "source"

    .line 327
    .line 328
    const-string v6, "Sticker Keyboard"

    .line 329
    .line 330
    .line 331
    invoke-virtual {v3, v1, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .line 333
    const-string v1, "collectionId"

    .line 334
    .line 335
    .line 336
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 337
    move-result-object v4

    .line 338
    .line 339
    .line 340
    invoke-virtual {v3, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .line 342
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 349
    move-result-object v1

    .line 350
    .line 351
    .line 352
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 353
    move-result-object v1

    .line 354
    .line 355
    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputFragment;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v1, v0, v3, v5}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 359
    move-result-object v0

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 363
    .line 364
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0, p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->setStickerSelectListener(Lcom/narvii/monetization/sticker/picker/StickerSelectListener;)V

    .line 368
    .line 369
    new-instance v0, Lcom/narvii/chat/input/ChatInputFragment$8;

    .line 370
    .line 371
    .line 372
    invoke-direct {v0, p0}, Lcom/narvii/chat/input/ChatInputFragment$8;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    .line 373
    .line 374
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->stickerButton:Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;

    .line 375
    .line 376
    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v1, v2, v3, p0}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->bindPanelLayout(Landroid/view/View;Landroid/widget/EditText;Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;)V

    .line 380
    .line 381
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->stickerButton:Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v1, v0}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->setPanelHideListener(Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;)V

    .line 385
    .line 386
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->panelHideMap:Ljava/util/HashMap;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    :cond_2
    const v0, 0x7f0a02bc

    .line 393
    .line 394
    .line 395
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 396
    move-result-object v0

    .line 397
    .line 398
    check-cast v0, Lcom/narvii/widget/TintButton;

    .line 399
    .line 400
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->sendButton:Lcom/narvii/widget/TintButton;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    .line 405
    .line 406
    const v0, 0x7f0a02bd

    .line 407
    .line 408
    .line 409
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 410
    move-result-object v0

    .line 411
    .line 412
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->sendButtonContainer:Landroid/view/View;

    .line 413
    .line 414
    .line 415
    const v0, 0x7f0a02c0

    .line 416
    .line 417
    .line 418
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 419
    move-result-object v0

    .line 420
    .line 421
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatStickerButtonView:Landroid/view/View;

    .line 422
    .line 423
    .line 424
    const v0, 0x7f0a0282

    .line 425
    .line 426
    .line 427
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 428
    move-result-object v0

    .line 429
    .line 430
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatAddButtonView:Landroid/view/View;

    .line 431
    .line 432
    .line 433
    const v0, 0x7f0a02b8

    .line 434
    .line 435
    .line 436
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 437
    move-result-object v0

    .line 438
    .line 439
    check-cast v0, Lcom/narvii/chat/input/ChatInputRightViewContainer;

    .line 440
    .line 441
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    .line 442
    .line 443
    .line 444
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    .line 445
    move-result-object v1

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0, v1}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->setThreadId(Ljava/lang/String;)V

    .line 449
    .line 450
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    .line 451
    .line 452
    .line 453
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 454
    move-result-object v1

    .line 455
    .line 456
    .line 457
    invoke-virtual {v0, v1}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->setThread(Lcom/narvii/model/ChatThread;)V

    .line 458
    .line 459
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    .line 460
    .line 461
    const-string v1, "invite"

    .line 462
    .line 463
    .line 464
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 465
    move-result v1

    .line 466
    .line 467
    .line 468
    invoke-virtual {v0, v1}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->setIsInvite(Z)V

    .line 469
    .line 470
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    .line 471
    .line 472
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->menuEventDealer:Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v0, v1}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->setOnClickRightViewListener(Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;)V

    .line 476
    .line 477
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    .line 478
    .line 479
    .line 480
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 481
    move-result v1

    .line 482
    .line 483
    .line 484
    invoke-virtual {v0, v1}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->setEmbedFragment(Z)V

    .line 485
    .line 486
    .line 487
    const v0, 0x7f0a015e

    .line 488
    .line 489
    .line 490
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 491
    move-result-object v0

    .line 492
    .line 493
    check-cast v0, Lcom/narvii/chat/audio/AudioRecordLayout;

    .line 494
    .line 495
    if-eqz v0, :cond_3

    .line 496
    .line 497
    .line 498
    const v1, 0x7f0a0fdb

    .line 499
    .line 500
    .line 501
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 502
    move-result-object v1

    .line 503
    .line 504
    check-cast v1, Lcom/narvii/chat/audio/AudioBoardLayout;

    .line 505
    .line 506
    .line 507
    const v2, 0x7f0a0fdd

    .line 508
    .line 509
    .line 510
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 511
    move-result-object v2

    .line 512
    .line 513
    check-cast v2, Lcom/narvii/chat/input/ChatInputPanelVoiceButton;

    .line 514
    .line 515
    new-instance v3, Lcom/narvii/chat/input/ChatInputFragment$9;

    .line 516
    .line 517
    .line 518
    invoke-direct {v3, p0, v1, v2}, Lcom/narvii/chat/input/ChatInputFragment$9;-><init>(Lcom/narvii/chat/input/ChatInputFragment;Lcom/narvii/chat/audio/AudioBoardLayout;Lcom/narvii/chat/input/ChatInputPanelVoiceButton;)V

    .line 519
    .line 520
    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 521
    .line 522
    .line 523
    invoke-virtual {v2, v0, v4, p0}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->bindPanelLayout(Landroid/view/View;Landroid/widget/EditText;Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v2, v3}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->setPanelHideListener(Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v0, p0}, Lcom/narvii/chat/audio/AudioRecordLayout;->setFragment(Landroidx/fragment/app/Fragment;)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v0, v1}, Lcom/narvii/chat/audio/AudioRecordLayout;->addOnStatusChangeListener(Lcom/narvii/chat/audio/AudioRecordLayout$OnStatusChangeListener;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v0, v1}, Lcom/narvii/chat/audio/AudioRecordLayout;->addOnRecordTimeChangeListener(Lcom/narvii/chat/audio/AudioRecordLayout$OnRecordTimeChangeListener;)V

    .line 536
    .line 537
    new-instance v2, Lcom/narvii/chat/input/ChatInputFragment$10;

    .line 538
    .line 539
    .line 540
    invoke-direct {v2, p0}, Lcom/narvii/chat/input/ChatInputFragment$10;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v0, v2}, Lcom/narvii/chat/audio/AudioRecordLayout;->setRecordFinishListener(Lcom/narvii/chat/RecordFinishListener;)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v0, v1}, Lcom/narvii/chat/audio/AudioRecordLayout;->addRecordInfoListener(Lcom/narvii/chat/RecordInfoListener;)V

    .line 547
    .line 548
    new-instance v1, Lcom/narvii/chat/input/ChatInputFragment$11;

    .line 549
    .line 550
    .line 551
    invoke-direct {v1, p0}, Lcom/narvii/chat/input/ChatInputFragment$11;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v0, v1}, Lcom/narvii/chat/audio/AudioRecordLayout;->addRecordInfoListener(Lcom/narvii/chat/RecordInfoListener;)V

    .line 555
    .line 556
    new-instance v1, Lcom/narvii/chat/input/ChatInputFragment$12;

    .line 557
    .line 558
    .line 559
    invoke-direct {v1, p0}, Lcom/narvii/chat/input/ChatInputFragment$12;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v0, v1}, Lcom/narvii/chat/audio/AudioRecordLayout;->addRecordEventFinishListener(Lcom/narvii/chat/RecordEventFinishListener;)V

    .line 563
    .line 564
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->panelHideMap:Ljava/util/HashMap;

    .line 565
    .line 566
    .line 567
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    :cond_3
    const v0, 0x7f0a0f1f

    .line 571
    .line 572
    .line 573
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 574
    move-result-object p1

    .line 575
    .line 576
    check-cast p1, Landroid/widget/TextView;

    .line 577
    .line 578
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->tvTypingUser:Landroid/widget/TextView;

    .line 579
    .line 580
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->tvTypingUserHelper:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    .line 581
    .line 582
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 583
    .line 584
    .line 585
    invoke-virtual {v0, p1, v1}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->linkLivelayer(Landroid/widget/TextView;Landroid/widget/EditText;)V

    .line 586
    .line 587
    const-string p1, "showKeyboard"

    .line 588
    .line 589
    .line 590
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 591
    move-result p1

    .line 592
    .line 593
    if-eqz p1, :cond_4

    .line 594
    .line 595
    new-instance p1, Lcom/narvii/chat/input/ChatInputFragment$13;

    .line 596
    .line 597
    .line 598
    invoke-direct {p1, p0}, Lcom/narvii/chat/input/ChatInputFragment$13;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    .line 599
    .line 600
    const-wide/16 v0, 0x1f4

    .line 601
    .line 602
    .line 603
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 604
    .line 605
    :cond_4
    if-nez p2, :cond_5

    .line 606
    .line 607
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 608
    .line 609
    if-eqz p1, :cond_5

    .line 610
    .line 611
    .line 612
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    .line 613
    move-result-object p2

    .line 614
    .line 615
    .line 616
    invoke-virtual {p1, p2}, Lcom/narvii/chat/core/ChatService;->getDraft(Ljava/lang/String;)Ljava/lang/String;

    .line 617
    move-result-object p1

    .line 618
    .line 619
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->oldDraft:Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 623
    move-result p1

    .line 624
    .line 625
    if-nez p1, :cond_5

    .line 626
    .line 627
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 628
    .line 629
    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputFragment;->oldDraft:Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    .line 634
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 635
    .line 636
    .line 637
    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    .line 638
    move-result p2

    .line 639
    .line 640
    .line 641
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 642
    :cond_5
    return-void
.end method

.method public onWaitingListApprove(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatThreadCheckFragment:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->signallingChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->requestToJoinChannel(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 8
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

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->showView()V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->waitingListUsers:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->waitingListUsers:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    return-void
.end method

.method public removePanelHideListener(Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->panelHideEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public scrollChatListToBottom()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->geChatListFragment()Lcom/narvii/chat/ChatListFragment;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    return-void

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/chat/ChatListFragment;->scrollToBottom()V

    .line 18
    return-void
.end method

.method protected showJoinChatDialog(ZLandroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance p1, Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    .line 17
    return-void

    .line 18
    .line 19
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    .line 31
    const p1, 0x7f0d01d0

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_1
    const p1, 0x7f0d01c9

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {v0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 39
    .line 40
    .line 41
    const p1, 0x7f0a0247

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    new-instance v1, Lcom/narvii/chat/input/ChatInputFragment$18;

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, p0, v0}, Lcom/narvii/chat/input/ChatInputFragment$18;-><init>(Lcom/narvii/chat/input/ChatInputFragment;Lcom/narvii/util/dialog/AlertDialog;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    .line 55
    .line 56
    const p1, 0x7f0a002d

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    new-instance v1, Lcom/narvii/chat/input/ChatInputFragment$19;

    .line 63
    .line 64
    .line 65
    invoke-direct {v1, p0, v0, p2}, Lcom/narvii/chat/input/ChatInputFragment$19;-><init>(Lcom/narvii/chat/input/ChatInputFragment;Lcom/narvii/util/dialog/AlertDialog;Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 72
    return-void
.end method

.method public showPanel(Landroid/view/View;)V
    .locals 5

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    const v1, 0x7f0a0ac3

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Landroid/widget/FrameLayout;

    .line 17
    const/4 v1, 0x0

    .line 18
    move v2, v1

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 22
    move-result v3

    .line 23
    .line 24
    if-ge v2, v3, :cond_4

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    if-ne p1, v3, :cond_1

    .line 31
    move v4, v1

    .line 32
    goto :goto_1

    .line 33
    .line 34
    :cond_1
    const/16 v4, 0x8

    .line 35
    .line 36
    .line 37
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    if-eq v3, p1, :cond_2

    .line 40
    .line 41
    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputFragment;->panelHideMap:Ljava/util/HashMap;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object v3

    .line 46
    .line 47
    check-cast v3, Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;

    .line 48
    .line 49
    if-eqz v3, :cond_3

    .line 50
    .line 51
    .line 52
    invoke-interface {v3}, Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;->onPanelHide()V

    .line 53
    goto :goto_2

    .line 54
    .line 55
    :cond_2
    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputFragment;->panelHideMap:Ljava/util/HashMap;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    move-result-object v3

    .line 60
    .line 61
    check-cast v3, Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;

    .line 62
    .line 63
    if-eqz v3, :cond_3

    .line 64
    .line 65
    .line 66
    invoke-interface {v3}, Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;->onPanelShow()V

    .line 67
    .line 68
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 69
    goto :goto_0

    .line 70
    .line 71
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputOptionMenu:Lcom/narvii/chat/input/ChatInputOptionMenu;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/narvii/chat/input/ChatInputOptionMenu;->hide()V

    .line 75
    .line 76
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->panelHideEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 77
    .line 78
    new-instance v0, Lcom/narvii/chat/input/ChatInputFragment$23;

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, p0}, Lcom/narvii/chat/input/ChatInputFragment$23;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 85
    const/4 p1, 0x1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment;->checkDismissMaskShown(Z)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->updateBackground()V

    .line 92
    .line 93
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment;->updateReplyMainView(Ljava/lang/Boolean;)V

    .line 97
    return-void
.end method

.method public showPanelWithKeyBoardSwitch(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->switchingKeyboard:Lcom/narvii/util/statistics/TmpValue;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/chat/input/ChatInputFragment$SwitchKeyboard;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2, p1}, Lcom/narvii/chat/input/ChatInputFragment$SwitchKeyboard;-><init>(ZLandroid/view/View;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->hideSoftKeyboard()V

    .line 15
    return-void
.end method

.method public updateBackground()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->isAllPanelHidden()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->isKeyboardVisible:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 21
    .line 22
    .line 23
    const v1, 0x7f0801c4

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 29
    const/4 v1, -0x1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 35
    .line 36
    .line 37
    const v1, -0x4d000001

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputBlur:Landroid/view/View;

    .line 43
    .line 44
    const/16 v1, 0x8

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 51
    .line 52
    .line 53
    const v1, 0x7f0801c3

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 59
    .line 60
    const/high16 v1, -0x1000000

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    .line 65
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 66
    .line 67
    .line 68
    const v1, -0x4f504f

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 72
    .line 73
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputBlur:Landroid/view/View;

    .line 74
    const/4 v1, 0x0

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    :goto_1
    return-void
.end method

.method protected updateRightView(Z)V
    .locals 4

    .line 1
    .line 2
    const/16 v0, 0x8

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez p1, :cond_5

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->isAllPanelHidden()Z

    .line 9
    move-result p1

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    goto :goto_1

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->sendButtonContainer:Landroid/view/View;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->showView()V

    .line 30
    .line 31
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->setDisallowTip(Z)V

    .line 37
    .line 38
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->signallingChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 39
    .line 40
    if-eqz p1, :cond_4

    .line 41
    .line 42
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 43
    .line 44
    if-eqz p1, :cond_4

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 48
    move-result p1

    .line 49
    .line 50
    if-nez p1, :cond_4

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    const/high16 v3, 0x43a00000    # 320.0f

    .line 67
    .line 68
    .line 69
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 70
    move-result v2

    .line 71
    .line 72
    if-gt p1, v2, :cond_3

    .line 73
    .line 74
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatAddButtonView:Landroid/view/View;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 78
    goto :goto_0

    .line 79
    .line 80
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatAddButtonView:Landroid/view/View;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatStickerButtonView:Landroid/view/View;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 89
    goto :goto_3

    .line 90
    .line 91
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatStickerButtonView:Landroid/view/View;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatAddButtonView:Landroid/view/View;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    goto :goto_3

    .line 101
    .line 102
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    .line 109
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 110
    move-result p1

    .line 111
    .line 112
    if-nez p1, :cond_7

    .line 113
    .line 114
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->signallingChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 115
    .line 116
    if-eqz p1, :cond_6

    .line 117
    .line 118
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 119
    .line 120
    if-nez p1, :cond_7

    .line 121
    .line 122
    :cond_6
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->sendButtonContainer:Landroid/view/View;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    .line 128
    .line 129
    if-eqz p1, :cond_8

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->showView()V

    .line 138
    goto :goto_2

    .line 139
    .line 140
    :cond_7
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->sendButtonContainer:Landroid/view/View;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    .line 145
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    .line 146
    .line 147
    if-eqz p1, :cond_8

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 151
    .line 152
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    .line 153
    .line 154
    if-eqz p1, :cond_9

    .line 155
    const/4 v0, 0x1

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, v0}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->setDisallowTip(Z)V

    .line 159
    .line 160
    :cond_9
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatStickerButtonView:Landroid/view/View;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    .line 165
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatAddButtonView:Landroid/view/View;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    .line 170
    .line 171
    :goto_3
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->updateSRViews()V

    .line 172
    return-void
.end method

.method protected updateViews()V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 3
    .line 4
    if-eqz v0, :cond_f

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->updating:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_c

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->updating:Z

    .line 14
    .line 15
    const-string v1, "prefs"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Landroid/content/SharedPreferences;

    .line 22
    .line 23
    const-string v2, "returnToSendChat"

    .line 24
    const/4 v3, 0x0

    .line 25
    .line 26
    .line 27
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 28
    move-result v1

    .line 29
    .line 30
    iget-boolean v2, p0, Lcom/narvii/chat/input/ChatInputFragment;->returnToSend:Z

    .line 31
    const/4 v4, 0x0

    .line 32
    .line 33
    if-eq v1, v2, :cond_1

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iput-boolean v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->returnToSend:Z

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 43
    .line 44
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 45
    const/4 v2, 0x4

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 49
    .line 50
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 51
    .line 52
    new-instance v2, Lcom/narvii/chat/input/ChatInputFragment$16;

    .line 53
    .line 54
    .line 55
    invoke-direct {v2, p0}, Lcom/narvii/chat/input/ChatInputFragment$16;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_1
    if-eq v1, v2, :cond_2

    .line 62
    .line 63
    if-nez v1, :cond_2

    .line 64
    .line 65
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 69
    .line 70
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 74
    .line 75
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->checkThreadStatus()I

    .line 82
    move-result v1

    .line 83
    .line 84
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    .line 85
    .line 86
    if-eqz v2, :cond_4

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 90
    move-result v2

    .line 91
    move v5, v3

    .line 92
    .line 93
    :goto_1
    if-ge v5, v2, :cond_4

    .line 94
    .line 95
    iget-object v6, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatRightButtonContainer:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 99
    move-result-object v6

    .line 100
    .line 101
    if-nez v1, :cond_3

    .line 102
    move v7, v0

    .line 103
    goto :goto_2

    .line 104
    :cond_3
    move v7, v3

    .line 105
    .line 106
    .line 107
    :goto_2
    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 108
    .line 109
    add-int/lit8 v5, v5, 0x1

    .line 110
    goto :goto_1

    .line 111
    .line 112
    :cond_4
    if-nez v1, :cond_5

    .line 113
    .line 114
    .line 115
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->updateSendBtn()V

    .line 116
    goto :goto_3

    .line 117
    .line 118
    :cond_5
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputFragment;->sendButton:Lcom/narvii/widget/TintButton;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v3}, Lcom/narvii/widget/TintButton;->setEnabled(Z)V

    .line 122
    .line 123
    .line 124
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 125
    move-result-object v2

    .line 126
    .line 127
    if-nez v2, :cond_6

    .line 128
    move-object v2, v4

    .line 129
    goto :goto_4

    .line 130
    .line 131
    .line 132
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 133
    move-result-object v2

    .line 134
    .line 135
    .line 136
    const v5, 0x7f0a015e

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 140
    move-result-object v2

    .line 141
    .line 142
    check-cast v2, Lcom/narvii/chat/audio/AudioRecordLayout;

    .line 143
    .line 144
    :goto_4
    if-eqz v2, :cond_7

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 148
    move-result v2

    .line 149
    .line 150
    if-nez v2, :cond_7

    .line 151
    move v2, v0

    .line 152
    goto :goto_5

    .line 153
    :cond_7
    move v2, v3

    .line 154
    .line 155
    :goto_5
    iget-object v5, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 156
    .line 157
    const/16 v6, 0x8

    .line 158
    .line 159
    if-nez v1, :cond_8

    .line 160
    .line 161
    if-nez v2, :cond_8

    .line 162
    move v2, v3

    .line 163
    goto :goto_6

    .line 164
    :cond_8
    move v2, v6

    .line 165
    .line 166
    .line 167
    :goto_6
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 168
    .line 169
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputButton:Landroid/widget/TextView;

    .line 170
    .line 171
    if-eqz v1, :cond_9

    .line 172
    move v5, v3

    .line 173
    goto :goto_7

    .line 174
    :cond_9
    move v5, v6

    .line 175
    .line 176
    .line 177
    :goto_7
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 178
    .line 179
    if-eqz v1, :cond_c

    .line 180
    .line 181
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputButton:Landroid/widget/TextView;

    .line 182
    .line 183
    if-ne v1, v0, :cond_a

    .line 184
    .line 185
    .line 186
    const v5, -0x5f000001

    .line 187
    goto :goto_8

    .line 188
    .line 189
    .line 190
    :cond_a
    const v5, -0xbfbfc0

    .line 191
    .line 192
    .line 193
    :goto_8
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    .line 195
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputButton:Landroid/widget/TextView;

    .line 196
    .line 197
    if-ne v1, v0, :cond_b

    .line 198
    .line 199
    .line 200
    const v1, 0x7f0801c4

    .line 201
    goto :goto_9

    .line 202
    .line 203
    .line 204
    :cond_b
    const v1, 0x7f08028c

    .line 205
    .line 206
    .line 207
    :goto_9
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 208
    .line 209
    :cond_c
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 210
    .line 211
    const/high16 v2, 0x41700000    # 15.0f

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 215
    .line 216
    iget-boolean v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->isKeyboardVisible:Z

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0, v1}, Lcom/narvii/chat/input/ChatInputFragment;->updateRightView(Z)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->updateBackground()V

    .line 223
    .line 224
    iput-boolean v3, p0, Lcom/narvii/chat/input/ChatInputFragment;->updating:Z

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 228
    move-result-object v1

    .line 229
    .line 230
    if-eqz v1, :cond_d

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->isViewOnly()Z

    .line 234
    move-result v2

    .line 235
    .line 236
    if-eqz v2, :cond_d

    .line 237
    .line 238
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2, v1}, Lcom/narvii/chat/util/ChatHelper;->isHostOrCoHost(Lcom/narvii/model/ChatThread;)Z

    .line 242
    move-result v1

    .line 243
    .line 244
    if-nez v1, :cond_d

    .line 245
    .line 246
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatInputButton:Landroid/widget/TextView;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 250
    move-result v1

    .line 251
    .line 252
    if-ne v1, v6, :cond_d

    .line 253
    move v1, v0

    .line 254
    goto :goto_a

    .line 255
    :cond_d
    move v1, v3

    .line 256
    .line 257
    :goto_a
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputFragment;->viewOnlyInputButton:Landroid/widget/TextView;

    .line 258
    .line 259
    if-eqz v1, :cond_e

    .line 260
    goto :goto_b

    .line 261
    :cond_e
    move v3, v6

    .line 262
    .line 263
    .line 264
    :goto_b
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 265
    .line 266
    if-eqz v1, :cond_f

    .line 267
    .line 268
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 272
    move-result-object v1

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 276
    move-result-object v1

    .line 277
    .line 278
    .line 279
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 280
    move-result v1

    .line 281
    .line 282
    if-nez v1, :cond_f

    .line 283
    .line 284
    iput-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->shieldInputEvent:Z

    .line 285
    .line 286
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    .line 291
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 295
    .line 296
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 297
    .line 298
    if-eqz v0, :cond_f

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    .line 302
    move-result-object v1

    .line 303
    .line 304
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 308
    move-result-object v2

    .line 309
    .line 310
    .line 311
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 312
    move-result-object v2

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/core/ChatService;->setDraft(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_f
    :goto_c
    return-void
.end method

.method private cancelEdit()V
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->editMessage:Lcom/narvii/model/ChatMessage;

    if-eqz v0, :cond_end

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->editMessage:Lcom/narvii/model/ChatMessage;

    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatReplyLayout:Lcom/narvii/chat/ChatReplyLayout;

    if-eqz v1, :cond_no_layout

    iput-boolean v0, v1, Lcom/narvii/chat/ChatReplyLayout;->editMode:Z

    :cond_no_layout
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    invoke-virtual {v1}, Lcom/narvii/chat/input/MentionedEditText;->clear()V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_end
    return-void
.end method

.method private submitEdit()V
    .locals 6

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->editMessage:Lcom/narvii/model/ChatMessage;

    if-eqz v0, :cond_end

    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_end

    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->contentTypeJson()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/chat/thread/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/message/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "content"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lorg/json/JSONObject;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v2

    const-string v3, "api"

    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/util/http/ApiService;

    new-instance v4, Lcom/narvii/chat/input/ChatInputFragment$EditResponse;

    iget-object v5, p0, Lcom/narvii/chat/input/ChatInputFragment;->editAdapter:Lcom/narvii/list/NVAdapter;

    invoke-direct {v4, v5, v0, v1}, Lcom/narvii/chat/input/ChatInputFragment$EditResponse;-><init>(Lcom/narvii/list/NVAdapter;Lcom/narvii/model/ChatMessage;Ljava/lang/String;)V

    invoke-virtual {v3, v2, v4}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->cancelEdit()V

    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->stopReplaing()V

    :cond_end
    return-void
.end method

.method public setEditAdapter(Lcom/narvii/list/NVAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->editAdapter:Lcom/narvii/list/NVAdapter;

    return-void
.end method

.method public startEditing(Lcom/narvii/model/ChatMessage;)V
    .locals 4

    if-eqz p1, :cond_end

    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment;->cancelEdit()V

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->editMessage:Lcom/narvii/model/ChatMessage;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/chat/input/ChatInputFragment;->replying:Z

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment;->replyMessage:Lcom/narvii/model/ChatMessage;

    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->chatReplyLayout:Lcom/narvii/chat/ChatReplyLayout;

    if-eqz v1, :cond_no_layout

    iput-boolean v0, v1, Lcom/narvii/chat/ChatReplyLayout;->editMode:Z

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lcom/narvii/chat/ChatReplyLayout;->setMessage(Lcom/narvii/model/ChatMessage;IZ)V

    :cond_no_layout
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    if-nez v0, :cond_has_text

    const-string v0, ""

    :cond_has_text
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    new-instance v2, Lcom/narvii/chat/input/EditKeyboard;

    invoke-direct {v2, p0}, Lcom/narvii/chat/input/EditKeyboard;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    const-wide/16 v0, 0xc8

    invoke-static {v2, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_end
    return-void
    .end method