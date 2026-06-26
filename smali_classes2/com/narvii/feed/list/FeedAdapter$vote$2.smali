.class public final Lcom/narvii/feed/list/FeedAdapter$vote$2;
.super Lcom/narvii/story/detail/VoteHelper$OnVoteListenerAdapter;
.source "FeedAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/list/FeedAdapter;->vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFeedAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeedAdapter.kt\ncom/narvii/feed/list/FeedAdapter$vote$2\n*L\n1#1,247:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $item:Lcom/narvii/model/Feed;

.field final synthetic this$0:Lcom/narvii/feed/list/FeedAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/feed/list/FeedAdapter;Lcom/narvii/model/Feed;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/Feed;",
            ")V"
        }
    .end annotation

    .line 231
    iput-object p1, p0, Lcom/narvii/feed/list/FeedAdapter$vote$2;->this$0:Lcom/narvii/feed/list/FeedAdapter;

    iput-object p2, p0, Lcom/narvii/feed/list/FeedAdapter$vote$2;->$item:Lcom/narvii/model/Feed;

    invoke-direct {p0}, Lcom/narvii/story/detail/VoteHelper$OnVoteListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoteEnd(Z)V
    .locals 1

    .line 233
    iget-object p1, p0, Lcom/narvii/feed/list/FeedAdapter$vote$2;->this$0:Lcom/narvii/feed/list/FeedAdapter;

    invoke-virtual {p1}, Lcom/narvii/feed/list/FeedAdapter;->getProgressList()Ljava/util/HashSet;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/narvii/feed/list/FeedAdapter$vote$2;->$item:Lcom/narvii/model/Feed;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.MutableCollection<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 234
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/narvii/feed/list/FeedAdapter$vote$2;->this$0:Lcom/narvii/feed/list/FeedAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
