.class Lcom/narvii/widget/recycleview/ItemClickSupport$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/recycleview/ItemClickSupport$3;->this$0:Lcom/narvii/widget/recycleview/ItemClickSupport;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/recycleview/ItemClickSupport$3;->this$0:Lcom/narvii/widget/recycleview/ItemClickSupport;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/widget/recycleview/ItemClickSupport;->b(Lcom/narvii/widget/recycleview/ItemClickSupport;)Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemClickListener;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/widget/recycleview/ItemClickSupport$3;->this$0:Lcom/narvii/widget/recycleview/ItemClickSupport;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/widget/recycleview/ItemClickSupport;->a(Lcom/narvii/widget/recycleview/ItemClickSupport;)Landroid/view/View$OnClickListener;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/recycleview/ItemClickSupport$3;->this$0:Lcom/narvii/widget/recycleview/ItemClickSupport;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/narvii/widget/recycleview/ItemClickSupport;->c(Lcom/narvii/widget/recycleview/ItemClickSupport;)Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemLongClickListener;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/widget/recycleview/ItemClickSupport$3;->this$0:Lcom/narvii/widget/recycleview/ItemClickSupport;

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/narvii/widget/recycleview/ItemClickSupport;->d(Lcom/narvii/widget/recycleview/ItemClickSupport;)Landroid/view/View$OnLongClickListener;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 35
    :cond_1
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
