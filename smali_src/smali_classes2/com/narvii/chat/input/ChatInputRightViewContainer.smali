.class public Lcom/narvii/chat/input/ChatInputRightViewContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

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
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p1, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->oldWaitList:Ljava/util/List;

    .line 11
    .line 12
    new-instance p1, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->tmpNewUsers:Ljava/util/List;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    const p2, 0x7f0d00d1

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    const p1, 0x7f0a0fe2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->voiceView:Landroid/view/View;

    .line 37
    .line 38
    .line 39
    const p1, 0x7f0a0791

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinView:Landroid/view/View;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    .line 50
    .line 51
    const p1, 0x7f0a09cc

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->muteView:Landroid/view/View;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    const p1, 0x7f0a096a

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->menuView:Landroid/view/View;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    .line 74
    .line 75
    const p1, 0x7f0a0c27

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->requestView:Landroid/view/View;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    .line 86
    .line 87
    const p2, 0x7f0a04f5

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    move-result-object p2

    .line 92
    .line 93
    iput-object p2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->endView:Landroid/view/View;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    .line 98
    .line 99
    const p2, 0x7f0a0e87

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    move-result-object p2

    .line 104
    .line 105
    iput-object p2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->tipView:Landroid/view/View;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    .line 110
    .line 111
    const p2, 0x7f0a09c6

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    move-result-object p2

    .line 116
    .line 117
    check-cast p2, Lcom/narvii/chat/video/view/CheckableImageView;

    .line 118
    .line 119
    iput-object p2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->muteButton:Lcom/narvii/chat/video/view/CheckableImageView;

    .line 120
    .line 121
    .line 122
    const p2, 0x7f0a078d

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 126
    move-result-object p2

    .line 127
    .line 128
    check-cast p2, Landroid/widget/ImageView;

    .line 129
    .line 130
    iput-object p2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinIcon:Landroid/widget/ImageView;

    .line 131
    .line 132
    .line 133
    const p2, 0x7f0a0790

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 137
    move-result-object p2

    .line 138
    .line 139
    check-cast p2, Lcom/narvii/widget/AutoSizingTextView;

    .line 140
    .line 141
    iput-object p2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinText:Lcom/narvii/widget/AutoSizingTextView;

    .line 142
    .line 143
    .line 144
    const p2, 0x7f0a078f

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 148
    move-result-object p2

    .line 149
    .line 150
    iput-object p2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinLoading:Landroid/view/View;

    .line 151
    .line 152
    .line 153
    const p2, 0x7f0a0789

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 157
    move-result-object p2

    .line 158
    .line 159
    iput-object p2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinButton:Landroid/view/View;

    .line 160
    .line 161
    .line 162
    const p2, 0x7f0a1015

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 166
    move-result-object p1

    .line 167
    .line 168
    check-cast p1, Landroid/widget/TextView;

    .line 169
    .line 170
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->waitingListCount:Landroid/widget/TextView;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 174
    move-result-object p1

    .line 175
    .line 176
    .line 177
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 178
    move-result-object p1

    .line 179
    .line 180
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->nvcontext:Lcom/narvii/app/NVContext;

    .line 181
    .line 182
    if-eqz p1, :cond_0

    .line 183
    .line 184
    const-string p2, "callScreen"

    .line 185
    .line 186
    .line 187
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 188
    move-result-object p2

    .line 189
    .line 190
    check-cast p2, Lcom/narvii/chat/call/CallScreenService;

    .line 191
    .line 192
    iput-object p2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 193
    .line 194
    const-string p2, "rtc"

    .line 195
    .line 196
    .line 197
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 198
    move-result-object p2

    .line 199
    .line 200
    check-cast p2, Lcom/narvii/chat/rtc/RtcService;

    .line 201
    .line 202
    iput-object p2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 203
    .line 204
    const-string p2, "screenRoom"

    .line 205
    .line 206
    .line 207
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 208
    move-result-object p2

    .line 209
    .line 210
    check-cast p2, Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 211
    .line 212
    iput-object p2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 213
    .line 214
    new-instance p2, Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 215
    .line 216
    .line 217
    invoke-direct {p2, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 218
    .line 219
    iput-object p2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 220
    .line 221
    const-string p2, "chatWaitingList"

    .line 222
    .line 223
    .line 224
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 225
    move-result-object p1

    .line 226
    .line 227
    check-cast p1, Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    .line 228
    .line 229
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->chatWaitingListService:Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    .line 230
    .line 231
    :cond_0
    new-instance p1, Lcom/narvii/util/ToolTipHelper;

    .line 232
    .line 233
    .line 234
    invoke-direct {p1}, Lcom/narvii/util/ToolTipHelper;-><init>()V

    .line 235
    .line 236
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    .line 237
    .line 238
    new-instance p1, Lcom/narvii/chat/util/ChatHelper;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 242
    move-result-object p2

    .line 243
    .line 244
    .line 245
    invoke-direct {p1, p2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 246
    .line 247
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->chathelper:Lcom/narvii/chat/util/ChatHelper;

    .line 248
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/chat/input/ChatInputRightViewContainer;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->tmpNewUsers:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/chat/input/ChatInputRightViewContainer;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->tooltipView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/chat/input/ChatInputRightViewContainer;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->tooltipView:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic d(Lcom/narvii/chat/input/ChatInputRightViewContainer;Landroid/view/View;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->updateWaitingListBubbleViewContent(Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method private getThread()Lcom/narvii/model/ChatThread;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->thread:Lcom/narvii/model/ChatThread;

    return-object v0
.end method

.method private isPrivateVoiceCall(Lcom/narvii/chat/signalling/SignallingChannel;)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->isCreator()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    new-instance v1, Lcom/narvii/chat/video/view/VoiceCallHelper;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/narvii/chat/video/view/VoiceCallHelper;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->getThread()Lcom/narvii/model/ChatThread;

    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x0

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    move p1, v3

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {v1, v2, p1}, Lcom/narvii/chat/video/view/VoiceCallHelper;->isPrivateCall(Lcom/narvii/model/ChatThread;I)Z

    .line 30
    move-result p1

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    const/4 v3, 0x1

    .line 36
    :cond_1
    return v3
.end method

.method private updateJoinButton(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->thread:Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getVvChatJoinType()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->chathelper:Lcom/narvii/chat/util/ChatHelper;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->getThread()Lcom/narvii/model/ChatThread;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isHostOrCoHost(Lcom/narvii/model/ChatThread;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->isInvite:Z

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->isPrivateVoiceCall(Lcom/narvii/chat/signalling/SignallingChannel;)Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinView:Landroid/view/View;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 39
    return-void

    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinIcon:Landroid/widget/ImageView;

    .line 42
    const/4 v1, 0x0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinLoading:Landroid/view/View;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    iget-boolean v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->isJoining:Z

    .line 53
    const/4 v3, 0x1

    .line 54
    xor-int/2addr v0, v3

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 58
    .line 59
    iget-boolean v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->isJoining:Z

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinIcon:Landroid/widget/ImageView;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    .line 68
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinLoading:Landroid/view/View;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->thread:Lcom/narvii/model/ChatThread;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getVvChatJoinType()I

    .line 77
    move-result v0

    .line 78
    const/4 v4, 0x2

    .line 79
    .line 80
    if-ne v0, v4, :cond_6

    .line 81
    .line 82
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->chathelper:Lcom/narvii/chat/util/ChatHelper;

    .line 83
    .line 84
    .line 85
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->getThread()Lcom/narvii/model/ChatThread;

    .line 86
    move-result-object v4

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v4}, Lcom/narvii/chat/util/ChatHelper;->isHostOrCoHost(Lcom/narvii/model/ChatThread;)Z

    .line 90
    move-result v0

    .line 91
    .line 92
    if-nez v0, :cond_6

    .line 93
    .line 94
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->nvcontext:Lcom/narvii/app/NVContext;

    .line 95
    .line 96
    iget-object v4, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userWaitList:Ljava/util/List;

    .line 97
    .line 98
    .line 99
    invoke-static {v0, v4}, Lcom/narvii/chat/setting/helper/ChatWaitingListServiceKt;->isCurrentUserInWaitingList(Lcom/narvii/app/NVContext;Ljava/util/List;)Z

    .line 100
    move-result v0

    .line 101
    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinIcon:Landroid/widget/ImageView;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    .line 109
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinText:Lcom/narvii/widget/AutoSizingTextView;

    .line 110
    .line 111
    .line 112
    const v2, 0x7f121281

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 116
    goto :goto_0

    .line 117
    .line 118
    :cond_4
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinIcon:Landroid/widget/ImageView;

    .line 119
    .line 120
    .line 121
    const v2, 0x7f0805df

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    .line 126
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinText:Lcom/narvii/widget/AutoSizingTextView;

    .line 127
    .line 128
    .line 129
    const v2, 0x7f121191

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 133
    .line 134
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinButton:Landroid/view/View;

    .line 135
    .line 136
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 137
    .line 138
    if-eqz v2, :cond_5

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;->isCurrentChannelLive(Lcom/narvii/chat/signalling/SignallingChannel;)Z

    .line 142
    move-result p1

    .line 143
    .line 144
    if-eqz p1, :cond_5

    .line 145
    move v1, v3

    .line 146
    .line 147
    .line 148
    :cond_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 149
    goto :goto_1

    .line 150
    .line 151
    :cond_6
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinIcon:Landroid/widget/ImageView;

    .line 152
    .line 153
    .line 154
    const v2, 0x7f0805d8

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    .line 159
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinText:Lcom/narvii/widget/AutoSizingTextView;

    .line 160
    .line 161
    .line 162
    const v2, 0x7f120b53

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 166
    .line 167
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinButton:Landroid/view/View;

    .line 168
    .line 169
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 170
    .line 171
    if-eqz v2, :cond_7

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;->isCurrentChannelLive(Lcom/narvii/chat/signalling/SignallingChannel;)Z

    .line 175
    move-result p1

    .line 176
    .line 177
    if-eqz p1, :cond_7

    .line 178
    .line 179
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->onClickRightViewListener:Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;

    .line 180
    .line 181
    if-eqz p1, :cond_7

    .line 182
    .line 183
    .line 184
    invoke-interface {p1}, Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;->checkChannelUserLimit()Z

    .line 185
    move-result p1

    .line 186
    .line 187
    if-eqz p1, :cond_7

    .line 188
    move v1, v3

    .line 189
    .line 190
    .line 191
    :cond_7
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 192
    .line 193
    :goto_1
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinText:Lcom/narvii/widget/AutoSizingTextView;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1}, Lcom/narvii/widget/AutoSizingTextView;->resizingFromMaxSize()V

    .line 197
    return-void
.end method

.method private updateTipViewVisibility()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->tipView:Landroid/view/View;

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->disallowTip:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->thread:Lcom/narvii/model/ChatThread;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, v1, Lcom/narvii/model/ChatThread;->tipInfo:Lcom/narvii/model/TippingInfo;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-boolean v1, v1, Lcom/narvii/model/TippingInfo;->tippable:Z

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 25
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->chathelper:Lcom/narvii/chat/util/ChatHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->getThread()Lcom/narvii/model/ChatThread;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isHostOrCoHost(Lcom/narvii/model/ChatThread;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_9

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->requestView:Landroid/view/View;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {}, Lcom/narvii/util/Tooltip;->builder()Lcom/narvii/util/Tooltip$Builder;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->requestView:Landroid/view/View;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/narvii/util/Tooltip$Builder;->anchorView(Landroid/view/View;)Lcom/narvii/util/Tooltip$Builder;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    const v1, 0x7f0d00d2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/narvii/util/Tooltip$Builder;->customTooltipBubbleLayout(I)Lcom/narvii/util/Tooltip$Builder;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    new-instance v1, Lcom/narvii/chat/input/ChatInputRightViewContainer$1;

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, p0}, Lcom/narvii/chat/input/ChatInputRightViewContainer$1;-><init>(Lcom/narvii/chat/input/ChatInputRightViewContainer;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/narvii/util/Tooltip$Builder;->doCustomTooltipBubble(Lcom/narvii/util/Callback;)Lcom/narvii/util/Tooltip$Builder;

    .line 48
    move-result-object v0

    .line 49
    const/4 v1, 0x1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/narvii/util/Tooltip$Builder;->indicatorUp(Z)Lcom/narvii/util/Tooltip$Builder;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    const-string v1, "#FF5ED700"

    .line 56
    .line 57
    .line 58
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 59
    move-result v1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/narvii/util/Tooltip$Builder;->background(I)Lcom/narvii/util/Tooltip$Builder;

    .line 63
    move-result-object v0

    .line 64
    const/4 v1, 0x0

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/narvii/util/Tooltip$Builder;->showOnlyOnce(Z)Lcom/narvii/util/Tooltip$Builder;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/narvii/util/Tooltip$Builder;->autoHide()Lcom/narvii/util/Tooltip$Builder;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/narvii/util/Tooltip$Builder;->isVibrate(Z)Lcom/narvii/util/Tooltip$Builder;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/narvii/util/Tooltip$Builder;->linkClickWithAnchorView()Lcom/narvii/util/Tooltip$Builder;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/narvii/util/Tooltip$Builder;->build()Lcom/narvii/util/Tooltip;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/narvii/util/ToolTipHelper;->isTooltipShowing()Z

    .line 90
    move-result v2

    .line 91
    .line 92
    if-nez v2, :cond_1

    .line 93
    .line 94
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->tmpNewUsers:Ljava/util/List;

    .line 95
    .line 96
    .line 97
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 98
    .line 99
    :cond_1
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->tmpNewUsers:Ljava/util/List;

    .line 100
    .line 101
    .line 102
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 103
    move-result-object v2

    .line 104
    .line 105
    .line 106
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    move-result v3

    .line 108
    .line 109
    if-eqz v3, :cond_3

    .line 110
    .line 111
    .line 112
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    move-result-object v3

    .line 114
    .line 115
    check-cast v3, Lcom/narvii/model/User;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 119
    move-result-object v3

    .line 120
    .line 121
    .line 122
    invoke-static {p1, v3}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 123
    move-result v3

    .line 124
    .line 125
    if-nez v3, :cond_2

    .line 126
    .line 127
    .line 128
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 129
    goto :goto_0

    .line 130
    .line 131
    .line 132
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 133
    move-result-object v2

    .line 134
    .line 135
    .line 136
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    move-result v3

    .line 138
    .line 139
    if-eqz v3, :cond_5

    .line 140
    .line 141
    .line 142
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    move-result-object v3

    .line 144
    .line 145
    check-cast v3, Lcom/narvii/model/User;

    .line 146
    .line 147
    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->oldWaitList:Ljava/util/List;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 151
    move-result-object v5

    .line 152
    .line 153
    .line 154
    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 155
    move-result v4

    .line 156
    .line 157
    if-nez v4, :cond_4

    .line 158
    .line 159
    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->tmpNewUsers:Ljava/util/List;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 163
    move-result-object v5

    .line 164
    .line 165
    .line 166
    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 167
    .line 168
    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->tmpNewUsers:Ljava/util/List;

    .line 169
    .line 170
    .line 171
    invoke-interface {v4, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 172
    goto :goto_1

    .line 173
    .line 174
    :cond_5
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->oldWaitList:Ljava/util/List;

    .line 175
    .line 176
    .line 177
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 178
    .line 179
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->oldWaitList:Ljava/util/List;

    .line 180
    .line 181
    .line 182
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 183
    .line 184
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1}, Lcom/narvii/util/ToolTipHelper;->isTooltipShowing()Z

    .line 188
    move-result p1

    .line 189
    .line 190
    if-eqz p1, :cond_7

    .line 191
    .line 192
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->tmpNewUsers:Ljava/util/List;

    .line 193
    .line 194
    .line 195
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 196
    move-result p1

    .line 197
    .line 198
    if-eqz p1, :cond_6

    .line 199
    .line 200
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1}, Lcom/narvii/util/ToolTipHelper;->hideToolTip()V

    .line 204
    goto :goto_2

    .line 205
    .line 206
    :cond_6
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->tooltipView:Landroid/view/View;

    .line 207
    .line 208
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->tmpNewUsers:Ljava/util/List;

    .line 209
    .line 210
    .line 211
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->updateWaitingListBubbleViewContent(Landroid/view/View;Ljava/util/List;)V

    .line 212
    goto :goto_2

    .line 213
    .line 214
    :cond_7
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->tmpNewUsers:Ljava/util/List;

    .line 215
    .line 216
    .line 217
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 218
    move-result p1

    .line 219
    .line 220
    if-nez p1, :cond_8

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->isWaitingListShown()Z

    .line 224
    move-result p1

    .line 225
    .line 226
    if-nez p1, :cond_8

    .line 227
    .line 228
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, v0}, Lcom/narvii/util/ToolTipHelper;->showToolTip(Lcom/narvii/util/Tooltip;)V

    .line 232
    :cond_8
    :goto_2
    return-void

    .line 233
    .line 234
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0}, Lcom/narvii/util/ToolTipHelper;->isTooltipShowing()Z

    .line 238
    move-result v0

    .line 239
    .line 240
    if-eqz v0, :cond_a

    .line 241
    .line 242
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0}, Lcom/narvii/util/ToolTipHelper;->hideToolTip()V

    .line 246
    .line 247
    :cond_a
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->oldWaitList:Ljava/util/List;

    .line 248
    .line 249
    .line 250
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 251
    .line 252
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->oldWaitList:Ljava/util/List;

    .line 253
    .line 254
    .line 255
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 256
    return-void
.end method

.method private updateWaitingListBubbleViewContent(Landroid/view/View;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a1017

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setAvatarStrokeWidth(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setForceHideOnlineTextLayout(Z)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 20
    move-result v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2, v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUserList(Ljava/util/List;I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 27
    move-result v0

    .line 28
    .line 29
    if-ne v0, v1, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    .line 36
    const v0, 0x7f121284

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    move-result-object p2

    .line 41
    goto :goto_0

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    new-array v1, v1, [Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 51
    move-result p2

    .line 52
    .line 53
    .line 54
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object p2

    .line 56
    const/4 v2, 0x0

    .line 57
    .line 58
    aput-object p2, v1, v2

    .line 59
    .line 60
    .line 61
    const p2, 0x7f121285

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    move-result-object p2

    .line 66
    .line 67
    .line 68
    :goto_0
    const v0, 0x7f0a1016

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    check-cast p1, Landroid/widget/TextView;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method


# virtual methods
.method public isMuted()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->muteButton:Lcom/narvii/chat/video/view/CheckableImageView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->muteButton:Lcom/narvii/chat/video/view/CheckableImageView;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/chat/video/view/CheckableImageView;->isChecked()Z

    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public isWaitingListShown()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->chatWaitingListService:Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/chat/setting/helper/ChatWaitingListService;->isWaitingListShown()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    sparse-switch p1, :sswitch_data_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    .line 12
    :sswitch_0
    invoke-static {p0}, Lcom/narvii/logging/LogUtils;->getPageContext(Landroid/view/View;)Lcom/narvii/app/NVContext;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    const-string v0, "TippingButton"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->nvcontext:Lcom/narvii/app/NVContext;

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lcom/narvii/util/Utils;->shouldShowLoginPage(Lcom/narvii/app/NVContext;)Z

    .line 32
    move-result p1

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    return-void

    .line 36
    .line 37
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->thread:Lcom/narvii/model/ChatThread;

    .line 38
    .line 39
    if-nez p1, :cond_1

    .line 40
    return-void

    .line 41
    .line 42
    :cond_1
    new-instance p1, Lcom/narvii/tipping/TippingHelper;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->nvcontext:Lcom/narvii/app/NVContext;

    .line 45
    .line 46
    .line 47
    invoke-direct {p1, v0}, Lcom/narvii/tipping/TippingHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->thread:Lcom/narvii/model/ChatThread;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/narvii/tipping/TippingHelper;->isTipAuthor(Lcom/narvii/model/Tippable;)Z

    .line 53
    move-result v0

    .line 54
    const/4 v1, 0x0

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->thread:Lcom/narvii/model/ChatThread;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0, v1}, Lcom/narvii/tipping/TippingHelper;->openTippingList(Lcom/narvii/model/Tippable;Lcom/narvii/model/Community;)V

    .line 62
    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->thread:Lcom/narvii/model/ChatThread;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0, v1}, Lcom/narvii/tipping/TippingHelper;->openTipDialog(Lcom/narvii/model/Tippable;Lcom/narvii/monetization/store/TippingConfirmDialog$TipSuccessListener;)Lcom/narvii/monetization/store/TippingConfirmDialog;

    .line 69
    .line 70
    goto/16 :goto_0

    .line 71
    .line 72
    :sswitch_1
    sget-object p1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    .line 73
    .line 74
    .line 75
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Landroid/view/View;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    const-string v0, "WaitingListIcon"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 86
    .line 87
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->onClickRightViewListener:Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;

    .line 88
    .line 89
    if-eqz p1, :cond_6

    .line 90
    .line 91
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/narvii/util/ToolTipHelper;->isTooltipShowing()Z

    .line 95
    move-result p1

    .line 96
    .line 97
    if-eqz p1, :cond_3

    .line 98
    .line 99
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/narvii/util/ToolTipHelper;->hideToolTip()V

    .line 103
    .line 104
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->onClickRightViewListener:Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;

    .line 105
    .line 106
    .line 107
    invoke-interface {p1}, Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;->openWaitingList()V

    .line 108
    goto :goto_0

    .line 109
    .line 110
    :sswitch_2
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->onClickRightViewListener:Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;

    .line 111
    .line 112
    if-eqz p1, :cond_6

    .line 113
    const/4 v0, 0x0

    .line 114
    .line 115
    .line 116
    invoke-interface {p1, v0}, Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;->toggleMute(Z)V

    .line 117
    goto :goto_0

    .line 118
    .line 119
    :sswitch_3
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->onClickRightViewListener:Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;

    .line 120
    .line 121
    if-eqz p1, :cond_6

    .line 122
    .line 123
    .line 124
    invoke-interface {p1}, Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;->toggleMenu()V

    .line 125
    goto :goto_0

    .line 126
    .line 127
    :sswitch_4
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 131
    move-result-object p1

    .line 132
    .line 133
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->onClickRightViewListener:Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;

    .line 134
    .line 135
    if-eqz v0, :cond_6

    .line 136
    .line 137
    if-eqz p1, :cond_6

    .line 138
    .line 139
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->nvcontext:Lcom/narvii/app/NVContext;

    .line 140
    .line 141
    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userWaitList:Ljava/util/List;

    .line 142
    .line 143
    .line 144
    invoke-static {v0, p1}, Lcom/narvii/chat/setting/helper/ChatWaitingListServiceKt;->isCurrentUserInWaitingList(Lcom/narvii/app/NVContext;Ljava/util/List;)Z

    .line 145
    move-result p1

    .line 146
    .line 147
    if-eqz p1, :cond_4

    .line 148
    .line 149
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->onClickRightViewListener:Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;

    .line 150
    .line 151
    .line 152
    invoke-interface {p1}, Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;->openWaitingList()V

    .line 153
    goto :goto_0

    .line 154
    .line 155
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->thread:Lcom/narvii/model/ChatThread;

    .line 156
    .line 157
    if-eqz p1, :cond_5

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getVvChatJoinType()I

    .line 161
    move-result p1

    .line 162
    const/4 v0, 0x2

    .line 163
    .line 164
    if-ne p1, v0, :cond_5

    .line 165
    .line 166
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->chathelper:Lcom/narvii/chat/util/ChatHelper;

    .line 167
    .line 168
    .line 169
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->getThread()Lcom/narvii/model/ChatThread;

    .line 170
    move-result-object v0

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, v0}, Lcom/narvii/chat/util/ChatHelper;->isHostOrCoHost(Lcom/narvii/model/ChatThread;)Z

    .line 174
    move-result p1

    .line 175
    .line 176
    if-nez p1, :cond_5

    .line 177
    .line 178
    const-string p1, "TalkButton"

    .line 179
    .line 180
    .line 181
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Landroid/view/View;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 182
    move-result-object p1

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 186
    .line 187
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->onClickRightViewListener:Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;

    .line 188
    .line 189
    .line 190
    invoke-interface {p1}, Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;->doRequestToSpeak()V

    .line 191
    goto :goto_0

    .line 192
    .line 193
    :cond_5
    const-string p1, "JoinButton"

    .line 194
    .line 195
    .line 196
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Landroid/view/View;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 197
    move-result-object p1

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 201
    .line 202
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->onClickRightViewListener:Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;

    .line 203
    .line 204
    .line 205
    invoke-interface {p1}, Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;->doJoin()V

    .line 206
    goto :goto_0

    .line 207
    .line 208
    :sswitch_5
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->onClickRightViewListener:Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;

    .line 209
    .line 210
    if-eqz p1, :cond_6

    .line 211
    .line 212
    .line 213
    invoke-interface {p1}, Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;->doEndChat()V

    .line 214
    :cond_6
    :goto_0
    return-void

    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    :sswitch_data_0
    .sparse-switch
        0x7f0a04f5 -> :sswitch_5
        0x7f0a0791 -> :sswitch_4
        0x7f0a096a -> :sswitch_3
        0x7f0a09cc -> :sswitch_2
        0x7f0a0c27 -> :sswitch_1
        0x7f0a0e87 -> :sswitch_0
    .end sparse-switch
.end method

.method public setDisallowTip(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->disallowTip:Z

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->updateTipViewVisibility()V

    .line 6
    return-void
.end method

.method public setEmbedFragment(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->isEmbedFragment:Z

    return-void
.end method

.method public setIsInvite(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->isInvite:Z

    return-void
.end method

.method public setIsJoining(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->isJoining:Z

    return-void
.end method

.method public setOnClickRightViewListener(Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->onClickRightViewListener:Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;

    return-void
.end method

.method public setThread(Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->thread:Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->showView()V

    .line 6
    return-void
.end method

.method public setThreadId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->threadId:Ljava/lang/String;

    return-void
.end method

.method public showView()V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->threadId:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "chat input right view thread is null"

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->threadId:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x2

    .line 19
    const/4 v2, 0x1

    .line 20
    const/4 v3, 0x0

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    :goto_0
    move v4, v3

    .line 24
    goto :goto_1

    .line 25
    .line 26
    :cond_1
    iget v4, v0, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 27
    .line 28
    if-ne v4, v2, :cond_2

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_2
    if-ne v4, v1, :cond_3

    .line 32
    move v4, v2

    .line 33
    goto :goto_1

    .line 34
    :cond_3
    move v4, v1

    .line 35
    .line 36
    :goto_1
    iget-object v5, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 37
    .line 38
    if-nez v5, :cond_4

    .line 39
    const/4 v5, 0x0

    .line 40
    goto :goto_2

    .line 41
    .line 42
    .line 43
    :cond_4
    invoke-virtual {v5}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 44
    move-result-object v5

    .line 45
    .line 46
    :goto_2
    iget-object v6, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 47
    const/4 v7, 0x5

    .line 48
    .line 49
    if-eqz v6, :cond_5

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6}, Lcom/narvii/chat/call/CallScreenService;->getCurStatus()I

    .line 53
    move-result v6

    .line 54
    .line 55
    if-ne v6, v2, :cond_5

    .line 56
    .line 57
    iget-object v5, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5}, Lcom/narvii/chat/call/CallScreenService;->isMuteOn()Z

    .line 61
    move-result v5

    .line 62
    goto :goto_3

    .line 63
    .line 64
    :cond_5
    if-eqz v0, :cond_6

    .line 65
    .line 66
    iget v6, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 67
    .line 68
    if-ne v6, v7, :cond_6

    .line 69
    .line 70
    if-eqz v5, :cond_6

    .line 71
    .line 72
    iget-object v6, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 73
    .line 74
    iget-boolean v6, v6, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    .line 75
    .line 76
    if-eqz v6, :cond_6

    .line 77
    .line 78
    iget-object v6, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 79
    .line 80
    if-eqz v6, :cond_6

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getLocalMicMuted()Z

    .line 84
    move-result v5

    .line 85
    goto :goto_3

    .line 86
    .line 87
    :cond_6
    if-eqz v5, :cond_7

    .line 88
    .line 89
    iget-object v5, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 90
    .line 91
    if-eqz v5, :cond_7

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5}, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted()Z

    .line 95
    move-result v5

    .line 96
    .line 97
    if-eqz v5, :cond_7

    .line 98
    move v5, v2

    .line 99
    goto :goto_3

    .line 100
    :cond_7
    move v5, v3

    .line 101
    .line 102
    .line 103
    :goto_3
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->updateTipViewVisibility()V

    .line 104
    .line 105
    const/16 v6, 0x8

    .line 106
    .line 107
    if-eqz v0, :cond_10

    .line 108
    .line 109
    iget v8, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 110
    .line 111
    if-eq v8, v2, :cond_8

    .line 112
    const/4 v2, 0x4

    .line 113
    .line 114
    if-eq v8, v2, :cond_8

    .line 115
    .line 116
    if-ne v8, v7, :cond_10

    .line 117
    .line 118
    :cond_8
    iget-boolean v2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->isEmbedFragment:Z

    .line 119
    .line 120
    if-nez v2, :cond_10

    .line 121
    .line 122
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->thread:Lcom/narvii/model/ChatThread;

    .line 123
    .line 124
    if-nez v2, :cond_9

    .line 125
    .line 126
    goto/16 :goto_9

    .line 127
    .line 128
    :cond_9
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->voiceView:Landroid/view/View;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 132
    .line 133
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->thread:Lcom/narvii/model/ChatThread;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->getVvChatJoinType()I

    .line 137
    move-result v2

    .line 138
    .line 139
    if-ne v2, v1, :cond_d

    .line 140
    .line 141
    if-nez v4, :cond_a

    .line 142
    .line 143
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->chathelper:Lcom/narvii/chat/util/ChatHelper;

    .line 144
    .line 145
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->thread:Lcom/narvii/model/ChatThread;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v2}, Lcom/narvii/chat/util/ChatHelper;->isHostOrCoHost(Lcom/narvii/model/ChatThread;)Z

    .line 149
    move-result v1

    .line 150
    .line 151
    if-nez v1, :cond_a

    .line 152
    .line 153
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->requestView:Landroid/view/View;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 157
    goto :goto_4

    .line 158
    .line 159
    :cond_a
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->requestView:Landroid/view/View;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 163
    .line 164
    :goto_4
    iget-object v1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userWaitList:Ljava/util/List;

    .line 165
    .line 166
    .line 167
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 168
    move-result v2

    .line 169
    .line 170
    if-lez v2, :cond_c

    .line 171
    .line 172
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->waitingListCount:Landroid/widget/TextView;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 176
    .line 177
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->waitingListCount:Landroid/widget/TextView;

    .line 178
    .line 179
    .line 180
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 181
    move-result v7

    .line 182
    .line 183
    const/16 v8, 0x63

    .line 184
    .line 185
    if-le v7, v8, :cond_b

    .line 186
    .line 187
    const-string v7, "99+"

    .line 188
    goto :goto_5

    .line 189
    .line 190
    .line 191
    :cond_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 192
    move-result v7

    .line 193
    .line 194
    .line 195
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    move-result-object v7

    .line 197
    .line 198
    .line 199
    :goto_5
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 200
    move-result-object v7

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    goto :goto_6

    .line 205
    .line 206
    :cond_c
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->waitingListCount:Landroid/widget/TextView;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 210
    .line 211
    .line 212
    :goto_6
    invoke-direct {p0, v1}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->updateWaitingListBubble(Ljava/util/List;)V

    .line 213
    goto :goto_7

    .line 214
    .line 215
    :cond_d
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->requestView:Landroid/view/View;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 219
    .line 220
    :goto_7
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->menuView:Landroid/view/View;

    .line 221
    .line 222
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->onClickRightViewListener:Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;

    .line 223
    .line 224
    if-eqz v2, :cond_e

    .line 225
    .line 226
    .line 227
    invoke-interface {v2}, Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;->isMenuIconShown()Z

    .line 228
    move-result v2

    .line 229
    .line 230
    if-eqz v2, :cond_e

    .line 231
    move v2, v3

    .line 232
    goto :goto_8

    .line 233
    :cond_e
    move v2, v6

    .line 234
    .line 235
    .line 236
    :goto_8
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 237
    .line 238
    if-nez v4, :cond_f

    .line 239
    .line 240
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinView:Landroid/view/View;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 244
    .line 245
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->muteView:Landroid/view/View;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 249
    .line 250
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->muteButton:Lcom/narvii/chat/video/view/CheckableImageView;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v5}, Lcom/narvii/chat/video/view/CheckableImageView;->setChecked(Z)V

    .line 254
    .line 255
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->endView:Landroid/view/View;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 259
    goto :goto_a

    .line 260
    .line 261
    :cond_f
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinView:Landroid/view/View;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 265
    .line 266
    .line 267
    invoke-direct {p0, v0}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->updateJoinButton(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 268
    .line 269
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->muteView:Landroid/view/View;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 273
    .line 274
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->endView:Landroid/view/View;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 278
    goto :goto_a

    .line 279
    .line 280
    :cond_10
    :goto_9
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->voiceView:Landroid/view/View;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 284
    .line 285
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->joinView:Landroid/view/View;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 289
    .line 290
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->muteView:Landroid/view/View;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 294
    .line 295
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->menuView:Landroid/view/View;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 299
    .line 300
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->requestView:Landroid/view/View;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 304
    .line 305
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer;->endView:Landroid/view/View;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 309
    :goto_a
    return-void
.end method
