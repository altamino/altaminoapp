.class public Lcom/narvii/media/PhoneImagePickerFragment$Entry;
.super Ljava/lang/Object;
.source "PhoneImagePickerFragment.java"

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

    .line 895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 961
    instance-of v0, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    iget-object p1, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaPath:Ljava/lang/String;

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

.method public getMediaStorageUrl()Ljava/lang/String;
    .locals 5

    .line 910
    iget-wide v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->imageId:J

    iget-object v2, p0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaPath:Ljava/lang/String;

    iget v3, p0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaType:I

    const/16 v4, 0x7b

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/narvii/util/image/MediaStoreUtils;->getMediastoreUrl(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaType()I
    .locals 1

    .line 945
    iget v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaType:I

    return v0
.end method

.method public getMediaUrl()Ljava/lang/String;
    .locals 2

    .line 941
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectMedia()Lcom/narvii/model/Media;
    .locals 2

    .line 928
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->selectMedia:Lcom/narvii/model/Media;

    if-nez v0, :cond_1

    .line 929
    new-instance v0, Lcom/narvii/model/Media;

    invoke-direct {v0}, Lcom/narvii/model/Media;-><init>()V

    iput-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->selectMedia:Lcom/narvii/model/Media;

    .line 930
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->selectMedia:Lcom/narvii/model/Media;

    iget v1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaType:I

    iput v1, v0, Lcom/narvii/model/Media;->type:I

    .line 931
    invoke-virtual {p0}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->selectMedia:Lcom/narvii/model/Media;

    invoke-virtual {p0}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getMediaStorageUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->selectMedia:Lcom/narvii/model/Media;

    invoke-virtual {p0}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getMediaUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 936
    :cond_1
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->selectMedia:Lcom/narvii/model/Media;

    return-object v0
.end method

.method public bridge synthetic getUniqueKey()Ljava/lang/Object;
    .locals 1

    .line 895
    invoke-virtual {p0}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getUniqueKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueKey()Ljava/lang/String;
    .locals 1

    .line 923
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaPath:Ljava/lang/String;

    return-object v0
.end method

.method isGif()Z
    .locals 1

    .line 952
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isImage()Z
    .locals 2

    .line 918
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

    .line 914
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

    .line 956
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/Utils;->isWebP(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
