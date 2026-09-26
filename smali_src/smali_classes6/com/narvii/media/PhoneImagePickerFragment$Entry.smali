.class public Lcom/narvii/media/PhoneImagePickerFragment$Entry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/media/MediaSelectItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/PhoneImagePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# static fields
.field public static final TYPE_IMAGE:I = 0x64

.field public static final TYPE_VIDEO:I = 0x7b


# instance fields
.field public duration:I

.field public folderId:I

.field public folderName:Ljava/lang/String;

.field public height:I

.field public imageId:J

.field public mediaPath:Ljava/lang/String;

.field public mediaType:I

.field public name:Ljava/lang/String;

.field private selectMedia:Lcom/narvii/model/Media;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaPath:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaPath:Ljava/lang/String;

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

.method public getMediaStorageUrl()Ljava/lang/String;
    .locals 5

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->imageId:J

    .line 3
    .line 4
    iget-object v2, p0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaPath:Ljava/lang/String;

    .line 5
    .line 6
    iget v3, p0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaType:I

    .line 7
    .line 8
    const/16 v4, 0x7b

    .line 9
    .line 10
    if-ne v3, v4, :cond_0

    .line 11
    const/4 v3, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v3, 0x0

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/narvii/util/image/MediaStoreUtils;->getMediastoreUrl(JLjava/lang/String;Z)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public getMediaType()I
    .locals 1

    iget v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaType:I

    return v0
.end method

.method public getMediaUrl()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaPath:Ljava/lang/String;

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

.method public getSelectMedia()Lcom/narvii/model/Media;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->selectMedia:Lcom/narvii/model/Media;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/model/Media;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Lcom/narvii/model/Media;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->selectMedia:Lcom/narvii/model/Media;

    .line 12
    .line 13
    iget v1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaType:I

    .line 14
    .line 15
    iput v1, v0, Lcom/narvii/model/Media;->type:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isVideo()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->selectMedia:Lcom/narvii/model/Media;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getMediaStorageUrl()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    iput-object v1, v0, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->selectMedia:Lcom/narvii/model/Media;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getMediaUrl()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    iput-object v1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->selectMedia:Lcom/narvii/model/Media;

    .line 40
    return-object v0
.end method

.method public bridge synthetic getUniqueKey()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getUniqueKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaPath:Ljava/lang/String;

    return-object v0
.end method

.method isGif()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaPath:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isImage()Z
    .locals 2

    iget v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaType:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVideo()Z
    .locals 2

    iget v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaType:I

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isWebP()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaPath:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/Utils;->isWebP(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method
