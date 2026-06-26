.class final Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;
.source "LinkCommunityFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/profile/LinkCommunityFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TitleAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter$TitleViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/adapter/NVRecyclerViewAdapter<",
        "Lcom/narvii/model/Community;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLinkCommunityFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LinkCommunityFragment.kt\ncom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter\n*L\n1#1,401:1\n*E\n"
.end annotation


# instance fields
.field private final source:Lcom/narvii/paging/source/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/paging/source/DataSource<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

.field private final titleRes:I

.field private final viewHeightDp:F


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;Lcom/narvii/app/NVContext;IFLcom/narvii/paging/source/DataSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "IF",
            "Lcom/narvii/paging/source/DataSource<",
            "Lcom/narvii/model/Community;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-direct {p0, p2, p5}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/paging/source/DataSource;)V

    iput p3, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;->titleRes:I

    iput p4, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;->viewHeightDp:F

    iput-object p5, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;->source:Lcom/narvii/paging/source/DataSource;

    return-void
.end method


# virtual methods
.method public createDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/DataSource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")",
            "Lcom/narvii/paging/source/DataSource<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;->source:Lcom/narvii/paging/source/DataSource;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 222
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getSource()Lcom/narvii/paging/source/DataSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/narvii/paging/source/DataSource<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;->source:Lcom/narvii/paging/source/DataSource;

    return-object v0
.end method

.method public final getTitleRes()I
    .locals 1

    .line 215
    iget v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;->titleRes:I

    return v0
.end method

.method public final getViewHeightDp()F
    .locals 1

    .line 215
    iget v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;->viewHeightDp:F

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    instance-of p2, p1, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter$TitleViewHolder;

    if-eqz p2, :cond_0

    .line 226
    move-object p2, p1

    check-cast p2, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter$TitleViewHolder;

    invoke-virtual {p2}, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter$TitleViewHolder;->getTv()Landroid/widget/TextView;

    move-result-object p2

    .line 227
    iget v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;->titleRes:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 228
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-static {v0}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getTitleTextColor$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x0

    .line 229
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 231
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-static {p2}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$get_backgroundColor$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    new-instance p2, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter$TitleViewHolder;

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b05b1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(getC\u2026tion_item, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter$TitleViewHolder;-><init>(Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;Landroid/view/View;)V

    return-object p2
.end method
