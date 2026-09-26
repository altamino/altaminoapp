.class public final Lcom/narvii/checkin/CheckInBottomBarLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final account:Lcom/narvii/account/AccountService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final checkInButton$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final checkInDays$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final checkInProgress$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final checkInService:Lcom/narvii/checkin/CheckInService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final checkInText$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final hasCheckedInToday$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isCheckingIn:Z

.field private final listener:Lcom/narvii/checkin/CheckInService$CheckInResponseListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final nickname$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final profileListener:Lcom/narvii/account/AccountService$ProfileListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final streakLostIcon$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final userAvatarLayout$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/checkin/CheckInBottomBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/checkin/CheckInBottomBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f0a0f36

    .line 4
    invoke-static {p0, p1}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->userAvatarLayout$delegate:Lw7/m;

    const p1, 0x7f0a09f9

    .line 5
    invoke-static {p0, p1}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->nickname$delegate:Lw7/m;

    const p1, 0x7f0a0dd7

    .line 6
    invoke-static {p0, p1}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->streakLostIcon$delegate:Lw7/m;

    const p1, 0x7f0a02d2

    .line 7
    invoke-static {p0, p1}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->checkInDays$delegate:Lw7/m;

    const p1, 0x7f0a02e4

    .line 8
    invoke-static {p0, p1}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->checkInButton$delegate:Lw7/m;

    const p1, 0x7f0a02e9

    .line 9
    invoke-static {p0, p1}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->checkInText$delegate:Lw7/m;

    const p1, 0x7f0a02e7

    .line 10
    invoke-static {p0, p1}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->checkInProgress$delegate:Lw7/m;

    const p1, 0x7f0a0642

    .line 11
    invoke-static {p0, p1}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->hasCheckedInToday$delegate:Lw7/m;

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0d00f0

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "getNVContext(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->ctx:Lcom/narvii/app/NVContext;

    const-string p2, "account"

    .line 14
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "getService(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/account/AccountService;

    iput-object p2, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->account:Lcom/narvii/account/AccountService;

    const-string v0, "checkIn"

    .line 15
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/checkin/CheckInService;

    iput-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->checkInService:Lcom/narvii/checkin/CheckInService;

    .line 16
    invoke-virtual {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->updateViews()V

    .line 17
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->getCheckInButton()Lcom/narvii/widget/PushButton;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    new-instance p1, Lcom/narvii/checkin/CheckInBottomBarLayout$1;

    invoke-direct {p1, p0}, Lcom/narvii/checkin/CheckInBottomBarLayout$1;-><init>(Lcom/narvii/checkin/CheckInBottomBarLayout;)V

    iput-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    .line 20
    invoke-virtual {p2, p1}, Lcom/narvii/account/AccountService;->addProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 21
    new-instance p1, Lcom/narvii/checkin/CheckInBottomBarLayout$listener$1;

    invoke-direct {p1, p0}, Lcom/narvii/checkin/CheckInBottomBarLayout$listener$1;-><init>(Lcom/narvii/checkin/CheckInBottomBarLayout;)V

    iput-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->listener:Lcom/narvii/checkin/CheckInService$CheckInResponseListener;

    return-void
.end method

.method public static final synthetic access$setCheckingIn$p(Lcom/narvii/checkin/CheckInBottomBarLayout;Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->isCheckingIn:Z

    .line 3
    return-void
.end method

.method private final getCheckInButton()Lcom/narvii/widget/PushButton;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->checkInButton$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/PushButton;

    .line 9
    return-object v0
.end method

.method private final getCheckInDays()Landroid/widget/TextView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->checkInDays$delegate:Lw7/m;

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

.method private final getCheckInProgress()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->checkInProgress$delegate:Lw7/m;

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

.method private final getCheckInText()Landroid/widget/TextView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->checkInText$delegate:Lw7/m;

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

.method private final getHasCheckedInToday()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->hasCheckedInToday$delegate:Lw7/m;

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

.method private final getNickname()Lcom/narvii/widget/NicknameView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->nickname$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/NicknameView;

    .line 9
    return-object v0
.end method

.method private final getStreakLostIcon()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->streakLostIcon$delegate:Lw7/m;

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

.method private final getUserAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->userAvatarLayout$delegate:Lw7/m;

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

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final getListener()Lcom/narvii/checkin/CheckInService$CheckInResponseListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->listener:Lcom/narvii/checkin/CheckInService$CheckInResponseListener;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 6
    move-result p1

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    .line 14
    :goto_0
    const-string v0, "CheckInArea"

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    goto :goto_1

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 22
    move-result p1

    .line 23
    .line 24
    .line 25
    const v2, 0x7f0a02e4

    .line 26
    .line 27
    if-ne p1, v2, :cond_2

    .line 28
    .line 29
    iput-boolean v1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->isCheckingIn:Z

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->checkInService:Lcom/narvii/checkin/CheckInService;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->listener:Lcom/narvii/checkin/CheckInService$CheckInResponseListener;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1}, Lcom/narvii/checkin/CheckInService;->startCheckIn(Lcom/narvii/checkin/CheckInService$CheckInResponseListener;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->updateViews()V

    .line 40
    .line 41
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkIn:Lcom/narvii/logging/ActSemantic;

    .line 42
    .line 43
    .line 44
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Landroid/view/View;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 53
    goto :goto_2

    .line 54
    .line 55
    :cond_2
    :goto_1
    const-class p1, Lcom/narvii/achievements/AchievementsFragment;

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    iget-object v2, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->account:Lcom/narvii/account/AccountService;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    const-string v3, "id"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    .line 72
    iget-object v2, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->account:Lcom/narvii/account/AccountService;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 76
    move-result-object v2

    .line 77
    .line 78
    if-eqz v2, :cond_3

    .line 79
    .line 80
    const-string v3, "needFetchData"

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    .line 85
    iget-object v1, v2, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    .line 86
    .line 87
    .line 88
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    const-string v3, "mediaList"

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    .line 96
    const-string v1, "user"

    .line 97
    .line 98
    .line 99
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    move-result-object v2

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    .line 105
    const-string v1, "Source"

    .line 106
    .line 107
    const-string v2, "Left Side Panel"

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    .line 112
    :cond_3
    sget-object v1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 113
    .line 114
    .line 115
    invoke-static {p0, v1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Landroid/view/View;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 116
    move-result-object v1

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 124
    .line 125
    iget-object v0, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->ctx:Lcom/narvii/app/NVContext;

    .line 126
    .line 127
    .line 128
    invoke-static {v0, p1}, Lcom/narvii/checkin/CheckInBottomBarLayout;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 129
    :goto_2
    return-void
.end method

.method public final updateViews()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->getUserAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->getNickname()Lcom/narvii/widget/NicknameView;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/checkin/CheckInHelper;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->ctx:Lcom/narvii/app/NVContext;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Lcom/narvii/checkin/CheckInHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->account:Lcom/narvii/account/AccountService;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getCheckInHistory()Lcom/narvii/model/CheckInHistory;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->getStreakLostIcon()Landroid/view/View;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/narvii/checkin/CheckInHelper;->shouldShowStrikeLost(Lcom/narvii/model/CheckInHistory;)Z

    .line 41
    move-result v0

    .line 42
    .line 43
    const/16 v1, 0x8

    .line 44
    const/4 v3, 0x0

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    move v0, v3

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move v0, v1

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    iget-object v0, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->account:Lcom/narvii/account/AccountService;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getConsecutiveCheckInDays()I

    .line 58
    move-result v0

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 65
    .line 66
    .line 67
    invoke-static {v2}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    .line 68
    move-result-object v2

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 72
    move-result-object v4

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 76
    move-result-object v4

    .line 77
    const/4 v5, 0x1

    .line 78
    .line 79
    new-array v6, v5, [Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    aput-object v0, v6, v3

    .line 86
    .line 87
    .line 88
    const v0, 0x7f120d32

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v0, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    const-string v2, "getString(...)"

    .line 95
    .line 96
    .line 97
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->getCheckInDays()Landroid/widget/TextView;

    .line 101
    move-result-object v2

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    iget-object v0, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->account:Lcom/narvii/account/AccountService;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasCheckInToday()Z

    .line 110
    move-result v0

    .line 111
    .line 112
    if-eqz v0, :cond_1

    .line 113
    .line 114
    .line 115
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->getCheckInButton()Lcom/narvii/widget/PushButton;

    .line 116
    move-result-object v0

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->getHasCheckedInToday()Landroid/view/View;

    .line 123
    move-result-object v0

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 127
    goto :goto_1

    .line 128
    .line 129
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->isCheckingIn:Z

    .line 130
    .line 131
    if-eqz v0, :cond_2

    .line 132
    .line 133
    .line 134
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->getCheckInButton()Lcom/narvii/widget/PushButton;

    .line 135
    move-result-object v0

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 139
    .line 140
    .line 141
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->getHasCheckedInToday()Landroid/view/View;

    .line 142
    move-result-object v0

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    .line 147
    .line 148
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->getCheckInText()Landroid/widget/TextView;

    .line 149
    move-result-object v0

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->getCheckInProgress()Landroid/view/View;

    .line 156
    move-result-object v0

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 160
    .line 161
    .line 162
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->getCheckInButton()Lcom/narvii/widget/PushButton;

    .line 163
    move-result-object v0

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 167
    goto :goto_1

    .line 168
    .line 169
    .line 170
    :cond_2
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->getCheckInButton()Lcom/narvii/widget/PushButton;

    .line 171
    move-result-object v0

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 175
    .line 176
    .line 177
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->getHasCheckedInToday()Landroid/view/View;

    .line 178
    move-result-object v0

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 182
    .line 183
    .line 184
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->getCheckInText()Landroid/widget/TextView;

    .line 185
    move-result-object v0

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 189
    .line 190
    .line 191
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->getCheckInProgress()Landroid/view/View;

    .line 192
    move-result-object v0

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 196
    .line 197
    .line 198
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->getCheckInButton()Lcom/narvii/widget/PushButton;

    .line 199
    move-result-object v0

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 203
    :goto_1
    return-void
.end method
