.class Lcom/narvii/item/detail/ItemDetailFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$6;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$6;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 3
    .line 4
    iget-boolean v1, v0, Lcom/narvii/detail/DetailFragment;->preview:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/detail/DetailFragment;->showPreviewToast(Landroid/content/Context;)V

    .line 14
    return-void

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 18
    move-result v0

    .line 19
    .line 20
    .line 21
    const v1, 0x7f0a0ffb

    .line 22
    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$6;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 26
    .line 27
    .line 28
    const v1, 0x7f0a1002

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    iput-object p1, v0, Lcom/narvii/item/detail/ItemDetailFragment;->voteIconView:Landroid/view/View;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$6;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 37
    .line 38
    new-instance v0, Landroid/content/Intent;

    .line 39
    .line 40
    const-string v1, "vote"

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    .line 47
    :cond_1
    return-void
.end method
