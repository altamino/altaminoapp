.class Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/PhoneImagePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Lcom/narvii/media/PhoneImagePickerFragment$Entry;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/PhoneImagePickerFragment;


# direct methods
.method constructor <init>(Lcom/narvii/media/PhoneImagePickerFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    return-void
.end method

.method private getAllEntries()Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/PhoneImagePickerFragment$Entry;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    new-instance v2, Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    const/16 v0, 0x9

    .line 10
    .line 11
    :try_start_0
    new-array v6, v0, [Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "_id"

    .line 14
    const/4 v10, 0x0

    .line 15
    .line 16
    aput-object v0, v6, v10

    .line 17
    .line 18
    const-string v0, "bucket_id"

    .line 19
    const/4 v11, 0x1

    .line 20
    .line 21
    aput-object v0, v6, v11

    .line 22
    .line 23
    const-string v0, "bucket_display_name"

    .line 24
    const/4 v12, 0x2

    .line 25
    .line 26
    aput-object v0, v6, v12

    .line 27
    .line 28
    const-string v0, "_data"

    .line 29
    const/4 v13, 0x3

    .line 30
    .line 31
    aput-object v0, v6, v13

    .line 32
    .line 33
    const-string v0, "_display_name"

    .line 34
    const/4 v14, 0x4

    .line 35
    .line 36
    aput-object v0, v6, v14

    .line 37
    .line 38
    const-string v0, "width"

    .line 39
    const/4 v15, 0x5

    .line 40
    .line 41
    aput-object v0, v6, v15

    .line 42
    .line 43
    const-string v0, "height"

    .line 44
    const/4 v9, 0x6

    .line 45
    .line 46
    aput-object v0, v6, v9

    .line 47
    .line 48
    const-string v0, "media_type"

    .line 49
    const/4 v8, 0x7

    .line 50
    .line 51
    aput-object v0, v6, v8

    .line 52
    .line 53
    const-string v0, "duration"

    .line 54
    .line 55
    const/16 v7, 0x8

    .line 56
    .line 57
    aput-object v0, v6, v7

    .line 58
    .line 59
    iget-object v0, v1, Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 67
    move-result-object v4

    .line 68
    .line 69
    const-string v0, "external"

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 73
    move-result-object v5

    .line 74
    .line 75
    iget-object v0, v1, Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Lcom/narvii/media/PhoneImagePickerFragment;->y(Lcom/narvii/media/PhoneImagePickerFragment;)Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    iget-object v3, v1, Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 82
    .line 83
    .line 84
    invoke-static {v3}, Lcom/narvii/media/PhoneImagePickerFragment;->x(Lcom/narvii/media/PhoneImagePickerFragment;)[Ljava/lang/String;

    .line 85
    move-result-object v3

    .line 86
    .line 87
    const-string v16, "date_added"

    .line 88
    move-object v7, v0

    .line 89
    move v0, v8

    .line 90
    move-object v8, v3

    .line 91
    move v3, v9

    .line 92
    .line 93
    move-object/from16 v9, v16

    .line 94
    .line 95
    .line 96
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 97
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 98
    .line 99
    if-eqz v4, :cond_3

    .line 100
    .line 101
    .line 102
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToLast()Z

    .line 103
    move-result v5

    .line 104
    .line 105
    if-eqz v5, :cond_3

    .line 106
    .line 107
    .line 108
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    .line 109
    move-result v5

    .line 110
    .line 111
    if-eqz v5, :cond_1

    .line 112
    goto :goto_2

    .line 113
    .line 114
    :cond_1
    new-instance v5, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 115
    .line 116
    .line 117
    invoke-direct {v5}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    .line 121
    move-result-wide v6

    .line 122
    .line 123
    iput-wide v6, v5, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->imageId:J

    .line 124
    .line 125
    .line 126
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 127
    move-result v6

    .line 128
    .line 129
    iput v6, v5, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->folderId:I

    .line 130
    .line 131
    .line 132
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 133
    move-result-object v6

    .line 134
    .line 135
    iput-object v6, v5, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->folderName:Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 139
    move-result-object v6

    .line 140
    .line 141
    iput-object v6, v5, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaPath:Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 145
    move-result-object v6

    .line 146
    .line 147
    iput-object v6, v5, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->name:Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 151
    move-result v6

    .line 152
    .line 153
    iput v6, v5, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->width:I

    .line 154
    .line 155
    .line 156
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 157
    move-result v6

    .line 158
    .line 159
    iput v6, v5, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->height:I

    .line 160
    .line 161
    .line 162
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 163
    move-result v6

    .line 164
    .line 165
    if-ne v6, v13, :cond_2

    .line 166
    .line 167
    const/16 v6, 0x7b

    .line 168
    .line 169
    iput v6, v5, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaType:I

    .line 170
    .line 171
    :goto_0
    const/16 v6, 0x8

    .line 172
    goto :goto_1

    .line 173
    :catchall_0
    move-exception v0

    .line 174
    move-object v3, v4

    .line 175
    goto :goto_5

    .line 176
    :catch_0
    move-exception v0

    .line 177
    move-object v3, v4

    .line 178
    goto :goto_3

    .line 179
    .line 180
    :cond_2
    const/16 v6, 0x64

    .line 181
    .line 182
    iput v6, v5, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaType:I

    .line 183
    goto :goto_0

    .line 184
    .line 185
    .line 186
    :goto_1
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 187
    move-result v7

    .line 188
    .line 189
    iput v7, v5, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->duration:I

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    invoke-interface {v4}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 196
    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    .line 198
    if-nez v5, :cond_0

    .line 199
    .line 200
    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    .line 201
    .line 202
    .line 203
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 204
    goto :goto_4

    .line 205
    :catchall_1
    move-exception v0

    .line 206
    const/4 v3, 0x0

    .line 207
    goto :goto_5

    .line 208
    :catch_1
    move-exception v0

    .line 209
    const/4 v3, 0x0

    .line 210
    .line 211
    :goto_3
    :try_start_3
    const-string v4, "fail to read phone images"

    .line 212
    .line 213
    .line 214
    invoke-static {v4, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 215
    .line 216
    if-eqz v3, :cond_4

    .line 217
    .line 218
    .line 219
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 220
    :catch_2
    :cond_4
    :goto_4
    return-object v2

    .line 221
    :catchall_2
    move-exception v0

    .line 222
    .line 223
    :goto_5
    if-eqz v3, :cond_5

    .line 224
    .line 225
    .line 226
    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 227
    :catch_3
    :cond_5
    throw v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/PhoneImagePickerFragment$Entry;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;->getAllEntries()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/PhoneImagePickerFragment$Entry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 2
    iget-object v0, v0, Lcom/narvii/media/PhoneImagePickerFragment;->entries:Ljava/util/ArrayList;

    invoke-super {p0, v0}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 3
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 4
    iput-object p1, v0, Lcom/narvii/media/PhoneImagePickerFragment;->entries:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 5
    invoke-static {v0, p1}, Lcom/narvii/media/PhoneImagePickerFragment;->w(Lcom/narvii/media/PhoneImagePickerFragment;Lcom/narvii/media/PhoneImagePickerFragment$Entry;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/media/PhoneImagePickerFragment;->fentries:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 6
    invoke-static {p1}, Lcom/narvii/media/PhoneImagePickerFragment;->q(Lcom/narvii/media/PhoneImagePickerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/media/PhoneImagePickerFragment;->E(Lcom/narvii/media/PhoneImagePickerFragment;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/media/PhoneImagePickerFragment;->u(Lcom/narvii/media/PhoneImagePickerFragment;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 7
    invoke-static {p1}, Lcom/narvii/media/PhoneImagePickerFragment;->I(Lcom/narvii/media/PhoneImagePickerFragment;)V

    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 8
    invoke-static {p1}, Lcom/narvii/media/PhoneImagePickerFragment;->H(Lcom/narvii/media/PhoneImagePickerFragment;)V

    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 9
    invoke-static {p1}, Lcom/narvii/media/PhoneImagePickerFragment;->J(Lcom/narvii/media/PhoneImagePickerFragment;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
