.class public final Lcom/narvii/topic/TopicTabFragment;
.super Lcom/narvii/nested/CoordinateTabFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/topic/TopicTabFragment$Behavior;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTopicTabFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TopicTabFragment.kt\ncom/narvii/topic/TopicTabFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,426:1\n1#2:427\n*E\n"
.end annotation


# instance fields
.field private bodyContent:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private errorMessage:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private ipc:Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector<",
            "Lcom/narvii/model/story/StoryTopic;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isRequestSent:Z

.field public languageService:Lcom/narvii/language/ContentLanguageService;

.field private final numFmt:Ljava/text/NumberFormat;

.field private pageStatusView:Lcom/narvii/paging/state/PageStatusView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private status:I

.field private subTopicRecycleView:Lcom/narvii/widget/recycleview/NVRecyclerView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tabList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/story/StoryTopicTab;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private topic:Lcom/narvii/model/story/StoryTopic;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private topicBackground:Lcom/narvii/widget/NVImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private topicBookmarkView:Lcom/narvii/topic/widgets/TopicSubscribeView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private topicId:I

.field private topicOnlineContainer:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private topicOnlineCount:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private topicTitle:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private topicTitleTop:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/nested/CoordinateTabFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->tabList:Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->numFmt:Ljava/text/NumberFormat;

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/topic/TopicTabFragment$ipc$1;

    .line 23
    .line 24
    const-class v1, Lcom/narvii/model/story/StoryTopic;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Lcom/narvii/topic/TopicTabFragment$ipc$1;-><init>(Ljava/lang/Class;)V

    .line 28
    .line 29
    iput-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->ipc:Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;

    .line 30
    return-void
.end method

