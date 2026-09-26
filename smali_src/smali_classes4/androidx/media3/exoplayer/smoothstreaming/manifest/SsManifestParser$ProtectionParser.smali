.class Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ProtectionParser;
.super Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProtectionParser"
.end annotation


# static fields
.field private static final INITIALIZATION_VECTOR_SIZE:I = 0x8

.field public static final KEY_SYSTEM_ID:Ljava/lang/String; = "SystemID"

.field public static final TAG:Ljava/lang/String; = "Protection"

.field public static final TAG_PROTECTION_HEADER:Ljava/lang/String; = "ProtectionHeader"


# instance fields
.field private inProtectionHeader:Z

.field private initData:[B

.field private uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "Protection"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;-><init>(Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method private static q([B)[Landroidx/media3/extractor/mp4/TrackEncryptionBox;
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v0, v0, [Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    .line 4
    .line 5
    new-instance v9, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    const/16 v4, 0x8

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ProtectionParser;->r([B)[B

    .line 13
    move-result-object v5

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v8, 0x0

    .line 17
    move-object v1, v9

    .line 18
    .line 19
    .line 20
    invoke-direct/range {v1 .. v8}, Landroidx/media3/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    .line 21
    const/4 p0, 0x0

    .line 22
    .line 23
    aput-object v9, v0, p0

    .line 24
    return-object v0
.end method

.method private static r([B)[B
    .locals 4

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    array-length v3, p0

    .line 9
    .line 10
    if-ge v2, v3, :cond_0

    .line 11
    .line 12
    aget-byte v3, p0, v2

    .line 13
    int-to-char v3, v3

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    add-int/lit8 v2, v2, 0x2

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    .line 25
    const-string v0, "<KID>"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 29
    move-result v0

    .line 30
    const/4 v2, 0x5

    .line 31
    add-int/2addr v0, v2

    .line 32
    .line 33
    const-string v3, "</KID>"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 37
    move-result v3

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 45
    move-result-object p0

    .line 46
    const/4 v0, 0x3

    .line 47
    .line 48
    .line 49
    invoke-static {p0, v1, v0}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ProtectionParser;->t([BII)V

    .line 50
    const/4 v0, 0x1

    .line 51
    const/4 v1, 0x2

    .line 52
    .line 53
    .line 54
    invoke-static {p0, v0, v1}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ProtectionParser;->t([BII)V

    .line 55
    const/4 v0, 0x4

    .line 56
    .line 57
    .line 58
    invoke-static {p0, v0, v2}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ProtectionParser;->t([BII)V

    .line 59
    const/4 v0, 0x6

    .line 60
    const/4 v1, 0x7

    .line 61
    .line 62
    .line 63
    invoke-static {p0, v0, v1}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ProtectionParser;->t([BII)V

    .line 64
    return-object p0
.end method

.method private static s(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 5
    move-result v0

    .line 6
    .line 7
    const/16 v1, 0x7b

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    sub-int/2addr v0, v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 19
    move-result v0

    .line 20
    .line 21
    const/16 v2, 0x7d

    .line 22
    .line 23
    if-ne v0, v2, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 27
    move-result v0

    .line 28
    sub-int/2addr v0, v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    :cond_0
    return-object p0
.end method

.method private static t([BII)V
    .locals 2

    .line 1
    .line 2
    aget-byte v0, p0, p1

    .line 3
    .line 4
    aget-byte v1, p0, p2

    .line 5
    .line 6
    aput-byte v1, p0, p1

    .line 7
    .line 8
    aput-byte v0, p0, p2

    .line 9
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$ProtectionElement;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ProtectionParser;->uuid:Ljava/util/UUID;

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ProtectionParser;->initData:[B

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2}, Landroidx/media3/extractor/mp4/PsshAtomUtil;->a(Ljava/util/UUID;[B)[B

    .line 10
    move-result-object v2

    .line 11
    .line 12
    iget-object v3, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ProtectionParser;->initData:[B

    .line 13
    .line 14
    .line 15
    invoke-static {v3}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ProtectionParser;->q([B)[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$ProtectionElement;-><init>(Ljava/util/UUID;[B[Landroidx/media3/extractor/mp4/TrackEncryptionBox;)V

    .line 20
    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "ProtectionHeader"

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public h(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "ProtectionHeader"

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    const/4 p1, 0x0

    .line 14
    .line 15
    iput-boolean p1, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ProtectionParser;->inProtectionHeader:Z

    .line 16
    :cond_0
    return-void
.end method

.method public n(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "ProtectionHeader"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    .line 15
    iput-boolean v0, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ProtectionParser;->inProtectionHeader:Z

    .line 16
    const/4 v0, 0x0

    .line 17
    .line 18
    const-string v1, "SystemID"

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ProtectionParser;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    iput-object p1, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ProtectionParser;->uuid:Ljava/util/UUID;

    .line 33
    :cond_0
    return-void
.end method

.method public o(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ProtectionParser;->inProtectionHeader:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 13
    move-result-object p1

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ProtectionParser;->initData:[B

    .line 16
    :cond_0
    return-void
.end method
