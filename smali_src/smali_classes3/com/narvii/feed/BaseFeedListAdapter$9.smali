.class Lcom/narvii/feed/BaseFeedListAdapter$9;
.super Lcom/narvii/share/BaseShareButtonRepost;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter$9;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/feed/BaseFeedListAdapter$9;->val$feed:Lcom/narvii/model/Feed;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/narvii/share/BaseShareButtonRepost;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Lcom/narvii/share/SharePayload;)V
    .locals 1

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter$9;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/feed/BaseFeedListAdapter;->access$000(Lcom/narvii/feed/BaseFeedListAdapter;)Lcom/narvii/app/NVContext;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, v0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 12
    .line 13
    const-string v0, "Feed"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/narvii/feed/FeedHelper;->source(Ljava/lang/String;)Lcom/narvii/feed/FeedHelper;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter$9;->val$feed:Lcom/narvii/model/Feed;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/narvii/feed/FeedHelper;->repost(Lcom/narvii/model/Feed;)V

    .line 23
    return-void
.end method
