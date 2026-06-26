.class final Lcom/narvii/feed/list/FeedAdapter$vote$1;
.super Ljava/lang/Object;
.source "FeedAdapter.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/list/FeedAdapter;->vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $item:Lcom/narvii/model/Feed;

.field final synthetic this$0:Lcom/narvii/feed/list/FeedAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/feed/list/FeedAdapter;Lcom/narvii/model/Feed;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/feed/list/FeedAdapter$vote$1;->this$0:Lcom/narvii/feed/list/FeedAdapter;

    iput-object p2, p0, Lcom/narvii/feed/list/FeedAdapter$vote$1;->$item:Lcom/narvii/model/Feed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    const-class p1, Lcom/narvii/feed/vote/VoterListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 219
    iget-object p2, p0, Lcom/narvii/feed/list/FeedAdapter$vote$1;->$item:Lcom/narvii/model/Feed;

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "nvObject"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    iget-object p2, p0, Lcom/narvii/feed/list/FeedAdapter$vote$1;->this$0:Lcom/narvii/feed/list/FeedAdapter;

    invoke-virtual {p2, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 214
    :cond_1
    iget-object p1, p0, Lcom/narvii/feed/list/FeedAdapter$vote$1;->this$0:Lcom/narvii/feed/list/FeedAdapter;

    iget-object p2, p0, Lcom/narvii/feed/list/FeedAdapter$vote$1;->$item:Lcom/narvii/model/Feed;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/narvii/feed/list/FeedAdapter;->vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;)V

    :goto_0
    return-void
.end method
