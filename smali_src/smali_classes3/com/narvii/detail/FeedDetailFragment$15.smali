.class Lcom/narvii/detail/FeedDetailFragment$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/detail/FeedDetailFragment;->handleBookMark()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/detail/FeedDetailFragment;

.field final synthetic val$ndcId:I


# direct methods
.method constructor <init>(Lcom/narvii/detail/FeedDetailFragment;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$15;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/detail/FeedDetailFragment$15;->val$ndcId:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$15;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    instance-of p1, p1, Lcom/narvii/semicontext/SemiActivity;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$15;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Lcom/narvii/semicontext/SemiActivity;

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/narvii/semicontext/SemiActivity;->showCommunityDetailPage(Z)V

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    const-class p1, Lcom/narvii/master/CommunityDetailFragment;

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    const-string v0, "id"

    .line 32
    .line 33
    iget v1, p0, Lcom/narvii/detail/FeedDetailFragment$15;->val$ndcId:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$15;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 39
    .line 40
    .line 41
    invoke-static {v0, p1}, Lcom/narvii/detail/FeedDetailFragment$15;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 42
    :goto_0
    return-void
.end method
