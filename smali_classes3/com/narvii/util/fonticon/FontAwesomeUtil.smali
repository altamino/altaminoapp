.class public Lcom/narvii/util/fonticon/FontAwesomeUtil;
.super Ljava/lang/Object;
.source "FontAwesomeUtil.java"


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

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/narvii/util/fonticon/FontAwesomeUtil;->typefaceMap:Ljava/util/Map;

    .line 16
    new-instance v0, Lcom/narvii/util/fonticon/IonIconsTypeface;

    invoke-direct {v0}, Lcom/narvii/util/fonticon/IonIconsTypeface;-><init>()V

    invoke-static {v0}, Lcom/narvii/util/fonticon/FontAwesomeUtil;->addIconFontTypeface(Lcom/narvii/util/fonticon/NVTypeface;)V

    .line 17
    new-instance v0, Lcom/narvii/util/fonticon/FasTypeface;

    invoke-direct {v0}, Lcom/narvii/util/fonticon/FasTypeface;-><init>()V

    invoke-static {v0}, Lcom/narvii/util/fonticon/FontAwesomeUtil;->addIconFontTypeface(Lcom/narvii/util/fonticon/NVTypeface;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addIconFontTypeface(Lcom/narvii/util/fonticon/NVTypeface;)V
    .locals 3

    .line 21
    sget-object v0, Lcom/narvii/util/fonticon/FontAwesomeUtil;->typefaceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/fonticon/NVTypeface;

    invoke-interface {v1}, Lcom/narvii/util/fonticon/NVTypeface;->getPrefixName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/narvii/util/fonticon/NVTypeface;->getPrefixName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 26
    :cond_1
    sget-object v0, Lcom/narvii/util/fonticon/FontAwesomeUtil;->typefaceMap:Ljava/util/Map;

    invoke-interface {p0}, Lcom/narvii/util/fonticon/NVTypeface;->getPrefixName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getNvTypeface(Ljava/lang/String;)Lcom/narvii/util/fonticon/NVTypeface;
    .locals 4

    .line 30
    invoke-static {p0}, Lcom/narvii/util/fonticon/FontAwesomeUtil;->transforIconStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 31
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "_"

    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return-object v1

    :cond_1
    const/4 v2, 0x0

    .line 39
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 40
    sget-object v0, Lcom/narvii/util/fonticon/FontAwesomeUtil;->typefaceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 41
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/util/fonticon/NVTypeface;

    invoke-interface {v3}, Lcom/narvii/util/fonticon/NVTypeface;->getPrefixName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 42
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/narvii/util/fonticon/NVTypeface;

    :cond_3
    return-object v1
.end method

.method public static transforIconStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 50
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "_"

    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const-string v1, "-"

    .line 53
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    nop

    :cond_1
    return-object p0
.end method
