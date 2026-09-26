.class Lcom/narvii/feed/FeedListItem$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/image/ImageLoadTrackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/FeedListItem;->setUpSnippetImageLoadTracker(Lcom/narvii/image/ImageLoadTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/FeedListItem;


# direct methods
.method constructor <init>(Lcom/narvii/feed/FeedListItem;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/FeedListItem$1;->this$0:Lcom/narvii/feed/FeedListItem;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onLoadFinished()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem$1;->this$0:Lcom/narvii/feed/FeedListItem;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/feed/FeedListItem;->loadFinishListener:Lcom/narvii/link/LoadFinishListener;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Lcom/narvii/link/LoadFinishListener;->onLoadFinished()V

    .line 10
    :cond_0
    return-void
.end method
