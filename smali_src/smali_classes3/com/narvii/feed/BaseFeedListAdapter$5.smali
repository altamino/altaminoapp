.class Lcom/narvii/feed/BaseFeedListAdapter$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/BaseFeedListAdapter;->longClickToVote(Lcom/narvii/model/Feed;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/BaseFeedListAdapter;

.field final synthetic val$feed:Lcom/narvii/model/Feed;

.field final synthetic val$vi:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/feed/BaseFeedListAdapter;Landroid/view/View;Lcom/narvii/model/Feed;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter$5;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/feed/BaseFeedListAdapter$5;->val$vi:Landroid/view/View;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/feed/BaseFeedListAdapter$5;->val$feed:Lcom/narvii/model/Feed;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter$5;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    iget-object v1, p0, Lcom/narvii/feed/BaseFeedListAdapter$5;->val$vi:Landroid/view/View;

    .line 2
    iput-object v1, v0, Lcom/narvii/feed/BaseFeedListAdapter;->voteIconView:Landroid/view/View;

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "vote"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/narvii/feed/BaseFeedListAdapter$5;->val$feed:Lcom/narvii/model/Feed;

    .line 4
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "feed"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "voteValue"

    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter$5;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    .line 6
    invoke-virtual {p1, v0}, Lcom/narvii/list/NVAdapter;->ensureLogin(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter$5;->call(Ljava/lang/Integer;)V

    return-void
.end method
