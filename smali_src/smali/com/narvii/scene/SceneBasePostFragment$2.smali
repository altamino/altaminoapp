.class Lcom/narvii/scene/SceneBasePostFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/SceneBasePostFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/SceneBasePostFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/SceneBasePostFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/SceneBasePostFragment$2;->this$0:Lcom/narvii/scene/SceneBasePostFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/scene/SceneBasePostFragment$2;->this$0:Lcom/narvii/scene/SceneBasePostFragment;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/scene/SceneBasePostFragment$2;->this$0:Lcom/narvii/scene/SceneBasePostFragment;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/scene/SceneBasePostFragment;->getPostObjectType()I

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x4

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    sget v0, Lcom/narvii/mediaeditor/R$string;->delete_poll_dialog_text:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/SceneBasePostFragment$2;->this$0:Lcom/narvii/scene/SceneBasePostFragment;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/scene/SceneBasePostFragment;->getPostObjectType()I

    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x6

    .line 34
    .line 35
    if-ne v0, v1, :cond_1

    .line 36
    .line 37
    sget v0, Lcom/narvii/mediaeditor/R$string;->delete_quiz_dialog_text:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 41
    .line 42
    :cond_1
    :goto_0
    sget v0, Lcom/narvii/mediaeditor/R$string;->cancel:I

    .line 43
    const/4 v1, 0x0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 47
    .line 48
    sget v0, Lcom/narvii/mediaeditor/R$string;->yes:I

    .line 49
    .line 50
    new-instance v1, Lcom/narvii/scene/SceneBasePostFragment$2$1;

    .line 51
    .line 52
    .line 53
    invoke-direct {v1, p0}, Lcom/narvii/scene/SceneBasePostFragment$2$1;-><init>(Lcom/narvii/scene/SceneBasePostFragment$2;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 60
    return-void
.end method
