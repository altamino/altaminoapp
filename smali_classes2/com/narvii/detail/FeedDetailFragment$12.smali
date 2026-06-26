.class Lcom/narvii/detail/FeedDetailFragment$12;
.super Ljava/lang/Object;
.source "FeedDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/detail/FeedDetailFragment;->onFeedObjectResponse()V
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

    .line 628
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$12;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$12;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->tryShowTippingTooltip()V

    return-void
.end method
