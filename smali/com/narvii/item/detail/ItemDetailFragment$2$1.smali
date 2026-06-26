.class Lcom/narvii/item/detail/ItemDetailFragment$2$1;
.super Lcom/narvii/feed/FeedHelper;
.source "ItemDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/item/detail/ItemDetailFragment$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/item/detail/ItemDetailFragment$2;


# direct methods
.method constructor <init>(Lcom/narvii/item/detail/ItemDetailFragment$2;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$2$1;->this$1:Lcom/narvii/item/detail/ItemDetailFragment$2;

    invoke-direct {p0, p2}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public startActivity(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "disableOpenCallback"

    const/4 v1, 0x1

    .line 362
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 363
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$2$1;->this$1:Lcom/narvii/item/detail/ItemDetailFragment$2;

    iget-object v0, v0, Lcom/narvii/item/detail/ItemDetailFragment$2;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    const/16 v1, 0x8

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
