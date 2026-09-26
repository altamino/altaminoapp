.class public abstract Lorg/apache/http/entity/mime/content/AbstractContentBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/entity/mime/content/ContentBody;


# instance fields
.field private final mediaType:Ljava/lang/String;

.field private final mimeType:Ljava/lang/String;

.field private final subType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iput-object p1, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->mimeType:Ljava/lang/String;

    .line 8
    .line 9
    const/16 v0, 0x2f

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 13
    move-result v0

    .line 14
    const/4 v1, -0x1

    .line 15
    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    iput-object v1, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->mediaType:Ljava/lang/String;

    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    iput-object p1, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->subType:Ljava/lang/String;

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    iput-object p1, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->mediaType:Ljava/lang/String;

    .line 35
    const/4 p1, 0x0

    .line 36
    .line 37
    iput-object p1, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->subType:Ljava/lang/String;

    .line 38
    :goto_0
    return-void

    .line 39
    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    const-string v0, "MIME type may not be null"

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p1
.end method


# virtual methods
.method public getMediaType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->subType:Ljava/lang/String;

    return-object v0
.end method
