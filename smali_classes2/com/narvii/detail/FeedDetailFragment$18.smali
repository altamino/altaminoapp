.class Lcom/narvii/detail/FeedDetailFragment$18;
.super Lcom/narvii/share/BaseShareButtonRepost;
.source "FeedDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/detail/FeedDetailFragment;->shareFeed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/detail/FeedDetailFragment;

.field final synthetic val$feed:Lcom/narvii/model/Feed;

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/detail/FeedDetailFragment;Lcom/narvii/app/NVContext;Ljava/lang/String;Lcom/narvii/model/Feed;)V
    .locals 0

    .line 1218
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$18;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    iput-object p3, p0, Lcom/narvii/detail/FeedDetailFragment$18;->val$source:Ljava/lang/String;

    iput-object p4, p0, Lcom/narvii/detail/FeedDetailFragment$18;->val$feed:Lcom/narvii/model/Feed;

    invoke-direct {p0, p2}, Lcom/narvii/share/BaseShareButtonRepost;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/narvii/share/SharePayload;)V
    .locals 1

    .line 1221
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$18;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-direct {p1, v0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$18;->val$source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/narvii/feed/FeedHelper;->source(Ljava/lang/String;)Lcom/narvii/feed/FeedHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$18;->val$feed:Lcom/narvii/model/Feed;

    invoke-virtual {p1, v0}, Lcom/narvii/feed/FeedHelper;->repost(Lcom/narvii/model/Feed;)V

    return-void
.end method
