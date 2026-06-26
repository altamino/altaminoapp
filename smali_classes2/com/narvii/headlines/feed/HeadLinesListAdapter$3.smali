.class Lcom/narvii/headlines/feed/HeadLinesListAdapter$3;
.super Ljava/lang/Object;
.source "HeadLinesListAdapter.java"

# interfaces
.implements Lcom/narvii/poll/PollOptionListLayout$PollPreviewBlockListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/headlines/feed/HeadLinesListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/headlines/feed/HeadLinesListAdapter;

.field final synthetic val$feed:Lcom/narvii/model/Feed;


# direct methods
.method constructor <init>(Lcom/narvii/headlines/feed/HeadLinesListAdapter;Lcom/narvii/model/Feed;)V
    .locals 0

    .line 745
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter$3;->this$0:Lcom/narvii/headlines/feed/HeadLinesListAdapter;

    iput-object p2, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter$3;->val$feed:Lcom/narvii/model/Feed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewBlocked()V
    .locals 3

    .line 748
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter$3;->this$0:Lcom/narvii/headlines/feed/HeadLinesListAdapter;

    iget-object v1, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter$3;->val$feed:Lcom/narvii/model/Feed;

    iget v2, v1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->showJoinCommunityDialog(ILjava/lang/String;)V

    return-void
.end method
