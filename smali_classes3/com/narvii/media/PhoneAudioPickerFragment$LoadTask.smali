.class Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;
.super Landroid/os/AsyncTask;
.source "PhoneAudioPickerFragment.java"


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

    .line 668
    iput-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private getAllEntries()Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/PhoneAudioPickerFragment$Entry;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 681
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x9

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

    const-string v0, "duration"

    const/4 v15, 0x5

    aput-object v0, v6, v15

    const-string v0, "album_id"

    const/4 v9, 0x6

    aput-object v0, v6, v9

    const-string v0, "artist"

    const/4 v8, 0x7

    aput-object v0, v6, v8

    const-string v0, "album"

    const/16 v7, 0x8

    aput-object v0, v6, v7

    .line 698
    iget-object v0, v1, Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v0, "external"

    .line 699
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v0, "media_type=? AND _size>0"

    new-array v3, v11, [Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v3, v10

    const-string v17, "date_added"

    move-object v7, v0

    const/4 v0, 0x7

    move-object v8, v3

    const/4 v3, 0x6

    move-object/from16 v9, v17

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_2

    .line 700
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToLast()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 702
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 705
    :cond_1
    new-instance v5, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    invoke-direct {v5}, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;-><init>()V

    .line 706
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->soingId:J

    .line 707
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v5, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->folderId:I

    .line 708
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->folderName:Ljava/lang/String;

    .line 709
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->mediaPath:Ljava/lang/String;

    .line 710
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->fileName:Ljava/lang/String;

    .line 711
    iget-object v6, v5, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->fileName:Ljava/lang/String;

    iput-object v6, v5, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->name:Ljava/lang/String;

    const/16 v6, 0x6e

    .line 712
    iput v6, v5, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->mediaType:I

    .line 713
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v5, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->duration:I

    .line 714
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v5, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->albumId:I

    .line 715
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->artistName:Ljava/lang/String;

    const/16 v6, 0x8

    .line 716
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->albumName:Ljava/lang/String;

    .line 717
    invoke-direct {v1, v5}, Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;->insertDetailInfo(Lcom/narvii/media/PhoneAudioPickerFragment$Entry;)V

    .line 718
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    invoke-interface {v4}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v16, v4

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v3, v4

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    .line 726
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_1
    move-exception v0

    const/16 v16, 0x0

    goto :goto_3

    :catch_1
    move-exception v0

    const/4 v3, 0x0

    :goto_1
    :try_start_3
    const-string v4, "fail to read phone audios"

    .line 722
    invoke-static {v4, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_3

    .line 726
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_3
    :goto_2
    return-object v2

    :catchall_2
    move-exception v0

    move-object/from16 v16, v3

    :goto_3
    if-eqz v16, :cond_4

    :try_start_5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 731
    :catch_3
    :cond_4
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method private insertDetailInfo(Lcom/narvii/media/PhoneAudioPickerFragment$Entry;)V
    .locals 14

    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "title"

    aput-object v1, v3, v0

    const/4 v7, 0x1

    const-string v1, "duration"

    aput-object v1, v3, v7

    const/4 v8, 0x2

    const-string v1, "album_id"

    aput-object v1, v3, v8

    const/4 v9, 0x3

    const-string v1, "artist"

    aput-object v1, v3, v9

    const/4 v10, 0x4

    const-string v1, "album"

    aput-object v1, v3, v10

    const/4 v11, 0x0

    .line 747
    :try_start_0
    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 748
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id=?"

    new-array v5, v7, [Ljava/lang/String;

    iget-wide v12, p1, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->soingId:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const-string v6, "date_added"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 749
    invoke-interface {v11}, Landroid/database/Cursor;->moveToLast()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 750
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->name:Ljava/lang/String;

    .line 751
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->duration:I

    .line 752
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->albumId:I

    .line 753
    invoke-interface {v11, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->artistName:Ljava/lang/String;

    .line 754
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->albumName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v11, :cond_1

    .line 761
    :goto_0
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "fail to read phone audios"

    .line 757
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v11, :cond_1

    goto :goto_0

    :catch_1
    :cond_1
    :goto_1
    return-void

    :goto_2
    if-eqz v11, :cond_2

    .line 761
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 766
    :catch_2
    :cond_2
    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 668
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

    .line 677
    invoke-direct {p0}, Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;->getAllEntries()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 668
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

    .line 772
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    iget-object v0, v0, Lcom/narvii/media/PhoneAudioPickerFragment;->entries:Ljava/util/ArrayList;

    invoke-super {p0, v0}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 773
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    iput-object p1, v0, Lcom/narvii/media/PhoneAudioPickerFragment;->entries:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 777
    invoke-static {v0, p1}, Lcom/narvii/media/PhoneAudioPickerFragment;->access$700(Lcom/narvii/media/PhoneAudioPickerFragment;Lcom/narvii/media/PhoneAudioPickerFragment$Entry;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/media/PhoneAudioPickerFragment;->fentries:Ljava/util/ArrayList;

    .line 778
    iget-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    invoke-static {p1}, Lcom/narvii/media/PhoneAudioPickerFragment;->access$800(Lcom/narvii/media/PhoneAudioPickerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/media/PhoneAudioPickerFragment;->access$900(Lcom/narvii/media/PhoneAudioPickerFragment;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/media/PhoneAudioPickerFragment;->access$502(Lcom/narvii/media/PhoneAudioPickerFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 779
    iget-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    invoke-static {p1}, Lcom/narvii/media/PhoneAudioPickerFragment;->access$600(Lcom/narvii/media/PhoneAudioPickerFragment;)V

    .line 781
    iget-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    invoke-static {p1}, Lcom/narvii/media/PhoneAudioPickerFragment;->access$1000(Lcom/narvii/media/PhoneAudioPickerFragment;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
