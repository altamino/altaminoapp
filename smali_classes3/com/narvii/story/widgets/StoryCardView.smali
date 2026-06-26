.class public final Lcom/narvii/story/widgets/StoryCardView;
.super Lcom/github/mmin18/widget/FlexLayout;
.source "StoryCardView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStoryCardView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StoryCardView.kt\ncom/narvii/story/widgets/StoryCardView\n*L\n1#1,67:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final disableMask$delegate:Lkotlin/Lazy;

.field private final fansOnlyImg$delegate:Lkotlin/Lazy;

.field private final imgThumb$delegate:Lkotlin/Lazy;

.field private final nicknameView$delegate:Lkotlin/Lazy;

.field private final pollTagView$delegate:Lkotlin/Lazy;

.field private final quizPollText$delegate:Lkotlin/Lazy;

.field private final quizTagView$delegate:Lkotlin/Lazy;

.field private final topicView$delegate:Lkotlin/Lazy;

.field private final tvTitle$delegate:Lkotlin/Lazy;

.field private final userAvatarLayout$delegate:Lkotlin/Lazy;

.field private final viewCount$delegate:Lkotlin/Lazy;

.field private final viewCountIndicator$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xc

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/story/widgets/StoryCardView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "imgThumb"

    const-string v4, "getImgThumb()Lcom/narvii/widget/NVImageView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/story/widgets/StoryCardView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "pollTagView"

    const-string v4, "getPollTagView()Landroid/widget/ImageView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/story/widgets/StoryCardView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "quizTagView"

    const-string v4, "getQuizTagView()Landroid/widget/ImageView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/story/widgets/StoryCardView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "topicView"

    const-string v4, "getTopicView()Lcom/narvii/story/widgets/StoryTopicView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/story/widgets/StoryCardView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "tvTitle"

    const-string v4, "getTvTitle()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/story/widgets/StoryCardView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "disableMask"

    const-string v4, "getDisableMask()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/story/widgets/StoryCardView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "userAvatarLayout"

    const-string v4, "getUserAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/story/widgets/StoryCardView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "nicknameView"

    const-string v4, "getNicknameView()Lcom/narvii/widget/NicknameView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/story/widgets/StoryCardView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "viewCountIndicator"

    const-string v4, "getViewCountIndicator()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/story/widgets/StoryCardView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "viewCount"

    const-string v4, "getViewCount()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/story/widgets/StoryCardView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "fansOnlyImg"

    const-string v4, "getFansOnlyImg()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/story/widgets/StoryCardView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "quizPollText"

    const-string v4, "getQuizPollText()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/story/widgets/StoryCardView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;)V

    const p1, 0x7f090586

    .line 24
    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryCardView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryCardView;->imgThumb$delegate:Lkotlin/Lazy;

    const p1, 0x7f090863

    .line 25
    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryCardView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryCardView;->pollTagView$delegate:Lkotlin/Lazy;

    const p1, 0x7f0908ff

    .line 26
    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryCardView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryCardView;->quizTagView$delegate:Lkotlin/Lazy;

    const p1, 0x7f090aed

    .line 27
    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryCardView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryCardView;->topicView$delegate:Lkotlin/Lazy;

    const p1, 0x7f090b9a

    .line 28
    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryCardView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryCardView;->tvTitle$delegate:Lkotlin/Lazy;

    const p1, 0x7f090358

    .line 29
    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryCardView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryCardView;->disableMask$delegate:Lkotlin/Lazy;

    const p1, 0x7f090c10

    .line 30
    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryCardView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryCardView;->userAvatarLayout$delegate:Lkotlin/Lazy;

    const p1, 0x7f090764

    .line 31
    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryCardView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryCardView;->nicknameView$delegate:Lkotlin/Lazy;

    const p1, 0x7f090c99

    .line 32
    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryCardView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryCardView;->viewCountIndicator$delegate:Lkotlin/Lazy;

    const p1, 0x7f090c97

    .line 33
    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryCardView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryCardView;->viewCount$delegate:Lkotlin/Lazy;

    const p1, 0x7f090426

    .line 34
    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryCardView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryCardView;->fansOnlyImg$delegate:Lkotlin/Lazy;

    const p1, 0x7f090861

    .line 35
    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryCardView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryCardView;->quizPollText$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f090586

    .line 24
    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryCardView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryCardView;->imgThumb$delegate:Lkotlin/Lazy;

    const p1, 0x7f090863

    .line 25
    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryCardView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryCardView;->pollTagView$delegate:Lkotlin/Lazy;

    const p1, 0x7f0908ff

    .line 26
    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryCardView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryCardView;->quizTagView$delegate:Lkotlin/Lazy;

    const p1, 0x7f090aed

    .line 27
    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryCardView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryCardView;->topicView$delegate:Lkotlin/Lazy;

    const p1, 0x7f090b9a

    .line 28
    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryCardView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryCardView;->tvTitle$delegate:Lkotlin/Lazy;

    const p1, 0x7f090358

    .line 29
    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryCardView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryCardView;->disableMask$delegate:Lkotlin/Lazy;

    const p1, 0x7f090c10

    .line 30
    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryCardView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryCardView;->userAvatarLayout$delegate:Lkotlin/Lazy;

    const p1, 0x7f090764

    .line 31
    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryCardView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryCardView;->nicknameView$delegate:Lkotlin/Lazy;

    const p1, 0x7f090c99

    .line 32
    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryCardView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryCardView;->viewCountIndicator$delegate:Lkotlin/Lazy;

    const p1, 0x7f090c97

    .line 33
    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryCardView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryCardView;->viewCount$delegate:Lkotlin/Lazy;

    const p1, 0x7f090426

    .line 34
    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryCardView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryCardView;->fansOnlyImg$delegate:Lkotlin/Lazy;

    const p1, 0x7f090861

    .line 35
    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryCardView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryCardView;->quizPollText$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f090586

    .line 24
    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryCardView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryCardView;->imgThumb$delegate:Lkotlin/Lazy;

    const p1, 0x7f090863

    .line 25
    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryCardView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryCardView;->pollTagView$delegate:Lkotlin/Lazy;

    const p1, 0x7f0908ff

    .line 26
    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryCardView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryCardView;->quizTagView$delegate:Lkotlin/Lazy;

    const p1, 0x7f090aed

    .line 27
    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryCardView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryCardView;->topicView$delegate:Lkotlin/Lazy;

    const p1, 0x7f090b9a

    .line 28
    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryCardView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryCardView;->tvTitle$delegate:Lkotlin/Lazy;

    const p1, 0x7f090358

    .line 29
    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryCardView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryCardView;->disableMask$delegate:Lkotlin/Lazy;

    const p1, 0x7f090c10

    .line 30
    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryCardView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryCardView;->userAvatarLayout$delegate:Lkotlin/Lazy;

    const p1, 0x7f090764

    .line 31
    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryCardView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryCardView;->nicknameView$delegate:Lkotlin/Lazy;

    const p1, 0x7f090c99

    .line 32
    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryCardView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryCardView;->viewCountIndicator$delegate:Lkotlin/Lazy;

    const p1, 0x7f090c97

    .line 33
    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryCardView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryCardView;->viewCount$delegate:Lkotlin/Lazy;

    const p1, 0x7f090426

    .line 34
    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryCardView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryCardView;->fansOnlyImg$delegate:Lkotlin/Lazy;

    const p1, 0x7f090861

    .line 35
    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryCardView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryCardView;->quizPollText$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/story/widgets/StoryCardView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/story/widgets/StoryCardView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/story/widgets/StoryCardView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryCardView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/story/widgets/StoryCardView;->_$_findViewCache:Ljava/util/HashMap;

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

    .line 42
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/narvii/story/widgets/StoryCardView$bind$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/story/widgets/StoryCardView$bind$1;-><init>(Lcom/narvii/story/widgets/StoryCardView;I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method

.method public final getDisableMask()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/story/widgets/StoryCardView;->disableMask$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/story/widgets/StoryCardView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getFansOnlyImg()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/story/widgets/StoryCardView;->fansOnlyImg$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/story/widgets/StoryCardView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getImgThumb()Lcom/narvii/widget/NVImageView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/story/widgets/StoryCardView;->imgThumb$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/story/widgets/StoryCardView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    return-object v0
.end method

.method public final getNicknameView()Lcom/narvii/widget/NicknameView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/story/widgets/StoryCardView;->nicknameView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/story/widgets/StoryCardView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NicknameView;

    return-object v0
.end method

.method public final getPollTagView()Landroid/widget/ImageView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/story/widgets/StoryCardView;->pollTagView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/story/widgets/StoryCardView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getQuizPollText()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/story/widgets/StoryCardView;->quizPollText$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/story/widgets/StoryCardView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final getQuizTagView()Landroid/widget/ImageView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/story/widgets/StoryCardView;->quizTagView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/story/widgets/StoryCardView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getTopicView()Lcom/narvii/story/widgets/StoryTopicView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/story/widgets/StoryCardView;->topicView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/story/widgets/StoryCardView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/story/widgets/StoryTopicView;

    return-object v0
.end method

.method public final getTvTitle()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/story/widgets/StoryCardView;->tvTitle$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/story/widgets/StoryCardView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final getUserAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;
    .locals 3

    iget-object v0, p0, Lcom/narvii/story/widgets/StoryCardView;->userAvatarLayout$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/story/widgets/StoryCardView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    return-object v0
.end method

.method public final getViewCount()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/story/widgets/StoryCardView;->viewCount$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/story/widgets/StoryCardView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final getViewCountIndicator()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/story/widgets/StoryCardView;->viewCountIndicator$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/story/widgets/StoryCardView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final setStory(Lcom/narvii/model/Blog;)V
    .locals 7

    .line 46
    invoke-virtual {p0}, Lcom/narvii/story/widgets/StoryCardView;->getDisableMask()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget v4, p1, Lcom/narvii/model/Feed;->status:I

    const/16 v5, 0x9

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 47
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/story/widgets/StoryCardView;->getImgThumb()Lcom/narvii/widget/NVImageView;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/widget/SecretImageView;

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    .line 48
    invoke-virtual {p0}, Lcom/narvii/story/widgets/StoryCardView;->getImgThumb()Lcom/narvii/widget/NVImageView;

    move-result-object v0

    instance-of v5, v0, Lcom/narvii/widget/SecretImageView;

    if-nez v5, :cond_3

    move-object v0, v4

    :cond_3
    check-cast v0, Lcom/narvii/widget/SecretImageView;

    if-eqz v0, :cond_8

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getExtraCoverMedia()Lcom/narvii/model/Media;

    move-result-object v5

    goto :goto_2

    :cond_4
    move-object v5, v4

    :goto_2
    if-eqz p1, :cond_5

    iget-boolean v6, p1, Lcom/narvii/model/Feed;->needHidden:Z

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v0, v5, v6}, Lcom/narvii/widget/SecretImageView;->setImageMedia(Lcom/narvii/model/Media;Z)Z

    goto :goto_5

    .line 51
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/story/widgets/StoryCardView;->getImgThumb()Lcom/narvii/widget/NVImageView;

    move-result-object v0

    if-eqz v0, :cond_8

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getExtraCoverMedia()Lcom/narvii/model/Media;

    move-result-object v5

    goto :goto_4

    :cond_7
    move-object v5, v4

    :goto_4
    invoke-virtual {v0, v5}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 53
    :cond_8
    :goto_5
    invoke-virtual {p0}, Lcom/narvii/story/widgets/StoryCardView;->getPollTagView()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v5, 0x1

    if-eqz v0, :cond_a

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/narvii/model/Blog;->containsScenePoll()Z

    move-result v6

    if-ne v6, v5, :cond_9

    const/4 v6, 0x0

    goto :goto_6

    :cond_9
    const/16 v6, 0x8

    :goto_6
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    :cond_a
    invoke-virtual {p0}, Lcom/narvii/story/widgets/StoryCardView;->getQuizTagView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_c

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/narvii/model/Blog;->containsSceneQuiz()Z

    move-result v6

    if-ne v6, v5, :cond_b

    const/4 v1, 0x0

    :cond_b
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    :cond_c
    invoke-virtual {p0}, Lcom/narvii/story/widgets/StoryCardView;->getTopicView()Lcom/narvii/story/widgets/StoryTopicView;

    move-result-object v0

    if-eqz v0, :cond_e

    if-eqz p1, :cond_d

    iget-object v1, p1, Lcom/narvii/model/Blog;->promotedTopic:Lcom/narvii/model/story/StoryTopic;

    goto :goto_7

    :cond_d
    move-object v1, v4

    :goto_7
    invoke-virtual {v0, v1}, Lcom/narvii/story/widgets/StoryTopicView;->setTopic(Lcom/narvii/model/story/StoryTopic;)V

    .line 56
    :cond_e
    invoke-virtual {p0}, Lcom/narvii/story/widgets/StoryCardView;->getTopicView()Lcom/narvii/story/widgets/StoryTopicView;

    move-result-object v0

    if-eqz p1, :cond_f

    iget-object v1, p1, Lcom/narvii/model/Blog;->promotedTopic:Lcom/narvii/model/story/StoryTopic;

    goto :goto_8

    :cond_f
    move-object v1, v4

    :goto_8
    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_9

    :cond_10
    const/4 v1, 0x0

    :goto_9
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    const v0, 0x7f090a1c

    if-eqz p1, :cond_11

    .line 57
    iget-object v1, p1, Lcom/narvii/model/Blog;->promotedTopic:Lcom/narvii/model/story/StoryTopic;

    goto :goto_a

    :cond_11
    move-object v1, v4

    :goto_a
    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_b

    :cond_12
    const/4 v1, 0x0

    :goto_b
    invoke-static {p0, v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 58
    invoke-virtual {p0}, Lcom/narvii/story/widgets/StoryCardView;->getTvTitle()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_14

    if-eqz p1, :cond_13

    iget-object v1, p1, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    goto :goto_c

    :cond_13
    move-object v1, v4

    :goto_c
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :cond_14
    invoke-virtual {p0}, Lcom/narvii/story/widgets/StoryCardView;->getUserAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;

    move-result-object v0

    if-eqz v0, :cond_16

    if-eqz p1, :cond_15

    iget-object v1, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    goto :goto_d

    :cond_15
    move-object v1, v4

    :goto_d
    invoke-virtual {v0, v1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 60
    :cond_16
    invoke-virtual {p0}, Lcom/narvii/story/widgets/StoryCardView;->getNicknameView()Lcom/narvii/widget/NicknameView;

    move-result-object v0

    if-eqz v0, :cond_18

    if-eqz p1, :cond_17

    iget-object v4, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    :cond_17
    invoke-virtual {v0, v4}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 61
    :cond_18
    invoke-virtual {p0}, Lcom/narvii/story/widgets/StoryCardView;->getViewCountIndicator()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_19

    iget-object v1, p1, Lcom/narvii/model/Feed;->viewCount:Ljava/lang/Integer;

    if-eqz v1, :cond_19

    goto :goto_e

    :cond_19
    move-object v1, v3

    :goto_e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v1

    if-ltz v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_f

    :cond_1a
    const/4 v1, 0x0

    :goto_f
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 62
    invoke-virtual {p0}, Lcom/narvii/story/widgets/StoryCardView;->getViewCount()Landroid/widget/TextView;

    move-result-object v0

    if-eqz p1, :cond_1b

    iget-object v1, p1, Lcom/narvii/model/Feed;->viewCount:Ljava/lang/Integer;

    if-eqz v1, :cond_1b

    goto :goto_10

    :cond_1b
    move-object v1, v3

    :goto_10
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v1

    if-ltz v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_11

    :cond_1c
    const/4 v1, 0x0

    :goto_11
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 63
    invoke-virtual {p0}, Lcom/narvii/story/widgets/StoryCardView;->getViewCount()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1e

    if-eqz p1, :cond_1d

    iget-object v1, p1, Lcom/narvii/model/Feed;->viewCount:Ljava/lang/Integer;

    if-eqz v1, :cond_1d

    goto :goto_12

    :cond_1d
    move-object v1, v3

    .line 64
    :goto_12
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 63
    invoke-static {v1}, Lcom/narvii/util/text/TextUtils;->getLiteCountWithCeil2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :cond_1e
    invoke-virtual {p0}, Lcom/narvii/story/widgets/StoryCardView;->getFansOnlyImg()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_20

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Lcom/narvii/model/Feed;->isFansOnly()Z

    move-result p1

    if-ne p1, v5, :cond_1f

    goto :goto_13

    :cond_1f
    const/4 v2, 0x4

    :goto_13
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_20
    return-void
.end method
