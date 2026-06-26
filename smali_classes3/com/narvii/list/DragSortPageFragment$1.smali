.class Lcom/narvii/list/DragSortPageFragment$1;
.super Lcom/mobeta/android/dslv/DragSortController;
.source "DragSortPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/list/DragSortPageFragment;->buildController(Lcom/mobeta/android/dslv/DragSortListView;)Lcom/mobeta/android/dslv/DragSortController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/list/DragSortPageFragment;


# direct methods
.method constructor <init>(Lcom/narvii/list/DragSortPageFragment;Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/narvii/list/DragSortPageFragment$1;->this$0:Lcom/narvii/list/DragSortPageFragment;

    invoke-direct {p0, p2}, Lcom/mobeta/android/dslv/DragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;)V

    return-void
.end method


# virtual methods
.method protected onClickRemove(I)V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/narvii/list/DragSortPageFragment$1;->this$0:Lcom/narvii/list/DragSortPageFragment;

    invoke-virtual {v0}, Lcom/narvii/list/DragSortPageFragment;->confirmBeforeRemove()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/narvii/list/DragSortPageFragment$1;->this$0:Lcom/narvii/list/DragSortPageFragment;

    .line 72
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 73
    sget v1, Lcom/narvii/lib/R$string;->confirm_remove:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 74
    sget v1, Lcom/narvii/lib/R$string;->yes:I

    new-instance v2, Lcom/narvii/list/DragSortPageFragment$1$1;

    invoke-direct {v2, p0, p1}, Lcom/narvii/list/DragSortPageFragment$1$1;-><init>(Lcom/narvii/list/DragSortPageFragment$1;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 82
    sget p1, Lcom/narvii/lib/R$string;->no:I

    sget-object v1, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 84
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 86
    :cond_0
    invoke-super {p0, p1}, Lcom/mobeta/android/dslv/DragSortController;->onClickRemove(I)V

    :goto_0
    return-void
.end method
