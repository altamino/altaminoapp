.class Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$7;
.super Lcom/narvii/story/detail/VoteHelper$OnVoteListenerAdapter;
.source "SharedPhotoDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

.field final synthetic val$fv:I


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;I)V
    .locals 0

    .line 658
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$7;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    iput p2, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$7;->val$fv:I

    invoke-direct {p0}, Lcom/narvii/story/detail/VoteHelper$OnVoteListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoteEnd(Z)V
    .locals 3

    .line 661
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$7;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->access$202(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;Z)Z

    .line 662
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$7;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    invoke-static {v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->access$300(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;)V

    if-eqz p1, :cond_0

    .line 664
    iget p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$7;->val$fv:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$7;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    iget-object v0, p1, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->voteIconView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 665
    new-instance v0, Lcom/narvii/feed/vote/VoteAnimationHelper;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/narvii/feed/vote/VoteAnimationHelper;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$7;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->voteIconView:Landroid/view/View;

    iget v1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$7;->val$fv:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/feed/vote/VoteAnimationHelper;->startAnimation(Landroid/view/View;ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method
