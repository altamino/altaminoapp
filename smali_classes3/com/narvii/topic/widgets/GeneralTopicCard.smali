.class public final Lcom/narvii/topic/widgets/GeneralTopicCard;
.super Lcom/github/mmin18/widget/FlexLayout;
.source "GeneralTopicCard.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/topic/widgets/GeneralTopicCard$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGeneralTopicCard.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeneralTopicCard.kt\ncom/narvii/topic/widgets/GeneralTopicCard\n*L\n1#1,72:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/narvii/topic/widgets/GeneralTopicCard$Companion;

.field private static final MIN_ONLINE_MEMBERS:I = 0x7fffffff


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final greenOval$delegate:Lkotlin/Lazy;

.field private isShownOnlineInfo:Z

.field private isShownSubscribeTag:Z

.field private final onlineMemberView$delegate:Lkotlin/Lazy;

.field private final storyCover$delegate:Lkotlin/Lazy;

.field private final topicView$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/topic/widgets/GeneralTopicCard;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "storyCover"

    const-string v4, "getStoryCover()Lcom/narvii/topic/widgets/TopicCardCoverView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/topic/widgets/GeneralTopicCard;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "topicView"

    const-string v4, "getTopicView()Lcom/narvii/story/widgets/StoryTopicView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/topic/widgets/GeneralTopicCard;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "onlineMemberView"

    const-string v4, "getOnlineMemberView()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/topic/widgets/GeneralTopicCard;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "greenOval"

    const-string v4, "getGreenOval()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/topic/widgets/GeneralTopicCard;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/narvii/topic/widgets/GeneralTopicCard$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/topic/widgets/GeneralTopicCard$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/topic/widgets/GeneralTopicCard;->Companion:Lcom/narvii/topic/widgets/GeneralTopicCard$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;)V

    const p1, 0x7f090587

    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/GeneralTopicCard;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->storyCover$delegate:Lkotlin/Lazy;

    const p1, 0x7f090bd1

    .line 17
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/GeneralTopicCard;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->topicView$delegate:Lkotlin/Lazy;

    const p1, 0x7f0907b6

    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/GeneralTopicCard;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->onlineMemberView$delegate:Lkotlin/Lazy;

    const p1, 0x7f0904e1

    .line 19
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/GeneralTopicCard;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->greenOval$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f090587

    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/GeneralTopicCard;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->storyCover$delegate:Lkotlin/Lazy;

    const p1, 0x7f090bd1

    .line 17
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/GeneralTopicCard;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->topicView$delegate:Lkotlin/Lazy;

    const p1, 0x7f0907b6

    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/GeneralTopicCard;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->onlineMemberView$delegate:Lkotlin/Lazy;

    const p1, 0x7f0904e1

    .line 19
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/GeneralTopicCard;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->greenOval$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f090587

    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/GeneralTopicCard;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->storyCover$delegate:Lkotlin/Lazy;

    const p1, 0x7f090bd1

    .line 17
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/GeneralTopicCard;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->topicView$delegate:Lkotlin/Lazy;

    const p1, 0x7f0907b6

    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/GeneralTopicCard;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->onlineMemberView$delegate:Lkotlin/Lazy;

    const p1, 0x7f0904e1

    .line 19
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/GeneralTopicCard;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->greenOval$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getGreenOval()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->greenOval$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/topic/widgets/GeneralTopicCard;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getOnlineMemberView()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->onlineMemberView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/topic/widgets/GeneralTopicCard;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getStoryCover()Lcom/narvii/topic/widgets/TopicCardCoverView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->storyCover$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/topic/widgets/GeneralTopicCard;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/topic/widgets/TopicCardCoverView;

    return-object v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final bind(I)Lkotlin/Lazy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 29
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/narvii/topic/widgets/GeneralTopicCard$bind$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/topic/widgets/GeneralTopicCard$bind$1;-><init>(Lcom/narvii/topic/widgets/GeneralTopicCard;I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method

.method public final getTopicView()Lcom/narvii/story/widgets/StoryTopicView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->topicView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/topic/widgets/GeneralTopicCard;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/story/widgets/StoryTopicView;

    return-object v0
.end method

.method public final isShownOnlineInfo()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->isShownOnlineInfo:Z

    return v0
.end method

.method public final isShownSubscribeTag()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->isShownSubscribeTag:Z

    return v0
.end method

.method public final setShownOnlineInfo(Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->isShownOnlineInfo:Z

    return-void
.end method

.method public final setShownSubscribeTag(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->isShownSubscribeTag:Z

    return-void
.end method

.method public final setTopic(Lcom/narvii/model/story/StoryTopic;)V
    .locals 6

    if-eqz p1, :cond_15

    .line 34
    iget-boolean v0, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->isShownSubscribeTag:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-direct {p0}, Lcom/narvii/topic/widgets/GeneralTopicCard;->getStoryCover()Lcom/narvii/topic/widgets/TopicCardCoverView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/topic/widgets/TopicCardCoverView;->showSubscribeTag()V

    goto :goto_0

    .line 37
    :cond_0
    invoke-direct {p0}, Lcom/narvii/topic/widgets/GeneralTopicCard;->getStoryCover()Lcom/narvii/topic/widgets/TopicCardCoverView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/topic/widgets/TopicCardCoverView;->hideSubscribeTag()V

    .line 39
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/narvii/topic/widgets/GeneralTopicCard;->getStoryCover()Lcom/narvii/topic/widgets/TopicCardCoverView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/narvii/topic/widgets/TopicCardCoverView;->setTopic(Lcom/narvii/model/story/StoryTopic;)V

    .line 40
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/GeneralTopicCard;->getTopicView()Lcom/narvii/story/widgets/StoryTopicView;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/narvii/story/widgets/StoryTopicView;->setTopic(Lcom/narvii/model/story/StoryTopic;)V

    .line 41
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/GeneralTopicCard;->getTopicView()Lcom/narvii/story/widgets/StoryTopicView;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 42
    :cond_4
    iget-boolean v0, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->isShownOnlineInfo:Z

    const/16 v2, 0x8

    if-nez v0, :cond_6

    .line 43
    invoke-direct {p0}, Lcom/narvii/topic/widgets/GeneralTopicCard;->getGreenOval()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    :cond_5
    invoke-direct {p0}, Lcom/narvii/topic/widgets/GeneralTopicCard;->getOnlineMemberView()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 45
    :cond_6
    iget-object v0, p1, Lcom/narvii/model/story/StoryTopic;->activeInfo:Lcom/narvii/model/story/StoryTopic$ActiveInfo;

    const/4 v3, 0x0

    if-eqz v0, :cond_e

    iget v0, v0, Lcom/narvii/model/story/StoryTopic$ActiveInfo;->memberCount:I

    const v4, 0x7fffffff

    if-lt v0, v4, :cond_e

    .line 46
    invoke-direct {p0}, Lcom/narvii/topic/widgets/GeneralTopicCard;->getOnlineMemberView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v2, "#38D89C"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    :cond_7
    iget-object v0, p1, Lcom/narvii/model/story/StoryTopic;->activeInfo:Lcom/narvii/model/story/StoryTopic$ActiveInfo;

    iget v0, v0, Lcom/narvii/model/story/StoryTopic$ActiveInfo;->memberCount:I

    const v2, 0x1869e

    if-gez v0, :cond_8

    goto :goto_1

    :cond_8
    if-lt v2, v0, :cond_9

    .line 48
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_9
    :goto_1
    const v2, 0xf423e

    const v4, 0x1869f

    if-le v4, v0, :cond_a

    goto :goto_2

    :cond_a
    if-lt v2, v0, :cond_b

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/narvii/model/story/StoryTopic;->activeInfo:Lcom/narvii/model/story/StoryTopic$ActiveInfo;

    iget p1, p1, Lcom/narvii/model/story/StoryTopic$ActiveInfo;->memberCount:I

    add-int/2addr p1, v1

    const v2, 0x186a0

    div-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "00K"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_b
    :goto_2
    const-string p1, "1M"

    .line 52
    :goto_3
    invoke-direct {p0}, Lcom/narvii/topic/widgets/GeneralTopicCard;->getOnlineMemberView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0f0b57

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :cond_c
    invoke-direct {p0}, Lcom/narvii/topic/widgets/GeneralTopicCard;->getGreenOval()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 54
    :cond_d
    invoke-direct {p0}, Lcom/narvii/topic/widgets/GeneralTopicCard;->getOnlineMemberView()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 55
    :cond_e
    iget v0, p1, Lcom/narvii/model/story/StoryTopic;->storyCount:I

    if-lez v0, :cond_13

    .line 56
    invoke-direct {p0}, Lcom/narvii/topic/widgets/GeneralTopicCard;->getOnlineMemberView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_f

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    :cond_f
    invoke-direct {p0}, Lcom/narvii/topic/widgets/GeneralTopicCard;->getOnlineMemberView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p1, Lcom/narvii/model/story/StoryTopic;->storyCount:I

    if-le v5, v1, :cond_10

    const v5, 0x7f0f1005

    goto :goto_4

    :cond_10
    const v5, 0x7f0f1004

    :goto_4
    new-array v1, v1, [Ljava/lang/Object;

    iget p1, p1, Lcom/narvii/model/story/StoryTopic;->storyCount:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :cond_11
    invoke-direct {p0}, Lcom/narvii/topic/widgets/GeneralTopicCard;->getGreenOval()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    :cond_12
    invoke-direct {p0}, Lcom/narvii/topic/widgets/GeneralTopicCard;->getOnlineMemberView()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 61
    :cond_13
    invoke-direct {p0}, Lcom/narvii/topic/widgets/GeneralTopicCard;->getGreenOval()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_14

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 62
    :cond_14
    invoke-direct {p0}, Lcom/narvii/topic/widgets/GeneralTopicCard;->getOnlineMemberView()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_15
    :goto_5
    return-void
.end method
