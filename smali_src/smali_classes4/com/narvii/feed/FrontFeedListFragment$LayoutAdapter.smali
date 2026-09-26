.class Lcom/narvii/feed/FrontFeedListFragment$LayoutAdapter;
.super Lcom/narvii/feed/FeatureLayoutAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/FrontFeedListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LayoutAdapter"
.end annotation


# instance fields
.field oaa:Lcom/narvii/wallet/optinads/OptinAdsAdapter;

.field final synthetic this$0:Lcom/narvii/feed/FrontFeedListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/feed/FrontFeedListFragment;Lcom/narvii/feed/FeaturedFeedAdapter;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$LayoutAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/narvii/feed/FeatureLayoutAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/feed/FeaturedFeedAdapter;)V

    .line 6
    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment$LayoutAdapter;->oaa:Lcom/narvii/wallet/optinads/OptinAdsAdapter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/feed/FeatureLayoutAdapter;->getPinCount()I

    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x3

    .line 13
    add-int/2addr v1, v2

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/narvii/wallet/optinads/OptinAdsAdapter;->set(II)V

    .line 17
    :cond_0
    return-void
.end method
