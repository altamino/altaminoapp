.class public Lcom/narvii/feed/HeadlineFeedItem;
.super Lcom/narvii/feed/FeedListItem;
.source "HeadlineFeedItem.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeedListItem;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/narvii/feed/FeedListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public setFeed(Lcom/narvii/model/Feed;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/narvii/feed/FeedListItem;->setFeed(Lcom/narvii/model/Feed;)V

    return-void
.end method

.method public setFeed(Lcom/narvii/model/Feed;Z)V
    .locals 0

    .line 37
    invoke-super {p0, p1, p2}, Lcom/narvii/feed/FeedListItem;->setFeed(Lcom/narvii/model/Feed;Z)V

    return-void
.end method
