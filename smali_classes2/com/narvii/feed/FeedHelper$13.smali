.class Lcom/narvii/feed/FeedHelper$13;
.super Lcom/narvii/story/detail/VoteHelper$OnVoteListenerAdapter;
.source "FeedHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/FeedHelper;->voteFeed(Lcom/narvii/model/Feed;ILcom/narvii/util/Callback;Lcom/narvii/util/Callback;Lcom/narvii/util/logging/LoggingSource;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/FeedHelper;

.field final synthetic val$callback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/feed/FeedHelper;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 877
    iput-object p1, p0, Lcom/narvii/feed/FeedHelper$13;->this$0:Lcom/narvii/feed/FeedHelper;

    iput-object p2, p0, Lcom/narvii/feed/FeedHelper$13;->val$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Lcom/narvii/story/detail/VoteHelper$OnVoteListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoteEnd(Z)V
    .locals 1

    .line 880
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper$13;->val$callback:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_0

    .line 881
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
