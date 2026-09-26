.class Lcom/narvii/scene/SceneManageFragment$Adapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/SceneManageFragment$Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

.field final synthetic val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;


# direct methods
.method constructor <init>(Lcom/narvii/scene/SceneManageFragment$Adapter;Lcom/narvii/scene/SceneWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$2;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$2;->val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$2;->val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/scene/model/SceneInfo;->containsPollOrQuiz()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p1, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 16
    const/4 v1, 0x1

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$2;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$2;->val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 26
    .line 27
    iget-object v3, v3, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v3}, Lcom/narvii/scene/SceneManageFragment;->access$302(Lcom/narvii/scene/SceneManageFragment;Lcom/narvii/scene/model/SceneInfo;)Lcom/narvii/scene/model/SceneInfo;

    .line 31
    .line 32
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 33
    .line 34
    iget-object v3, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$2;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    sget v3, Lcom/narvii/lib/R$string;->edit_poll:I

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 47
    .line 48
    sget v2, Lcom/narvii/lib/R$string;->delete:I

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 52
    .line 53
    new-instance v1, Lcom/narvii/scene/SceneManageFragment$Adapter$2$1;

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, p0, p1}, Lcom/narvii/scene/SceneManageFragment$Adapter$2$1;-><init>(Lcom/narvii/scene/SceneManageFragment$Adapter$2;Lcom/narvii/scene/model/SceneInfo;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 63
    goto :goto_0

    .line 64
    .line 65
    :cond_1
    iget-object v0, p1, Lcom/narvii/scene/model/SceneInfo;->question:Lcom/narvii/model/QuizQuestion;

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 70
    .line 71
    iget-object v3, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$2;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 75
    move-result-object v3

    .line 76
    .line 77
    .line 78
    invoke-direct {v0, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 79
    .line 80
    sget v3, Lcom/narvii/lib/R$string;->edit_quiz:I

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 84
    .line 85
    sget v2, Lcom/narvii/lib/R$string;->delete:I

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 89
    .line 90
    new-instance v1, Lcom/narvii/scene/SceneManageFragment$Adapter$2$2;

    .line 91
    .line 92
    .line 93
    invoke-direct {v1, p0, p1}, Lcom/narvii/scene/SceneManageFragment$Adapter$2$2;-><init>(Lcom/narvii/scene/SceneManageFragment$Adapter$2;Lcom/narvii/scene/model/SceneInfo;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 100
    :cond_2
    :goto_0
    return-void
.end method
