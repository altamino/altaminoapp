.class public final Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;
.super Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;
.source "TopicTitleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TopicTitleViewHolder"
.end annotation


# instance fields
.field private final icon:Lcom/narvii/widget/NVImageView;

.field private final iconContainer:Landroid/widget/FrameLayout;

.field private final interestIcon:Landroid/widget/FrameLayout;

.field final synthetic this$0:Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;

.field private final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;

    invoke-direct {p0, p2}, Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 160
    sget v0, Lcom/narvii/amino/R$id;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "itemView.title"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;->title:Landroid/widget/TextView;

    .line 161
    sget v0, Lcom/narvii/amino/R$id;->icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    const-string v1, "itemView.icon"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;->icon:Lcom/narvii/widget/NVImageView;

    .line 162
    sget v0, Lcom/narvii/amino/R$id;->interest_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "itemView.interest_view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;->interestIcon:Landroid/widget/FrameLayout;

    .line 163
    sget v0, Lcom/narvii/amino/R$id;->icon_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "itemView.icon_container"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;->iconContainer:Landroid/widget/FrameLayout;

    .line 166
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;->interestIcon:Landroid/widget/FrameLayout;

    iget-object v1, p1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;->iconContainer:Landroid/widget/FrameLayout;

    iget-object v1, p1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    invoke-virtual {p1}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->getModuleDisplayConfig()Lcom/narvii/topic/ModuleDisplayConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/narvii/topic/ModuleDisplayConfig;->isTop:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 170
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 171
    invoke-virtual {p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 172
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 170
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final getIcon()Lcom/narvii/widget/NVImageView;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;->icon:Lcom/narvii/widget/NVImageView;

    return-object v0
.end method

.method public final getIconContainer()Landroid/widget/FrameLayout;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;->iconContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getInterestIcon()Landroid/widget/FrameLayout;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;->interestIcon:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getTitle()Landroid/widget/TextView;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method
