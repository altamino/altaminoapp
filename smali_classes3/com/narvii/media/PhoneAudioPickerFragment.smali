.class public Lcom/narvii/media/PhoneAudioPickerFragment;
.super Lcom/narvii/app/NVFragment;
.source "PhoneAudioPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;,
        Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;,
        Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;,
        Lcom/narvii/media/PhoneAudioPickerFragment$Entry;
    }
.end annotation


# static fields
.field private static final ORDER_BY:Ljava/lang/String; = "date_added"

.field private static final SELECTION_ALL_FOR_SINGLE_MEDIA_TYPE:Ljava/lang/String; = "media_type=? AND _size>0"

.field private static loadExecutor:Ljava/util/concurrent/ExecutorService;

.field private static final sArtworkUri:Landroid/net/Uri;


# instance fields
.field adapter:Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;

.field albumList:Landroid/widget/ListView;

.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field entries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/PhoneAudioPickerFragment$Entry;",
            ">;"
        }
    .end annotation
.end field

.field fentries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/PhoneAudioPickerFragment$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private loadTask:Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;

.field mainList:Landroid/widget/ListView;

.field pickButton:Landroid/widget/Button;

.field private selectionStrList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/PhoneAudioPickerFragment$Entry;",
            ">;"
        }
    .end annotation
.end field

.field titleButton:Landroid/view/View;

.field touchArea:Landroid/view/View;

.field width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://media/external/audio/albumart"

    .line 70
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/narvii/media/PhoneAudioPickerFragment;->sArtworkUri:Landroid/net/Uri;

    const/4 v0, 0x1

    const-string v1, "galley media loader"

    .line 73
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/narvii/media/PhoneAudioPickerFragment;->loadExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/media/PhoneAudioPickerFragment;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/narvii/media/PhoneAudioPickerFragment;->hideAlbum()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/media/PhoneAudioPickerFragment;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/narvii/media/PhoneAudioPickerFragment;->switchAlbum()V

    return-void
.end method

