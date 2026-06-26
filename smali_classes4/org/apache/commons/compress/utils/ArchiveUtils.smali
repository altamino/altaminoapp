.class public Lorg/apache/commons/compress/utils/ArchiveUtils;
.super Ljava/lang/Object;
.source "ArchiveUtils.java"


# static fields
.field private static final MAX_SANITIZED_NAME_LENGTH:I = 0xff


# direct methods
.method public static sanitize(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 278
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 279
    array-length v0, p0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    .line 280
    :goto_0
    array-length p0, p0

    if-le p0, v1, :cond_1

    const/16 p0, 0xfc

    :goto_1
    if-ge p0, v1, :cond_1

    const/16 v2, 0x2e

    .line 282
    aput-char v2, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 285
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    array-length v1, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_3

    aget-char v3, v0, v2

    .line 287
    invoke-static {v3}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 288
    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 289
    sget-object v5, Ljava/lang/Character$UnicodeBlock;->SPECIALS:Ljava/lang/Character$UnicodeBlock;

    if-eq v4, v5, :cond_2

    .line 290
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    const/16 v3, 0x3f

    .line 294
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 296
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
