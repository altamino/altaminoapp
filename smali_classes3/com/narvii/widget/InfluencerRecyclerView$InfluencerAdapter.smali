.class public final Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "InfluencerRecyclerView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/InfluencerRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InfluencerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/InfluencerRecyclerView;


# direct methods
.method public constructor <init>(Lcom/narvii/widget/InfluencerRecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/widget/InfluencerRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/widget/InfluencerRecyclerView;

    invoke-virtual {v0}, Lcom/narvii/widget/InfluencerRecyclerView;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    instance-of v0, p1, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/widget/InfluencerRecyclerView;

    invoke-virtual {v0}, Lcom/narvii/widget/InfluencerRecyclerView;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/User;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 50
    :goto_0
    move-object v0, p1

    check-cast v0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;

    invoke-virtual {v0}, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;->getUserAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 51
    invoke-virtual {v0}, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;->getNicknameView()Lcom/narvii/widget/NicknameView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 52
    iget-object v1, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/widget/InfluencerRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p2, :cond_1

    iget-object v2, p2, Lcom/narvii/model/User;->influencerInfo:Lcom/narvii/model/InfluencerInfo;

    if-eqz v2, :cond_1

    iget v2, v2, Lcom/narvii/model/InfluencerInfo;->fansCount:I

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const v3, 0x7f0f0cd0

    const v4, 0x7f0f0bfb

    invoke-static {v1, v2, v3, v4}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-virtual {v0}, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;->getFanClubMemberCount()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter$onBindViewHolder$1;

    invoke-direct {v0, p0, p2}, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter$onBindViewHolder$1;-><init>(Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;Lcom/narvii/model/User;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object p2, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/widget/InfluencerRecyclerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b03ab

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "cell"

    .line 67
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/widget/InfluencerRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f19999a    # 0.6f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 68
    new-instance p2, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;

    iget-object v0, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/widget/InfluencerRecyclerView;

    invoke-direct {p2, v0, p1}, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;-><init>(Lcom/narvii/widget/InfluencerRecyclerView;Landroid/view/View;)V

    return-object p2
.end method
