.class Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$6;
.super Ljava/lang/Object;
.source "HeadlineSubTypeListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;
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

    .line 516
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$6;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 519
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$6;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$1600(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$6;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$1600(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
