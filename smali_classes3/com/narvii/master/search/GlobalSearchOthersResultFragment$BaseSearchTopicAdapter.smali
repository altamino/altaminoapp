.class Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;
.super Lcom/narvii/master/search/trending/FlowLayoutAdapter;
.source "GlobalSearchOthersResultFragment.kt"


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

.field final synthetic this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    invoke-direct {p0, p2}, Lcom/narvii/master/search/trending/FlowLayoutAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 353
    new-instance p1, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter$preClickListener$1;

    invoke-direct {p1, p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter$preClickListener$1;-><init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;)V

    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;->preClickListener:Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;

    return-void
.end method


# virtual methods
.method public createChildView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b0325

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(R.layou\u2026ew_layout, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onAttach()V
    .locals 3

    .line 359
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 360
    new-instance v0, Lcom/narvii/logging/Impression/FlowLayoutImpressionCollector;

    const-class v1, Lcom/narvii/model/story/StoryTopic;

    const v2, 0x7f09049c

    invoke-direct {v0, v1, v2}, Lcom/narvii/logging/Impression/FlowLayoutImpressionCollector;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method

.method public updateChildView(Lcom/narvii/model/story/StoryTopic;Landroid/view/View;)V
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    move-object v0, p2

    check-cast v0, Lcom/narvii/story/widgets/StoryTopicView;

    const/4 v1, 0x1

    .line 369
    invoke-virtual {p2, v1}, Landroid/view/View;->setClickable(Z)V

    .line 370
    iget-object v1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;->preClickListener:Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;

    invoke-virtual {v0, v1}, Lcom/narvii/story/widgets/StoryTopicView;->setOnPreClickListener(Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;)V

    .line 371
    invoke-virtual {v0, p1}, Lcom/narvii/story/widgets/StoryTopicView;->setTopic(Lcom/narvii/model/story/StoryTopic;)V

    .line 372
    invoke-static {p2, p1}, Lcom/narvii/logging/LogUtils;->setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic updateChildView(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 351
    check-cast p1, Lcom/narvii/model/story/StoryTopic;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;->updateChildView(Lcom/narvii/model/story/StoryTopic;Landroid/view/View;)V

    return-void
.end method

.method protected updateFlowLayout(Lcom/narvii/util/layouts/NVFlowLayout;)V
    .locals 2

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    .line 377
    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method
