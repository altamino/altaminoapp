.class Lcom/narvii/livelayer/detailview/LiveLayerDetailCommentFragment$CommentListAdapter$1;
.super Ljava/lang/Object;
.source "LiveLayerDetailCommentFragment.java"

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

    .line 101
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailCommentFragment$CommentListAdapter$1;->this$1:Lcom/narvii/livelayer/detailview/LiveLayerDetailCommentFragment$CommentListAdapter;

    iput-object p2, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailCommentFragment$CommentListAdapter$1;->val$commentAnimator:Lcom/narvii/widget/CommentLiveIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailCommentFragment$CommentListAdapter$1;->val$commentAnimator:Lcom/narvii/widget/CommentLiveIndicator;

    invoke-virtual {v0}, Lcom/narvii/widget/CommentLiveIndicator;->startAnimation()V

    return-void
.end method
