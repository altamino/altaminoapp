.class public final Lcom/narvii/topic/widgets/StorySectionItemView;
.super Landroid/widget/LinearLayout;
.source "StorySectionItemView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/topic/widgets/StorySectionItemView$OptionClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStorySectionItemView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StorySectionItemView.kt\ncom/narvii/topic/widgets/StorySectionItemView\n*L\n1#1,333:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private _$_findViewCache:Ljava/util/HashMap;

.field private _nextPageToken:Ljava/lang/String;

.field private adapter:Lcom/narvii/logging/Area;

.field private final animationListener:Landroid/animation/Animator$AnimatorListener;

.field private apiRequest:Lcom/narvii/util/http/ApiRequest;

.field private apiService:Lcom/narvii/util/http/ApiService;

.field private final btnRefresh$delegate:Lkotlin/Lazy;

.field private final btnSeeAll$delegate:Lkotlin/Lazy;

.field private communityInfoMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field private curWindowIndex:I

.field private final indicatorLoading$delegate:Lkotlin/Lazy;

.field private languageService:Lcom/narvii/language/ContentLanguageService;

.field private listener:Lcom/narvii/topic/widgets/StorySectionItemView$OptionClickListener;

.field private final loadingAnimator$delegate:Lkotlin/Lazy;

.field private nvContext:Lcom/narvii/app/NVContext;

.field private final optionLayout$delegate:Lkotlin/Lazy;

.field private final storyCard1$delegate:Lkotlin/Lazy;

.field private final storyCard2$delegate:Lkotlin/Lazy;

.field private final storyCard3$delegate:Lkotlin/Lazy;

.field private final storyCard4$delegate:Lkotlin/Lazy;

.field private storyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/Blog;",
            ">;"
        }
    .end annotation
.end field

.field private storySection:Lcom/narvii/topic/model/StorySections;

.field private topicId:I

.field private final tvCategoryTitle$delegate:Lkotlin/Lazy;

