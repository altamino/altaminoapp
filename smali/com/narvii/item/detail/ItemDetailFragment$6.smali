.class Lcom/narvii/item/detail/ItemDetailFragment$6;
.super Ljava/lang/Object;
.source "ItemDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/item/detail/ItemDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/item/detail/ItemDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/item/detail/ItemDetailFragment;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$6;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 512
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$6;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    iget-boolean v1, v0, Lcom/narvii/detail/DetailFragment;->preview:Z

    if-eqz v1, :cond_0

    .line 513
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/detail/DetailFragment;->showPreviewToast(Landroid/content/Context;)V

    return-void

    .line 516
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090cd5

    if-ne v0, v1, :cond_1

    .line 517
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$6;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    const v1, 0x7f090cdc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/item/detail/ItemDetailFragment;->voteIconView:Landroid/view/View;

    .line 518
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$6;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "vote"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
