.class Lcom/narvii/item/detail/ItemDetailFragment$11;
.super Ljava/lang/Object;
.source "ItemDetailFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


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

    .line 1732
    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$11;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2

    .line 1735
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$11;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    iget-object v0, p1, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1736
    iput-boolean v1, p1, Lcom/narvii/item/detail/ItemDetailFragment;->fromMyCatalog:Z

    .line 1737
    iput-boolean v1, v0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->inMyFavorites:Z

    .line 1738
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method
