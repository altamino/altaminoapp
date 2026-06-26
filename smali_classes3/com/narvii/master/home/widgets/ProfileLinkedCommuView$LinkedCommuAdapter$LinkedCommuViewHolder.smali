.class final Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ProfileLinkedCommuView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LinkedCommuViewHolder"
.end annotation


# instance fields
.field private communityIdTV:Landroid/widget/TextView;

.field private iconIV:Lcom/narvii/widget/ThumbImageView;

.field private nameTV:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;Landroid/view/View;)V
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

    .line 85
    iput-object p1, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;->this$0:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0902a3

    .line 86
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById(R.id.community_icon)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/ThumbImageView;

    iput-object p1, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;->iconIV:Lcom/narvii/widget/ThumbImageView;

    const p1, 0x7f0902b6

    .line 87
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById(R.id.community_name)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;->nameTV:Landroid/widget/TextView;

    const p1, 0x7f0902a6

    .line 88
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "view.findViewById(R.id.community_id)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;->communityIdTV:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final getCommunityIdTV()Landroid/widget/TextView;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;->communityIdTV:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getIconIV()Lcom/narvii/widget/ThumbImageView;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;->iconIV:Lcom/narvii/widget/ThumbImageView;

    return-object v0
.end method

.method public final getNameTV()Landroid/widget/TextView;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;->nameTV:Landroid/widget/TextView;

    return-object v0
.end method

.method public final setCommunityIdTV(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iput-object p1, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;->communityIdTV:Landroid/widget/TextView;

    return-void
.end method

.method public final setIconIV(Lcom/narvii/widget/ThumbImageView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iput-object p1, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;->iconIV:Lcom/narvii/widget/ThumbImageView;

    return-void
.end method

.method public final setNameTV(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iput-object p1, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;->nameTV:Landroid/widget/TextView;

    return-void
.end method
