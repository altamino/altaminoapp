.class final Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter$onBindViewHolder$1;
.super Ljava/lang/Object;
.source "FeaturedUserRecyclerView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $user:Lcom/narvii/model/User;

.field final synthetic this$0:Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;Lcom/narvii/model/User;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter$onBindViewHolder$1;->this$0:Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;

    iput-object p2, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter$onBindViewHolder$1;->$user:Lcom/narvii/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 80
    iget-object p1, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter$onBindViewHolder$1;->this$0:Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;

    iget-object p1, p1, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/amino/FeaturedUserRecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter$onBindViewHolder$1;->$user:Lcom/narvii/model/User;

    invoke-static {p1, v0}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const-string v1, "send_notification"

    .line 81
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    if-eqz p1, :cond_1

    .line 83
    iget-object v0, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter$onBindViewHolder$1;->this$0:Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;

    iget-object v0, v0, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/amino/FeaturedUserRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
