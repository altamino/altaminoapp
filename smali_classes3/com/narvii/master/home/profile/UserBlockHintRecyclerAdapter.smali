.class public final Lcom/narvii/master/home/profile/UserBlockHintRecyclerAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.source "UserBlockHintRecyclerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/profile/UserBlockHintRecyclerAdapter$BlockViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserBlockHintRecyclerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserBlockHintRecyclerAdapter.kt\ncom/narvii/master/home/profile/UserBlockHintRecyclerAdapter\n*L\n1#1,40:1\n*E\n"
.end annotation


# instance fields
.field private final isUserBlock:Z

.field private final uid:Ljava/lang/String;

.field private final userBlockService:Lcom/narvii/userblock/UserBlockService;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/master/home/profile/UserBlockHintRecyclerAdapter;->uid:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/narvii/master/home/profile/UserBlockHintRecyclerAdapter;->isUserBlock:Z

    const-string p2, "block"

    .line 18
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ctx.getService(\"block\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/userblock/UserBlockService;

    iput-object p1, p0, Lcom/narvii/master/home/profile/UserBlockHintRecyclerAdapter;->userBlockService:Lcom/narvii/userblock/UserBlockService;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/narvii/master/home/profile/UserBlockHintRecyclerAdapter;->isUserBlock:Z

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f090c01

    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string v0, "hint"

    .line 30
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/narvii/master/home/profile/UserBlockHintRecyclerAdapter;->uid:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    iget-object v2, p0, Lcom/narvii/master/home/profile/UserBlockHintRecyclerAdapter;->userBlockService:Lcom/narvii/userblock/UserBlockService;

    invoke-interface {v2, v0}, Lcom/narvii/userblock/UserBlockService;->isInBlockedList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f11a3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/home/profile/UserBlockHintRecyclerAdapter;->userBlockService:Lcom/narvii/userblock/UserBlockService;

    iget-object v2, p0, Lcom/narvii/master/home/profile/UserBlockHintRecyclerAdapter;->uid:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/narvii/userblock/UserBlockService;->isBlocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f11a2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 30
    :cond_2
    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b06af

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 22
    new-instance p2, Lcom/narvii/master/home/profile/UserBlockHintRecyclerAdapter$BlockViewHolder;

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/narvii/master/home/profile/UserBlockHintRecyclerAdapter$BlockViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
