.class Lcom/narvii/scene/SceneManageFragment$Adapter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/SceneManageFragment$Adapter;->showEditDialog(Lcom/narvii/scene/SceneWrapper;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

.field final synthetic val$position:I

.field final synthetic val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;


# direct methods
.method constructor <init>(Lcom/narvii/scene/SceneManageFragment$Adapter;Lcom/narvii/scene/SceneWrapper;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4;->val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4;->val$position:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    .line 4
    if-eqz p2, :cond_3

    .line 5
    .line 6
    if-eq p2, v0, :cond_2

    .line 7
    const/4 v0, 0x2

    .line 8
    .line 9
    if-eq p2, v0, :cond_1

    .line 10
    const/4 p1, 0x3

    .line 11
    .line 12
    if-eq p2, p1, :cond_0

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 17
    .line 18
    iget-object p2, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4;->val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p2}, Lcom/narvii/scene/SceneManageFragment$Adapter;->access$900(Lcom/narvii/scene/SceneManageFragment$Adapter;Lcom/narvii/scene/SceneWrapper;)V

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_1
    new-instance p2, Lcom/narvii/util/dialog/EditTextDialog;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-direct {p2, v0}, Lcom/narvii/util/dialog/EditTextDialog;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    sget v0, Lcom/narvii/mediaeditor/R$string;->rename:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/narvii/util/dialog/AlertDialog;->setEditText()Landroid/widget/EditText;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4;->val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/narvii/scene/SceneWrapper;->getTitle()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    .line 59
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 60
    move-result v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 64
    .line 65
    const/high16 v0, 0x1040000

    .line 66
    const/4 v1, 0x0

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v0, p1, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 70
    .line 71
    sget p1, Lcom/narvii/mediaeditor/R$string;->post_submit:I

    .line 72
    .line 73
    new-instance v0, Lcom/narvii/scene/SceneManageFragment$Adapter$4$1;

    .line 74
    .line 75
    .line 76
    invoke-direct {v0, p0, p2}, Lcom/narvii/scene/SceneManageFragment$Adapter$4$1;-><init>(Lcom/narvii/scene/SceneManageFragment$Adapter$4;Lcom/narvii/util/dialog/EditTextDialog;)V

    .line 77
    const/4 v1, 0x4

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, p1, v1, v0}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    check-cast p1, Landroid/widget/TextView;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p1}, Lcom/narvii/util/dialog/EditTextDialog;->disallowEditTextEmpty(Landroid/widget/TextView;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Lcom/narvii/app/NVDialog;->show()V

    .line 90
    goto :goto_0

    .line 91
    .line 92
    :cond_2
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 93
    .line 94
    iget-object p1, p1, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    .line 95
    .line 96
    iget-object p2, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4;->val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 97
    .line 98
    iget v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4;->val$position:I

    .line 99
    .line 100
    .line 101
    invoke-static {p1, p2, v0}, Lcom/narvii/scene/SceneManageFragment;->access$800(Lcom/narvii/scene/SceneManageFragment;Lcom/narvii/scene/SceneWrapper;I)V

    .line 102
    goto :goto_0

    .line 103
    .line 104
    :cond_3
    iget-object p2, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 105
    .line 106
    iget-object p2, p2, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    .line 107
    .line 108
    .line 109
    invoke-static {p2}, Lcom/narvii/scene/SceneManageFragment;->access$300(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/model/SceneInfo;

    .line 110
    move-result-object p2

    .line 111
    .line 112
    if-nez p2, :cond_4

    .line 113
    goto :goto_0

    .line 114
    .line 115
    :cond_4
    iget-object p2, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4;->val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Lcom/narvii/scene/SceneWrapper;->getStates()I

    .line 119
    move-result p2

    .line 120
    .line 121
    if-ne p2, v0, :cond_5

    .line 122
    .line 123
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 124
    .line 125
    iget-object p1, p1, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    .line 126
    .line 127
    .line 128
    invoke-static {p1}, Lcom/narvii/scene/SceneManageFragment;->access$700(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/helper/SceneMediaPickerHelper;

    .line 129
    move-result-object p1

    .line 130
    .line 131
    iget-object p2, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 132
    .line 133
    iget-object p2, p2, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    .line 134
    .line 135
    .line 136
    invoke-static {p2}, Lcom/narvii/scene/SceneManageFragment;->access$300(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/model/SceneInfo;

    .line 137
    move-result-object p2

    .line 138
    .line 139
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 140
    .line 141
    iget-object v0, v0, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    .line 142
    .line 143
    .line 144
    invoke-static {v0}, Lcom/narvii/scene/SceneManageFragment;->access$000(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/model/SceneDraft;

    .line 145
    move-result-object v0

    .line 146
    .line 147
    iget-object v0, v0, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, p2, v0}, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->showPickerDialog(Lcom/narvii/scene/model/SceneInfo;Ljava/lang/String;)V

    .line 151
    goto :goto_0

    .line 152
    .line 153
    :cond_5
    iget-object p2, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 154
    .line 155
    iget-object p2, p2, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    .line 156
    .line 157
    .line 158
    invoke-static {p2}, Lcom/narvii/scene/SceneManageFragment;->access$300(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/model/SceneInfo;

    .line 159
    move-result-object v0

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2, v0, p1}, Lcom/narvii/scene/SceneManageFragment;->toSceneEditor(Lcom/narvii/scene/model/SceneInfo;Z)V

    .line 163
    :goto_0
    return-void
.end method
