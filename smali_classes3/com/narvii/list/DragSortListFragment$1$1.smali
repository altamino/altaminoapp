.class Lcom/narvii/list/DragSortListFragment$1$1;
.super Ljava/lang/Object;
.source "DragSortListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/list/DragSortListFragment$1;->onClickRemove(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/list/DragSortListFragment$1;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/narvii/list/DragSortListFragment$1;I)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/narvii/list/DragSortListFragment$1$1;->this$1:Lcom/narvii/list/DragSortListFragment$1;

    iput p2, p0, Lcom/narvii/list/DragSortListFragment$1$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 78
    iget-object p1, p0, Lcom/narvii/list/DragSortListFragment$1$1;->this$1:Lcom/narvii/list/DragSortListFragment$1;

    iget-object p1, p1, Lcom/narvii/list/DragSortListFragment$1;->this$0:Lcom/narvii/list/DragSortListFragment;

    invoke-static {p1}, Lcom/narvii/list/DragSortListFragment;->access$000(Lcom/narvii/list/DragSortListFragment;)Lcom/mobeta/android/dslv/DragSortListView;

    move-result-object p1

    iget p2, p0, Lcom/narvii/list/DragSortListFragment$1$1;->val$position:I

    invoke-virtual {p1, p2}, Lcom/mobeta/android/dslv/DragSortListView;->removeItem(I)V

    return-void
.end method
