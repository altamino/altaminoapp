.class Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;
.super Landroid/os/AsyncTask;
.source "PhoneImagePickerFragment.java"


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

    .line 1045
    iput-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private getAllEntries()Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/PhoneImagePickerFragment$Entry;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1058
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0xa

    :try_start_0
    new-array v6, v0, [Ljava/lang/String;

    const-string v0, "_id"

    const/4 v10, 0x0

    aput-object v0, v6, v10

    const-string v0, "bucket_id"

    const/4 v11, 0x1

    aput-object v0, v6, v11

    const-string v0, "bucket_display_name"

    const/4 v12, 0x2

    aput-object v0, v6, v12

    const-string v0, "_data"

    const/4 v13, 0x3

    aput-object v0, v6, v13

    const-string v0, "_display_name"

    const/4 v14, 0x4

    aput-object v0, v6, v14

    const-string v0, "width"

    const/4 v15, 0x5

    aput-object v0, v6, v15

    const-string v0, "height"

    const/4 v9, 0x6

    aput-object v0, v6, v9

    const-string v0, "media_type"

    const/4 v8, 0x7

    aput-object v0, v6, v8

    const-string v0, "duration"

    const/16 v7, 0x8

    aput-object v0, v6, v7

    const/16 v0, 0x9

    const-string v4, "artist"

    aput-object v4, v6, v0

    .line 1068
    iget-object v0, v1, Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v0, "external"

    .line 1069
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v0, v1, Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 1070
    invoke-static {v0}, Lcom/narvii/media/PhoneImagePickerFragment;->access$1700(Lcom/narvii/media/PhoneImagePickerFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-static {v3}, Lcom/narvii/media/PhoneImagePickerFragment;->access$1800(Lcom/narvii/media/PhoneImagePickerFragment;)[Ljava/lang/String;

    move-result-object v3

    const-string v17, "date_added"

    move-object v7, v0

    const/4 v0, 0x7

    move-object v8, v3

    const/4 v3, 0x6

    move-object/from16 v9, v17

    .line 1069
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_3

    .line 1071
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToLast()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1073
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 1076
    :cond_1
    new-instance v5, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    invoke-direct {v5}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;-><init>()V

    .line 1077
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->imageId:J

    .line 1078
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v5, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->folderId:I

    .line 1079
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->folderName:Ljava/lang/String;

    .line 1080
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaPath:Ljava/lang/String;

    .line 1081
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->name:Ljava/lang/String;

    .line 1082
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v5, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->width:I

    .line 1083
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v5, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->height:I

    .line 1084
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v13, :cond_2

    const/16 v6, 0x7b

    .line 1086
    iput v6, v5, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaType:I

    goto :goto_0

    :cond_2
    const/16 v6, 0x64

    .line 1088
    iput v6, v5, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaType:I

    :goto_0
    const/16 v6, 0x8

    .line 1090
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v5, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->duration:I

    .line 1091
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1092
    invoke-interface {v4}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v16, v4

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v3, v4

    goto :goto_2

    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    .line 1099
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catchall_1
    move-exception v0

    const/16 v16, 0x0

    goto :goto_4

    :catch_1
    move-exception v0

    const/4 v3, 0x0

    :goto_2
    :try_start_3
    const-string v4, "fail to read phone images"

    .line 1095
    invoke-static {v4, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_4

    .line 1099
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_4
    :goto_3
    return-object v2

    :catchall_2
    move-exception v0

    move-object/from16 v16, v3

    :goto_4
    if-eqz v16, :cond_5

    :try_start_5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1104
    :catch_3
    :cond_5
    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1045
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

    .line 1054
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;->getAllEntries()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1045
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

    .line 1111
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    iget-object v0, v0, Lcom/narvii/media/PhoneImagePickerFragment;->entries:Ljava/util/ArrayList;

    invoke-super {p0, v0}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1112
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1115
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    iput-object p1, v0, Lcom/narvii/media/PhoneImagePickerFragment;->entries:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 1116
    invoke-static {v0, p1}, Lcom/narvii/media/PhoneImagePickerFragment;->access$1600(Lcom/narvii/media/PhoneImagePickerFragment;Lcom/narvii/media/PhoneImagePickerFragment$Entry;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/media/PhoneImagePickerFragment;->fentries:Ljava/util/ArrayList;

    .line 1117
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-static {p1}, Lcom/narvii/media/PhoneImagePickerFragment;->access$1900(Lcom/narvii/media/PhoneImagePickerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/media/PhoneImagePickerFragment;->access$2000(Lcom/narvii/media/PhoneImagePickerFragment;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/media/PhoneImagePickerFragment;->access$902(Lcom/narvii/media/PhoneImagePickerFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1118
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-static {p1}, Lcom/narvii/media/PhoneImagePickerFragment;->access$1300(Lcom/narvii/media/PhoneImagePickerFragment;)V

    .line 1119
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-static {p1}, Lcom/narvii/media/PhoneImagePickerFragment;->access$1200(Lcom/narvii/media/PhoneImagePickerFragment;)V

    .line 1120
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-static {p1}, Lcom/narvii/media/PhoneImagePickerFragment;->access$2100(Lcom/narvii/media/PhoneImagePickerFragment;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
