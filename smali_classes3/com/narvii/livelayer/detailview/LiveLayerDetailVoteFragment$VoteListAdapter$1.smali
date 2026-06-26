.class Lcom/narvii/livelayer/detailview/LiveLayerDetailVoteFragment$VoteListAdapter$1;
.super Ljava/lang/Object;
.source "LiveLayerDetailVoteFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/detailview/LiveLayerDetailVoteFragment$VoteListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/livelayer/detailview/LiveLayerDetailVoteFragment$VoteListAdapter;

.field final synthetic val$finalVoteView:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailVoteFragment$VoteListAdapter;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailVoteFragment$VoteListAdapter$1;->this$1:Lcom/narvii/livelayer/detailview/LiveLayerDetailVoteFragment$VoteListAdapter;

    iput-object p2, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailVoteFragment$VoteListAdapter$1;->val$finalVoteView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailVoteFragment$VoteListAdapter$1;->val$finalVoteView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailVoteFragment$VoteListAdapter$1;->val$finalVoteView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_0
    return-void
.end method
