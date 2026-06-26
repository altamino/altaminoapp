.class Lcom/narvii/headlines/ExternalPostPreviewFragment$6;
.super Lcom/narvii/share/BaseShareButtonRepost;
.source "ExternalPostPreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/headlines/ExternalPostPreviewFragment;->shareFeed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;

.field final synthetic val$feed:Lcom/narvii/model/Feed;

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/headlines/ExternalPostPreviewFragment;Lcom/narvii/app/NVContext;Ljava/lang/String;Lcom/narvii/model/Feed;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$6;->this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;

    iput-object p3, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$6;->val$source:Ljava/lang/String;

    iput-object p4, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$6;->val$feed:Lcom/narvii/model/Feed;

    invoke-direct {p0, p2}, Lcom/narvii/share/BaseShareButtonRepost;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/narvii/share/SharePayload;)V
    .locals 1

    .line 368
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    iget-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$6;->this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;

    invoke-direct {p1, v0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$6;->val$source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/narvii/feed/FeedHelper;->source(Ljava/lang/String;)Lcom/narvii/feed/FeedHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$6;->val$feed:Lcom/narvii/model/Feed;

    invoke-virtual {p1, v0}, Lcom/narvii/feed/FeedHelper;->repost(Lcom/narvii/model/Feed;)V

    return-void
.end method
