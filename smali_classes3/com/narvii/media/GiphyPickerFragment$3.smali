.class Lcom/narvii/media/GiphyPickerFragment$3;
.super Ljava/lang/Thread;
.source "GiphyPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/GiphyPickerFragment;->pick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field p:F

.field final synthetic this$0:Lcom/narvii/media/GiphyPickerFragment;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/narvii/media/GiphyPickerFragment;Lcom/narvii/util/dialog/ProgressHorizontalDialog;Ljava/util/ArrayList;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/narvii/media/GiphyPickerFragment$3;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    iput-object p2, p0, Lcom/narvii/media/GiphyPickerFragment$3;->val$dlg:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    iput-object p3, p0, Lcom/narvii/media/GiphyPickerFragment$3;->val$list:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/media/GiphyPickerFragment$3;)Z
    .locals 0

    .line 204
    invoke-direct {p0}, Lcom/narvii/media/GiphyPickerFragment$3;->isRunning()Z

    move-result p0

    return p0
.end method

.method private isRunning()Z
    .locals 1

    .line 334
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment$3;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment$3;->val$dlg:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public run()V
    .locals 22

    move-object/from16 v1, p0

    .line 209
    iget-object v0, v1, Lcom/narvii/media/GiphyPickerFragment$3;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getAvailableCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 210
    new-instance v2, Ljava/io/File;

    const-string v3, "giphy"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    new-instance v3, Lcom/narvii/media/GiphyPickerFragment$3$1;

    invoke-direct {v3, v1}, Lcom/narvii/media/GiphyPickerFragment$3$1;-><init>(Lcom/narvii/media/GiphyPickerFragment$3;)V

    const/4 v4, 0x0

    .line 223
    :try_start_0
    iget-object v5, v1, Lcom/narvii/media/GiphyPickerFragment$3;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 224
    iget-object v6, v1, Lcom/narvii/media/GiphyPickerFragment$3;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v7, 0x0

    move-object v8, v4

    const/4 v9, 0x0

    :goto_0
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-eqz v10, :cond_7

    :try_start_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/narvii/media/giphy/GiphyItem;

    .line 225
    invoke-direct/range {p0 .. p0}, Lcom/narvii/media/GiphyPickerFragment$3;->isRunning()Z

    move-result v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v11, :cond_1

    .line 326
    invoke-static {v4}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    if-eqz v8, :cond_0

    .line 328
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_0
    return-void

    .line 227
    :cond_1
    :try_start_3
    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/narvii/media/giphy/GiphyItem;->id()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ".gif"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v2, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 228
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-wide/16 v14, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    cmp-long v17, v12, v14

    if-lez v17, :cond_2

    .line 229
    :try_start_4
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    move-object/from16 v18, v2

    move-object v15, v6

    goto/16 :goto_2

    .line 231
    :cond_2
    :try_start_5
    iget-object v12, v1, Lcom/narvii/media/GiphyPickerFragment$3;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    iget v12, v12, Lcom/narvii/media/GiphyPickerFragment;->maxLen:I

    invoke-virtual {v10, v12}, Lcom/narvii/media/giphy/GiphyItem;->fullsizeImage(I)Lcom/narvii/media/giphy/GiphyImage;

    move-result-object v12

    .line 232
    new-instance v13, Ljava/net/URL;

    iget-object v14, v12, Lcom/narvii/media/giphy/GiphyImage;->url:Ljava/lang/String;

    invoke-direct {v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    .line 234
    invoke-virtual {v13}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    .line 235
    new-instance v14, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/narvii/media/giphy/GiphyItem;->id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v14, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 236
    :try_start_6
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/16 v8, 0x1000

    :try_start_7
    new-array v8, v8, [B

    .line 240
    iget v10, v12, Lcom/narvii/media/giphy/GiphyImage;->size:I

    const/4 v12, 0x0

    .line 241
    :goto_1
    invoke-virtual {v13, v8}, Ljava/io/InputStream;->read([B)I

    move-result v15

    move-object/from16 v18, v2

    const/4 v2, -0x1

    if-eq v15, v2, :cond_5

    .line 242
    invoke-virtual {v4, v8, v7, v15}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v12, v15

    int-to-float v2, v9

    mul-float v2, v2, v16

    int-to-float v15, v5

    div-float/2addr v2, v15

    div-float v15, v16, v15

    int-to-float v7, v12

    mul-float v15, v15, v7

    int-to-float v7, v10

    div-float/2addr v15, v7

    add-float/2addr v2, v15

    .line 245
    iget v7, v1, Lcom/narvii/media/GiphyPickerFragment$3;->p:F

    sub-float v7, v2, v7

    move-object v15, v6

    float-to-double v6, v7

    const-wide v19, 0x3f947ae147ae147bL    # 0.02

    cmpl-double v21, v6, v19

    if-lez v21, :cond_3

    .line 246
    iput v2, v1, Lcom/narvii/media/GiphyPickerFragment$3;->p:F

    .line 247
    invoke-static {v3}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 249
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v2, :cond_4

    .line 326
    invoke-static {v4}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 328
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    return-void

    :cond_4
    move-object v6, v15

    move-object/from16 v2, v18

    const/4 v7, 0x0

    goto :goto_1

    :cond_5
    move-object v15, v6

    .line 252
    :try_start_8
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 253
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 255
    :try_start_9
    invoke-virtual {v14, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 256
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object v8, v14

    :goto_2
    add-int/lit8 v9, v9, 0x1

    int-to-float v2, v9

    mul-float v2, v2, v16

    int-to-float v4, v5

    div-float/2addr v2, v4

    .line 262
    :try_start_a
    iput v2, v1, Lcom/narvii/media/GiphyPickerFragment$3;->p:F

    .line 263
    invoke-static {v3}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object v6, v15

    move-object/from16 v2, v18

    const/4 v4, 0x0

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 258
    :cond_6
    :try_start_b
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to move "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_0
    move-exception v0

    move-object/from16 v17, v4

    move-object v8, v14

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v8, v14

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v8, v14

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v8, v14

    goto :goto_4

    :catchall_2
    move-exception v0

    :goto_3
    const/16 v17, 0x0

    goto :goto_8

    .line 265
    :cond_7
    :try_start_c
    new-instance v2, Lcom/narvii/media/GiphyPickerFragment$3$2;

    invoke-direct {v2, v1, v0}, Lcom/narvii/media/GiphyPickerFragment$3$2;-><init>(Lcom/narvii/media/GiphyPickerFragment$3;Ljava/util/ArrayList;)V

    invoke-static {v2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    const/4 v4, 0x0

    .line 326
    invoke-static {v4}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    if-eqz v8, :cond_9

    goto :goto_6

    :catchall_3
    move-exception v0

    const/4 v4, 0x0

    goto :goto_7

    :catch_2
    move-exception v0

    :goto_4
    const/4 v4, 0x0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v8, v4

    move-object/from16 v17, v8

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v8, v4

    :goto_5
    :try_start_d
    const-string v2, "fail to download from giphy"

    .line 315
    invoke-static {v2, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 316
    invoke-direct/range {p0 .. p0}, Lcom/narvii/media/GiphyPickerFragment$3;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 317
    new-instance v0, Lcom/narvii/media/GiphyPickerFragment$3$3;

    invoke-direct {v0, v1}, Lcom/narvii/media/GiphyPickerFragment$3$3;-><init>(Lcom/narvii/media/GiphyPickerFragment$3;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 326
    :cond_8
    invoke-static {v4}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    if-eqz v8, :cond_9

    .line 328
    :goto_6
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_9
    return-void

    :catchall_5
    move-exception v0

    :goto_7
    move-object/from16 v17, v4

    .line 326
    :goto_8
    invoke-static/range {v17 .. v17}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    if-eqz v8, :cond_a

    .line 328
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 330
    :cond_a
    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method
