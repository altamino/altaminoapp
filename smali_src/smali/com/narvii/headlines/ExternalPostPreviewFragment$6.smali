.class Lcom/narvii/headlines/ExternalPostPreviewFragment$6;
.super Lcom/narvii/share/BaseShareButtonRepost;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$6;->this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$6;->val$source:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$6;->val$feed:Lcom/narvii/model/Feed;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/narvii/share/BaseShareButtonRepost;-><init>(Lcom/narvii/app/NVContext;)V

    .line 10
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
    iget-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$6;->this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;

    .line 5
    .line 6
    .line 7
    invoke-direct {p1, v0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$6;->val$source:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/narvii/feed/FeedHelper;->source(Ljava/lang/String;)Lcom/narvii/feed/FeedHelper;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$6;->val$feed:Lcom/narvii/model/Feed;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/narvii/feed/FeedHelper;->repost(Lcom/narvii/model/Feed;)V

    .line 19
    return-void
.end method
