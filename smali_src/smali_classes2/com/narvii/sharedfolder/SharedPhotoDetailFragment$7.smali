.class Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$7;
.super Lcom/narvii/story/detail/VoteHelper$OnVoteListenerAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$7;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$7;->val$fv:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/story/detail/VoteHelper$OnVoteListenerAdapter;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onVoteEnd(Z)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$7;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->u(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;Z)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$7;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->z(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;)V

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$7;->val$fv:I

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$7;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 20
    .line 21
    iget-object v0, p1, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->voteIconView:Landroid/view/View;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    new-instance v0, Lcom/narvii/feed/vote/VoteAnimationHelper;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, p1}, Lcom/narvii/feed/vote/VoteAnimationHelper;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$7;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->voteIconView:Landroid/view/View;

    .line 37
    .line 38
    iget v1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$7;->val$fv:I

    .line 39
    const/4 v2, 0x0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/feed/vote/VoteAnimationHelper;->startAnimation(Landroid/view/View;ILcom/narvii/util/Callback;)V

    .line 43
    :cond_0
    return-void
.end method