.method public static final synthetic access$updateHeaderViews(Lcom/narvii/topic/TopicTabFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/topic/TopicTabFragment;->updateHeaderViews()V

    .line 4
    return-void
.end method

.method private static final onViewCreated$lambda$0(Lcom/narvii/topic/TopicTabFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/topic/TopicTabFragment;->sendTopicMetadataRequest()V

    .line 10
    return-void
.end method

.method private static final onViewCreated$lambda$1(Lcom/narvii/topic/TopicTabFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/topic/TopicTabFragment;->sendTopicMetadataRequest()V

    .line 10
    return-void
.end method

.method private static final onViewCreated$lambda$3(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    .line 1
    const/4 p2, 0x4

    .line 2
    .line 3
    if-ne p1, p2, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/topic/f;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/narvii/topic/f;-><init>(Lcom/narvii/widget/NVImageView;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 12
    :cond_0
    return-void
.end method

.method private static final onViewCreated$lambda$3$lambda$2(Lcom/narvii/widget/NVImageView;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    .line 7
    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    mul-float/2addr v0, v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 16
    move-result v1

    .line 17
    int-to-float v1, v1

    .line 18
    div-float/2addr v0, v1

    .line 19
    .line 20
    new-instance v1, Landroid/graphics/Matrix;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 30
    return-void
.end method

.method private static final onViewCreated$lambda$4(Lcom/narvii/topic/TopicTabFragment;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo p2, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string p2, "$extraData"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    sget-object p2, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    const-string v0, "ComposeButton"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 27
    .line 28
    const-string p2, "postEntry"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 33
    .line 34
    const-string p2, "null cannot be cast to non-null type com.narvii.post.entry.PostEntryDialog"

    .line 35
    .line 36
    .line 37
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    check-cast p0, Lcom/narvii/post/entry/PostEntryDialog;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->addTmpExtraData(Landroid/os/Bundle;)V

    .line 43
    return-void
.end method

.method public static synthetic q(Lcom/narvii/topic/TopicTabFragment;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/topic/TopicTabFragment;->onViewCreated$lambda$4(Lcom/narvii/topic/TopicTabFragment;Landroid/os/Bundle;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/topic/TopicTabFragment;->onViewCreated$lambda$3(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V

    return-void
.end method

.method public static synthetic s(Lcom/narvii/topic/TopicTabFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/topic/TopicTabFragment;->onViewCreated$lambda$1(Lcom/narvii/topic/TopicTabFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t(Lcom/narvii/topic/TopicTabFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/topic/TopicTabFragment;->onViewCreated$lambda$0(Lcom/narvii/topic/TopicTabFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcom/narvii/widget/NVImageView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/topic/TopicTabFragment;->onViewCreated$lambda$3$lambda$2(Lcom/narvii/widget/NVImageView;)V

    return-void
.end method

.method private final updateHeaderViews()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->topicTitle:Landroid/widget/TextView;

    .line 3
    .line 4
    const-string v1, ""

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    goto :goto_1

    .line 8
    .line 9
    :cond_0
    iget-object v2, p0, Lcom/narvii/topic/TopicTabFragment;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    iget-object v2, v2, Lcom/narvii/model/story/StoryTopic;->name:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move-object v2, v1

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    :goto_1
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->topicTitleTop:Landroid/widget/TextView;

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    goto :goto_2

    .line 26
    .line 27
    :cond_2
    iget-object v2, p0, Lcom/narvii/topic/TopicTabFragment;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 28
    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    iget-object v2, v2, Lcom/narvii/model/story/StoryTopic;->name:Ljava/lang/String;

    .line 32
    .line 33
    if-eqz v2, :cond_3

    .line 34
    move-object v1, v2

    .line 35
    .line 36
    .line 37
    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    :goto_2
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->topicBookmarkView:Lcom/narvii/topic/widgets/TopicSubscribeView;

    .line 40
    .line 41
    if-nez v0, :cond_4

    .line 42
    goto :goto_3

    .line 43
    .line 44
    :cond_4
    iget-object v1, p0, Lcom/narvii/topic/TopicTabFragment;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/narvii/topic/widgets/TopicSubscribeView;->setTopic(Lcom/narvii/model/story/StoryTopic;)V

    .line 48
    .line 49
    :goto_3
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 50
    .line 51
    if-eqz v0, :cond_6

    .line 52
    .line 53
    iget-object v1, p0, Lcom/narvii/topic/TopicTabFragment;->topicBookmarkView:Lcom/narvii/topic/widgets/TopicSubscribeView;

    .line 54
    .line 55
    if-nez v1, :cond_5

    .line 56
    goto :goto_4

    .line 57
    .line 58
    .line 59
    :cond_5
    invoke-virtual {v1, v0}, Lcom/narvii/topic/widgets/TopicSubscribeView;->setTopic(Lcom/narvii/model/story/StoryTopic;)V

    .line 60
    .line 61
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->topicBackground:Lcom/narvii/widget/NVImageView;

    .line 62
    .line 63
    if-eqz v0, :cond_8

    .line 64
    .line 65
    iget-object v1, p0, Lcom/narvii/topic/TopicTabFragment;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 66
    .line 67
    if-eqz v1, :cond_7

    .line 68
    .line 69
    iget-object v1, v1, Lcom/narvii/model/story/StoryTopic;->style:Lcom/narvii/model/story/StoryTopic$Style;

    .line 70
    .line 71
    if-eqz v1, :cond_7

    .line 72
    .line 73
    iget-object v1, v1, Lcom/narvii/model/story/StoryTopic$Style;->backgroundImage:Ljava/lang/String;

    .line 74
    goto :goto_5

    .line 75
    :cond_7
    const/4 v1, 0x0

    .line 76
    .line 77
    .line 78
    :goto_5
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 79
    :cond_8
    return-void
.end method

.method private final updateTabLayout()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->tabList:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    .line 10
    if-le v0, v2, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v2, v1

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    goto :goto_2

    .line 20
    .line 21
    :cond_1
    if-eqz v2, :cond_2

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_2
    const/16 v1, 0x8

    .line 25
    .line 26
    .line 27
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    :goto_2
    return-void
.end method


# virtual methods
.method public final clearSubTopicImpression()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->ipc:Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Lcom/narvii/logging/Impression/ImpressionUtils;->clearImpression(Lcom/narvii/logging/Impression/ImpressionCollector;Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method

.method protected completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V
    .locals 1
    .param p1    # Lcom/narvii/logging/LogEvent$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "builder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V

    .line 9
    .line 10
    iget-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget p2, p0, Lcom/narvii/topic/TopicTabFragment;->topicId:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->objectId(I)Lcom/narvii/logging/LogEvent$Builder;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    sget-object p2, Lcom/narvii/logging/ObjectType;->topic:Lcom/narvii/logging/ObjectType;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->objectType(Lcom/narvii/logging/ObjectType;)Lcom/narvii/logging/LogEvent$Builder;

    .line 28
    :goto_0
    return-void
.end method

.method protected createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->tabList:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    const/4 v0, 0x1

    .line 15
    .line 16
    new-array v0, v0, [Ljava/lang/Class;

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    const-class v3, Lcom/narvii/app/NVFragment;

    .line 20
    .line 21
    aput-object v3, v0, v1

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/collections/t;->g([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    new-instance v4, Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 31
    const/4 v5, 0x0

    .line 32
    .line 33
    const/16 v6, 0x8

    .line 34
    const/4 v7, 0x0

    .line 35
    move-object v1, p0

    .line 36
    .line 37
    .line 38
    invoke-static/range {v1 .. v7}, Lcom/narvii/nested/CoordinateTabFragment;->getBaseAdapter$default(Lcom/narvii/nested/CoordinateTabFragment;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 39
    move-result-object v0

    .line 40
    return-object v0

    .line 41
    .line 42
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    new-instance v1, Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    new-instance v2, Ljava/util/ArrayList;

    .line 53
    .line 54
    .line 55
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    new-instance v3, Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    iget-object v4, p0, Lcom/narvii/topic/TopicTabFragment;->tabList:Ljava/util/ArrayList;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 66
    move-result-object v4

    .line 67
    .line 68
    .line 69
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    move-result v5

    .line 71
    .line 72
    if-eqz v5, :cond_1

    .line 73
    .line 74
    .line 75
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    move-result-object v5

    .line 77
    .line 78
    check-cast v5, Lcom/narvii/model/story/StoryTopicTab;

    .line 79
    .line 80
    iget-object v6, v5, Lcom/narvii/model/story/StoryTopicTab;->tabKey:Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    invoke-static {v6}, Lcom/narvii/topic/model/TopicTabHelper;->getMappedTitle(Ljava/lang/String;)Ljava/lang/Integer;

    .line 84
    move-result-object v6

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    iget-object v6, v5, Lcom/narvii/model/story/StoryTopicTab;->title:Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    iget-object v5, v5, Lcom/narvii/model/story/StoryTopicTab;->tabKey:Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    invoke-static {v5}, Lcom/narvii/topic/model/TopicTabHelper;->getMappedClzz(Ljava/lang/String;)Ljava/lang/Class;

    .line 98
    move-result-object v5

    .line 99
    .line 100
    const-string v6, "null cannot be cast to non-null type java.lang.Class<out com.narvii.app.NVFragment>"

    .line 101
    .line 102
    .line 103
    invoke-static {v5, v6}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    new-instance v5, Landroid/os/Bundle;

    .line 109
    .line 110
    .line 111
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 112
    .line 113
    const-string v6, "key_topic_id"

    .line 114
    .line 115
    iget v7, p0, Lcom/narvii/topic/TopicTabFragment;->topicId:I

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 119
    .line 120
    iget-object v6, p0, Lcom/narvii/topic/TopicTabFragment;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 121
    .line 122
    .line 123
    invoke-static {v6}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 124
    move-result-object v6

    .line 125
    .line 126
    .line 127
    const-string/jumbo v7, "topic"

    .line 128
    .line 129
    .line 130
    invoke-virtual {v5, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    goto :goto_0

    .line 135
    .line 136
    .line 137
    :cond_1
    invoke-virtual {p0, v0, v3, v2, v1}, Lcom/narvii/nested/CoordinateTabFragment;->getBaseAdapter(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 138
    move-result-object v0

    .line 139
    return-object v0
.end method

.method public createUpdateTabViewDelegate()Lcom/narvii/nested/tab/UpdateTabViewDelegate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/nested/tab/ScrollTabViewDelegate;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/nested/tab/ScrollTabViewDelegate;-><init>()V

    .line 6
    return-object v0
.end method

.method protected defaultTabIndex()I
    .locals 5

    .line 1
    .line 2
    const-string v0, "key_default_tab"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-nez v1, :cond_2

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/topic/TopicTabFragment;->tabList:Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v2

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    move-object v3, v2

    .line 30
    .line 31
    check-cast v3, Lcom/narvii/model/story/StoryTopicTab;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v4

    .line 36
    .line 37
    iget-object v3, v3, Lcom/narvii/model/story/StoryTopicTab;->tabKey:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-static {v4, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    move-result v3

    .line 42
    .line 43
    if-eqz v3, :cond_0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v2, 0x0

    .line 46
    .line 47
    :goto_0
    check-cast v2, Lcom/narvii/model/story/StoryTopicTab;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->tabList:Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v2}, Lkotlin/collections/t;->o0(Ljava/util/List;Ljava/lang/Object;)I

    .line 53
    move-result v0

    .line 54
    return v0

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-super {p0}, Lcom/narvii/nested/CoordinateTabFragment;->defaultTabIndex()I

    .line 58
    move-result v0

    .line 59
    return v0
.end method

.method public final getBodyContent()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->bodyContent:Landroid/view/View;

    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method public final getErrorMessage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getIpc()Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector<",
            "Lcom/narvii/model/story/StoryTopic;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->ipc:Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;

    return-object v0
.end method

.method public final getLanguageService()Lcom/narvii/language/ContentLanguageService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "languageService"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getNumFmt()Ljava/text/NumberFormat;
    .locals 1

    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->numFmt:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "topic_detail"

    return-object v0
.end method

.method public final getPageStatusView()Lcom/narvii/paging/state/PageStatusView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    return-object v0
.end method

.method public final getStatus()I
    .locals 1

    iget v0, p0, Lcom/narvii/topic/TopicTabFragment;->status:I

    return v0
.end method

.method public final getSubTopicRecycleView()Lcom/narvii/widget/recycleview/NVRecyclerView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->subTopicRecycleView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    return-object v0
.end method

.method public final getTabList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/story/StoryTopicTab;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->tabList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTabView(ILjava/lang/String;)Landroid/view/View;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    const v0, 0x7f0d0725

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    const v0, 0x7f0a0e27

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    check-cast v0, Landroid/widget/TextView;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    return-object p1
.end method

.method public final getTopic()Lcom/narvii/model/story/StoryTopic;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->topic:Lcom/narvii/model/story/StoryTopic;

    return-object v0
.end method

.method public final getTopicBackground()Lcom/narvii/widget/NVImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->topicBackground:Lcom/narvii/widget/NVImageView;

    return-object v0
.end method

.method public final getTopicBookmarkView()Lcom/narvii/topic/widgets/TopicSubscribeView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->topicBookmarkView:Lcom/narvii/topic/widgets/TopicSubscribeView;

    return-object v0
.end method

.method public final getTopicId()I
    .locals 1

    iget v0, p0, Lcom/narvii/topic/TopicTabFragment;->topicId:I

    return v0
.end method

.method public final getTopicOnlineContainer()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->topicOnlineContainer:Landroid/view/View;

    return-object v0
.end method

.method public final getTopicOnlineCount()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->topicOnlineCount:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTopicTitle()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->topicTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTopicTitleTop()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->topicTitleTop:Landroid/widget/TextView;

    return-object v0
.end method

.method public isGlobal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isRequestSent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/topic/TopicTabFragment;->isRequestSent:Z

    return v0
.end method

.method public final logSubTopicImpression()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->subTopicRecycleView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/topic/TopicTabFragment;->ipc:Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1, p0}, Lcom/narvii/logging/Impression/ImpressionUtils;->logStandaloneRecyclerImpression(Landroidx/recyclerview/widget/RecyclerView;Lcom/narvii/logging/Impression/ImpressionCollector;Lcom/narvii/app/NVContext;)V

    .line 8
    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActiveChanged(Z)V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/topic/TopicTabFragment;->logSubTopicImpression()V

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/topic/TopicTabFragment;->clearSubTopicImpression()V

    .line 13
    :goto_0
    return-void
.end method

.method public onAppBarLayoutOffsetChanged(Lcom/narvii/nested/NVAppBarLayout;I)V
    .locals 2
    .param p1    # Lcom/narvii/nested/NVAppBarLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/nested/CoordinateTabFragment;->onAppBarLayoutOffsetChanged(Lcom/narvii/nested/NVAppBarLayout;I)V

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    return-void

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 10
    move-result p2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    .line 14
    move-result v0

    .line 15
    sub-int/2addr p2, v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 19
    move-result v0

    .line 20
    add-int/2addr p2, v0

    .line 21
    int-to-float p2, p2

    .line 22
    .line 23
    const/high16 v0, 0x3f800000    # 1.0f

    .line 24
    mul-float/2addr p2, v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 28
    move-result v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    .line 32
    move-result v1

    .line 33
    sub-int/2addr v0, v1

    .line 34
    int-to-float v0, v0

    .line 35
    div-float/2addr p2, v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 39
    return-void
.end method

.method public onCollapseStatusChanged(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/nested/CoordinateTabFragment;->onCollapseStatusChanged(Z)V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/topic/TopicTabFragment;->clearSubTopicImpression()V

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/topic/TopicTabFragment;->logSubTopicImpression()V

    .line 13
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
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
    sget-object v0, Lcom/narvii/app/ComScoreSectionDispatcher;->INSTANCE:Lcom/narvii/app/ComScoreSectionDispatcher;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/app/ComScoreSectionDispatcher;->sectionChangeToNone()V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v0, "topic"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    const-class v2, Lcom/narvii/model/story/StoryTopic;

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    check-cast v1, Lcom/narvii/model/story/StoryTopic;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/narvii/topic/TopicTabFragment;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 26
    .line 27
    const-string v3, "key_topic_id"

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iget v1, v1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 36
    move-result v1

    .line 37
    .line 38
    :goto_0
    iput v1, p0, Lcom/narvii/topic/TopicTabFragment;->topicId:I

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    check-cast v0, Lcom/narvii/model/story/StoryTopic;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    iget v0, v0, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 57
    goto :goto_1

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 61
    move-result v0

    .line 62
    .line 63
    :goto_1
    iput v0, p0, Lcom/narvii/topic/TopicTabFragment;->topicId:I

    .line 64
    .line 65
    const-string v0, "isRequestSent"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 69
    move-result v0

    .line 70
    .line 71
    iput-boolean v0, p0, Lcom/narvii/topic/TopicTabFragment;->isRequestSent:Z

    .line 72
    .line 73
    const-string v0, "errorMessage"

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment;->errorMessage:Ljava/lang/String;

    .line 80
    :cond_2
    const/4 p1, 0x0

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    const-string p1, "content_language"

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    const-string v0, "getService(...)"

    .line 92
    .line 93
    .line 94
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    check-cast p1, Lcom/narvii/language/ContentLanguageService;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p1}, Lcom/narvii/topic/TopicTabFragment;->setLanguageService(Lcom/narvii/language/ContentLanguageService;)V

    .line 100
    const/4 p1, 0x1

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 104
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "menu"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "inflater"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 14
    const/4 p2, 0x0

    .line 15
    .line 16
    .line 17
    const v0, 0x7f1210ad

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    const p2, 0x7f080608

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 28
    move-result-object p1

    .line 29
    const/4 p2, 0x2

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 33
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
    const p3, 0x7f0d0335

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

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "item"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 9
    move-result v0

    .line 10
    .line 11
    .line 12
    const v1, 0x7f1210ad

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    sget-object p1, Lcom/narvii/logging/ActSemantic;->share:Lcom/narvii/logging/ActSemantic;

    .line 21
    .line 22
    .line 23
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    const-string v0, "ShareIcon"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    iget v0, p0, Lcom/narvii/topic/TopicTabFragment;->topicId:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->objectId(I)Lcom/narvii/logging/LogEvent$Builder;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    sget-object v0, Lcom/narvii/logging/ObjectType;->topic:Lcom/narvii/logging/ObjectType;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->objectType(Lcom/narvii/logging/ObjectType;)Lcom/narvii/logging/LogEvent$Builder;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->objectIfNotNull(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 52
    .line 53
    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 54
    .line 55
    .line 56
    invoke-static {p0, p1}, Lcom/narvii/share/ShareDialog;->getShareDialogFromTopic(Lcom/narvii/app/NVContext;Lcom/narvii/model/story/StoryTopic;)Lcom/narvii/share/ShareDialog;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/narvii/share/ShareDialog;->show()V

    .line 61
    const/4 p1, 0x1

    .line 62
    goto :goto_0

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 66
    move-result p1

    .line 67
    :goto_0
    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "outState"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/narvii/nested/CoordinateTabFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    const-string/jumbo v1, "topic"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    const-string v0, "key_topic_id"

    .line 23
    .line 24
    iget v1, p0, Lcom/narvii/topic/TopicTabFragment;->topicId:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 28
    .line 29
    const-string v0, "isRequestSent"

    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/narvii/topic/TopicTabFragment;->isRequestSent:Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 35
    .line 36
    const-string v0, "errorMessage"

    .line 37
    .line 38
    iget-object v1, p0, Lcom/narvii/topic/TopicTabFragment;->errorMessage:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
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
    .line 3
    const-string/jumbo v0, "view"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1, p2}, Lcom/narvii/nested/CoordinateTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    const p2, 0x7f0a0ac0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    check-cast p2, Lcom/narvii/paging/state/PageStatusView;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    const/4 v0, 0x1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v0}, Lcom/narvii/paging/state/PageStatusView;->setDarkTheme(Z)V

    .line 27
    .line 28
    :cond_0
    iget-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    .line 29
    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    .line 33
    const v0, 0x7f0d04c8

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v0}, Lcom/narvii/paging/state/PageStatusView;->setEmptyView(I)Landroid/view/View;

    .line 37
    .line 38
    :cond_1
    iget-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    .line 39
    .line 40
    if-nez p2, :cond_2

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_2
    new-instance v0, Lcom/narvii/topic/g;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, p0}, Lcom/narvii/topic/g;-><init>(Lcom/narvii/topic/TopicTabFragment;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v0}, Lcom/narvii/paging/state/PageStatusView;->setErrorRetryListener(Landroid/view/View$OnClickListener;)V

    .line 50
    .line 51
    :goto_0
    iget-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    .line 52
    .line 53
    if-nez p2, :cond_3

    .line 54
    goto :goto_1

    .line 55
    .line 56
    :cond_3
    new-instance v0, Lcom/narvii/topic/h;

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, p0}, Lcom/narvii/topic/h;-><init>(Lcom/narvii/topic/TopicTabFragment;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v0}, Lcom/narvii/paging/state/PageStatusView;->setEmptyRetryListener(Landroid/view/View$OnClickListener;)V

    .line 63
    .line 64
    :goto_1
    iget-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    .line 65
    .line 66
    if-eqz p2, :cond_4

    .line 67
    .line 68
    .line 69
    const v0, -0x282c2d

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, v0}, Lcom/narvii/paging/state/PageStatusView;->setDarkThemeColor(I)V

    .line 73
    .line 74
    .line 75
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/topic/TopicTabFragment;->sendTopicMetadataRequest()V

    .line 76
    .line 77
    .line 78
    const p2, 0x7f0a01dc

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    move-result-object p2

    .line 83
    .line 84
    iput-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->bodyContent:Landroid/view/View;

    .line 85
    .line 86
    .line 87
    const p2, -0xecf1bd

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 94
    move-result-object p2

    .line 95
    .line 96
    instance-of p2, p2, Lcom/narvii/app/NVActivity;

    .line 97
    .line 98
    if-eqz p2, :cond_5

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 102
    move-result-object p2

    .line 103
    .line 104
    const-string v0, "null cannot be cast to non-null type com.narvii.app.NVActivity"

    .line 105
    .line 106
    .line 107
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    check-cast p2, Lcom/narvii/app/NVActivity;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    .line 113
    move-result p2

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 117
    move-result-object v1

    .line 118
    .line 119
    .line 120
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .line 122
    check-cast v1, Lcom/narvii/app/NVActivity;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    .line 126
    move-result v0

    .line 127
    .line 128
    .line 129
    const v1, 0x7f0a03b6

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 133
    move-result-object v1

    .line 134
    add-int/2addr p2, v0

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, p2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 138
    .line 139
    .line 140
    :cond_5
    const p2, 0x7f0a0ee2

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 144
    move-result-object p2

    .line 145
    .line 146
    check-cast p2, Lcom/narvii/widget/NVImageView;

    .line 147
    .line 148
    iput-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->topicBackground:Lcom/narvii/widget/NVImageView;

    .line 149
    .line 150
    if-eqz p2, :cond_6

    .line 151
    .line 152
    new-instance v0, Lcom/narvii/topic/i;

    .line 153
    .line 154
    .line 155
    invoke-direct {v0}, Lcom/narvii/topic/i;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 159
    .line 160
    .line 161
    :cond_6
    const p2, 0x7f0a0eea

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 165
    move-result-object p2

    .line 166
    .line 167
    check-cast p2, Landroid/widget/TextView;

    .line 168
    .line 169
    iput-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->topicTitle:Landroid/widget/TextView;

    .line 170
    .line 171
    .line 172
    const p2, 0x7f0a0eeb

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 176
    move-result-object p2

    .line 177
    .line 178
    check-cast p2, Landroid/widget/TextView;

    .line 179
    .line 180
    iput-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->topicTitleTop:Landroid/widget/TextView;

    .line 181
    .line 182
    .line 183
    const p2, 0x7f0a0a59

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 187
    move-result-object p2

    .line 188
    .line 189
    iput-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->topicOnlineContainer:Landroid/view/View;

    .line 190
    .line 191
    .line 192
    const p2, 0x7f0a0a5a

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 196
    move-result-object p2

    .line 197
    .line 198
    check-cast p2, Landroid/widget/TextView;

    .line 199
    .line 200
    iput-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->topicOnlineCount:Landroid/widget/TextView;

    .line 201
    .line 202
    .line 203
    const p2, 0x7f0a0ee3

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 207
    move-result-object p2

    .line 208
    .line 209
    check-cast p2, Lcom/narvii/topic/widgets/TopicSubscribeView;

    .line 210
    .line 211
    iput-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->topicBookmarkView:Lcom/narvii/topic/widgets/TopicSubscribeView;

    .line 212
    .line 213
    .line 214
    invoke-direct {p0}, Lcom/narvii/topic/TopicTabFragment;->updateHeaderViews()V

    .line 215
    .line 216
    iget-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->topicOnlineContainer:Landroid/view/View;

    .line 217
    .line 218
    const/16 v0, 0x8

    .line 219
    .line 220
    if-nez p2, :cond_7

    .line 221
    goto :goto_2

    .line 222
    .line 223
    .line 224
    :cond_7
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 225
    .line 226
    :goto_2
    iget-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->topicBookmarkView:Lcom/narvii/topic/widgets/TopicSubscribeView;

    .line 227
    .line 228
    if-nez p2, :cond_8

    .line 229
    goto :goto_3

    .line 230
    .line 231
    .line 232
    :cond_8
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 233
    .line 234
    :goto_3
    iget-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->topicBookmarkView:Lcom/narvii/topic/widgets/TopicSubscribeView;

    .line 235
    .line 236
    if-eqz p2, :cond_9

    .line 237
    .line 238
    new-instance v0, Lcom/narvii/topic/TopicTabFragment$onViewCreated$4;

    .line 239
    .line 240
    .line 241
    invoke-direct {v0, p0}, Lcom/narvii/topic/TopicTabFragment$onViewCreated$4;-><init>(Lcom/narvii/topic/TopicTabFragment;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p2, v0}, Lcom/narvii/topic/widgets/TopicSubscribeView;->setTopicBookmarkListener(Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkListener;)V

    .line 245
    :cond_9
    const/4 p2, 0x0

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0, p2}, Lcom/narvii/nested/CoordinateTabFragment;->updateTabView(I)V

    .line 249
    .line 250
    new-instance p2, Landroid/os/Bundle;

    .line 251
    .line 252
    .line 253
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 254
    .line 255
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 256
    .line 257
    .line 258
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 259
    move-result-object v0

    .line 260
    .line 261
    const-string v1, "default_story_topic"

    .line 262
    .line 263
    .line 264
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .line 266
    const-string v0, "key_entry"

    .line 267
    .line 268
    const/16 v1, 0xc

    .line 269
    .line 270
    .line 271
    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 272
    .line 273
    .line 274
    const v0, 0x7f0a0b45

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 278
    move-result-object p1

    .line 279
    .line 280
    check-cast p1, Lcom/narvii/post/entry/PostEntryView;

    .line 281
    .line 282
    .line 283
    const v0, -0x92bc15

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1, v0}, Lcom/narvii/post/entry/PostEntryView;->setButtonColor(I)V

    .line 287
    .line 288
    new-instance v0, Lcom/narvii/topic/j;

    .line 289
    .line 290
    .line 291
    invoke-direct {v0, p0, p2}, Lcom/narvii/topic/j;-><init>(Lcom/narvii/topic/TopicTabFragment;Landroid/os/Bundle;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p1, v0}, Lcom/narvii/post/entry/PostEntryView;->setOnPostButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    return-void
.end method

.method public final sendTopicMetadataRequest()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput v0, p0, Lcom/narvii/topic/TopicTabFragment;->status:I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/topic/TopicTabFragment;->updateViews()V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    const-string/jumbo v1, "top"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iget v1, p0, Lcom/narvii/topic/TopicTabFragment;->topicId:I

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string/jumbo v3, "topic/"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v1, "/metadata"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/narvii/topic/TopicTabFragment;->getLanguageService()Lcom/narvii/language/ContentLanguageService;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    const-string v2, "language"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    const-string v1, "api"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 77
    .line 78
    new-instance v2, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;

    .line 79
    .line 80
    const-class v3, Lcom/narvii/model/story/StoryTopicMetaResponse;

    .line 81
    .line 82
    .line 83
    invoke-direct {v2, p0, v3}, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;-><init>(Lcom/narvii/topic/TopicTabFragment;Ljava/lang/Class;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 87
    return-void
.end method

.method public final setBodyContent(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment;->bodyContent:Landroid/view/View;

    return-void
.end method

.method public final setErrorMessage(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public final setIpc(Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;)V
    .locals 1
    .param p1    # Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector<",
            "Lcom/narvii/model/story/StoryTopic;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment;->ipc:Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;

    return-void
.end method

.method public final setLanguageService(Lcom/narvii/language/ContentLanguageService;)V
    .locals 1
    .param p1    # Lcom/narvii/language/ContentLanguageService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    return-void
.end method

.method public final setPageStatusView(Lcom/narvii/paging/state/PageStatusView;)V
    .locals 0
    .param p1    # Lcom/narvii/paging/state/PageStatusView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    return-void
.end method

.method public final setRequestSent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/topic/TopicTabFragment;->isRequestSent:Z

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/topic/TopicTabFragment;->status:I

    return-void
.end method

.method public final setSubTopicRecycleView(Lcom/narvii/widget/recycleview/NVRecyclerView;)V
    .locals 0
    .param p1    # Lcom/narvii/widget/recycleview/NVRecyclerView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment;->subTopicRecycleView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    return-void
.end method

.method public final setTabList(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/story/StoryTopicTab;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment;->tabList:Ljava/util/ArrayList;

    return-void
.end method

.method public final setTopic(Lcom/narvii/model/story/StoryTopic;)V
    .locals 0
    .param p1    # Lcom/narvii/model/story/StoryTopic;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment;->topic:Lcom/narvii/model/story/StoryTopic;

    return-void
.end method

.method public final setTopicBackground(Lcom/narvii/widget/NVImageView;)V
    .locals 0
    .param p1    # Lcom/narvii/widget/NVImageView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment;->topicBackground:Lcom/narvii/widget/NVImageView;

    return-void
.end method

.method public final setTopicBookmarkView(Lcom/narvii/topic/widgets/TopicSubscribeView;)V
    .locals 0
    .param p1    # Lcom/narvii/topic/widgets/TopicSubscribeView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment;->topicBookmarkView:Lcom/narvii/topic/widgets/TopicSubscribeView;

    return-void
.end method

.method public final setTopicId(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/topic/TopicTabFragment;->topicId:I

    return-void
.end method

.method public final setTopicOnlineContainer(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment;->topicOnlineContainer:Landroid/view/View;

    return-void
.end method

.method public final setTopicOnlineCount(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment;->topicOnlineCount:Landroid/widget/TextView;

    return-void
.end method

.method public final setTopicTitle(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment;->topicTitle:Landroid/widget/TextView;

    return-void
.end method

.method public final setTopicTitleTop(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment;->topicTitleTop:Landroid/widget/TextView;

    return-void
.end method

.method public final updateViews()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/topic/TopicTabFragment;->updateTabLayout()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->subTopicRecycleView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_1

    .line 12
    .line 13
    :cond_0
    iget v3, p0, Lcom/narvii/topic/TopicTabFragment;->status:I

    .line 14
    .line 15
    if-nez v3, :cond_1

    .line 16
    .line 17
    iget-object v3, p0, Lcom/narvii/topic/TopicTabFragment;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    iget-object v3, v3, Lcom/narvii/model/story/StoryTopic;->subTopicList:Ljava/util/List;

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 27
    move-result v3

    .line 28
    .line 29
    if-lez v3, :cond_1

    .line 30
    move v3, v2

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v3, v1

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    :goto_1
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget v3, p0, Lcom/narvii/topic/TopicTabFragment;->status:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v3}, Lcom/narvii/paging/state/PageStatusView;->updateStatus(I)V

    .line 45
    .line 46
    :cond_2
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    iget-object v3, p0, Lcom/narvii/topic/TopicTabFragment;->errorMessage:Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v3}, Lcom/narvii/paging/state/PageStatusView;->setErrorMessage(Ljava/lang/String;)V

    .line 54
    .line 55
    :cond_3
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    .line 56
    .line 57
    if-nez v0, :cond_4

    .line 58
    goto :goto_3

    .line 59
    .line 60
    :cond_4
    iget v3, p0, Lcom/narvii/topic/TopicTabFragment;->status:I

    .line 61
    .line 62
    if-eqz v3, :cond_5

    .line 63
    move v3, v2

    .line 64
    goto :goto_2

    .line 65
    :cond_5
    move v3, v1

    .line 66
    .line 67
    .line 68
    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    :goto_3
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->bodyContent:Landroid/view/View;

    .line 71
    .line 72
    if-nez v0, :cond_6

    .line 73
    goto :goto_4

    .line 74
    .line 75
    :cond_6
    iget v3, p0, Lcom/narvii/topic/TopicTabFragment;->status:I

    .line 76
    .line 77
    if-nez v3, :cond_7

    .line 78
    move v1, v2

    .line 79
    .line 80
    .line 81
    :cond_7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    :goto_4
    return-void
.end method
