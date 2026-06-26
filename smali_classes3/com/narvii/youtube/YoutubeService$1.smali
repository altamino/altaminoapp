.class Lcom/narvii/youtube/YoutubeService$1;
.super Ljava/lang/Object;
.source "YoutubeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/youtube/YoutubeService;->preload(Ljava/util/List;Landroid/support/v4/util/ArrayMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/youtube/YoutubeService;

.field final synthetic val$stubs:Landroid/support/v4/util/ArrayMap;

.field final synthetic val$videoIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/narvii/youtube/YoutubeService;Ljava/util/List;Landroid/support/v4/util/ArrayMap;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/narvii/youtube/YoutubeService$1;->this$0:Lcom/narvii/youtube/YoutubeService;

    iput-object p2, p0, Lcom/narvii/youtube/YoutubeService$1;->val$videoIds:Ljava/util/List;

    iput-object p3, p0, Lcom/narvii/youtube/YoutubeService$1;->val$stubs:Landroid/support/v4/util/ArrayMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 79
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$1;->val$videoIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 81
    iget-object v2, p0, Lcom/narvii/youtube/YoutubeService$1;->val$videoIds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 82
    iget-object v3, p0, Lcom/narvii/youtube/YoutubeService$1;->this$0:Lcom/narvii/youtube/YoutubeService;

    iget v3, v3, Lcom/narvii/youtube/YoutubeService;->preloadIndex:I

    sub-int v4, v0, v1

    add-int/2addr v3, v4

    .line 83
    iget-object v4, p0, Lcom/narvii/youtube/YoutubeService$1;->val$stubs:Landroid/support/v4/util/ArrayMap;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move-object v4, v5

    goto :goto_1

    :cond_0
    invoke-virtual {v4, v2}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/youtube/YoutubeLoggingStub;

    .line 84
    :goto_1
    iget-object v6, p0, Lcom/narvii/youtube/YoutubeService$1;->this$0:Lcom/narvii/youtube/YoutubeService;

    invoke-virtual {v6, v2, v4, v5, v3}, Lcom/narvii/youtube/YoutubeService;->exec(Ljava/lang/String;Lcom/narvii/youtube/YoutubeLoggingStub;Lcom/narvii/youtube/YoutubeVideoCallback;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/narvii/youtube/YoutubeService$1;->this$0:Lcom/narvii/youtube/YoutubeService;

    iget v2, v1, Lcom/narvii/youtube/YoutubeService;->preloadIndex:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/narvii/youtube/YoutubeService;->preloadIndex:I

    return-void
.end method
