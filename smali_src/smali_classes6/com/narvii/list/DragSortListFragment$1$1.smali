.class Lcom/narvii/list/DragSortListFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/list/DragSortListFragment$1$1;->this$1:Lcom/narvii/list/DragSortListFragment$1;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/list/DragSortListFragment$1$1;->val$position:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/list/DragSortListFragment$1$1;->this$1:Lcom/narvii/list/DragSortListFragment$1;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/list/DragSortListFragment$1;->this$0:Lcom/narvii/list/DragSortListFragment;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/list/DragSortListFragment;->t(Lcom/narvii/list/DragSortListFragment;)Lcom/mobeta/android/dslv/DragSortListView;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iget p2, p0, Lcom/narvii/list/DragSortListFragment$1$1;->val$position:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/mobeta/android/dslv/DragSortListView;->c0(I)V

    .line 14
    return-void
.end method
