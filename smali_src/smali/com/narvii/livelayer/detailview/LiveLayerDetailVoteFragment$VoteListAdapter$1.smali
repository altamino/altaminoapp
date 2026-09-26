.class Lcom/narvii/livelayer/detailview/LiveLayerDetailVoteFragment$VoteListAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailVoteFragment$VoteListAdapter$1;->this$1:Lcom/narvii/livelayer/detailview/LiveLayerDetailVoteFragment$VoteListAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailVoteFragment$VoteListAdapter$1;->val$finalVoteView:Lcom/airbnb/lottie/LottieAnimationView;

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
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailVoteFragment$VoteListAdapter$1;->val$finalVoteView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->k()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailVoteFragment$VoteListAdapter$1;->val$finalVoteView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->m()V

    .line 14
    :cond_0
    return-void
.end method
