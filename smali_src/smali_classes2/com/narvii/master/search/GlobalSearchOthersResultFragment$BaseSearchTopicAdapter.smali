.class Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;
.super Lcom/narvii/master/search/trending/FlowLayoutAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/search/GlobalSearchOthersResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseSearchTopicAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/master/search/trending/FlowLayoutAdapter<",
        "Lcom/narvii/model/story/StoryTopic;",
        ">;"
    }
.end annotation


# instance fields
.field private final preClickListener:Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/master/search/GlobalSearchOthersResultFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/narvii/master/search/trending/FlowLayoutAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    new-instance p1, Lcom/narvii/master/search/j;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/narvii/master/search/j;-><init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;)V

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;->preClickListener:Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;

    .line 18
    return-void
.end method

.method public static synthetic f(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;Lcom/narvii/story/widgets/StoryTopicView;Lcom/narvii/model/story/StoryTopic;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;->preClickListener$lambda$0(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;Lcom/narvii/story/widgets/StoryTopicView;Lcom/narvii/model/story/StoryTopic;)V

    return-void
.end method

.method private static final preClickListener$lambda$0(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;Lcom/narvii/story/widgets/StoryTopicView;Lcom/narvii/model/story/StoryTopic;)V
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
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 19
    return-void
.end method


# virtual methods
.method public createChildView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "parent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    const v1, 0x7f0d0357

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    const-string v0, "inflate(...)"

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    return-object p1
.end method

.method public onAttach()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/logging/Impression/FlowLayoutImpressionCollector;

    .line 6
    .line 7
    const-class v1, Lcom/narvii/model/story/StoryTopic;

    .line 8
    .line 9
    .line 10
    const v2, 0x7f0a05de

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Lcom/narvii/logging/Impression/FlowLayoutImpressionCollector;-><init>(Ljava/lang/Class;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 17
    return-void
.end method

.method public updateChildView(Lcom/narvii/model/story/StoryTopic;Landroid/view/View;)V
    .locals 2
    .param p1    # Lcom/narvii/model/story/StoryTopic;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    move-object v0, p2

    check-cast v0, Lcom/narvii/story/widgets/StoryTopicView;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 4
    move-object v0, p2

    check-cast v0, Lcom/narvii/story/widgets/StoryTopicView;

    iget-object v1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;->preClickListener:Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;

    invoke-virtual {v0, v1}, Lcom/narvii/story/widgets/StoryTopicView;->setOnPreClickListener(Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/story/widgets/StoryTopicView;->setTopic(Lcom/narvii/model/story/StoryTopic;)V

    .line 6
    invoke-static {p2, p1}, Lcom/narvii/logging/LogUtils;->setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic updateChildView(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/story/StoryTopic;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;->updateChildView(Lcom/narvii/model/story/StoryTopic;Landroid/view/View;)V

    return-void
.end method

.method protected updateFlowLayout(Lcom/narvii/util/layouts/NVFlowLayout;)V
    .locals 2
    .param p1    # Lcom/narvii/util/layouts/NVFlowLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "cell"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const/high16 v1, 0x40a00000    # 5.0f

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 15
    move-result v0

    .line 16
    .line 17
    mul-int/lit8 v1, v0, 0x2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 21
    return-void
.end method
