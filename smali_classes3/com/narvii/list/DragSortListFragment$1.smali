.class Lcom/narvii/list/DragSortListFragment$1;
.super Lcom/mobeta/android/dslv/DragSortController;
.source "DragSortListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/list/DragSortListFragment;->buildController(Lcom/mobeta/android/dslv/DragSortListView;)Lcom/mobeta/android/dslv/DragSortController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/list/DragSortListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/list/DragSortListFragment;Lcom/mobeta/android/dslv/DragSortListView;III)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/narvii/list/DragSortListFragment$1;->this$0:Lcom/narvii/list/DragSortListFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/mobeta/android/dslv/DragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;III)V

    return-void
.end method


# virtual methods
.method protected onClickRemove(I)V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/narvii/list/DragSortListFragment$1;->this$0:Lcom/narvii/list/DragSortListFragment;

    invoke-virtual {v0}, Lcom/narvii/list/DragSortListFragment;->confirmBeforeRemove()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/narvii/list/DragSortListFragment$1;->this$0:Lcom/narvii/list/DragSortListFragment;

    .line 71
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 72
    sget v1, Lcom/narvii/lib/R$string;->confirm_remove:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 73
    sget v1, Lcom/narvii/lib/R$string;->yes:I

    new-instance v2, Lcom/narvii/list/DragSortListFragment$1$1;

    invoke-direct {v2, p0, p1}, Lcom/narvii/list/DragSortListFragment$1$1;-><init>(Lcom/narvii/list/DragSortListFragment$1;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 81
    sget p1, Lcom/narvii/lib/R$string;->no:I

    sget-object v1, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 83
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 85
    :cond_0
    invoke-super {p0, p1}, Lcom/mobeta/android/dslv/DragSortController;->onClickRemove(I)V

    :goto_0
    return-void
.end method
