.class public Lcom/narvii/util/fonticon/FasTypeface;
.super Ljava/lang/Object;
.source "FasTypeface.java"

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

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 19
    sget-object v0, Lcom/narvii/util/fonticon/FasTypeface;->mChars:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    invoke-static {}, Lcom/narvii/util/fonticon/FasTypeface$Icon;->values()[Lcom/narvii/util/fonticon/FasTypeface$Icon;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 22
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    iget-object v4, v4, Lcom/narvii/util/fonticon/FasTypeface$Icon;->character:Ljava/lang/Character;

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 24
    :cond_0
    sput-object v0, Lcom/narvii/util/fonticon/FasTypeface;->mChars:Ljava/util/HashMap;

    .line 26
    :cond_1
    sget-object v0, Lcom/narvii/util/fonticon/FasTypeface;->mChars:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPrefixName()Ljava/lang/String;
    .locals 1

    const-string v0, "fa"

    return-object v0
.end method

.method public getTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    .line 40
    sget-object v0, Lcom/narvii/util/fonticon/FasTypeface;->typeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 42
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "FontAwesome.otf"

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    sput-object p1, Lcom/narvii/util/fonticon/FasTypeface;->typeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    return-object p1

    .line 47
    :cond_0
    :goto_0
    sget-object p1, Lcom/narvii/util/fonticon/FasTypeface;->typeface:Landroid/graphics/Typeface;

    return-object p1
.end method
