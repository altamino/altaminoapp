.class final Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.source "ProfileLinkedCommuView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LinkedCommuAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;Lcom/narvii/app/NVContext;)V
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

    .line 63
    iput-object p1, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;->this$0:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;

    invoke-direct {p0, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;->this$0:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;

    invoke-static {v0}, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;->access$getCommuList$p(Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;->this$0:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;

    invoke-static {v0}, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;->access$getCommuList$p(Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Community;

    .line 72
    instance-of v0, p1, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;

    if-eqz v0, :cond_1

    .line 73
    move-object v0, p1

    check-cast v0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;

    invoke-virtual {v0}, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;->getIconIV()Lcom/narvii/widget/ThumbImageView;

    move-result-object v1

    iget-object v2, p2, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 74
    invoke-virtual {v0}, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;->getNameTV()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {v0}, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;->getCommunityIdTV()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;->this$0:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0773

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p2, Lcom/narvii/model/Community;->endpoint:Ljava/lang/String;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$onBindViewHolder$1;

    invoke-direct {v0, p0, p2}, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$onBindViewHolder$1;-><init>(Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;Lcom/narvii/model/Community;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance p2, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b04b4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(getC\u2026er_layout, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;-><init>(Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;Landroid/view/View;)V

    return-object p2
.end method
