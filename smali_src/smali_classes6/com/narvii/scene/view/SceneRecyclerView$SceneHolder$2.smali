.class Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;
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
.field private lastClickTime:J

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
    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->val$this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    const-wide/16 p1, 0x0

    .line 10
    .line 11
    iput-wide p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->lastClickTime:J

    .line 12
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$000(Lcom/narvii/scene/view/SceneRecyclerView;)Ljava/util/List;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 16
    move-result p1

    .line 17
    .line 18
    if-ltz p1, :cond_4

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 21
    .line 22
    iget-object v1, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 23
    .line 24
    iget-boolean v1, v1, Lcom/narvii/scene/SceneWrapper;->selected:Z

    .line 25
    .line 26
    const-wide/16 v2, 0x3e8

    .line 27
    const/4 v4, 0x1

    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 32
    const/4 v1, 0x0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1, v1}, Lcom/narvii/scene/view/SceneRecyclerView;->selectedScene(IZ)Z

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lcom/narvii/scene/view/SceneRecyclerView;->access$400(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnSelectedListener;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lcom/narvii/scene/view/SceneRecyclerView;->access$400(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnSelectedListener;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    iget-object v1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 56
    .line 57
    iget-object v1, v1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/narvii/scene/SceneWrapper;->getSceneId()Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    .line 64
    invoke-interface {v0, v1, p1}, Lcom/narvii/scene/view/SceneRecyclerView$OnSelectedListener;->onSelected(Ljava/lang/String;I)V

    .line 65
    .line 66
    goto/16 :goto_0

    .line 67
    .line 68
    :cond_0
    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 69
    .line 70
    .line 71
    invoke-static {v0}, Lcom/narvii/scene/view/SceneRecyclerView;->access$100(Lcom/narvii/scene/view/SceneRecyclerView;)Z

    .line 72
    move-result v0

    .line 73
    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 79
    .line 80
    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    .line 87
    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 88
    .line 89
    sget v0, Lcom/narvii/mediaeditor/R$string;->can_not_the_video:I

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 93
    .line 94
    sget v0, Lcom/narvii/mediaeditor/R$string;->got_it:I

    .line 95
    const/4 v1, 0x0

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 102
    return-void

    .line 103
    .line 104
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 105
    .line 106
    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 107
    .line 108
    .line 109
    invoke-static {v0}, Lcom/narvii/scene/view/SceneRecyclerView;->access$500(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnEditVideoListener;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    if-eqz v0, :cond_2

    .line 113
    .line 114
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 115
    .line 116
    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/narvii/scene/SceneWrapper;->getStates()I

    .line 120
    move-result v0

    .line 121
    .line 122
    if-eq v0, v4, :cond_2

    .line 123
    .line 124
    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 126
    move-result-wide v0

    .line 127
    .line 128
    iget-wide v5, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->lastClickTime:J

    .line 129
    sub-long/2addr v0, v5

    .line 130
    .line 131
    cmp-long v0, v0, v2

    .line 132
    .line 133
    if-ltz v0, :cond_2

    .line 134
    .line 135
    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 137
    move-result-wide v0

    .line 138
    .line 139
    iput-wide v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->lastClickTime:J

    .line 140
    .line 141
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 142
    .line 143
    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 144
    .line 145
    .line 146
    invoke-static {v0}, Lcom/narvii/scene/view/SceneRecyclerView;->access$500(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnEditVideoListener;

    .line 147
    move-result-object v0

    .line 148
    .line 149
    iget-object v1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 150
    .line 151
    iget-object v1, v1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 152
    .line 153
    iget-object v1, v1, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 154
    .line 155
    .line 156
    invoke-interface {v0, v1, p1}, Lcom/narvii/scene/view/SceneRecyclerView$OnEditVideoListener;->editVideo(Lcom/narvii/scene/model/SceneInfo;I)V

    .line 157
    .line 158
    .line 159
    invoke-static {}, Lcom/narvii/scene/view/SceneRecyclerView;->access$600()Ljava/lang/String;

    .line 160
    move-result-object p1

    .line 161
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    const-string v1, "edit Scene >>>  scene name = "

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    iget-object v1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 173
    .line 174
    iget-object v1, v1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 175
    .line 176
    iget-object v1, v1, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 177
    .line 178
    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->title:Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string v1, "   time = "

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 190
    move-result-wide v1

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    move-result-object v0

    .line 198
    .line 199
    .line 200
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void

    .line 202
    .line 203
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 204
    .line 205
    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0}, Lcom/narvii/scene/SceneWrapper;->getStates()I

    .line 209
    move-result v0

    .line 210
    .line 211
    if-ne v0, v4, :cond_4

    .line 212
    .line 213
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 214
    .line 215
    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 216
    .line 217
    .line 218
    invoke-static {v0}, Lcom/narvii/scene/view/SceneRecyclerView;->access$100(Lcom/narvii/scene/view/SceneRecyclerView;)Z

    .line 219
    move-result v0

    .line 220
    .line 221
    if-eqz v0, :cond_3

    .line 222
    return-void

    .line 223
    .line 224
    .line 225
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 226
    move-result-wide v0

    .line 227
    .line 228
    iget-wide v4, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->lastClickTime:J

    .line 229
    sub-long/2addr v0, v4

    .line 230
    .line 231
    cmp-long v0, v0, v2

    .line 232
    .line 233
    if-ltz v0, :cond_4

    .line 234
    .line 235
    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 237
    move-result-wide v0

    .line 238
    .line 239
    iput-wide v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->lastClickTime:J

    .line 240
    .line 241
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 242
    .line 243
    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 244
    .line 245
    .line 246
    invoke-static {v0}, Lcom/narvii/scene/view/SceneRecyclerView;->access$500(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnEditVideoListener;

    .line 247
    move-result-object v0

    .line 248
    .line 249
    if-eqz v0, :cond_4

    .line 250
    .line 251
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 252
    .line 253
    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 254
    .line 255
    .line 256
    invoke-static {v0}, Lcom/narvii/scene/view/SceneRecyclerView;->access$500(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnEditVideoListener;

    .line 257
    move-result-object v0

    .line 258
    .line 259
    iget-object v1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 260
    .line 261
    iget-object v1, v1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 262
    .line 263
    iget-object v1, v1, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 264
    .line 265
    .line 266
    invoke-interface {v0, v1, p1}, Lcom/narvii/scene/view/SceneRecyclerView$OnEditVideoListener;->pickVideo(Lcom/narvii/scene/model/SceneInfo;I)V

    .line 267
    :cond_4
    return-void
.end method
