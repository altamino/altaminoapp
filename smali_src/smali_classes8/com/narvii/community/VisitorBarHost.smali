.class public final Lcom/narvii/community/VisitorBarHost;
.super Lcom/narvii/widget/ProxyViewHost;
.source "SourceFile"


# instance fields
.field private activity:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private cid:I

.field private communityHelper:Lcom/narvii/master/CommunityHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final configService:Lcom/narvii/config/ConfigService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final joinLayout$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final joinText$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private joining:Z

.field private final mainLayout$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private nvContext:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final receiver:Landroid/content/BroadcastReceiver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "attrs"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/ProxyViewHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    .line 15
    .line 16
    const p2, 0x7f0a078a

    .line 17
    .line 18
    .line 19
    invoke-static {p0, p2}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lw7/m;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    iput-object p2, p0, Lcom/narvii/community/VisitorBarHost;->joinLayout$delegate:Lw7/m;

    .line 23
    .line 24
    .line 25
    const p2, 0x7f0a0788

    .line 26
    .line 27
    .line 28
    invoke-static {p0, p2}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lw7/m;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    iput-object p2, p0, Lcom/narvii/community/VisitorBarHost;->joinText$delegate:Lw7/m;

    .line 32
    .line 33
    .line 34
    const p2, 0x7f0a0fd9

    .line 35
    .line 36
    .line 37
    invoke-static {p0, p2}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lw7/m;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    iput-object p2, p0, Lcom/narvii/community/VisitorBarHost;->mainLayout$delegate:Lw7/m;

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    const-string p2, "getNVContext(...)"

    .line 47
    .line 48
    .line 49
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    iput-object p1, p0, Lcom/narvii/community/VisitorBarHost;->nvContext:Lcom/narvii/app/NVContext;

    .line 52
    .line 53
    const-string p2, "config"

    .line 54
    .line 55
    .line 56
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    const-string p2, "getService(...)"

    .line 60
    .line 61
    .line 62
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 65
    .line 66
    iput-object p1, p0, Lcom/narvii/community/VisitorBarHost;->configService:Lcom/narvii/config/ConfigService;

    .line 67
    .line 68
    new-instance p2, Lcom/narvii/community/VisitorBarHost$receiver$1;

    .line 69
    .line 70
    .line 71
    invoke-direct {p2, p0}, Lcom/narvii/community/VisitorBarHost$receiver$1;-><init>(Lcom/narvii/community/VisitorBarHost;)V

    .line 72
    .line 73
    iput-object p2, p0, Lcom/narvii/community/VisitorBarHost;->receiver:Landroid/content/BroadcastReceiver;

    .line 74
    .line 75
    new-instance p2, Lcom/narvii/master/CommunityHelper;

    .line 76
    .line 77
    iget-object v0, p0, Lcom/narvii/community/VisitorBarHost;->nvContext:Lcom/narvii/app/NVContext;

    .line 78
    .line 79
    .line 80
    invoke-direct {p2, v0}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 81
    .line 82
    iput-object p2, p0, Lcom/narvii/community/VisitorBarHost;->communityHelper:Lcom/narvii/master/CommunityHelper;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 86
    move-result p1

    .line 87
    .line 88
    iput p1, p0, Lcom/narvii/community/VisitorBarHost;->cid:I

    .line 89
    return-void
.end method

