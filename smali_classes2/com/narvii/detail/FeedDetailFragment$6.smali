.class Lcom/narvii/detail/FeedDetailFragment$6;
.super Landroid/database/DataSetObserver;
.source "FeedDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/detail/FeedDetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    .line 351
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$6;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$6;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    return-void
.end method
