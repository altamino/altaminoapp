.class Lcom/narvii/feed/BaseFeedListAdapter$7;
.super Ljava/lang/Object;
.source "BaseFeedListAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/BaseFeedListAdapter;->vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/BaseFeedListAdapter;

.field final synthetic val$feed:Lcom/narvii/model/Feed;


# direct methods
.method constructor <init>(Lcom/narvii/feed/BaseFeedListAdapter;Lcom/narvii/model/Feed;)V
    .locals 0

    .line 884
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter$7;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    iput-object p2, p0, Lcom/narvii/feed/BaseFeedListAdapter$7;->val$feed:Lcom/narvii/model/Feed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 888
    iget-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter$7;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    iget-object p2, p0, Lcom/narvii/feed/BaseFeedListAdapter$7;->val$feed:Lcom/narvii/model/Feed;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 890
    const-class p1, Lcom/narvii/feed/vote/VoterListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 891
    iget-object p2, p0, Lcom/narvii/feed/BaseFeedListAdapter$7;->val$feed:Lcom/narvii/model/Feed;

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "nvObject"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 892
    iget-object p2, p0, Lcom/narvii/feed/BaseFeedListAdapter$7;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    invoke-virtual {p2, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method
