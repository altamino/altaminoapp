.class public final Lcom/narvii/chat/video/fragments/MiniVVContentFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/video/events/LiveChannelChangeListener;
.implements Lcom/narvii/chat/video/events/MiniContentMuteStatusChangeListener;


# instance fields
.field private final btnMute$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isAllMuted:Z

.field private final rootView$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private rtcService:Lcom/narvii/chat/rtc/RtcService;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final tvMemberCount$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final typeIndicator$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final userAvatar1$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final userAvatar2$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final userAvatar3$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0c4c

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p0, v0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->bind(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;I)Lw7/m;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->rootView$delegate:Lw7/m;

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a093e

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p0, v0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->bind(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;I)Lw7/m;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->tvMemberCount$delegate:Lw7/m;

    .line 22
    .line 23
    .line 24
    const v0, 0x7f0a09c3

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p0, v0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->bind(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;I)Lw7/m;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->btnMute$delegate:Lw7/m;

    .line 31
    .line 32
    .line 33
    const v0, 0x7f0a0176

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, p0, v0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->bind(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;I)Lw7/m;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->userAvatar1$delegate:Lw7/m;

    .line 40
    .line 41
    .line 42
    const v0, 0x7f0a0177

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, p0, v0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->bind(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;I)Lw7/m;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->userAvatar2$delegate:Lw7/m;

    .line 49
    .line 50
    .line 51
    const v0, 0x7f0a0178

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p0, v0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->bind(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;I)Lw7/m;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->userAvatar3$delegate:Lw7/m;

    .line 58
    .line 59
    .line 60
    const v0, 0x7f0a1013

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, p0, v0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->bind(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;I)Lw7/m;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->typeIndicator$delegate:Lw7/m;

    .line 67
    return-void
.end method

.method private final bind(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;I)Lw7/m;
    .locals 2
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcom/narvii/chat/video/fragments/MiniVVContentFragment;",
            "I)",
            "Lw7/m<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lw7/q;->NONE:Lw7/q;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/chat/video/fragments/MiniVVContentFragment$bind$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p1, p2}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment$bind$1;-><init>(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lw7/n;->b(Lw7/q;Le8/a;)Lw7/m;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method private final getBtnMute()Landroid/widget/ImageView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->btnMute$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/ImageView;

    .line 9
    return-object v0
.end method

.method private final getRootView()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->rootView$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    return-object v0
.end method

.method private final getTvMemberCount()Landroid/widget/TextView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->tvMemberCount$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    return-object v0
.end method

.method private final getTypeIndicator()Lcom/narvii/chat/video/view/VVIndicatorView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->typeIndicator$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/chat/video/view/VVIndicatorView;

    .line 9
    return-object v0
.end method

.method private final getUserAvatar1()Lcom/narvii/widget/UserAvatarLayout;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->userAvatar1$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    .line 9
    return-object v0
.end method

.method private final getUserAvatar2()Lcom/narvii/widget/UserAvatarLayout;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->userAvatar2$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    .line 9
    return-object v0
.end method

.method private final getUserAvatar3()Lcom/narvii/widget/UserAvatarLayout;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->userAvatar3$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    .line 9
    return-object v0
.end method

