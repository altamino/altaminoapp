.class Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$5;
.super Lcom/facebook/rebound/d;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$5;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/facebook/rebound/d;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onSpringUpdate(Lcom/facebook/rebound/e;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/facebook/rebound/d;->onSpringUpdate(Lcom/facebook/rebound/e;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/facebook/rebound/e;->c()D

    .line 7
    move-result-wide v0

    .line 8
    double-to-float p1, v0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$5;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->A(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Landroid/widget/TextView;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$5;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->A(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Landroid/widget/TextView;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 27
    return-void
.end method
