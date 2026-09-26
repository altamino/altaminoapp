.class final Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;
.source "SourceFile"


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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final supportDragSort:Z

.field final synthetic this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;Lcom/narvii/app/NVContext;ZLcom/narvii/paging/source/DataSource;)V
    .locals 1
    .param p1    # Lcom/narvii/master/home/profile/LinkCommunityFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Z
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p2, p4}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/paging/source/DataSource;)V

    .line 16
    .line 17
    iput-boolean p3, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;->supportDragSort:Z

    .line 18
    .line 19
    iput-object p4, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;->source:Lcom/narvii/paging/source/DataSource;

    .line 20
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;->source:Lcom/narvii/paging/source/DataSource;

    return-object v0
.end method

.method public final getSupportDragSort()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;->supportDragSort:Z

    return v0
.end method

.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "holder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    instance-of v0, p1, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;->source:Lcom/narvii/paging/source/DataSource;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Lcom/narvii/paging/source/DataSource;->getItem(I)Lcom/narvii/model/NVObject;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/model/Community;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0, p2}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->updateData(Lcom/narvii/model/Community;I)V

    .line 23
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
    new-instance p2, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;

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
    const v1, 0x7f0d04d8

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
    invoke-direct {p2, p0, p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;-><init>(Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;Landroid/view/View;)V

    .line 32
    return-object p2
.end method
