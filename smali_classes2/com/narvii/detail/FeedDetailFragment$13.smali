.class Lcom/narvii/detail/FeedDetailFragment$13;
.super Ljava/lang/Object;
.source "FeedDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/detail/FeedDetailFragment;->tryShowTippingTooltip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/detail/FeedDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/detail/FeedDetailFragment;)V
    .locals 0

    .line 671
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$13;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 674
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$13;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->tippingTooltipDone()V

    return-void
.end method