.field private userInfoMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xa

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/topic/widgets/StorySectionItemView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "tvCategoryTitle"

    const-string v4, "getTvCategoryTitle()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/topic/widgets/StorySectionItemView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "storyCard1"

    const-string v4, "getStoryCard1()Lcom/narvii/story/widgets/StoryCardView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/topic/widgets/StorySectionItemView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "storyCard2"

    const-string v4, "getStoryCard2()Lcom/narvii/story/widgets/StoryCardView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/topic/widgets/StorySectionItemView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "storyCard3"

    const-string v4, "getStoryCard3()Lcom/narvii/story/widgets/StoryCardView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/topic/widgets/StorySectionItemView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "storyCard4"

    const-string v4, "getStoryCard4()Lcom/narvii/story/widgets/StoryCardView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/topic/widgets/StorySectionItemView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "btnSeeAll"

    const-string v4, "getBtnSeeAll()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/topic/widgets/StorySectionItemView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "btnRefresh"

    const-string v4, "getBtnRefresh()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/topic/widgets/StorySectionItemView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "indicatorLoading"

    const-string v4, "getIndicatorLoading()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/topic/widgets/StorySectionItemView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "optionLayout"

    const-string v4, "getOptionLayout()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/topic/widgets/StorySectionItemView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "loadingAnimator"

    const-string v4, "getLoadingAnimator()Landroid/animation/ObjectAnimator;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/topic/widgets/StorySectionItemView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 78
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 53
    const-class p1, Lcom/narvii/topic/widgets/StorySectionItemView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StorySectionItemView::class.java.simpleName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->TAG:Ljava/lang/String;

    const p1, 0x7f090b9a

    .line 54
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->tvCategoryTitle$delegate:Lkotlin/Lazy;

    const p1, 0x7f09019c

    .line 55
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->storyCard1$delegate:Lkotlin/Lazy;

    const p1, 0x7f09019d

    .line 56
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->storyCard2$delegate:Lkotlin/Lazy;

    const p1, 0x7f09019e

    .line 57
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->storyCard3$delegate:Lkotlin/Lazy;

    const p1, 0x7f09019f

    .line 58
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->storyCard4$delegate:Lkotlin/Lazy;

    const p1, 0x7f0909f7

    .line 59
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->btnSeeAll$delegate:Lkotlin/Lazy;

    const p1, 0x7f09094a

    .line 60
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->btnRefresh$delegate:Lkotlin/Lazy;

    const p1, 0x7f0901c2

    .line 61
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->indicatorLoading$delegate:Lkotlin/Lazy;

    const p1, 0x7f0907e8

    .line 62
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->optionLayout$delegate:Lkotlin/Lazy;

    .line 63
    new-instance p1, Lcom/narvii/topic/widgets/StorySectionItemView$loadingAnimator$2;

    invoke-direct {p1, p0}, Lcom/narvii/topic/widgets/StorySectionItemView$loadingAnimator$2;-><init>(Lcom/narvii/topic/widgets/StorySectionItemView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->loadingAnimator$delegate:Lkotlin/Lazy;

    .line 74
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->storyList:Ljava/util/ArrayList;

    .line 75
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->communityInfoMapping:Ljava/util/Map;

    .line 76
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->userInfoMapping:Ljava/util/Map;

    .line 204
    new-instance p1, Lcom/narvii/topic/widgets/StorySectionItemView$animationListener$1;

    invoke-direct {p1, p0}, Lcom/narvii/topic/widgets/StorySectionItemView$animationListener$1;-><init>(Lcom/narvii/topic/widgets/StorySectionItemView;)V

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->animationListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const-class p1, Lcom/narvii/topic/widgets/StorySectionItemView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StorySectionItemView::class.java.simpleName"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->TAG:Ljava/lang/String;

    const p1, 0x7f090b9a

    .line 54
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->tvCategoryTitle$delegate:Lkotlin/Lazy;

    const p1, 0x7f09019c

    .line 55
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->storyCard1$delegate:Lkotlin/Lazy;

    const p1, 0x7f09019d

    .line 56
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->storyCard2$delegate:Lkotlin/Lazy;

    const p1, 0x7f09019e

    .line 57
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->storyCard3$delegate:Lkotlin/Lazy;

    const p1, 0x7f09019f

    .line 58
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->storyCard4$delegate:Lkotlin/Lazy;

    const p1, 0x7f0909f7

    .line 59
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->btnSeeAll$delegate:Lkotlin/Lazy;

    const p1, 0x7f09094a

    .line 60
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->btnRefresh$delegate:Lkotlin/Lazy;

    const p1, 0x7f0901c2

    .line 61
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->indicatorLoading$delegate:Lkotlin/Lazy;

    const p1, 0x7f0907e8

    .line 62
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->optionLayout$delegate:Lkotlin/Lazy;

    .line 63
    new-instance p1, Lcom/narvii/topic/widgets/StorySectionItemView$loadingAnimator$2;

    invoke-direct {p1, p0}, Lcom/narvii/topic/widgets/StorySectionItemView$loadingAnimator$2;-><init>(Lcom/narvii/topic/widgets/StorySectionItemView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->loadingAnimator$delegate:Lkotlin/Lazy;

    .line 74
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->storyList:Ljava/util/ArrayList;

    .line 75
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->communityInfoMapping:Ljava/util/Map;

    .line 76
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->userInfoMapping:Ljava/util/Map;

    .line 204
    new-instance p1, Lcom/narvii/topic/widgets/StorySectionItemView$animationListener$1;

    invoke-direct {p1, p0}, Lcom/narvii/topic/widgets/StorySectionItemView$animationListener$1;-><init>(Lcom/narvii/topic/widgets/StorySectionItemView;)V

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->animationListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const-class p1, Lcom/narvii/topic/widgets/StorySectionItemView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StorySectionItemView::class.java.simpleName"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->TAG:Ljava/lang/String;

    const p1, 0x7f090b9a

    .line 54
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->tvCategoryTitle$delegate:Lkotlin/Lazy;

    const p1, 0x7f09019c

    .line 55
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->storyCard1$delegate:Lkotlin/Lazy;

    const p1, 0x7f09019d

    .line 56
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->storyCard2$delegate:Lkotlin/Lazy;

    const p1, 0x7f09019e

    .line 57
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->storyCard3$delegate:Lkotlin/Lazy;

    const p1, 0x7f09019f

    .line 58
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->storyCard4$delegate:Lkotlin/Lazy;

    const p1, 0x7f0909f7

    .line 59
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->btnSeeAll$delegate:Lkotlin/Lazy;

    const p1, 0x7f09094a

    .line 60
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->btnRefresh$delegate:Lkotlin/Lazy;

    const p1, 0x7f0901c2

    .line 61
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->indicatorLoading$delegate:Lkotlin/Lazy;

    const p1, 0x7f0907e8

    .line 62
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->optionLayout$delegate:Lkotlin/Lazy;

    .line 63
    new-instance p1, Lcom/narvii/topic/widgets/StorySectionItemView$loadingAnimator$2;

    invoke-direct {p1, p0}, Lcom/narvii/topic/widgets/StorySectionItemView$loadingAnimator$2;-><init>(Lcom/narvii/topic/widgets/StorySectionItemView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->loadingAnimator$delegate:Lkotlin/Lazy;

    .line 74
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->storyList:Ljava/util/ArrayList;

    .line 75
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->communityInfoMapping:Ljava/util/Map;

    .line 76
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->userInfoMapping:Ljava/util/Map;

    .line 204
    new-instance p1, Lcom/narvii/topic/widgets/StorySectionItemView$animationListener$1;

    invoke-direct {p1, p0}, Lcom/narvii/topic/widgets/StorySectionItemView$animationListener$1;-><init>(Lcom/narvii/topic/widgets/StorySectionItemView;)V

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->animationListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public static final synthetic access$areaName(Lcom/narvii/topic/widgets/StorySectionItemView;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->areaName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$lazyInitLoadingAnimator(Lcom/narvii/topic/widgets/StorySectionItemView;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->lazyInitLoadingAnimator()Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private final areaName()Ljava/lang/String;
    .locals 4

    .line 303
    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->storySection:Lcom/narvii/topic/model/StorySections;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 304
    iget-object v0, v0, Lcom/narvii/topic/model/StorySections;->feedCategoryKey:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x13507eb9

    if-eq v2, v3, :cond_2

    const v3, 0x40b523b9

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "RECOMMENDATION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "RecommendedStoryList"

    goto :goto_0

    :cond_2
    const-string v2, "POPULAR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "PopularStoryList"

    :goto_0
    move-object v1, v0

    :cond_3
    :goto_1
    return-object v1
.end method

.method private final getLoadingAnimator()Landroid/animation/ObjectAnimator;
    .locals 3

    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->loadingAnimator$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/topic/widgets/StorySectionItemView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method private final lazyInitLoadingAnimator()Landroid/animation/ObjectAnimator;
    .locals 4

    .line 131
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getIndicatorLoading()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    aput v3, v1, v2

    const-string v2, "rotation"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v1, "animator"

    .line 132
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->_$_findViewCache:Ljava/util/HashMap;

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

    .line 83
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/narvii/topic/widgets/StorySectionItemView$bind$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/topic/widgets/StorySectionItemView$bind$1;-><init>(Lcom/narvii/topic/widgets/StorySectionItemView;I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method

.method public final cancelLoading()V
    .locals 1

    .line 127
    invoke-direct {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getLoadingAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    return-void
.end method

.method public final createApiRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 5

    .line 314
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "topic/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->topicId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/feed/story/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->storySection:Lcom/narvii/topic/model/StorySections;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v3, Lcom/narvii/topic/model/StorySections;->feedCategoryKey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual {p0, v3}, Lcom/narvii/topic/widgets/StorySectionItemView;->getApiSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 316
    iget-object v1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->_nextPageToken:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "pageToken"

    .line 317
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    :cond_1
    const-string v1, "pagingType"

    const-string v2, "t"

    .line 319
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v1, "type"

    const-string v2, "topic-list"

    .line 320
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v1, "v"

    const-string v2, "2.0.0"

    .line 321
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 322
    iget-object v1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->languageService:Lcom/narvii/language/ContentLanguageService;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v4

    :cond_2
    const-string v1, "language"

    invoke-virtual {v0, v1, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 323
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public final getAdapter()Lcom/narvii/logging/Area;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->adapter:Lcom/narvii/logging/Area;

    return-object v0
.end method

.method public final getAnimationListener()Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->animationListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method public final getApiRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    return-object v0
.end method

.method public final getApiService()Lcom/narvii/util/http/ApiService;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->apiService:Lcom/narvii/util/http/ApiService;

    return-object v0
.end method

.method public final getApiSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 327
    sget-object v0, Lcom/narvii/topic/model/StorySections;->feedKeyApiMapper:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "has no mapped api suffix for ke "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " use latest instead"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 329
    sget-object p1, Lcom/narvii/topic/model/StorySections;->feedKeyApiMapper:Ljava/util/HashMap;

    const-string v0, "LATEST"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 331
    :cond_0
    sget-object v0, Lcom/narvii/topic/model/StorySections;->feedKeyApiMapper:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getBtnRefresh()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->btnRefresh$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/topic/widgets/StorySectionItemView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getBtnSeeAll()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->btnSeeAll$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/topic/widgets/StorySectionItemView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method protected final getCommunityInfo(I)Lcom/narvii/model/Community;
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->communityInfoMapping:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/narvii/model/Community;

    :goto_0
    return-object v1

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1
.end method

.method public final getCommunityInfoMapping()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->communityInfoMapping:Ljava/util/Map;

    return-object v0
.end method

.method public final getCurWindowIndex()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->curWindowIndex:I

    return v0
.end method

.method public final getIndicatorLoading()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->indicatorLoading$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/topic/widgets/StorySectionItemView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getLanguageService()Lcom/narvii/language/ContentLanguageService;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->languageService:Lcom/narvii/language/ContentLanguageService;

    return-object v0
.end method

.method public final getListener()Lcom/narvii/topic/widgets/StorySectionItemView$OptionClickListener;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->listener:Lcom/narvii/topic/widgets/StorySectionItemView$OptionClickListener;

    return-object v0
.end method

.method public final getNvContext()Lcom/narvii/app/NVContext;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->nvContext:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getOptionLayout()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->optionLayout$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/topic/widgets/StorySectionItemView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getStoryCard1()Lcom/narvii/story/widgets/StoryCardView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->storyCard1$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/topic/widgets/StorySectionItemView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/story/widgets/StoryCardView;

    return-object v0
.end method

.method public final getStoryCard2()Lcom/narvii/story/widgets/StoryCardView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->storyCard2$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/topic/widgets/StorySectionItemView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/story/widgets/StoryCardView;

    return-object v0
.end method

.method public final getStoryCard3()Lcom/narvii/story/widgets/StoryCardView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->storyCard3$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/topic/widgets/StorySectionItemView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/story/widgets/StoryCardView;

    return-object v0
.end method

.method public final getStoryCard4()Lcom/narvii/story/widgets/StoryCardView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->storyCard4$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/topic/widgets/StorySectionItemView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/story/widgets/StoryCardView;

    return-object v0
.end method

.method public final getStoryList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/Blog;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->storyList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getStorySection()Lcom/narvii/topic/model/StorySections;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->storySection:Lcom/narvii/topic/model/StorySections;

    return-object v0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public final getTopicId()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->topicId:I

    return v0
.end method

.method public final getTvCategoryTitle()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->tvCategoryTitle$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/topic/widgets/StorySectionItemView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method protected final getUserInfo(I)Lcom/narvii/model/User;
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->userInfoMapping:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/narvii/model/User;

    :goto_0
    return-object v1

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1
.end method

.method public final getUserInfoMapping()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->userInfoMapping:Ljava/util/Map;

    return-object v0
.end method

.method public final get_nextPageToken()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->_nextPageToken:Ljava/lang/String;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 87
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 88
    invoke-direct {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getLoadingAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 97
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 98
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getBtnRefresh()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/narvii/topic/widgets/StorySectionItemView$onFinishInflate$1;

    invoke-direct {v1, p0}, Lcom/narvii/topic/widgets/StorySectionItemView$onFinishInflate$1;-><init>(Lcom/narvii/topic/widgets/StorySectionItemView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getBtnSeeAll()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/narvii/topic/widgets/StorySectionItemView$onFinishInflate$2;

    invoke-direct {v1, p0}, Lcom/narvii/topic/widgets/StorySectionItemView$onFinishInflate$2;-><init>(Lcom/narvii/topic/widgets/StorySectionItemView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getStoryCard1()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object v0

    new-instance v1, Lcom/narvii/topic/widgets/StorySectionItemView$onFinishInflate$3;

    invoke-direct {v1, p0}, Lcom/narvii/topic/widgets/StorySectionItemView$onFinishInflate$3;-><init>(Lcom/narvii/topic/widgets/StorySectionItemView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getStoryCard2()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object v0

    new-instance v1, Lcom/narvii/topic/widgets/StorySectionItemView$onFinishInflate$4;

    invoke-direct {v1, p0}, Lcom/narvii/topic/widgets/StorySectionItemView$onFinishInflate$4;-><init>(Lcom/narvii/topic/widgets/StorySectionItemView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getStoryCard3()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object v0

    new-instance v1, Lcom/narvii/topic/widgets/StorySectionItemView$onFinishInflate$5;

    invoke-direct {v1, p0}, Lcom/narvii/topic/widgets/StorySectionItemView$onFinishInflate$5;-><init>(Lcom/narvii/topic/widgets/StorySectionItemView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getStoryCard4()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object v0

    new-instance v1, Lcom/narvii/topic/widgets/StorySectionItemView$onFinishInflate$6;

    invoke-direct {v1, p0}, Lcom/narvii/topic/widgets/StorySectionItemView$onFinishInflate$6;-><init>(Lcom/narvii/topic/widgets/StorySectionItemView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onRefresh()V
    .locals 4

    .line 171
    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->storyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->curWindowIndex:I

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x4

    if-gt v0, v1, :cond_4

    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->_nextPageToken:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    if-eqz v0, :cond_1

    return-void

    .line 181
    :cond_1
    invoke-direct {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getLoadingAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->animationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 182
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->createApiRequest()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    const/4 v0, 0x0

    .line 183
    invoke-virtual {p0, v0}, Lcom/narvii/topic/widgets/StorySectionItemView;->showLoading(Z)V

    .line 184
    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->apiService:Lcom/narvii/util/http/ApiService;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    new-instance v2, Lcom/narvii/topic/widgets/StorySectionItemView$onRefresh$1;

    const-class v3, Lcom/narvii/model/api/BlogListResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/topic/widgets/StorySectionItemView$onRefresh$1;-><init>(Lcom/narvii/topic/widgets/StorySectionItemView;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    const/4 v0, 0x1

    .line 174
    invoke-virtual {p0, v0}, Lcom/narvii/topic/widgets/StorySectionItemView;->showLoading(Z)V

    .line 175
    invoke-direct {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getLoadingAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->animationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public final openStoryDetailPage(Landroid/view/View;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    new-instance v0, Lcom/narvii/story/StoryHelper;

    iget-object v1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/story/StoryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const v1, 0x7f090ad4

    .line 138
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/narvii/model/Blog;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v1, v3

    :cond_0
    check-cast v1, Lcom/narvii/model/Blog;

    if-eqz v1, :cond_8

    .line 140
    iget-object v2, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->storySection:Lcom/narvii/topic/model/StorySections;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/narvii/topic/model/StorySections;->blogList:Ljava/util/List;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_4

    .line 142
    iget-object v1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->storySection:Lcom/narvii/topic/model/StorySections;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/narvii/topic/model/StorySections;->blogList:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Blog;

    goto :goto_1

    :cond_2
    move-object v1, v3

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 144
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->adapter:Lcom/narvii/logging/Area;

    if-eqz v2, :cond_5

    .line 145
    instance-of v4, v2, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz v4, :cond_5

    .line 146
    check-cast v2, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    sget-object v4, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v2, v1, v4}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 150
    :cond_5
    iget v2, v1, Lcom/narvii/model/Blog;->type:I

    const/16 v4, 0x9

    if-ne v2, v4, :cond_6

    invoke-virtual {v1}, Lcom/narvii/model/Blog;->getPublishNdcId()I

    move-result v2

    goto :goto_3

    :cond_6
    iget v2, v1, Lcom/narvii/model/Feed;->ndcId:I

    .line 152
    :goto_3
    new-instance v4, Lcom/narvii/story/StoryListFragment$IntentBuilder;

    invoke-direct {v4, v1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;-><init>(Lcom/narvii/model/Feed;)V

    const-string v5, "topic-player"

    .line 153
    invoke-virtual {v4, v5}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->source(Ljava/lang/String;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object v4

    .line 154
    invoke-virtual {p0, v2}, Lcom/narvii/topic/widgets/StorySectionItemView;->getCommunityInfo(I)Lcom/narvii/model/Community;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->initFeedCommunity(Lcom/narvii/model/Community;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object v2

    .line 155
    iget v1, v1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {p0, v1}, Lcom/narvii/topic/widgets/StorySectionItemView;->getUserInfo(I)Lcom/narvii/model/User;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->initFeedUser(Lcom/narvii/model/User;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object v1

    .line 156
    iget-object v2, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->storySection:Lcom/narvii/topic/model/StorySections;

    if-eqz v2, :cond_7

    iget-object v3, v2, Lcom/narvii/topic/model/StorySections;->feedCategoryKey:Ljava/lang/String;

    :cond_7
    invoke-virtual {p0, v3}, Lcom/narvii/topic/widgets/StorySectionItemView;->getApiSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->pathSuffix(Ljava/lang/String;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object v1

    .line 157
    iget v2, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->topicId:I

    invoke-virtual {v1, v2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->topicId(I)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    .line 158
    invoke-virtual {v0, p1, v1}, Lcom/narvii/story/StoryHelper;->openStoryDetailPageInAnotherActivity(Landroid/view/View;Landroid/content/Intent;)V

    :cond_8
    return-void
.end method

.method public final setAdapter(Lcom/narvii/logging/Area;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->adapter:Lcom/narvii/logging/Area;

    return-void
.end method

.method public final setApiRequest(Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method public final setApiService(Lcom/narvii/util/http/ApiService;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->apiService:Lcom/narvii/util/http/ApiService;

    return-void
.end method

.method public final setAttachInfo(Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/Community;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->communityInfoMapping:Ljava/util/Map;

    .line 93
    iput-object p2, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->userInfoMapping:Ljava/util/Map;

    return-void
.end method

.method public final setCommunityInfoMapping(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/Community;",
            ">;)V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->communityInfoMapping:Ljava/util/Map;

    return-void
.end method

.method public final setCurWindowIndex(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->curWindowIndex:I

    return-void
.end method

.method public final setLanguageService(Lcom/narvii/language/ContentLanguageService;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->languageService:Lcom/narvii/language/ContentLanguageService;

    return-void
.end method

.method public final setListener(Lcom/narvii/topic/widgets/StorySectionItemView$OptionClickListener;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->listener:Lcom/narvii/topic/widgets/StorySectionItemView$OptionClickListener;

    return-void
.end method

.method public final setNvContext(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->nvContext:Lcom/narvii/app/NVContext;

    return-void
.end method

.method public final setSection(Lcom/narvii/app/NVContext;ILcom/narvii/topic/model/StorySections;)V
    .locals 2

    const-string v0, "nvContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 225
    :cond_0
    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->nvContext:Lcom/narvii/app/NVContext;

    .line 226
    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->apiService:Lcom/narvii/util/http/ApiService;

    if-nez v0, :cond_1

    const-string v0, "api"

    .line 227
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    iput-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->apiService:Lcom/narvii/util/http/ApiService;

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->languageService:Lcom/narvii/language/ContentLanguageService;

    if-nez v0, :cond_2

    const-string v0, "content_language"

    .line 230
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/language/ContentLanguageService;

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 232
    :cond_2
    iget-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    if-eqz p1, :cond_3

    .line 233
    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->apiService:Lcom/narvii/util/http/ApiService;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 235
    :cond_3
    iput-object p3, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->storySection:Lcom/narvii/topic/model/StorySections;

    .line 236
    iget-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->storyList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 237
    iget-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->storyList:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->storySection:Lcom/narvii/topic/model/StorySections;

    if-eqz p3, :cond_4

    iget-object p3, p3, Lcom/narvii/topic/model/StorySections;->blogList:Ljava/util/List;

    if-eqz p3, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    :goto_0
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 238
    iget-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->storySection:Lcom/narvii/topic/model/StorySections;

    const/4 p3, 0x0

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/narvii/topic/model/StorySections;->paging:Lcom/narvii/model/api/Pagination;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/narvii/model/api/Pagination;->nextPageToken:Ljava/lang/String;

    goto :goto_1

    :cond_5
    move-object p1, p3

    :goto_1
    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->_nextPageToken:Ljava/lang/String;

    .line 239
    iput p2, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->topicId:I

    const/4 p1, 0x0

    .line 240
    iput p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->curWindowIndex:I

    .line 241
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getTvCategoryTitle()Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->storySection:Lcom/narvii/topic/model/StorySections;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/topic/model/StorySections;->getSectionTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, p3

    :goto_2
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getOptionLayout()Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->storyList:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :cond_7
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v0, 0x4

    if-ge p3, v0, :cond_8

    const/16 p1, 0x8

    :cond_8
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 243
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->updateStory()V

    return-void
.end method

.method public final setStoryList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/Blog;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->storyList:Ljava/util/ArrayList;

    return-void
.end method

.method public final setStorySection(Lcom/narvii/topic/model/StorySections;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->storySection:Lcom/narvii/topic/model/StorySections;

    return-void
.end method

.method public final setTopicId(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->topicId:I

    return-void
.end method

.method public final setUserInfoMapping(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->userInfoMapping:Ljava/util/Map;

    return-void
.end method

.method public final set_nextPageToken(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->_nextPageToken:Ljava/lang/String;

    return-void
.end method

.method public final showLoading(Z)V
    .locals 1

    .line 121
    invoke-direct {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getLoadingAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 122
    invoke-direct {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getLoadingAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 123
    invoke-direct {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getLoadingAnimator()Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final updateStory()V
    .locals 14

    .line 249
    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->storyList:Ljava/util/ArrayList;

    .line 250
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 255
    :cond_0
    invoke-direct {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->areaName()Ljava/lang/String;

    move-result-object v2

    .line 256
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-eqz v2, :cond_1

    const-string v4, "areaName"

    .line 259
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_1
    iget v2, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->curWindowIndex:I

    const/4 v4, 0x4

    mul-int/lit8 v2, v2, 0x4

    .line 263
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getOptionLayout()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x8

    if-lt v6, v4, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 265
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_3

    rem-int v4, v2, v1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/Blog;

    goto :goto_1

    :cond_3
    move-object v4, v5

    .line 266
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getStoryCard1()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/narvii/story/widgets/StoryCardView;->setStory(Lcom/narvii/model/Blog;)V

    .line 267
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getStoryCard1()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object v6

    const v9, 0x7f090ad4

    invoke-virtual {v6, v9, v4}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 268
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getStoryCard1()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_4

    const/4 v10, 0x0

    goto :goto_2

    :cond_4
    const/16 v10, 0x8

    :goto_2
    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 270
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v10, 0x1

    if-le v6, v10, :cond_5

    add-int/lit8 v6, v2, 0x1

    rem-int/2addr v6, v1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/model/Blog;

    goto :goto_3

    :cond_5
    move-object v6, v5

    .line 271
    :goto_3
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getStoryCard2()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/narvii/story/widgets/StoryCardView;->setStory(Lcom/narvii/model/Blog;)V

    .line 272
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getStoryCard2()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object v11

    invoke-virtual {v11, v9, v6}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 273
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getStoryCard2()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object v11

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-le v12, v10, :cond_6

    const/4 v10, 0x0

    goto :goto_4

    :cond_6
    const/16 v10, 0x8

    :goto_4
    invoke-virtual {v11, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 275
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x2

    if-le v10, v11, :cond_7

    add-int/lit8 v10, v2, 0x2

    rem-int/2addr v10, v1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/narvii/model/Blog;

    goto :goto_5

    :cond_7
    move-object v10, v5

    .line 276
    :goto_5
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getStoryCard3()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/narvii/story/widgets/StoryCardView;->setStory(Lcom/narvii/model/Blog;)V

    .line 277
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getStoryCard3()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object v12

    invoke-virtual {v12, v9, v10}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 278
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getStoryCard3()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object v12

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-le v13, v11, :cond_8

    const/4 v11, 0x0

    goto :goto_6

    :cond_8
    const/16 v11, 0x8

    :goto_6
    invoke-virtual {v12, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 280
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x3

    if-le v11, v12, :cond_9

    add-int/2addr v2, v12

    rem-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/narvii/model/Blog;

    .line 281
    :cond_9
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getStoryCard4()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/narvii/story/widgets/StoryCardView;->setStory(Lcom/narvii/model/Blog;)V

    .line 282
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getStoryCard4()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object v1

    invoke-virtual {v1, v9, v5}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 283
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getStoryCard4()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v12, :cond_a

    goto :goto_7

    :cond_a
    const/16 v7, 0x8

    :goto_7
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 285
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getStoryCard1()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/narvii/logging/LogUtils;->tagLocalMap(Landroid/view/View;Ljava/util/HashMap;)V

    .line 286
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getStoryCard2()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/narvii/logging/LogUtils;->tagLocalMap(Landroid/view/View;Ljava/util/HashMap;)V

    .line 287
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getStoryCard3()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/narvii/logging/LogUtils;->tagLocalMap(Landroid/view/View;Ljava/util/HashMap;)V

    .line 288
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getStoryCard4()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/narvii/logging/LogUtils;->tagLocalMap(Landroid/view/View;Ljava/util/HashMap;)V

    .line 290
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getStoryCard1()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->adapter:Lcom/narvii/logging/Area;

    invoke-static {v0, v1}, Lcom/narvii/logging/LogUtils;->setShownInAdapter(Landroid/view/View;Lcom/narvii/logging/Area;)V

    .line 291
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getStoryCard2()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->adapter:Lcom/narvii/logging/Area;

    invoke-static {v0, v1}, Lcom/narvii/logging/LogUtils;->setShownInAdapter(Landroid/view/View;Lcom/narvii/logging/Area;)V

    .line 292
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getStoryCard3()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->adapter:Lcom/narvii/logging/Area;

    invoke-static {v0, v1}, Lcom/narvii/logging/LogUtils;->setShownInAdapter(Landroid/view/View;Lcom/narvii/logging/Area;)V

    .line 293
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getStoryCard4()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/topic/widgets/StorySectionItemView;->adapter:Lcom/narvii/logging/Area;

    invoke-static {v0, v1}, Lcom/narvii/logging/LogUtils;->setShownInAdapter(Landroid/view/View;Lcom/narvii/logging/Area;)V

    .line 295
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getStoryCard1()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/narvii/logging/LogUtils;->setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V

    .line 296
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getStoryCard2()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/narvii/logging/LogUtils;->setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V

    .line 297
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getStoryCard3()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/narvii/logging/LogUtils;->setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V

    .line 298
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->getStoryCard4()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/narvii/logging/LogUtils;->setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method
