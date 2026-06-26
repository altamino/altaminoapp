.class Lcom/narvii/feed/FrontFeedListFragment$LayoutAdapter;
.super Lcom/narvii/feed/FeatureLayoutAdapter;
.source "FrontFeedListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/FrontFeedListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LayoutAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/FrontFeedListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/feed/FrontFeedListFragment;Lcom/narvii/feed/FeaturedFeedAdapter;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$LayoutAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 481
    invoke-direct {p0, p1, p2}, Lcom/narvii/feed/FeatureLayoutAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/feed/FeaturedFeedAdapter;)V

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 0

    return-void
.end method
