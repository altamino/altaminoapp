.class public final Lcom/narvii/influencer/FansListItemCell;
.super Lcom/github/mmin18/widget/FlexLayout;
.source "FansListItemCell.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFansListItemCell.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FansListItemCell.kt\ncom/narvii/influencer/FansListItemCell\n*L\n1#1,74:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final avatar$delegate:Lkotlin/Lazy;

.field private final fansThanksView$delegate:Lkotlin/Lazy;

.field private final followedCheck$delegate:Lkotlin/Lazy;

.field private final nicknameView$delegate:Lkotlin/Lazy;

.field private final tvAdress$delegate:Lkotlin/Lazy;

.field private final userFollowView$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/influencer/FansListItemCell;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "avatar"

    const-string v4, "getAvatar()Lcom/narvii/widget/UserAvatarLayout;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/influencer/FansListItemCell;

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

    const-class v2, Lcom/narvii/influencer/FansListItemCell;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string/jumbo v3, "tvAdress"

    const-string v4, "getTvAdress()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/influencer/FansListItemCell;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "followedCheck"

    const-string v4, "getFollowedCheck()Landroid/widget/ImageView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/influencer/FansListItemCell;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "fansThanksView"

    const-string v4, "getFansThanksView()Lcom/narvii/tipping/TippingThanksView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/influencer/FansListItemCell;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string/jumbo v3, "userFollowView"

    const-string v4, "getUserFollowView()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/influencer/FansListItemCell;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;)V

    const p1, 0x7f090c10

    .line 22
    invoke-direct {p0, p0, p1}, Lcom/narvii/influencer/FansListItemCell;->bind(Lcom/narvii/influencer/FansListItemCell;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/influencer/FansListItemCell;->avatar$delegate:Lkotlin/Lazy;

    const p1, 0x7f090764

    .line 23
    invoke-direct {p0, p0, p1}, Lcom/narvii/influencer/FansListItemCell;->bind(Lcom/narvii/influencer/FansListItemCell;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/influencer/FansListItemCell;->nicknameView$delegate:Lkotlin/Lazy;

    const p1, 0x7f09006f

    .line 24
    invoke-direct {p0, p0, p1}, Lcom/narvii/influencer/FansListItemCell;->bind(Lcom/narvii/influencer/FansListItemCell;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/influencer/FansListItemCell;->tvAdress$delegate:Lkotlin/Lazy;

    const p1, 0x7f090c37

    .line 25
    invoke-direct {p0, p0, p1}, Lcom/narvii/influencer/FansListItemCell;->bind(Lcom/narvii/influencer/FansListItemCell;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/influencer/FansListItemCell;->followedCheck$delegate:Lkotlin/Lazy;

    const p1, 0x7f09042f

    .line 26
    invoke-direct {p0, p0, p1}, Lcom/narvii/influencer/FansListItemCell;->bind(Lcom/narvii/influencer/FansListItemCell;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/influencer/FansListItemCell;->fansThanksView$delegate:Lkotlin/Lazy;

    const p1, 0x7f090c18

    .line 27
    invoke-direct {p0, p0, p1}, Lcom/narvii/influencer/FansListItemCell;->bind(Lcom/narvii/influencer/FansListItemCell;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/influencer/FansListItemCell;->userFollowView$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f090c10

    .line 22
    invoke-direct {p0, p0, p1}, Lcom/narvii/influencer/FansListItemCell;->bind(Lcom/narvii/influencer/FansListItemCell;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/influencer/FansListItemCell;->avatar$delegate:Lkotlin/Lazy;

    const p1, 0x7f090764

    .line 23
    invoke-direct {p0, p0, p1}, Lcom/narvii/influencer/FansListItemCell;->bind(Lcom/narvii/influencer/FansListItemCell;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/influencer/FansListItemCell;->nicknameView$delegate:Lkotlin/Lazy;

    const p1, 0x7f09006f

    .line 24
    invoke-direct {p0, p0, p1}, Lcom/narvii/influencer/FansListItemCell;->bind(Lcom/narvii/influencer/FansListItemCell;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/influencer/FansListItemCell;->tvAdress$delegate:Lkotlin/Lazy;

    const p1, 0x7f090c37

    .line 25
    invoke-direct {p0, p0, p1}, Lcom/narvii/influencer/FansListItemCell;->bind(Lcom/narvii/influencer/FansListItemCell;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/influencer/FansListItemCell;->followedCheck$delegate:Lkotlin/Lazy;

    const p1, 0x7f09042f

    .line 26
    invoke-direct {p0, p0, p1}, Lcom/narvii/influencer/FansListItemCell;->bind(Lcom/narvii/influencer/FansListItemCell;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/influencer/FansListItemCell;->fansThanksView$delegate:Lkotlin/Lazy;

    const p1, 0x7f090c18

    .line 27
    invoke-direct {p0, p0, p1}, Lcom/narvii/influencer/FansListItemCell;->bind(Lcom/narvii/influencer/FansListItemCell;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/influencer/FansListItemCell;->userFollowView$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final bind(Lcom/narvii/influencer/FansListItemCell;I)Lkotlin/Lazy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcom/narvii/influencer/FansListItemCell;",
            "I)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 70
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/narvii/influencer/FansListItemCell$bind$1;

    invoke-direct {v1, p1, p2}, Lcom/narvii/influencer/FansListItemCell$bind$1;-><init>(Lcom/narvii/influencer/FansListItemCell;I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/influencer/FansListItemCell;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/influencer/FansListItemCell;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/influencer/FansListItemCell;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/influencer/FansListItemCell;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/influencer/FansListItemCell;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getAvatar()Lcom/narvii/widget/UserAvatarLayout;
    .locals 3

    iget-object v0, p0, Lcom/narvii/influencer/FansListItemCell;->avatar$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/influencer/FansListItemCell;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    return-object v0
.end method

.method public final getFansThanksView()Lcom/narvii/tipping/TippingThanksView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/influencer/FansListItemCell;->fansThanksView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/influencer/FansListItemCell;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/tipping/TippingThanksView;

    return-object v0
.end method

.method public final getFollowedCheck()Landroid/widget/ImageView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/influencer/FansListItemCell;->followedCheck$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/influencer/FansListItemCell;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getNicknameView()Lcom/narvii/widget/NicknameView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/influencer/FansListItemCell;->nicknameView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/influencer/FansListItemCell;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NicknameView;

    return-object v0
.end method

.method public final getTvAdress()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/influencer/FansListItemCell;->tvAdress$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/influencer/FansListItemCell;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final getUserFollowView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/influencer/FansListItemCell;->userFollowView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/influencer/FansListItemCell;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final setFansInfo(Lcom/narvii/influencer/FansInfo;ZZZ)V
    .locals 5

    if-eqz p1, :cond_b

    .line 34
    invoke-virtual {p1}, Lcom/narvii/influencer/FansInfo;->getAuthor()Lcom/narvii/model/User;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 38
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/influencer/FansInfo;->getAuthor()Lcom/narvii/model/User;

    move-result-object v0

    .line 39
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListItemCell;->getFansThanksView()Lcom/narvii/tipping/TippingThanksView;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz p2, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 40
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListItemCell;->getAvatar()Lcom/narvii/widget/UserAvatarLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 41
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListItemCell;->getNicknameView()Lcom/narvii/widget/NicknameView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 42
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListItemCell;->getTvAdress()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListItemCell;->getTvAdress()Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, v0, Lcom/narvii/model/User;->address:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListItemCell;->getUserFollowView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 47
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListItemCell;->getFollowedCheck()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p2, :cond_3

    .line 50
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListItemCell;->getUserFollowView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 51
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListItemCell;->getFollowedCheck()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    iget-boolean p2, p1, Lcom/narvii/influencer/FansInfo;->isTipperAccessible:Z

    if-nez p2, :cond_2

    .line 53
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListItemCell;->getFansThanksView()Lcom/narvii/tipping/TippingThanksView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVerticalGravity(I)V

    goto/16 :goto_7

    .line 55
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListItemCell;->getFansThanksView()Lcom/narvii/tipping/TippingThanksView;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->setVerticalGravity(I)V

    .line 56
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListItemCell;->getFansThanksView()Lcom/narvii/tipping/TippingThanksView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/narvii/tipping/TippingThanksView;->bindBebefactor(Lcom/narvii/model/Benefactor;)V

    goto/16 :goto_7

    .line 59
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListItemCell;->getFansThanksView()Lcom/narvii/tipping/TippingThanksView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 60
    iget p1, v0, Lcom/narvii/model/User;->membershipStatus:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_5

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    .line 61
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListItemCell;->getFollowedCheck()Landroid/widget/ImageView;

    move-result-object p1

    if-nez p3, :cond_6

    if-eqz p2, :cond_6

    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListItemCell;->getUserFollowView()Landroid/view/View;

    move-result-object p1

    if-nez p3, :cond_7

    if-nez p2, :cond_7

    const/4 p2, 0x0

    goto :goto_3

    :cond_7
    const/16 p2, 0x8

    :goto_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListItemCell;->getUserFollowView()Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090c1b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "userFollowView.findViewB\u2026w>(R.id.user_follow_icon)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_8

    const/16 p2, 0x8

    goto :goto_4

    :cond_8
    const/4 p2, 0x0

    :goto_4
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListItemCell;->getUserFollowView()Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090c1e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "userFollowView.findViewB\u2026w>(R.id.user_follow_text)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_9

    const/16 p2, 0x8

    goto :goto_5

    :cond_9
    const/4 p2, 0x0

    :goto_5
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 65
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListItemCell;->getUserFollowView()Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090c1d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "userFollowView.findViewB\u2026.id.user_follow_progress)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_a

    goto :goto_6

    :cond_a
    const/16 v2, 0x8

    :goto_6
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    :goto_7
    return-void
.end method
