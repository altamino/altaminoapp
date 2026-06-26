.class final Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder$bind$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BaseViewHolder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;->bind(I)Lkotlin/Lazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic $res:I

.field final synthetic this$0:Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;


# direct methods
.method constructor <init>(Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;I)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder$bind$1;->this$0:Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;

    iput p2, p0, Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder$bind$1;->$res:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder$bind$1;->this$0:Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder$bind$1;->$res:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroid/view/View;

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder$bind$1;->invoke()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
