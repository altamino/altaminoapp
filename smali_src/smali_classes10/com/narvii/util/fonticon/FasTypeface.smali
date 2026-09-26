.class public Lcom/narvii/util/fonticon/FasTypeface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/fonticon/NVTypeface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/fonticon/FasTypeface$Icon;
    }
.end annotation


# static fields
.field private static final TTF_FILE_NAME:Ljava/lang/String; = "FontAwesome.otf"

.field private static mChars:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static typeface:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 0

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

.method public static getTtfFileName()Ljava/lang/String;
    .locals 1

    const-string v0, "FontAwesome.otf"

    return-object v0
.end method


# virtual methods
.method public getCharacters()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/fonticon/FasTypeface;->mChars:Ljava/util/HashMap;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    new-instance v0, Ljava/util/HashMap;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/narvii/util/fonticon/FasTypeface$Icon;->values()[Lcom/narvii/util/fonticon/FasTypeface$Icon;

    .line 13
    move-result-object v1

    .line 14
    array-length v2, v1

    .line 15
    const/4 v3, 0x0

    .line 16
    .line 17
    :goto_0
    if-ge v3, v2, :cond_0

    .line 18
    .line 19
    aget-object v4, v1, v3

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 23
    move-result-object v5

    .line 24
    .line 25
    iget-object v4, v4, Lcom/narvii/util/fonticon/FasTypeface$Icon;->character:Ljava/lang/Character;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    add-int/lit8 v3, v3, 0x1

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    sput-object v0, Lcom/narvii/util/fonticon/FasTypeface;->mChars:Ljava/util/HashMap;

    .line 34
    .line 35
    :cond_1
    sget-object v0, Lcom/narvii/util/fonticon/FasTypeface;->mChars:Ljava/util/HashMap;

    .line 36
    return-object v0
.end method

.method public getPrefixName()Ljava/lang/String;
    .locals 1

    const-string v0, "fa"

    return-object v0
.end method

.method public getTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/fonticon/FasTypeface;->typeface:Landroid/graphics/Typeface;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    const-string v0, "FontAwesome.otf"

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    sput-object p1, Lcom/narvii/util/fonticon/FasTypeface;->typeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    const/4 p1, 0x0

    .line 19
    return-object p1

    .line 20
    .line 21
    :cond_0
    :goto_0
    sget-object p1, Lcom/narvii/util/fonticon/FasTypeface;->typeface:Landroid/graphics/Typeface;

    .line 22
    return-object p1
.end method
