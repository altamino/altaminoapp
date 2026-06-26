.class public final Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "LinkCommunityFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LinkedViewHolder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLinkCommunityFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LinkCommunityFragment.kt\ncom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder\n*L\n1#1,401:1\n*E\n"
.end annotation


# instance fields
.field private final checkBox:Landroid/widget/CheckBox;

.field private final dragSortView:Landroid/view/View;

.field private final iconIV:Lcom/narvii/widget/ThumbImageView;

.field private final nameTV:Landroid/widget/TextView;

.field private pos:I

.field final synthetic this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0902a3

    .line 259
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById(R.id.community_icon)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/ThumbImageView;

    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->iconIV:Lcom/narvii/widget/ThumbImageView;

    const p1, 0x7f0902b6

    .line 260
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById(R.id.community_name)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->nameTV:Landroid/widget/TextView;

    const p1, 0x7f090213

    .line 261
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById(R.id.check_box)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->checkBox:Landroid/widget/CheckBox;

    const p1, 0x7f090377

    .line 262
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "view.findViewById(R.id.drag_sort_view)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->dragSortView:Landroid/view/View;

    const/4 p1, -0x1

    .line 264
    iput p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->pos:I

    return-void
.end method


# virtual methods
.method public final getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->checkBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public final getDragSortView()Landroid/view/View;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->dragSortView:Landroid/view/View;

    return-object v0
.end method

.method public final getIconIV()Lcom/narvii/widget/ThumbImageView;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->iconIV:Lcom/narvii/widget/ThumbImageView;

    return-object v0
.end method

.method public final getNameTV()Landroid/widget/TextView;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->nameTV:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getPos()I
    .locals 1

    .line 264
    iget v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->pos:I

    return v0
.end method

.method public final setPos(I)V
    .locals 0

    .line 264
    iput p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->pos:I

    return-void
.end method

.method public final updateData(Lcom/narvii/model/Community;I)V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

    invoke-virtual {v0}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;->getSupportDragSort()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->pos:I

    if-eqz p1, :cond_3

    .line 270
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->iconIV:Lcom/narvii/widget/ThumbImageView;

    iget-object v1, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 271
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->nameTV:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->nameTV:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

    iget-object v0, v0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-static {v0}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getOptionTextColor$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 273
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

    iget-object v0, v0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-static {v0}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getOptionBackgroundColor$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 275
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

    invoke-virtual {v0}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;->isDarkTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0807c0

    goto :goto_1

    :cond_1
    const v0, 0x7f0807bf

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 276
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

    invoke-virtual {v0}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;->getSupportDragSort()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 277
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->checkBox:Landroid/widget/CheckBox;

    new-instance v0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder$updateData$$inlined$let$lambda$1;

    invoke-direct {v0, p0, p2}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder$updateData$$inlined$let$lambda$1;-><init>(Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;I)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;->getSupportDragSort()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 291
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->dragSortView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 292
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->dragSortView:Landroid/view/View;

    new-instance v0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder$updateData$$inlined$let$lambda$2;

    invoke-direct {v0, p0, p2}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder$updateData$$inlined$let$lambda$2;-><init>(Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    .line 303
    :cond_2
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->dragSortView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_2
    return-void
.end method
