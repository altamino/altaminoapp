.class public Lcom/narvii/util/fonticon/FontAwesomeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final typefaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/narvii/util/fonticon/NVTypeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/util/fonticon/FontAwesomeUtil;->typefaceMap:Ljava/util/Map;

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/util/fonticon/IonIconsTypeface;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lcom/narvii/util/fonticon/IonIconsTypeface;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/util/fonticon/FontAwesomeUtil;->addIconFontTypeface(Lcom/narvii/util/fonticon/NVTypeface;)V

    .line 16
    .line 17
    new-instance v0, Lcom/narvii/util/fonticon/FasTypeface;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Lcom/narvii/util/fonticon/FasTypeface;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/narvii/util/fonticon/FontAwesomeUtil;->addIconFontTypeface(Lcom/narvii/util/fonticon/NVTypeface;)V

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static addIconFontTypeface(Lcom/narvii/util/fonticon/NVTypeface;)V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/fonticon/FontAwesomeUtil;->typefaceMap:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Ljava/util/Map$Entry;

    .line 23
    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    check-cast v1, Lcom/narvii/util/fonticon/NVTypeface;

    .line 29
    .line 30
    .line 31
    invoke-interface {v1}, Lcom/narvii/util/fonticon/NVTypeface;->getPrefixName()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-interface {p0}, Lcom/narvii/util/fonticon/NVTypeface;->getPrefixName()Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-eqz v1, :cond_0

    .line 43
    return-void

    .line 44
    .line 45
    :cond_1
    sget-object v0, Lcom/narvii/util/fonticon/FontAwesomeUtil;->typefaceMap:Ljava/util/Map;

    .line 46
    .line 47
    .line 48
    invoke-interface {p0}, Lcom/narvii/util/fonticon/NVTypeface;->getPrefixName()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public static getNvTypeface(Ljava/lang/String;)Lcom/narvii/util/fonticon/NVTypeface;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/util/fonticon/FontAwesomeUtil;->transforIconStr(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    return-object v1

    .line 13
    .line 14
    :cond_0
    const-string v0, "_"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 18
    move-result v0

    .line 19
    const/4 v2, -0x1

    .line 20
    .line 21
    if-ne v0, v2, :cond_1

    .line 22
    return-object v1

    .line 23
    :cond_1
    const/4 v2, 0x0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    .line 29
    sget-object v0, Lcom/narvii/util/fonticon/FontAwesomeUtil;->typefaceMap:Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v2

    .line 42
    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    check-cast v2, Ljava/util/Map$Entry;

    .line 50
    .line 51
    .line 52
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 53
    move-result-object v3

    .line 54
    .line 55
    check-cast v3, Lcom/narvii/util/fonticon/NVTypeface;

    .line 56
    .line 57
    .line 58
    invoke-interface {v3}, Lcom/narvii/util/fonticon/NVTypeface;->getPrefixName()Ljava/lang/String;

    .line 59
    move-result-object v3

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v3

    .line 64
    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    .line 68
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 69
    move-result-object p0

    .line 70
    move-object v1, p0

    .line 71
    .line 72
    check-cast v1, Lcom/narvii/util/fonticon/NVTypeface;

    .line 73
    :cond_3
    return-object v1
.end method

.method public static transforIconStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    .line 10
    :cond_0
    const-string v0, "_"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 14
    move-result v1

    .line 15
    const/4 v2, -0x1

    .line 16
    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    const-string v1, "-"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 23
    move-result v2

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    nop

    .line 31
    :cond_1
    return-object p0
.end method
