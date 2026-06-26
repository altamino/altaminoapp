.class Lcom/narvii/feed/BaseFeedListAdapter$10;
.super Lcom/narvii/share/BaseShareButtonRepost;
.source "BaseFeedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/BaseFeedListAdapter;->share(Lcom/narvii/model/Feed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/BaseFeedListAdapter;

.field final synthetic val$feed:Lcom/narvii/model/Feed;


# direct methods
.method constructor <init>(Lcom/narvii/feed/BaseFeedListAdapter;Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;)V
    .locals 0

    .line 1032
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter$10;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    iput-object p3, p0, Lcom/narvii/feed/BaseFeedListAdapter$10;->val$feed:Lcom/narvii/model/Feed;

    invoke-direct {p0, p2}, Lcom/narvii/share/BaseShareButtonRepost;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/narvii/share/SharePayload;)V
    .locals 1

    .line 1035
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter$10;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    invoke-static {v0}, Lcom/narvii/feed/BaseFeedListAdapter;->access$600(Lcom/narvii/feed/BaseFeedListAdapter;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v0, "Feed"

    invoke-virtual {p1, v0}, Lcom/narvii/feed/FeedHelper;->source(Ljava/lang/String;)Lcom/narvii/feed/FeedHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter$10;->val$feed:Lcom/narvii/model/Feed;

    invoke-virtual {p1, v0}, Lcom/narvii/feed/FeedHelper;->repost(Lcom/narvii/model/Feed;)V

    return-void
.end method
