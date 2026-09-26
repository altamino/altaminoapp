.class Lcom/narvii/detail/FeedDetailFragment$14$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/detail/FeedDetailFragment$14;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/detail/FeedDetailFragment$14;

.field final synthetic val$ops:[I


# direct methods
.method constructor <init>(Lcom/narvii/detail/FeedDetailFragment$14;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$14$1;->this$1:Lcom/narvii/detail/FeedDetailFragment$14;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/detail/FeedDetailFragment$14$1;->val$ops:[I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$14$1;->val$ops:[I

    .line 3
    .line 4
    aget p1, p1, p2

    .line 5
    .line 6
    .line 7
    const p2, 0x7f1201bb

    .line 8
    .line 9
    if-eq p1, p2, :cond_2

    .line 10
    .line 11
    .line 12
    const p2, 0x7f120781

    .line 13
    .line 14
    if-eq p1, p2, :cond_1

    .line 15
    .line 16
    .line 17
    const p2, 0x7f1210ad

    .line 18
    .line 19
    if-eq p1, p2, :cond_0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$14$1;->this$1:Lcom/narvii/detail/FeedDetailFragment$14;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/narvii/detail/FeedDetailFragment$14;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->bottomActionShare()V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_1
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    .line 31
    .line 32
    iget-object p2, p0, Lcom/narvii/detail/FeedDetailFragment$14$1;->this$1:Lcom/narvii/detail/FeedDetailFragment$14;

    .line 33
    .line 34
    iget-object p2, p2, Lcom/narvii/detail/FeedDetailFragment$14;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, p2}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 38
    .line 39
    iget-object p2, p0, Lcom/narvii/detail/FeedDetailFragment$14$1;->this$1:Lcom/narvii/detail/FeedDetailFragment$14;

    .line 40
    .line 41
    iget-object p2, p2, Lcom/narvii/detail/FeedDetailFragment$14;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 45
    move-result-object p2

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Lcom/narvii/feed/FeedHelper;->flagForReview(Lcom/narvii/model/Feed;)V

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_2
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$14$1;->this$1:Lcom/narvii/detail/FeedDetailFragment$14;

    .line 52
    .line 53
    iget-object p1, p1, Lcom/narvii/detail/FeedDetailFragment$14;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->I(Lcom/narvii/detail/FeedDetailFragment;)V

    .line 57
    :goto_0
    return-void
.end method
