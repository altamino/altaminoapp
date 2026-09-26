.class Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/PhoneAudioPickerFragment;
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
        "Lcom/narvii/media/PhoneAudioPickerFragment$Entry;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/PhoneAudioPickerFragment;


# direct methods
.method constructor <init>(Lcom/narvii/media/PhoneAudioPickerFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

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
            "Lcom/narvii/media/PhoneAudioPickerFragment$Entry;",
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
    const-string v0, "duration"

    .line 39
    const/4 v15, 0x5

    .line 40
    .line 41
    aput-object v0, v6, v15

    .line 42
    .line 43
    const-string v0, "album_id"

    .line 44
    const/4 v9, 0x6

    .line 45
    .line 46
    aput-object v0, v6, v9

    .line 47
    .line 48
    const-string v0, "artist"

    .line 49
    const/4 v8, 0x7

    .line 50
    .line 51
    aput-object v0, v6, v8

    .line 52
    .line 53
    const-string v0, "album"

    .line 54
    .line 55
    const/16 v7, 0x8

    .line 56
    .line 57
    aput-object v0, v6, v7

    .line 58
    .line 59
    iget-object v0, v1, Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

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
    const-string v0, "media_type=? AND _size>0"

    .line 76
    .line 77
    new-array v3, v11, [Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 81
    move-result-object v16

    .line 82
    .line 83
    aput-object v16, v3, v10

    .line 84
    .line 85
    const-string v16, "date_added"

    .line 86
    move-object v7, v0

    .line 87
    move v0, v8

    .line 88
    move-object v8, v3

    .line 89
    move v3, v9

    .line 90
    .line 91
    move-object/from16 v9, v16

    .line 92
    .line 93
    .line 94
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 95
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 96
    .line 97
    if-eqz v4, :cond_2

    .line 98
    .line 99
    .line 100
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToLast()Z

    .line 101
    move-result v5

    .line 102
    .line 103
    if-eqz v5, :cond_2

    .line 104
    .line 105
    .line 106
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    .line 107
    move-result v5

    .line 108
    .line 109
    if-eqz v5, :cond_1

    .line 110
    goto :goto_0

    .line 111
    .line 112
    :cond_1
    new-instance v5, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    .line 113
    .line 114
    .line 115
    invoke-direct {v5}, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    .line 119
    move-result-wide v6

    .line 120
    .line 121
    iput-wide v6, v5, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->soingId:J

    .line 122
    .line 123
    .line 124
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 125
    move-result v6

    .line 126
    .line 127
    iput v6, v5, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->folderId:I

    .line 128
    .line 129
    .line 130
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 131
    move-result-object v6

    .line 132
    .line 133
    iput-object v6, v5, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->folderName:Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 137
    move-result-object v6

    .line 138
    .line 139
    iput-object v6, v5, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->mediaPath:Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 143
    move-result-object v6

    .line 144
    .line 145
    iput-object v6, v5, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->fileName:Ljava/lang/String;

    .line 146
    .line 147
    iput-object v6, v5, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->name:Ljava/lang/String;

    .line 148
    .line 149
    const/16 v6, 0x6e

    .line 150
    .line 151
    iput v6, v5, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->mediaType:I

    .line 152
    .line 153
    .line 154
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 155
    move-result v6

    .line 156
    .line 157
    iput v6, v5, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->duration:I

    .line 158
    .line 159
    .line 160
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 161
    move-result v6

    .line 162
    .line 163
    iput v6, v5, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->albumId:I

    .line 164
    .line 165
    .line 166
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 167
    move-result-object v6

    .line 168
    .line 169
    iput-object v6, v5, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->artistName:Ljava/lang/String;

    .line 170
    .line 171
    const/16 v6, 0x8

    .line 172
    .line 173
    .line 174
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 175
    move-result-object v7

    .line 176
    .line 177
    iput-object v7, v5, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->albumName:Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    invoke-direct {v1, v5}, Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;->insertDetailInfo(Lcom/narvii/media/PhoneAudioPickerFragment$Entry;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    invoke-interface {v4}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 187
    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    .line 189
    if-nez v5, :cond_0

    .line 190
    goto :goto_0

    .line 191
    :catchall_0
    move-exception v0

    .line 192
    move-object v3, v4

    .line 193
    goto :goto_3

    .line 194
    :catch_0
    move-exception v0

    .line 195
    move-object v3, v4

    .line 196
    goto :goto_1

    .line 197
    .line 198
    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    .line 199
    .line 200
    .line 201
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 202
    goto :goto_2

    .line 203
    :catchall_1
    move-exception v0

    .line 204
    const/4 v3, 0x0

    .line 205
    goto :goto_3

    .line 206
    :catch_1
    move-exception v0

    .line 207
    const/4 v3, 0x0

    .line 208
    .line 209
    :goto_1
    :try_start_3
    const-string v4, "fail to read phone audios"

    .line 210
    .line 211
    .line 212
    invoke-static {v4, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 213
    .line 214
    if-eqz v3, :cond_3

    .line 215
    .line 216
    .line 217
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 218
    :catch_2
    :cond_3
    :goto_2
    return-object v2

    .line 219
    :catchall_2
    move-exception v0

    .line 220
    .line 221
    :goto_3
    if-eqz v3, :cond_4

    .line 222
    .line 223
    .line 224
    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 225
    :catch_3
    :cond_4
    throw v0
.end method

.method private insertDetailInfo(Lcom/narvii/media/PhoneAudioPickerFragment$Entry;)V
    .locals 11

    .line 1
    .line 2
    const-string v0, "artist"

    .line 3
    .line 4
    const-string v1, "album"

    .line 5
    .line 6
    const-string v2, "title"

    .line 7
    .line 8
    const-string v3, "duration"

    .line 9
    .line 10
    const-string v4, "album_id"

    .line 11
    .line 12
    .line 13
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 14
    move-result-object v7

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    move-result-object v5

    .line 26
    .line 27
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 28
    .line 29
    const-string v8, "_id=?"

    .line 30
    const/4 v1, 0x1

    .line 31
    .line 32
    new-array v9, v1, [Ljava/lang/String;

    .line 33
    .line 34
    iget-wide v2, p1, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->soingId:J

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    const/4 v3, 0x0

    .line 40
    .line 41
    aput-object v2, v9, v3

    .line 42
    .line 43
    const-string v10, "date_added"

    .line 44
    .line 45
    .line 46
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    .line 52
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    .line 53
    move-result v2

    .line 54
    .line 55
    if-eqz v2, :cond_0

    .line 56
    .line 57
    .line 58
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    iput-object v2, p1, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->name:Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 65
    move-result v1

    .line 66
    .line 67
    iput v1, p1, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->duration:I

    .line 68
    const/4 v1, 0x2

    .line 69
    .line 70
    .line 71
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 72
    move-result v1

    .line 73
    .line 74
    iput v1, p1, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->albumId:I

    .line 75
    const/4 v1, 0x3

    .line 76
    .line 77
    .line 78
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    iput-object v1, p1, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->artistName:Ljava/lang/String;

    .line 82
    const/4 v1, 0x4

    .line 83
    .line 84
    .line 85
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    iput-object v1, p1, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->albumName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception p1

    .line 91
    goto :goto_4

    .line 92
    :catch_0
    move-exception p1

    .line 93
    goto :goto_2

    .line 94
    .line 95
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 96
    .line 97
    .line 98
    :goto_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    goto :goto_3

    .line 100
    .line 101
    :goto_2
    :try_start_2
    const-string v1, "fail to read phone audios"

    .line 102
    .line 103
    .line 104
    invoke-static {v1, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    .line 106
    if-eqz v0, :cond_1

    .line 107
    goto :goto_1

    .line 108
    :catch_1
    :cond_1
    :goto_3
    return-void

    .line 109
    .line 110
    :goto_4
    if-eqz v0, :cond_2

    .line 111
    .line 112
    .line 113
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 114
    :catch_2
    :cond_2
    throw p1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

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
            "Lcom/narvii/media/PhoneAudioPickerFragment$Entry;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;->getAllEntries()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/PhoneAudioPickerFragment$Entry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 2
    iget-object v0, v0, Lcom/narvii/media/PhoneAudioPickerFragment;->entries:Ljava/util/ArrayList;

    invoke-super {p0, v0}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 3
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 4
    iput-object p1, v0, Lcom/narvii/media/PhoneAudioPickerFragment;->entries:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 5
    invoke-static {v0, p1}, Lcom/narvii/media/PhoneAudioPickerFragment;->q(Lcom/narvii/media/PhoneAudioPickerFragment;Lcom/narvii/media/PhoneAudioPickerFragment$Entry;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/media/PhoneAudioPickerFragment;->fentries:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 6
    invoke-static {p1}, Lcom/narvii/media/PhoneAudioPickerFragment;->n(Lcom/narvii/media/PhoneAudioPickerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/media/PhoneAudioPickerFragment;->t(Lcom/narvii/media/PhoneAudioPickerFragment;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/media/PhoneAudioPickerFragment;->p(Lcom/narvii/media/PhoneAudioPickerFragment;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 7
    invoke-static {p1}, Lcom/narvii/media/PhoneAudioPickerFragment;->v(Lcom/narvii/media/PhoneAudioPickerFragment;)V

    iget-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 8
    invoke-static {p1}, Lcom/narvii/media/PhoneAudioPickerFragment;->w(Lcom/narvii/media/PhoneAudioPickerFragment;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
