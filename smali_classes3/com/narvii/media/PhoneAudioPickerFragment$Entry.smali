.class public Lcom/narvii/media/PhoneAudioPickerFragment$Entry;
.super Ljava/lang/Object;
.source "PhoneAudioPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/PhoneAudioPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# static fields
.field public static final TYPE_AUDIO:I = 0x6e


# instance fields
.field public albumId:I

.field public albumName:Ljava/lang/String;

.field public artistName:Ljava/lang/String;

.field public duration:I

.field public fileName:Ljava/lang/String;

.field public folderId:I

.field public folderName:Ljava/lang/String;

.field public mediaPath:Ljava/lang/String;

.field public mediaType:I

.field public name:Ljava/lang/String;

.field private noThunbnail:Z

.field public soingId:J

.field private thumbnailCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 395
    iput-boolean v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->noThunbnail:Z

    return-void
.end method

.method static synthetic access$300(JJ)Landroid/net/Uri;
    .locals 0

    .line 377
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->getAudioThumbnailUri(JJ)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getAudioThumbnail(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-gez v2, :cond_1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    goto :goto_0

    .line 419
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must specify an album or a song id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 423
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->getAudioThumbnailUri(JJ)Landroid/net/Uri;

    move-result-object p1

    .line 424
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "r"

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 426
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    .line 427
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :catch_0
    :cond_2
    return-object v0
.end method

.method private static getAudioThumbnailUri(JJ)Landroid/net/Uri;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    .line 436
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "content://media/external/audio/media/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "/albumart"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 438
    :cond_0
    invoke-static {}, Lcom/narvii/media/PhoneAudioPickerFragment;->access$400()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 412
    instance-of v0, p1, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    iget-object p1, p1, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->mediaPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->mediaPath:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAudioThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6

    .line 444
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->thumbnailCache:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-object v0

    .line 448
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->noThunbnail:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return-object v1

    .line 452
    :cond_1
    iget-wide v2, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->soingId:J

    iget v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->albumId:I

    int-to-long v4, v0

    invoke-static {p1, v2, v3, v4, v5}, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->getAudioThumbnail(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 455
    iput-boolean p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->noThunbnail:Z

    return-object v1

    .line 459
    :cond_2
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->thumbnailCache:Ljava/lang/ref/SoftReference;

    return-object p1
.end method

.method public getMediaType()I
    .locals 1

    .line 407
    iget v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->mediaType:I

    return v0
.end method

.method public getMediaUrl()Ljava/lang/String;
    .locals 2

    .line 403
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->mediaPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueKey()Ljava/lang/String;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->mediaPath:Ljava/lang/String;

    return-object v0
.end method
