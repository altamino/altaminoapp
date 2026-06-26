.class final Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter$TitleViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "LinkCommunityFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TitleViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;

.field private final tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter$TitleViewHolder;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090b5b

    .line 236
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.text)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter$TitleViewHolder;->tv:Landroid/widget/TextView;

    .line 239
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;->getViewHeightDp()F

    move-result p1

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method


# virtual methods
.method public final getTv()Landroid/widget/TextView;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter$TitleViewHolder;->tv:Landroid/widget/TextView;

    return-object v0
.end method
