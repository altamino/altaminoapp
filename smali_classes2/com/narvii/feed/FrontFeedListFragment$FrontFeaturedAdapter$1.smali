.class Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter$1;
.super Lcom/narvii/feed/PinLayoutImpressionCollector;
.source "FrontFeedListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;Ljava/lang/Class;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter$1;->this$1:Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;

    invoke-direct {p0, p2}, Lcom/narvii/feed/PinLayoutImpressionCollector;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/logging/LogEvent$Builder;",
            "Lcom/narvii/logging/ObjectInfo<",
            "Lcom/narvii/model/Feed;",
            ">;)V"
        }
    .end annotation

    .line 360
    invoke-super {p0, p1, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V

    const-string p2, "PinnedPosts"

    .line 361
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    return-void
.end method