.method public static synthetic a(Lcom/narvii/community/VisitorBarHost;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/community/VisitorBarHost;->onFinishInflate$lambda$0(Lcom/narvii/community/VisitorBarHost;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$updateBackground(Lcom/narvii/community/VisitorBarHost;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/community/VisitorBarHost;->updateBackground()V

    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/narvii/community/VisitorBarHost;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/community/VisitorBarHost;->sendJoinRequest$lambda$1(Lcom/narvii/community/VisitorBarHost;Ljava/lang/Boolean;)V

    return-void
.end method

.method private final getJoinLayout()Lcom/narvii/widget/JoinCommunityProgressLayout;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/VisitorBarHost;->joinLayout$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/JoinCommunityProgressLayout;

    .line 9
    return-object v0
.end method

.method private final getJoinText()Landroid/widget/TextView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/VisitorBarHost;->joinText$delegate:Lw7/m;

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

.method private final getMainLayout()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/VisitorBarHost;->mainLayout$delegate:Lw7/m;

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

.method private static final onFinishInflate$lambda$0(Lcom/narvii/community/VisitorBarHost;Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/narvii/community/VisitorBarHost;->joining:Z

    .line 8
    .line 9
    if-nez p1, :cond_3

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/community/VisitorBarHost;->activity:Landroid/app/Activity;

    .line 12
    .line 13
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const-string v0, "null cannot be cast to non-null type com.narvii.app.NVActivity"

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getMainFragment()Landroidx/fragment/app/Fragment;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    instance-of p1, p1, Lcom/narvii/app/NVContext;

    .line 29
    .line 30
    const-string v1, "null cannot be cast to non-null type com.narvii.app.NVContext"

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/community/VisitorBarHost;->activity:Landroid/app/Activity;

    .line 35
    .line 36
    .line 37
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getMainFragment()Landroidx/fragment/app/Fragment;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    check-cast p1, Lcom/narvii/app/NVContext;

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_0
    iget-object p1, p0, Lcom/narvii/community/VisitorBarHost;->activity:Landroid/app/Activity;

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    check-cast p1, Lcom/narvii/app/NVContext;

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/4 p1, 0x0

    .line 59
    .line 60
    :goto_0
    sget-object v0, Lcom/narvii/logging/ActSemantic;->aminoJoin:Lcom/narvii/logging/ActSemantic;

    .line 61
    .line 62
    .line 63
    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    const-string v1, "VisitorJoinButton"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    instance-of v1, p1, Lcom/narvii/amino/HomeFragment;

    .line 73
    .line 74
    if-eqz v1, :cond_2

    .line 75
    .line 76
    check-cast p1, Lcom/narvii/amino/HomeFragment;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/narvii/amino/HomeFragment;->getCurrentDeepLink()Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    const-string v1, "deepLink"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 86
    .line 87
    .line 88
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 89
    .line 90
    .line 91
    invoke-direct {p0}, Lcom/narvii/community/VisitorBarHost;->sendJoinRequest()V

    .line 92
    :cond_3
    return-void
.end method

.method private final sendJoinRequest()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/community/VisitorBarHost;->joining:Z

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/community/VisitorBarHost;->updateViews()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/community/VisitorBarHost;->getJoinLayout()Lcom/narvii/widget/JoinCommunityProgressLayout;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const/16 v1, 0x5a

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/widget/JoinCommunityProgressLayout;->setProgress(I)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/community/VisitorBarHost;->communityHelper:Lcom/narvii/master/CommunityHelper;

    .line 18
    .line 19
    iget v1, p0, Lcom/narvii/community/VisitorBarHost;->cid:I

    .line 20
    .line 21
    new-instance v2, Lcom/narvii/community/a0;

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, p0}, Lcom/narvii/community/a0;-><init>(Lcom/narvii/community/VisitorBarHost;)V

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/narvii/master/CommunityHelper;->joinCommunity(ILjava/lang/String;Lcom/narvii/util/Callback;Z)V

    .line 30
    return-void
.end method

.method private static final sendJoinRequest$lambda$1(Lcom/narvii/community/VisitorBarHost;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/narvii/community/VisitorBarHost;->joining:Z

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/community/VisitorBarHost;->getJoinLayout()Lcom/narvii/widget/JoinCommunityProgressLayout;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/narvii/widget/JoinCommunityProgressLayout;->setProgress(I)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/narvii/community/VisitorBarHost;->updateViews()V

    .line 19
    return-void
.end method

.method private final updateBackground()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/community/VisitorBarHost;->getMainLayout()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/community/VisitorBarHost;->configService:Lcom/narvii/config/ConfigService;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-interface {v1}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 18
    return-void
.end method

.method private final updateViews()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/community/VisitorBarHost;->updateBackground()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/community/VisitorBarHost;->getJoinLayout()Lcom/narvii/widget/JoinCommunityProgressLayout;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/narvii/community/VisitorBarHost;->joining:Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/widget/JoinCommunityProgressLayout;->setCurPressed(Z)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/community/VisitorBarHost;->getJoinText()Landroid/widget/TextView;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/narvii/community/VisitorBarHost;->joining:Z

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    .line 23
    const v1, 0x7f120318

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    const v1, 0x7f120b5c

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 31
    return-void
.end method


# virtual methods
.method public final bind(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/community/VisitorBarHost;->activity:Landroid/app/Activity;

    return-void
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/community/VisitorBarHost;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getCid()I
    .locals 1

    iget v0, p0, Lcom/narvii/community/VisitorBarHost;->cid:I

    return v0
.end method

.method public final getCommunityHelper()Lcom/narvii/master/CommunityHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/community/VisitorBarHost;->communityHelper:Lcom/narvii/master/CommunityHelper;

    return-object v0
.end method

.method public final getConfigService()Lcom/narvii/config/ConfigService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/community/VisitorBarHost;->configService:Lcom/narvii/config/ConfigService;

    return-object v0
.end method

.method public final getJoining()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/community/VisitorBarHost;->joining:Z

    return v0
.end method

.method public final getNvContext()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/community/VisitorBarHost;->nvContext:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/community/VisitorBarHost;->getJoinLayout()Lcom/narvii/widget/JoinCommunityProgressLayout;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    new-instance v1, Lcom/narvii/community/z;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/narvii/community/z;-><init>(Lcom/narvii/community/VisitorBarHost;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/narvii/community/VisitorBarHost;->updateViews()V

    .line 19
    return-void
.end method

.method public final setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/community/VisitorBarHost;->activity:Landroid/app/Activity;

    return-void
.end method

.method public final setCid(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/community/VisitorBarHost;->cid:I

    return-void
.end method

.method public final setCommunityHelper(Lcom/narvii/master/CommunityHelper;)V
    .locals 1
    .param p1    # Lcom/narvii/master/CommunityHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/community/VisitorBarHost;->communityHelper:Lcom/narvii/master/CommunityHelper;

    return-void
.end method

.method public final setJoining(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/community/VisitorBarHost;->joining:Z

    return-void
.end method

.method public final setNvContext(Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/community/VisitorBarHost;->nvContext:Lcom/narvii/app/NVContext;

    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/community/VisitorBarHost;->receiver:Landroid/content/BroadcastReceiver;

    .line 11
    .line 12
    new-instance v2, Landroid/content/IntentFilter;

    .line 13
    .line 14
    const-string v3, "com.narvii.action.THEME_DOWNLOAD_SUCCESS"

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 21
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/community/VisitorBarHost;->receiver:Landroid/content/BroadcastReceiver;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 14
    return-void
.end method

.method public final unbind()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/narvii/community/VisitorBarHost;->activity:Landroid/app/Activity;

    return-void
.end method