.method static synthetic access$1000(Lcom/narvii/media/PhoneAudioPickerFragment;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/narvii/media/PhoneAudioPickerFragment;->updateViews()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/media/PhoneAudioPickerFragment;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/narvii/media/PhoneAudioPickerFragment;->pick()V

    return-void
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .locals 1

    .line 69
    sget-object v0, Lcom/narvii/media/PhoneAudioPickerFragment;->sArtworkUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/narvii/media/PhoneAudioPickerFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->selections:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$502(Lcom/narvii/media/PhoneAudioPickerFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->selections:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600(Lcom/narvii/media/PhoneAudioPickerFragment;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/narvii/media/PhoneAudioPickerFragment;->updatePickButton()V

    return-void
.end method

.method static synthetic access$700(Lcom/narvii/media/PhoneAudioPickerFragment;Lcom/narvii/media/PhoneAudioPickerFragment$Entry;)Ljava/util/ArrayList;
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/narvii/media/PhoneAudioPickerFragment;->filterAlbum(Lcom/narvii/media/PhoneAudioPickerFragment$Entry;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/media/PhoneAudioPickerFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->selectionStrList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lcom/narvii/media/PhoneAudioPickerFragment;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/narvii/media/PhoneAudioPickerFragment;->resumeSelectedEntries(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private convertSelectedEntriesToStrings(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/media/PhoneAudioPickerFragment$Entry;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 371
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    .line 372
    invoke-virtual {v1}, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->getUniqueKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private filterAlbum(Lcom/narvii/media/PhoneAudioPickerFragment$Entry;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/media/PhoneAudioPickerFragment$Entry;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/PhoneAudioPickerFragment$Entry;",
            ">;"
        }
    .end annotation

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 283
    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->entries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    if-eqz p1, :cond_1

    .line 284
    iget v3, v2, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->folderId:I

    iget v4, p1, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->folderId:I

    if-ne v3, v4, :cond_0

    .line 285
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getBundle(ZILjava/lang/String;Ljava/io/File;)Landroid/os/Bundle;
    .locals 2

    .line 89
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "single"

    .line 91
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    const-string p0, "maximum"

    .line 94
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string p0, "maxStr"

    .line 97
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "dir"

    .line 100
    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v0
.end method

.method private hideAlbum()V
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->albumList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->albumList:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 257
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/narvii/lib/R$anim;->slide_out_top:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 258
    iget-object v2, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->albumList:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 260
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->touchArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$anim;->fade_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->touchArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private pick()V
    .locals 11

    const-string v0, "photo"

    .line 292
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/photos/PhotoManager;

    .line 294
    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->selections:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 295
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 296
    iget-object v2, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->selections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    .line 298
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "dir"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 302
    iget-object v5, v3, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->fileName:Ljava/lang/String;

    iget-object v6, v3, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->fileName:Ljava/lang/String;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 303
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3}, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->getMediaUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v4, v5}, Lcom/narvii/util/FileUtils;->getNewFileName(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v7, v4, v5}, Lcom/narvii/util/FileUtils;->copyFile(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 305
    invoke-virtual {v0, v5}, Lcom/narvii/photos/PhotoManager;->getUri(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 306
    iget-wide v6, v3, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->soingId:J

    iget v8, v3, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->albumId:I

    int-to-long v8, v8

    invoke-static {v6, v7, v8, v9}, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->access$300(JJ)Landroid/net/Uri;

    move-result-object v6

    .line 307
    invoke-virtual {v0, v4, v6}, Lcom/narvii/photos/PhotoManager;->importPhoto(Ljava/io/File;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object v10, v5

    move-object v5, v4

    move-object v4, v10

    goto :goto_1

    .line 310
    :cond_0
    invoke-virtual {v3}, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->getMediaUrl()Ljava/lang/String;

    move-result-object v4

    .line 320
    :goto_1
    new-instance v6, Lcom/narvii/model/Media;

    invoke-direct {v6}, Lcom/narvii/model/Media;-><init>()V

    .line 321
    invoke-virtual {v3}, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->getMediaType()I

    move-result v7

    iput v7, v6, Lcom/narvii/model/Media;->type:I

    .line 322
    iput-object v4, v6, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 323
    iput-object v5, v6, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    .line 324
    iget-object v4, v3, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->name:Ljava/lang/String;

    iput-object v4, v6, Lcom/narvii/model/Media;->fileName:Ljava/lang/String;

    .line 325
    iget v4, v3, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->duration:I

    int-to-long v4, v4

    iput-wide v4, v6, Lcom/narvii/model/Media;->duration:J

    .line 326
    iget-object v4, v3, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->artistName:Ljava/lang/String;

    iput-object v4, v6, Lcom/narvii/model/Media;->author:Ljava/lang/String;

    .line 328
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 330
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to import audio from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 334
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 336
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 337
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mediaList"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 338
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 339
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_2
    return-void
.end method

.method private resumeSelectedEntries(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/PhoneAudioPickerFragment$Entry;",
            ">;"
        }
    .end annotation

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    .line 346
    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->fentries:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    goto :goto_2

    .line 350
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 351
    iget-object v2, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->entries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    .line 352
    invoke-virtual {v3}, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->getUniqueKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 355
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 356
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    if-eqz v2, :cond_2

    .line 358
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    :goto_2
    return-object v0
.end method

.method private showAlbum()V
    .locals 3

    .line 267
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->albumList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 271
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->albumList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 272
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/narvii/lib/R$anim;->slide_in_top:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 273
    iget-object v2, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->albumList:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 275
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->touchArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 276
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$anim;->fade_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 277
    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->touchArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method private switchAlbum()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->albumList:Landroid/widget/ListView;

    if-nez v0, :cond_0

    return-void

    .line 247
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 248
    invoke-direct {p0}, Lcom/narvii/media/PhoneAudioPickerFragment;->hideAlbum()V

    goto :goto_0

    .line 250
    :cond_1
    invoke-direct {p0}, Lcom/narvii/media/PhoneAudioPickerFragment;->showAlbum()V

    :goto_0
    return-void
.end method

.method private updatePickButton()V
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->pickButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "single"

    .line 230
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->pickButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->selections:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 234
    :goto_0
    iget-object v2, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->pickButton:Landroid/widget/Button;

    if-lez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 235
    sget v1, Lcom/narvii/lib/R$string;->pick:I

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-lez v0, :cond_4

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    :cond_4
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->pickButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private updateViews()V
    .locals 5

    .line 157
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->entries:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 162
    :cond_0
    sget v1, Lcom/narvii/lib/R$id;->loading:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 163
    sget v1, Lcom/narvii/lib/R$id;->main_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->mainList:Landroid/widget/ListView;

    .line 164
    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->mainList:Landroid/widget/ListView;

    new-instance v3, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;

    invoke-direct {v3, p0}, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;-><init>(Lcom/narvii/media/PhoneAudioPickerFragment;)V

    iput-object v3, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->adapter:Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->mainList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->adapter:Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 168
    sget v1, Lcom/narvii/lib/R$id;->media_gallery_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->albumList:Landroid/widget/ListView;

    .line 169
    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->albumList:Landroid/widget/ListView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, -0x777778

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 170
    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->albumList:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 171
    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->albumList:Landroid/widget/ListView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 172
    new-instance v1, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;

    iget-object v4, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->entries:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v4}, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;-><init>(Lcom/narvii/media/PhoneAudioPickerFragment;Ljava/util/ArrayList;)V

    .line 173
    iget-object v4, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->albumList:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 174
    iget-object v4, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->albumList:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 175
    sget v1, Lcom/narvii/lib/R$id;->media_image_gallery_mask:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->touchArea:Landroid/view/View;

    .line 176
    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->touchArea:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->touchArea:Landroid/view/View;

    new-instance v4, Lcom/narvii/media/PhoneAudioPickerFragment$1;

    invoke-direct {v4, p0}, Lcom/narvii/media/PhoneAudioPickerFragment$1;-><init>(Lcom/narvii/media/PhoneAudioPickerFragment;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->entries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    sget v1, Lcom/narvii/lib/R$id;->empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->mainList:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 133
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$drawable;->media_actionbar:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "MusicPicker"

    return-object v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 193
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 195
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$layout;->media_image_picker_title:I

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->titleButton:Landroid/view/View;

    .line 196
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->titleButton:Landroid/view/View;

    new-instance v1, Lcom/narvii/media/PhoneAudioPickerFragment$2;

    invoke-direct {v1, p0}, Lcom/narvii/media/PhoneAudioPickerFragment$2;-><init>(Lcom/narvii/media/PhoneAudioPickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->titleButton:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setActionBarTitleView(Landroid/view/View;)V

    .line 204
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->titleButton:Landroid/view/View;

    sget v1, Lcom/narvii/lib/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 205
    sget v1, Lcom/narvii/lib/R$string;->media_image_picker_all_audios:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 207
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$layout;->media_image_picker_button:I

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 208
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setActionBarRightView(Landroid/view/View;)V

    .line 209
    sget v0, Lcom/narvii/lib/R$id;->pick_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->pickButton:Landroid/widget/Button;

    .line 210
    iget-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->pickButton:Landroid/widget/Button;

    new-instance v0, Lcom/narvii/media/PhoneAudioPickerFragment$3;

    invoke-direct {v0, p0}, Lcom/narvii/media/PhoneAudioPickerFragment$3;-><init>(Lcom/narvii/media/PhoneAudioPickerFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    invoke-direct {p0}, Lcom/narvii/media/PhoneAudioPickerFragment;->updatePickButton()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 112
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 114
    new-instance v0, Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;

    invoke-direct {v0, p0}, Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;-><init>(Lcom/narvii/media/PhoneAudioPickerFragment;)V

    iput-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->loadTask:Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;

    .line 115
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->loadTask:Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;

    sget-object v1, Lcom/narvii/media/PhoneAudioPickerFragment;->loadExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 116
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 117
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->width:I

    const-string v0, "selections"

    if-nez p1, :cond_0

    .line 120
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 121
    const-class v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->selectionStrList:Ljava/util/ArrayList;

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 124
    const-class v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->selectionStrList:Ljava/util/ArrayList;

    .line 126
    :goto_0
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 147
    sget p3, Lcom/narvii/lib/R$layout;->media_audio_picker:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->loadTask:Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 140
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 142
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 222
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 223
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->selections:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/narvii/media/PhoneAudioPickerFragment;->convertSelectedEntriesToStrings(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->safeWriteAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "selections"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 152
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 153
    invoke-direct {p0}, Lcom/narvii/media/PhoneAudioPickerFragment;->updateViews()V

    return-void
.end method
