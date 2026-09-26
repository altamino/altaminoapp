.class Lcom/narvii/media/GiphyPickerFragment$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/GiphyPickerFragment$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/media/GiphyPickerFragment$3;

.field final synthetic val$results:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/narvii/media/GiphyPickerFragment$3;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/GiphyPickerFragment$3$2;->this$1:Lcom/narvii/media/GiphyPickerFragment$3;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/media/GiphyPickerFragment$3$2;->val$results:Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment$3$2;->this$1:Lcom/narvii/media/GiphyPickerFragment$3;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/media/GiphyPickerFragment$3;->a(Lcom/narvii/media/GiphyPickerFragment$3;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment$3$2;->this$1:Lcom/narvii/media/GiphyPickerFragment$3;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/narvii/media/GiphyPickerFragment$3;->val$dlg:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment$3$2;->this$1:Lcom/narvii/media/GiphyPickerFragment$3;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/narvii/media/GiphyPickerFragment$3;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 20
    .line 21
    const-string v1, "photo"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Lcom/narvii/photos/PhotoManager;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/media/GiphyPickerFragment$3$2;->val$results:Ljava/util/ArrayList;

    .line 30
    .line 31
    if-eqz v1, :cond_5

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 35
    move-result v1

    .line 36
    .line 37
    if-lez v1, :cond_5

    .line 38
    .line 39
    new-instance v1, Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    iget-object v2, p0, Lcom/narvii/media/GiphyPickerFragment$3$2;->val$results:Ljava/util/ArrayList;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v3

    .line 53
    .line 54
    if-eqz v3, :cond_0

    .line 55
    .line 56
    .line 57
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    check-cast v3, Ljava/lang/String;

    .line 61
    .line 62
    :try_start_0
    iget-object v4, p0, Lcom/narvii/media/GiphyPickerFragment$3$2;->this$1:Lcom/narvii/media/GiphyPickerFragment$3;

    .line 63
    .line 64
    iget-object v4, v4, Lcom/narvii/media/GiphyPickerFragment$3;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 68
    move-result-object v4

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 72
    move-result-object v4

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 76
    move-result-object v4

    .line 77
    .line 78
    const-string v5, "dir"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 82
    move-result-object v4

    .line 83
    .line 84
    check-cast v4, Ljava/io/File;

    .line 85
    .line 86
    new-instance v5, Ljava/io/File;

    .line 87
    .line 88
    .line 89
    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 93
    move-result-object v5

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v4, v5}, Lcom/narvii/photos/PhotoManager;->importPhoto(Ljava/io/File;Landroid/net/Uri;)Ljava/lang/String;

    .line 97
    move-result-object v4

    .line 98
    .line 99
    new-instance v5, Lcom/narvii/model/Media;

    .line 100
    .line 101
    .line 102
    invoke-direct {v5}, Lcom/narvii/model/Media;-><init>()V

    .line 103
    .line 104
    const/16 v6, 0x64

    .line 105
    .line 106
    iput v6, v5, Lcom/narvii/model/Media;->type:I

    .line 107
    .line 108
    iput-object v4, v5, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    goto :goto_0

    .line 113
    :catch_0
    move-exception v4

    .line 114
    .line 115
    new-instance v5, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    const-string v6, "fail to import image from "

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object v3

    .line 131
    .line 132
    .line 133
    invoke-static {v3, v4}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    goto :goto_0

    .line 135
    .line 136
    .line 137
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 138
    move-result v0

    .line 139
    .line 140
    if-lez v0, :cond_5

    .line 141
    .line 142
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment$3$2;->this$1:Lcom/narvii/media/GiphyPickerFragment$3;

    .line 143
    .line 144
    iget-object v0, v0, Lcom/narvii/media/GiphyPickerFragment$3;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 145
    .line 146
    const-string v2, "pickCallback"

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    move-result-object v0

    .line 151
    .line 152
    const-string v2, "mediaList"

    .line 153
    .line 154
    if-eqz v0, :cond_4

    .line 155
    .line 156
    iget-object v3, p0, Lcom/narvii/media/GiphyPickerFragment$3$2;->this$1:Lcom/narvii/media/GiphyPickerFragment$3;

    .line 157
    .line 158
    iget-object v3, v3, Lcom/narvii/media/GiphyPickerFragment$3;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 159
    .line 160
    const-string v4, "mediaPickCallback"

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3, v4}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    move-result-object v3

    .line 165
    .line 166
    check-cast v3, Lcom/narvii/media/MediaPickCallbackManager;

    .line 167
    .line 168
    if-nez v3, :cond_1

    .line 169
    const/4 v0, 0x0

    .line 170
    goto :goto_1

    .line 171
    .line 172
    .line 173
    :cond_1
    invoke-virtual {v3, v0}, Lcom/narvii/media/MediaPickCallbackManager;->getCallback(Ljava/lang/String;)Lcom/narvii/media/MediaPickCallback;

    .line 174
    move-result-object v0

    .line 175
    .line 176
    :goto_1
    if-nez v0, :cond_2

    .line 177
    return-void

    .line 178
    .line 179
    :cond_2
    iget-object v3, p0, Lcom/narvii/media/GiphyPickerFragment$3$2;->this$1:Lcom/narvii/media/GiphyPickerFragment$3;

    .line 180
    .line 181
    iget-object v3, v3, Lcom/narvii/media/GiphyPickerFragment$3;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 185
    move-result-object v3

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 189
    move-result-object v3

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 193
    move-result-object v3

    .line 194
    .line 195
    const-string v4, "pickCallbackParams"

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 199
    move-result-object v3

    .line 200
    .line 201
    check-cast v3, Ljava/util/HashMap;

    .line 202
    .line 203
    if-nez v3, :cond_3

    .line 204
    .line 205
    new-instance v3, Ljava/util/HashMap;

    .line 206
    .line 207
    .line 208
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 209
    .line 210
    .line 211
    :cond_3
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 212
    move-result-object v1

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    const-string v1, "pickSource"

    .line 218
    .line 219
    const-string v2, "Giphy"

    .line 220
    .line 221
    .line 222
    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    iget-object v1, p0, Lcom/narvii/media/GiphyPickerFragment$3$2;->this$1:Lcom/narvii/media/GiphyPickerFragment$3;

    .line 225
    .line 226
    iget-object v1, v1, Lcom/narvii/media/GiphyPickerFragment$3;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 230
    move-result-object v1

    .line 231
    .line 232
    check-cast v1, Lcom/narvii/app/NVActivity;

    .line 233
    const/4 v2, 0x1

    .line 234
    .line 235
    .line 236
    invoke-interface {v0, v3, v1, v2}, Lcom/narvii/media/MediaPickCallback;->onPick(Ljava/util/HashMap;Lcom/narvii/app/NVActivity;Z)V

    .line 237
    goto :goto_2

    .line 238
    .line 239
    :cond_4
    new-instance v0, Landroid/content/Intent;

    .line 240
    .line 241
    .line 242
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 243
    .line 244
    .line 245
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 246
    move-result-object v1

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    .line 251
    iget-object v1, p0, Lcom/narvii/media/GiphyPickerFragment$3$2;->this$1:Lcom/narvii/media/GiphyPickerFragment$3;

    .line 252
    .line 253
    iget-object v1, v1, Lcom/narvii/media/GiphyPickerFragment$3;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 254
    const/4 v2, -0x1

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1, v2, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 258
    .line 259
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment$3$2;->this$1:Lcom/narvii/media/GiphyPickerFragment$3;

    .line 260
    .line 261
    iget-object v0, v0, Lcom/narvii/media/GiphyPickerFragment$3;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 265
    :cond_5
    :goto_2
    return-void
.end method
