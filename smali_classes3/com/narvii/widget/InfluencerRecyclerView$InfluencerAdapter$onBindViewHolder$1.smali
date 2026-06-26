.class final Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter$onBindViewHolder$1;
.super Ljava/lang/Object;
.source "InfluencerRecyclerView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $user:Lcom/narvii/model/User;

.field final synthetic this$0:Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;Lcom/narvii/model/User;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter$onBindViewHolder$1;->this$0:Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;

    iput-object p2, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter$onBindViewHolder$1;->$user:Lcom/narvii/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 56
    iget-object p1, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter$onBindViewHolder$1;->this$0:Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;

    iget-object p1, p1, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/widget/InfluencerRecyclerView;

    invoke-virtual {p1}, Lcom/narvii/widget/InfluencerRecyclerView;->getOnUserClickListener()Lcom/narvii/widget/InfluencerRecyclerView$OnUserClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter$onBindViewHolder$1;->$user:Lcom/narvii/model/User;

    invoke-interface {p1, v0}, Lcom/narvii/widget/InfluencerRecyclerView$OnUserClickListener;->onUserClicked(Lcom/narvii/model/User;)V

    :cond_0
    return-void
.end method
