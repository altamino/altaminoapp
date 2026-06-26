.class Lcom/narvii/widget/recycleview/ItemClickSupport$3;
.super Ljava/lang/Object;
.source "ItemClickSupport.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/recycleview/ItemClickSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/recycleview/ItemClickSupport;


# direct methods
.method constructor <init>(Lcom/narvii/widget/recycleview/ItemClickSupport;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/narvii/widget/recycleview/ItemClickSupport$3;->this$0:Lcom/narvii/widget/recycleview/ItemClickSupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/narvii/widget/recycleview/ItemClickSupport$3;->this$0:Lcom/narvii/widget/recycleview/ItemClickSupport;

    invoke-static {v0}, Lcom/narvii/widget/recycleview/ItemClickSupport;->access$000(Lcom/narvii/widget/recycleview/ItemClickSupport;)Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/narvii/widget/recycleview/ItemClickSupport$3;->this$0:Lcom/narvii/widget/recycleview/ItemClickSupport;

    invoke-static {v0}, Lcom/narvii/widget/recycleview/ItemClickSupport;->access$300(Lcom/narvii/widget/recycleview/ItemClickSupport;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/recycleview/ItemClickSupport$3;->this$0:Lcom/narvii/widget/recycleview/ItemClickSupport;

    invoke-static {v0}, Lcom/narvii/widget/recycleview/ItemClickSupport;->access$200(Lcom/narvii/widget/recycleview/ItemClickSupport;)Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/narvii/widget/recycleview/ItemClickSupport$3;->this$0:Lcom/narvii/widget/recycleview/ItemClickSupport;

    invoke-static {v0}, Lcom/narvii/widget/recycleview/ItemClickSupport;->access$400(Lcom/narvii/widget/recycleview/ItemClickSupport;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
