.class Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;-><init>(Lcom/narvii/scene/view/SceneRecyclerView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

.field final synthetic val$this$0:Lcom/narvii/scene/view/SceneRecyclerView;


# direct methods
.method constructor <init>(Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;Lcom/narvii/scene/view/SceneRecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->val$this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/scene/view/SceneRecyclerView;->access$200(Lcom/narvii/scene/view/SceneRecyclerView;)Landroid/view/View$OnClickListener;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/narvii/scene/view/SceneRecyclerView;->access$200(Lcom/narvii/scene/view/SceneRecyclerView;)Landroid/view/View$OnClickListener;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$000(Lcom/narvii/scene/view/SceneRecyclerView;)Ljava/util/List;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 37
    move-result p1

    .line 38
    .line 39
    if-ltz p1, :cond_6

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/narvii/scene/SceneWrapper;->getSceneId()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/narvii/scene/SceneWrapper;->getAttachDataStatus()I

    .line 55
    move-result v0

    .line 56
    const/4 v1, 0x0

    .line 57
    .line 58
    if-eqz v0, :cond_5

    .line 59
    const/4 v2, 0x1

    .line 60
    .line 61
    if-eq v0, v2, :cond_4

    .line 62
    const/4 v3, 0x2

    .line 63
    const/4 v4, 0x0

    .line 64
    .line 65
    if-eq v0, v3, :cond_3

    .line 66
    const/4 v3, 0x3

    .line 67
    .line 68
    if-eq v0, v3, :cond_2

    .line 69
    const/4 p1, 0x4

    .line 70
    .line 71
    if-eq v0, p1, :cond_1

    .line 72
    .line 73
    goto/16 :goto_0

    .line 74
    .line 75
    :cond_1
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 76
    .line 77
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    .line 86
    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 87
    .line 88
    sget v0, Lcom/narvii/mediaeditor/R$string;->scene_poll_uneditable:I

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 92
    .line 93
    sget v0, Lcom/narvii/mediaeditor/R$string;->got_it:I

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 100
    .line 101
    goto/16 :goto_0

    .line 102
    .line 103
    :cond_2
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 104
    .line 105
    iget-object v1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 106
    .line 107
    iget-object v1, v1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 111
    move-result-object v1

    .line 112
    .line 113
    .line 114
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 115
    .line 116
    sget v1, Lcom/narvii/lib/R$string;->edit_poll:I

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 120
    .line 121
    sget v1, Lcom/narvii/lib/R$string;->delete:I

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 125
    .line 126
    new-instance v1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$2;

    .line 127
    .line 128
    .line 129
    invoke-direct {v1, p0, p1}, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$2;-><init>(Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 136
    goto :goto_0

    .line 137
    .line 138
    :cond_3
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 139
    .line 140
    iget-object v1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 141
    .line 142
    iget-object v1, v1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 146
    move-result-object v1

    .line 147
    .line 148
    .line 149
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 150
    .line 151
    sget v1, Lcom/narvii/lib/R$string;->edit_quiz:I

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 155
    .line 156
    sget v1, Lcom/narvii/lib/R$string;->delete:I

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 160
    .line 161
    new-instance v1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$3;

    .line 162
    .line 163
    .line 164
    invoke-direct {v1, p0, p1}, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$3;-><init>(Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 171
    goto :goto_0

    .line 172
    .line 173
    :cond_4
    new-instance p1, Lcom/narvii/scene/dialog/SceneAttachDataDialog;

    .line 174
    .line 175
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 176
    .line 177
    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 181
    move-result-object v0

    .line 182
    .line 183
    .line 184
    invoke-direct {p1, v0}, Lcom/narvii/scene/dialog/SceneAttachDataDialog;-><init>(Landroid/content/Context;)V

    .line 185
    .line 186
    new-instance v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$1;

    .line 187
    .line 188
    .line 189
    invoke-direct {v0, p0}, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$1;-><init>(Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, v0}, Lcom/narvii/scene/dialog/SceneAttachDataDialog;->setOnItemClickListener(Lcom/narvii/scene/dialog/SceneAttachDataDialog$OnItemClickListener;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 196
    goto :goto_0

    .line 197
    .line 198
    :cond_5
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 199
    .line 200
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 201
    .line 202
    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 206
    move-result-object v0

    .line 207
    .line 208
    .line 209
    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 210
    .line 211
    sget v0, Lcom/narvii/mediaeditor/R$string;->empty_scene_add_attach_hint:I

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 215
    .line 216
    sget v0, Lcom/narvii/mediaeditor/R$string;->got_it:I

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 223
    :cond_6
    :goto_0
    return-void
.end method
