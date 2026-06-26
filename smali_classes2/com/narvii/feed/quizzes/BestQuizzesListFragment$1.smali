.class Lcom/narvii/feed/quizzes/BestQuizzesListFragment$1;
.super Ljava/lang/Object;
.source "BestQuizzesListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/quizzes/BestQuizzesListFragment;->showHelpInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/quizzes/BestQuizzesListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/feed/quizzes/BestQuizzesListFragment;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/narvii/feed/quizzes/BestQuizzesListFragment$1;->this$0:Lcom/narvii/feed/quizzes/BestQuizzesListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    if-nez p2, :cond_0

    .line 87
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    iget-object p2, p0, Lcom/narvii/feed/quizzes/BestQuizzesListFragment$1;->this$0:Lcom/narvii/feed/quizzes/BestQuizzesListFragment;

    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f0071

    .line 88
    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    const p2, 0x7f0f073e

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 89
    invoke-virtual {p1, p2, v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 90
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    :cond_0
    return-void
.end method
