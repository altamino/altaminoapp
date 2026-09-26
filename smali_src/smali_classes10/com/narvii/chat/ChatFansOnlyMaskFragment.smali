.class public final Lcom/narvii/chat/ChatFansOnlyMaskFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/ThreadInfoHost;


# instance fields
.field private final avatarLayout$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final btnBecomeFans$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final hint$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final nicknameView$delegate:Lw7/m;
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
    const v0, 0x7f0a0f36

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p0, v0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->bind(Lcom/narvii/chat/ChatFansOnlyMaskFragment;I)Lw7/m;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->avatarLayout$delegate:Lw7/m;

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a09f9

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p0, v0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->bind(Lcom/narvii/chat/ChatFansOnlyMaskFragment;I)Lw7/m;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->nicknameView$delegate:Lw7/m;

    .line 22
    .line 23
    .line 24
    const v0, 0x7f0a01bb

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p0, v0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->bind(Lcom/narvii/chat/ChatFansOnlyMaskFragment;I)Lw7/m;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->btnBecomeFans$delegate:Lw7/m;

    .line 31
    .line 32
    .line 33
    const v0, 0x7f0a0666

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, p0, v0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->bind(Lcom/narvii/chat/ChatFansOnlyMaskFragment;I)Lw7/m;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    iput-object v0, p0, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->hint$delegate:Lw7/m;

    .line 40
    return-void
.end method

.method private final bind(Lcom/narvii/chat/ChatFansOnlyMaskFragment;I)Lw7/m;
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
            "Lcom/narvii/chat/ChatFansOnlyMaskFragment;",
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
    new-instance v1, Lcom/narvii/chat/ChatFansOnlyMaskFragment$bind$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p1, p2}, Lcom/narvii/chat/ChatFansOnlyMaskFragment$bind$1;-><init>(Lcom/narvii/chat/ChatFansOnlyMaskFragment;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lw7/n;->b(Lw7/q;Le8/a;)Lw7/m;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method private final getAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->avatarLayout$delegate:Lw7/m;

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

.method private final getBtnBecomeFans()Landroid/widget/TextView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->btnBecomeFans$delegate:Lw7/m;

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

.method private final getHint()Landroid/widget/TextView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->hint$delegate:Lw7/m;

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

.method private final getNicknameView()Lcom/narvii/widget/NicknameView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->nicknameView$delegate:Lw7/m;

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

.method private final isFansBefore()Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string v2, "account"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    check-cast v2, Lcom/narvii/account/AccountService;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/narvii/model/ChatThread;->uid:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v0}, Lcom/narvii/account/AccountService;->getFanClub(Ljava/lang/String;)Lcom/narvii/influencer/FanClub;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/narvii/influencer/FanClub;->hasSubscriptionBefore()Z

    .line 34
    move-result v1

    .line 35
    :cond_1
    return v1
.end method

.method public static synthetic n(Lcom/narvii/chat/ChatFansOnlyMaskFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->onViewCreated$lambda$1(Lcom/narvii/chat/ChatFansOnlyMaskFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/narvii/chat/ChatFansOnlyMaskFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->onViewCreated$lambda$2(Lcom/narvii/chat/ChatFansOnlyMaskFragment;Landroid/view/View;)V

    return-void
.end method

.method private static final onViewCreated$lambda$1(Lcom/narvii/chat/ChatFansOnlyMaskFragment;Landroid/view/View;)V
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
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getAuthor()Lcom/narvii/model/User;

    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    .line 19
    :goto_0
    if-eqz p1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 27
    :cond_1
    return-void
.end method

.method private static final onViewCreated$lambda$2(Lcom/narvii/chat/ChatFansOnlyMaskFragment;Landroid/view/View;)V
    .locals 1

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
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 19
    .line 20
    iget-object p1, p1, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 30
    .line 31
    iget-object p1, p1, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/narvii/model/User;->isInfluencer()Z

    .line 35
    move-result p1

    .line 36
    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 41
    move-result-object p0

    .line 42
    .line 43
    .line 44
    const p1, 0x7f1211ab

    .line 45
    const/4 v0, 0x1

    .line 46
    .line 47
    .line 48
    invoke-static {p0, p1, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 49
    move-result-object p0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/narvii/util/NVToast;->show()V

    .line 53
    goto :goto_0

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->showFansSubscriptionDialog()V

    .line 57
    :goto_0
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


# virtual methods
.method public getThread()Lcom/narvii/model/ChatThread;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/chat/ChatFragment;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "null cannot be cast to non-null type com.narvii.chat.ChatFragment"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/chat/ChatFragment;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    const-string v0, "thread"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    const-class v1, Lcom/narvii/model/ChatThread;

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 37
    :goto_0
    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
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
    const p3, 0x7f0d02d1

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

.method public onThreadChanged(Lcom/narvii/model/ChatThread;)V
    .locals 0
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->updateViews()V

    .line 4
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
    const/4 p2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->updateViews()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->getAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    new-instance p2, Lcom/narvii/chat/h;

    .line 22
    .line 23
    .line 24
    invoke-direct {p2, p0}, Lcom/narvii/chat/h;-><init>(Lcom/narvii/chat/ChatFansOnlyMaskFragment;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->getBtnBecomeFans()Landroid/widget/TextView;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    new-instance p2, Lcom/narvii/chat/i;

    .line 34
    .line 35
    .line 36
    invoke-direct {p2, p0}, Lcom/narvii/chat/i;-><init>(Lcom/narvii/chat/ChatFansOnlyMaskFragment;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method

.method public final showFansSubscriptionDialog()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    .line 15
    :cond_1
    const-string v1, "Chat Thread"

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v0, v1}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->showSubscriptionDialog(Lcom/narvii/app/NVContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public final updateViews()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getAuthor()Lcom/narvii/model/User;

    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->getAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->getNicknameView()Lcom/narvii/widget/NicknameView;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v0}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-direct {p0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->getBtnBecomeFans()Landroid/widget/TextView;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->isFansBefore()Z

    .line 37
    move-result v3

    .line 38
    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    .line 42
    const v3, 0x7f120fed

    .line 43
    goto :goto_1

    .line 44
    .line 45
    .line 46
    :cond_2
    const v3, 0x7f1201a1

    .line 47
    .line 48
    .line 49
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iget-object v1, v0, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    .line 54
    .line 55
    :cond_3
    if-nez v1, :cond_4

    .line 56
    .line 57
    const-string v1, ""

    .line 58
    .line 59
    .line 60
    :cond_4
    invoke-direct {p0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->getHint()Landroid/widget/TextView;

    .line 61
    move-result-object v0

    .line 62
    const/4 v2, 0x1

    .line 63
    .line 64
    new-array v2, v2, [Ljava/lang/Object;

    .line 65
    const/4 v3, 0x0

    .line 66
    .line 67
    aput-object v1, v2, v3

    .line 68
    .line 69
    .line 70
    const v1, 0x7f120744

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method
