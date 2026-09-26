.class Lcom/narvii/list/DragSortListFragment$1;
.super Lcom/mobeta/android/dslv/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/list/DragSortListFragment;->buildController(Lcom/mobeta/android/dslv/DragSortListView;)Lcom/mobeta/android/dslv/a;
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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/list/DragSortListFragment$1;->this$0:Lcom/narvii/list/DragSortListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/mobeta/android/dslv/a;-><init>(Lcom/mobeta/android/dslv/DragSortListView;III)V

    .line 6
    return-void
.end method


# virtual methods
.method protected onClickRemove(I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/DragSortListFragment$1;->this$0:Lcom/narvii/list/DragSortListFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/DragSortListFragment;->confirmBeforeRemove()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/list/DragSortListFragment$1;->this$0:Lcom/narvii/list/DragSortListFragment;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    sget v1, Lcom/narvii/lib/R$string;->confirm_remove:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 25
    .line 26
    sget v1, Lcom/narvii/lib/R$string;->yes:I

    .line 27
    .line 28
    new-instance v2, Lcom/narvii/list/DragSortListFragment$1$1;

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, p0, p1}, Lcom/narvii/list/DragSortListFragment$1$1;-><init>(Lcom/narvii/list/DragSortListFragment$1;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 35
    .line 36
    sget p1, Lcom/narvii/lib/R$string;->no:I

    .line 37
    .line 38
    sget-object v1, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-super {p0, p1}, Lcom/mobeta/android/dslv/a;->onClickRemove(I)V

    .line 49
    :goto_0
    return-void
.end method
