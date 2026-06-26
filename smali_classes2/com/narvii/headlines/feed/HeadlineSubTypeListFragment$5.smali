.class Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$5;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "HeadlineSubTypeListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->showNewHeadlineHint(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$5;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 2

    .line 503
    invoke-super {p0, p1}, Lcom/facebook/rebound/SimpleSpringListener;->onSpringUpdate(Lcom/facebook/rebound/Spring;)V

    .line 504
    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    double-to-float p1, v0

    .line 505
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$5;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$1600(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 506
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$5;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$1600(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setScaleY(F)V

    return-void
.end method