.method public static synthetic n(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->onViewCreated$lambda$2(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->onViewCreated$lambda$2$lambda$0(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;Landroid/view/View;)V

    return-void
.end method

.method private static final onViewCreated$lambda$2(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->isAllMuted:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->toggleAllMute()V

    .line 13
    .line 14
    goto/16 :goto_3

    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 22
    move-result-object p1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    :goto_0
    const/4 v0, 0x0

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    iget-object v1, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget v1, v1, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 34
    const/4 v2, 0x1

    .line 35
    .line 36
    if-ne v1, v2, :cond_2

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move v2, v0

    .line 39
    .line 40
    :goto_1
    if-eqz p1, :cond_3

    .line 41
    .line 42
    iget-object p1, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 43
    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted()Z

    .line 48
    move-result p1

    .line 49
    .line 50
    if-nez p1, :cond_4

    .line 51
    .line 52
    :cond_3
    if-nez v2, :cond_5

    .line 53
    .line 54
    .line 55
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->toggleAllMute()V

    .line 56
    goto :goto_2

    .line 57
    .line 58
    :cond_5
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-direct {p1, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    const v1, 0x7f120d09

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 72
    .line 73
    new-instance v1, Lcom/narvii/chat/video/fragments/d;

    .line 74
    .line 75
    .line 76
    invoke-direct {v1, p0}, Lcom/narvii/chat/video/fragments/d;-><init>(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;)V

    .line 77
    .line 78
    .line 79
    const v2, 0x7f120d57

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 83
    .line 84
    new-instance v1, Lcom/narvii/chat/video/fragments/e;

    .line 85
    .line 86
    .line 87
    invoke-direct {v1, p0}, Lcom/narvii/chat/video/fragments/e;-><init>(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;)V

    .line 88
    .line 89
    .line 90
    const v2, 0x7f1212a7

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 97
    .line 98
    :goto_2
    const-string p1, "statistics"

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 105
    .line 106
    const-string v1, "Local Mute VV Chat"

    .line 107
    .line 108
    .line 109
    invoke-interface {p1, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 110
    move-result-object p1

    .line 111
    .line 112
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 113
    .line 114
    if-eqz v1, :cond_6

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelType()I

    .line 118
    move-result v0

    .line 119
    .line 120
    .line 121
    :cond_6
    invoke-static {v0}, Lcom/narvii/chat/ChatActivity;->statChannelType(I)Ljava/lang/String;

    .line 122
    move-result-object v0

    .line 123
    .line 124
    const-string v1, "Type"

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 128
    move-result-object p1

    .line 129
    .line 130
    const-string v0, "thread"

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    move-result-object p0

    .line 135
    .line 136
    const-class v0, Lcom/narvii/model/ChatThread;

    .line 137
    .line 138
    .line 139
    invoke-static {p0, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 140
    move-result-object p0

    .line 141
    .line 142
    check-cast p0, Lcom/narvii/model/ChatThread;

    .line 143
    .line 144
    const-string v0, "Public Chat"

    .line 145
    .line 146
    .line 147
    invoke-static {p0, v0}, Lcom/narvii/util/StatisticHelper;->getChatThreadType(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    move-result-object p0

    .line 149
    .line 150
    const-string v0, "Chat Type"

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v0, p0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 154
    move-result-object p0

    .line 155
    .line 156
    const-string p1, "Live Bar"

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 160
    move-result-object p0

    .line 161
    .line 162
    const-string p1, "Local Mute VV Chat Total"

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 166
    :goto_3
    return-void
.end method

.method private static final onViewCreated$lambda$2$lambda$0(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->toggleAllMute()V

    .line 9
    return-void
.end method

.method private static final onViewCreated$lambda$2$lambda$1(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->toggleAllMute()V

    .line 9
    .line 10
    iget-object p0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->toggleLocalSteam()V

    .line 16
    :cond_0
    return-void
.end method

.method public static synthetic p(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->onViewCreated$lambda$2$lambda$1(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getLayoutBg()Landroid/graphics/drawable/Drawable;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    const v1, 0x7f07047f

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x2

    .line 20
    int-to-float v1, v1

    .line 21
    div-float/2addr v0, v1

    .line 22
    .line 23
    .line 24
    const v1, -0x812cdf

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/narvii/util/ViewUtils;->getRadisDrawable(IF)Landroid/graphics/drawable/Drawable;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    const v2, -0x9c58e7

    .line 32
    .line 33
    .line 34
    invoke-static {v2, v0}, Lcom/narvii/util/ViewUtils;->getRadisDrawable(IF)Landroid/graphics/drawable/Drawable;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    .line 38
    .line 39
    .line 40
    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 41
    .line 42
    .line 43
    const v3, 0x10100a7

    .line 44
    .line 45
    .line 46
    filled-new-array {v3}, [I

    .line 47
    move-result-object v3

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 51
    .line 52
    sget-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 56
    return-object v2
.end method

.method public final getMuteCheckedBg()Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    .line 3
    .line 4
    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 14
    move-result-object v1

    .line 15
    const/4 v2, -0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    return-object v0
.end method

.method public final getMuteUnCheckedBg()Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    .line 3
    .line 4
    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    const/high16 v2, 0x30000000

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    return-object v0
.end method

.method public final getThreadId()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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
    const-string v1, "getStringParam(...)"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    return-object v0
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onChannelForceQuit(Lcom/narvii/chat/signalling/SignallingChannel;I)V
    .locals 0
    .param p1    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "signallingChannel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onChannelStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 1
    .param p1    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "signallingChannel"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->updateViews(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 9
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
    const-string p4, "signallingChannel"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p4, "oList"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string p2, "nList"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->updateViews(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 19
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "rtc"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/chat/rtc/RtcService;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getThreadId()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0, p0}, Lcom/narvii/chat/rtc/RtcService;->addLiveChannelChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LiveChannelChangeListener;)V

    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget-object p1, p1, Lcom/narvii/chat/rtc/RtcService;->muteStatusDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p0}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 34
    .line 35
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->isAllMuted()Z

    .line 41
    move-result p1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 p1, 0x0

    .line 44
    .line 45
    :goto_0
    iput-boolean p1, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->isAllMuted:Z

    .line 46
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string p3, "inflater"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p3, 0x7f0d033e

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 14
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
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getThreadId()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeLiveChannelChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LiveChannelChangeListener;)V

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, v0, Lcom/narvii/chat/rtc/RtcService;->muteStatusDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 26
    :cond_1
    return-void
.end method

.method public onMuteStatusChanged(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->isAllMuted:Z

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->updateAllMuteButton()V

    .line 6
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "view"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getBtnMute()Landroid/widget/ImageView;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getMuteUnCheckedBg()Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getRootView()Landroid/view/View;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getLayoutBg()Landroid/graphics/drawable/Drawable;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getBtnMute()Landroid/widget/ImageView;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    new-instance p2, Lcom/narvii/chat/video/fragments/f;

    .line 37
    .line 38
    .line 39
    invoke-direct {p2, p0}, Lcom/narvii/chat/video/fragments/f;-><init>(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    .line 44
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 45
    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->updateViews(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 56
    :cond_0
    return-void
.end method

.method public final toggleAllMute()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->isAllMuted:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/narvii/logging/ActSemantic;->turnOff:Lcom/narvii/logging/ActSemantic;

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    sget-object v0, Lcom/narvii/logging/ActSemantic;->turnOn:Lcom/narvii/logging/ActSemantic;

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    const-string v1, "MuteIcon"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->isAllMuted:Z

    .line 25
    .line 26
    xor-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->isAllMuted:Z

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v0}, Lcom/narvii/chat/rtc/RtcService;->muteAllRemoteUsers(Z)V

    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget-boolean v1, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->isAllMuted:Z

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->setIsAllMuted(Z)V

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->updateAllMuteButton()V

    .line 48
    return-void
.end method

.method public final updateAllMuteButton()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getBtnMute()Landroid/widget/ImageView;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->isAllMuted:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getMuteCheckedBg()Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object v1

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getMuteUnCheckedBg()Landroid/graphics/drawable/Drawable;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getBtnMute()Landroid/widget/ImageView;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    iget-boolean v2, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->isAllMuted:Z

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    .line 43
    const v2, 0x7f08068d

    .line 44
    goto :goto_1

    .line 45
    .line 46
    .line 47
    :cond_1
    const v2, 0x7f08068e

    .line 48
    .line 49
    .line 50
    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 51
    move-result-object v1

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/4 v1, 0x0

    .line 54
    .line 55
    .line 56
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    return-void
.end method

.method public final updateViews(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 6
    .param p1    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getTypeIndicator()Lcom/narvii/chat/video/view/VVIndicatorView;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iget v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/view/VVIndicatorView;->setLiveChannelType(I)V

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/chat/signalling/SignallingChannel;->getFilteredList()Ljava/util/List;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    const-string v1, "getFilteredList(...)"

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    check-cast p1, Ljava/util/Collection;

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/narvii/chat/signalling/SignallingUtils;->sortChannelUserWithLatestAtFirst(Ljava/util/List;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getTvMemberCount()Landroid/widget/TextView;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 46
    move-result v2

    .line 47
    .line 48
    .line 49
    const v3, 0x7f121022

    .line 50
    .line 51
    .line 52
    const v4, 0x7f121023

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v2, v3, v4}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getUserAvatar1()Lcom/narvii/widget/UserAvatarLayout;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 67
    move-result v1

    .line 68
    .line 69
    const/16 v2, 0x8

    .line 70
    const/4 v3, 0x0

    .line 71
    .line 72
    if-lez v1, :cond_1

    .line 73
    move v1, v3

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    move v1, v2

    .line 76
    .line 77
    .line 78
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getUserAvatar1()Lcom/narvii/widget/UserAvatarLayout;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    .line 85
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 86
    move-result v1

    .line 87
    const/4 v4, 0x0

    .line 88
    .line 89
    if-lez v1, :cond_2

    .line 90
    .line 91
    .line 92
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    move-result-object v1

    .line 94
    .line 95
    check-cast v1, Lcom/narvii/chat/signalling/ChannelUser;

    .line 96
    .line 97
    iget-object v1, v1, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    .line 98
    goto :goto_1

    .line 99
    :cond_2
    move-object v1, v4

    .line 100
    .line 101
    .line 102
    :goto_1
    invoke-virtual {p1, v1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 103
    .line 104
    .line 105
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getUserAvatar2()Lcom/narvii/widget/UserAvatarLayout;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    .line 109
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 110
    move-result v1

    .line 111
    const/4 v5, 0x1

    .line 112
    .line 113
    if-le v1, v5, :cond_3

    .line 114
    move v1, v3

    .line 115
    goto :goto_2

    .line 116
    :cond_3
    move v1, v2

    .line 117
    .line 118
    .line 119
    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getUserAvatar2()Lcom/narvii/widget/UserAvatarLayout;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    .line 126
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 127
    move-result v1

    .line 128
    .line 129
    if-le v1, v5, :cond_4

    .line 130
    .line 131
    .line 132
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 133
    move-result-object v1

    .line 134
    .line 135
    check-cast v1, Lcom/narvii/chat/signalling/ChannelUser;

    .line 136
    .line 137
    iget-object v1, v1, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    .line 138
    goto :goto_3

    .line 139
    :cond_4
    move-object v1, v4

    .line 140
    .line 141
    .line 142
    :goto_3
    invoke-virtual {p1, v1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 143
    .line 144
    .line 145
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getUserAvatar3()Lcom/narvii/widget/UserAvatarLayout;

    .line 146
    move-result-object p1

    .line 147
    .line 148
    .line 149
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 150
    move-result v1

    .line 151
    const/4 v5, 0x2

    .line 152
    .line 153
    if-le v1, v5, :cond_5

    .line 154
    move v2, v3

    .line 155
    .line 156
    .line 157
    :cond_5
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 158
    .line 159
    .line 160
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getUserAvatar3()Lcom/narvii/widget/UserAvatarLayout;

    .line 161
    move-result-object p1

    .line 162
    .line 163
    .line 164
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 165
    move-result v1

    .line 166
    .line 167
    if-le v1, v5, :cond_6

    .line 168
    .line 169
    .line 170
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 171
    move-result-object v0

    .line 172
    .line 173
    check-cast v0, Lcom/narvii/chat/signalling/ChannelUser;

    .line 174
    .line 175
    iget-object v4, v0, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    .line 176
    .line 177
    .line 178
    :cond_6
    invoke-virtual {p1, v4}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->updateAllMuteButton()V

    .line 182
    return-void
.end method
