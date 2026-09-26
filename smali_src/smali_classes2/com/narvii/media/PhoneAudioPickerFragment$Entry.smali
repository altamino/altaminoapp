.class public Lcom/narvii/media/PhoneAudioPickerFragment$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->noThunbnail:Z

    .line 7
    return-void
.end method

.method static bridge synthetic a(JJ)Landroid/net/Uri;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->getAudioThumbnailUri(JJ)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getAudioThumbnail(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-gez v2, :cond_1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must specify an album or a song id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->getAudioThumbnailUri(JJ)Landroid/net/Uri;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "r"

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-object v0
.end method

.method private static getAudioThumbnailUri(JJ)Landroid/net/Uri;
    .locals 2

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v0, p2, v0

    .line 5
    .line 6
    if-gez v0, :cond_0

    .line 7
    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    const-string p3, "content://media/external/audio/media/"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string p0, "/albumart"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    .line 30
    .line 31
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-static {}, Lcom/narvii/media/PhoneAudioPickerFragment;->x()Landroid/net/Uri;

    .line 37
    move-result-object p0

    .line 38
    .line 39
    .line 40
    invoke-static {p0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->mediaPath:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->mediaPath:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method public getAudioThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6

    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->thumbnailCache:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->noThunbnail:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    iget-wide v2, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->soingId:J

    iget v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->albumId:I

    int-to-long v4, v0

    .line 7
    invoke-static {p1, v2, v3, v4, v5}, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->getAudioThumbnail(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->noThunbnail:Z

    return-object v1

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->thumbnailCache:Ljava/lang/ref/SoftReference;

    return-object p1
.end method

.method public getMediaType()I
    .locals 1

    iget v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->mediaType:I

    return v0
.end method

.method public getMediaUrl()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->mediaPath:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getUniqueKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->mediaPath:Ljava/lang/String;

    return-object v0
.end method
