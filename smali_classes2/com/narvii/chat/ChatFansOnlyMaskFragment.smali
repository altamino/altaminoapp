.class public final Lcom/narvii/chat/ChatFansOnlyMaskFragment;
.super Lcom/narvii/app/NVFragment;
.source "ChatFansOnlyMaskFragment.kt"

# interfaces
.implements Lcom/narvii/chat/ThreadInfoHost;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatFansOnlyMaskFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatFansOnlyMaskFragment.kt\ncom/narvii/chat/ChatFansOnlyMaskFragment\n*L\n1#1,113:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final avatarLayout$delegate:Lkotlin/Lazy;

.field private final btnBecomeFans$delegate:Lkotlin/Lazy;

.field private final hint$delegate:Lkotlin/Lazy;

.field private final nicknameView$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/ChatFansOnlyMaskFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "avatarLayout"

    const-string v4, "getAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/ChatFansOnlyMaskFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "nicknameView"

    const-string v4, "getNicknameView()Lcom/narvii/widget/NicknameView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/ChatFansOnlyMaskFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "btnBecomeFans"

    const-string v4, "getBtnBecomeFans()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/ChatFansOnlyMaskFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "hint"

    const-string v4, "getHint()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    const v0, 0x7f090c10

    .line 25
    invoke-direct {p0, p0, v0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->bind(Lcom/narvii/chat/ChatFansOnlyMaskFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->avatarLayout$delegate:Lkotlin/Lazy;

    const v0, 0x7f090764

    .line 26
    invoke-direct {p0, p0, v0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->bind(Lcom/narvii/chat/ChatFansOnlyMaskFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->nicknameView$delegate:Lkotlin/Lazy;

    const v0, 0x7f090122

    .line 27
    invoke-direct {p0, p0, v0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->bind(Lcom/narvii/chat/ChatFansOnlyMaskFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->btnBecomeFans$delegate:Lkotlin/Lazy;

    const v0, 0x7f09050e

    .line 28
    invoke-direct {p0, p0, v0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->bind(Lcom/narvii/chat/ChatFansOnlyMaskFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->hint$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final bind(Lcom/narvii/chat/ChatFansOnlyMaskFragment;I)Lkotlin/Lazy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcom/narvii/chat/ChatFansOnlyMaskFragment;",
            "I)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 110
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/narvii/chat/ChatFansOnlyMaskFragment$bind$1;

    invoke-direct {v1, p1, p2}, Lcom/narvii/chat/ChatFansOnlyMaskFragment$bind$1;-><init>(Lcom/narvii/chat/ChatFansOnlyMaskFragment;I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method

.method private final getAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->avatarLayout$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    return-object v0
.end method

.method private final getBtnBecomeFans()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->btnBecomeFans$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getHint()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->hint$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getNicknameView()Lcom/narvii/widget/NicknameView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->nicknameView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NicknameView;

    return-object v0
.end method

.method private final isFansBefore()Z
    .locals 3

    .line 95
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "account"

    .line 99
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/account/AccountService;

    .line 100
    iget-object v0, v0, Lcom/narvii/model/ChatThread;->uid:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/narvii/account/AccountService;->getFanClub(Ljava/lang/String;)Lcom/narvii/influencer/FanClub;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/influencer/FanClub;->hasSubscriptionBefore()Z

    move-result v1

    :cond_1
    return v1
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getThread()Lcom/narvii/model/ChatThread;
    .locals 2

    .line 73
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/chat/ChatFragment;

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/narvii/chat/ChatFragment;

    iget-object v0, v0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.narvii.chat.ChatFragment"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "thread"

    .line 76
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/ChatThread;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatThread;

    :goto_0
    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 2

    const-string v0, "id"

    .line 69
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getStringParam(\"id\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b02a1

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onThreadChanged(Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 65
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->updateViews()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->updateViews()V

    .line 42
    invoke-direct {p0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->getAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;

    move-result-object p1

    new-instance p2, Lcom/narvii/chat/ChatFansOnlyMaskFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment$onViewCreated$1;-><init>(Lcom/narvii/chat/ChatFansOnlyMaskFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-direct {p0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->getBtnBecomeFans()Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Lcom/narvii/chat/ChatFansOnlyMaskFragment$onViewCreated$2;

    invoke-direct {p2, p0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment$onViewCreated$2;-><init>(Lcom/narvii/chat/ChatFansOnlyMaskFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final showFansSubscriptionDialog()V
    .locals 2

    .line 61
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Chat Thread"

    invoke-static {p0, v0, v1}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->showSubscriptionDialog(Lcom/narvii/app/NVContext;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final updateViews()V
    .locals 5

    .line 81
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getAuthor()Lcom/narvii/model/User;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 84
    invoke-direct {p0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->getAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 85
    invoke-direct {p0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->getNicknameView()Lcom/narvii/widget/NicknameView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 87
    :cond_1
    invoke-direct {p0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->getBtnBecomeFans()Landroid/widget/TextView;

    move-result-object v1

    .line 88
    invoke-direct {p0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->isFansBefore()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0f0ed4

    goto :goto_1

    :cond_2
    const v2, 0x7f0f0161

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    if-eqz v0, :cond_3

    .line 90
    iget-object v0, v0, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, ""

    .line 91
    :goto_2
    invoke-direct {p0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->getHint()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0f0697

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
