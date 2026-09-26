.class Lcom/narvii/livelayer/detailview/LiveLayerDetailCommentFragment$CommentListAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/detailview/LiveLayerDetailCommentFragment$CommentListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/livelayer/detailview/LiveLayerDetailCommentFragment$CommentListAdapter;

.field final synthetic val$commentAnimator:Lcom/narvii/widget/CommentLiveIndicator;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailCommentFragment$CommentListAdapter;Lcom/narvii/widget/CommentLiveIndicator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailCommentFragment$CommentListAdapter$1;->this$1:Lcom/narvii/livelayer/detailview/LiveLayerDetailCommentFragment$CommentListAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailCommentFragment$CommentListAdapter$1;->val$commentAnimator:Lcom/narvii/widget/CommentLiveIndicator;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailCommentFragment$CommentListAdapter$1;->val$commentAnimator:Lcom/narvii/widget/CommentLiveIndicator;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/widget/CommentLiveIndicator;->startAnimation()V

    .line 6
    return-void
.end method
