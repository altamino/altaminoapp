.class Lcom/narvii/post/draft/DraftListFragment$1;
.super Ljava/lang/Object;
.source "DraftListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/post/draft/DraftListFragment;->deleteAllDrafts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/post/draft/DraftListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/post/draft/DraftListFragment;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/narvii/post/draft/DraftListFragment$1;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 493
    iget-object p1, p0, Lcom/narvii/post/draft/DraftListFragment$1;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    iget-object p1, p1, Lcom/narvii/post/draft/DraftListFragment;->draftType:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 494
    iget-object p1, p0, Lcom/narvii/post/draft/DraftListFragment$1;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    iget-object p1, p1, Lcom/narvii/post/draft/DraftListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    invoke-virtual {p1}, Lcom/narvii/post/DraftManager;->clearDrafts()V

    goto :goto_1

    .line 496
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 497
    iget-object p2, p0, Lcom/narvii/post/draft/DraftListFragment$1;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    iget-object p2, p2, Lcom/narvii/post/draft/DraftListFragment;->adapter:Lcom/narvii/post/draft/DraftListFragment$Adapter;

    iget-object p2, p2, Lcom/narvii/post/draft/DraftListFragment$Adapter;->list:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 498
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/post/draft/DraftListFragment$Stub;

    .line 499
    iget-object v0, v0, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 502
    :cond_1
    iget-object p2, p0, Lcom/narvii/post/draft/DraftListFragment$1;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    iget-object p2, p2, Lcom/narvii/post/draft/DraftListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    invoke-virtual {p2, p1}, Lcom/narvii/post/DraftManager;->deleteDrafts(Ljava/util/List;)V

    .line 504
    :goto_1
    iget-object p1, p0, Lcom/narvii/post/draft/DraftListFragment$1;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    iget-object p1, p1, Lcom/narvii/post/draft/DraftListFragment;->adapter:Lcom/narvii/post/draft/DraftListFragment$Adapter;

    invoke-virtual {p1}, Lcom/narvii/post/draft/DraftListFragment$Adapter;->rebuild()V

    .line 505
    iget-object p1, p0, Lcom/narvii/post/draft/DraftListFragment$1;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/post/draft/DraftListFragment;->access$102(Lcom/narvii/post/draft/DraftListFragment;Z)Z

    .line 506
    iget-object p1, p0, Lcom/narvii/post/draft/DraftListFragment$1;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    invoke-static {p1}, Lcom/narvii/post/draft/DraftListFragment;->access$200(Lcom/narvii/post/draft/DraftListFragment;)V

    return-void
.end method
