.class Lcom/narvii/item/detail/ItemDetailFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/item/detail/ItemDetailFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/item/detail/ItemDetailFragment;

.field final synthetic val$mi:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/narvii/item/detail/ItemDetailFragment;Landroid/view/MenuItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$1;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/item/detail/ItemDetailFragment$1;->val$mi:Landroid/view/MenuItem;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$1;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$1;->val$mi:Landroid/view/MenuItem;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/narvii/item/detail/ItemDetailFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 8
    return-void
.end method
