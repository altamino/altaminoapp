.class final Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;
.source "SourceFile"


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


# instance fields
.field private final source:Lcom/narvii/paging/source/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/paging/source/DataSource<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

.field private final titleRes:I

.field private final viewHeightDp:F


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;Lcom/narvii/app/NVContext;IFLcom/narvii/paging/source/DataSource;)V
    .locals 1
    .param p1    # Lcom/narvii/master/home/profile/LinkCommunityFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "source"

    .line 8
    .line 9
    .line 10
    invoke-static {p5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p2, p5}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/paging/source/DataSource;)V

    .line 16
    .line 17
    iput p3, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;->titleRes:I

    .line 18
    .line 19
    iput p4, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;->viewHeightDp:F

    .line 20
    .line 21
    iput-object p5, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;->source:Lcom/narvii/paging/source/DataSource;

    .line 22
    return-void
.end method


# virtual methods
.method public createDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/DataSource;
    .locals 0
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;->source:Lcom/narvii/paging/source/DataSource;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getItemCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;->source:Lcom/narvii/paging/source/DataSource;

    return-object v0
.end method

.method public final getTitleRes()I
    .locals 1

    iget v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;->titleRes:I

    return v0
.end method

.method public final getViewHeightDp()F
    .locals 1

    iget v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;->viewHeightDp:F

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p2, "holder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    instance-of p2, p1, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter$TitleViewHolder;

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    move-object p2, p1

    .line 11
    .line 12
    check-cast p2, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter$TitleViewHolder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter$TitleViewHolder;->getTv()Landroid/widget/TextView;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    .line 19
    .line 20
    iget v1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;->titleRes:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getTitleTextColor$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)I

    .line 27
    move-result v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    const/4 v0, 0x0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 35
    .line 36
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 37
    .line 38
    iget-object p2, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    .line 39
    .line 40
    .line 41
    invoke-static {p2}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$get_backgroundColor$p$s1755975775(Lcom/narvii/master/home/profile/LinkCommunityFragment;)I

    .line 42
    move-result p2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 46
    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p2, "parent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance p2, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter$TitleViewHolder;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    const v1, 0x7f0d0668

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    const-string v0, "inflate(...)"

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p2, p0, p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter$TitleViewHolder;-><init>(Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;Landroid/view/View;)V

    .line 32
    return-object p2
.end method
