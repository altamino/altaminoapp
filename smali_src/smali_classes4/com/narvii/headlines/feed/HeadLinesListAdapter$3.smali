.class Lcom/narvii/headlines/feed/HeadLinesListAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter$3;->this$0:Lcom/narvii/headlines/feed/HeadLinesListAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter$3;->val$feed:Lcom/narvii/model/Feed;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onPreviewBlocked()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter$3;->this$0:Lcom/narvii/headlines/feed/HeadLinesListAdapter;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter$3;->val$feed:Lcom/narvii/model/Feed;

    .line 5
    .line 6
    iget v2, v1, Lcom/narvii/model/Feed;->ndcId:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->showJoinCommunityDialog(ILjava/lang/String;)V

    .line 14
    return-void
.end method
