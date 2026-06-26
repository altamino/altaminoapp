.class final Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter$onBindViewHolder$2;
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
.field final synthetic this$0:Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter$onBindViewHolder$2;->this$0:Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 94
    const-class p1, Lcom/narvii/members/PeopleListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Source"

    const-string v1, "Home Featured Members"

    .line 95
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    iget-object v0, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter$onBindViewHolder$2;->this$0:Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;

    iget-object v0, v0, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/amino/FeaturedUserRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
