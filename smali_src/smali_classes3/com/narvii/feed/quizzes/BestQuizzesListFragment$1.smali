.class Lcom/narvii/feed/quizzes/BestQuizzesListFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/quizzes/BestQuizzesListFragment$1;->this$0:Lcom/narvii/feed/quizzes/BestQuizzesListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    .line 5
    .line 6
    iget-object p2, p0, Lcom/narvii/feed/quizzes/BestQuizzesListFragment$1;->this$0:Lcom/narvii/feed/quizzes/BestQuizzesListFragment;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    const p2, 0x7f12007a

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    .line 20
    const/4 p2, 0x4

    .line 21
    const/4 v0, 0x0

    .line 22
    .line 23
    .line 24
    const v1, 0x7f1207e7

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1, p2, v0}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 31
    :cond_0
    return-void
.end method
