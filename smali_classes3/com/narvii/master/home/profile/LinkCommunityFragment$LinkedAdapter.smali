.class final Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;
.source "LinkCommunityFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/profile/LinkCommunityFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LinkedAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;
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
.end field

.field private final supportDragSort:Z

.field final synthetic this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;Lcom/narvii/app/NVContext;ZLcom/narvii/paging/source/DataSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Z",
            "Lcom/narvii/paging/source/DataSource<",
            "Lcom/narvii/model/Community;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-direct {p0, p2, p4}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/paging/source/DataSource;)V

    iput-boolean p3, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;->supportDragSort:Z

    iput-object p4, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;->source:Lcom/narvii/paging/source/DataSource;

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

    .line 250
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;->source:Lcom/narvii/paging/source/DataSource;

    return-object p1
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

    .line 244
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;->source:Lcom/narvii/paging/source/DataSource;

    return-object v0
.end method

.method public final getSupportDragSort()Z
    .locals 1

    .line 244
    iget-boolean v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;->supportDragSort:Z

    return v0
.end method

.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    instance-of v0, p1, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;

    if-eqz v0, :cond_0

    .line 254
    check-cast p1, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;

    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;->source:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v0, p2}, Lcom/narvii/paging/source/DataSource;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Community;

    invoke-virtual {p1, v0, p2}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->updateData(Lcom/narvii/model/Community;I)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    new-instance p2, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b04ab

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(getC\u2026le_layout, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;-><init>(Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;Landroid/view/View;)V

    return-object p2
.end method
