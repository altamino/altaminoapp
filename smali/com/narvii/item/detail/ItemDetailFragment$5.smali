.class Lcom/narvii/item/detail/ItemDetailFragment$5;
.super Ljava/lang/Object;
.source "ItemDetailFragment.java"

# interfaces
.implements Lcom/narvii/widget/KeywordsView$OnSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/item/detail/ItemDetailFragment;->updateHeader()V
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

    .line 499
    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$5;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(II)V
    .locals 0

    .line 502
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$5;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-static {p1, p2}, Lcom/narvii/item/detail/ItemDetailFragment;->access$002(Lcom/narvii/item/detail/ItemDetailFragment;I)I

    .line 503
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$5;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-static {p1}, Lcom/narvii/item/detail/ItemDetailFragment;->access$100(Lcom/narvii/item/detail/ItemDetailFragment;)V

    return-void
.end method
