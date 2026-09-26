.class Lcom/narvii/item/detail/ItemDetailFragment$11;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$11;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$11;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    iput-boolean v1, p1, Lcom/narvii/item/detail/ItemDetailFragment;->fromMyCatalog:Z

    .line 10
    .line 11
    iput-boolean v1, v0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->inMyFavorites:Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 15
    :cond_0
    return-void
.end method
