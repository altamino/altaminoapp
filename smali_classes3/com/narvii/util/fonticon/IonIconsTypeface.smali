.class public Lcom/narvii/util/fonticon/IonIconsTypeface;
.super Ljava/lang/Object;
.source "IonIconsTypeface.java"

# interfaces
.implements Lcom/narvii/util/fonticon/NVTypeface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/fonticon/IonIconsTypeface$Icon;
    }
.end annotation


# static fields
.field private static final TTF_FILE_NAME:Ljava/lang/String; = "ionicons.ttf"

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

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTtfFileName()Ljava/lang/String;
    .locals 1

    const-string v0, "ionicons.ttf"

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

    .line 20
    sget-object v0, Lcom/narvii/util/fonticon/IonIconsTypeface;->mChars:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    invoke-static {}, Lcom/narvii/util/fonticon/IonIconsTypeface$Icon;->values()[Lcom/narvii/util/fonticon/IonIconsTypeface$Icon;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 23
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    iget-object v4, v4, Lcom/narvii/util/fonticon/IonIconsTypeface$Icon;->character:Ljava/lang/Character;

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 25
    :cond_0
    sput-object v0, Lcom/narvii/util/fonticon/IonIconsTypeface;->mChars:Ljava/util/HashMap;

    .line 27
    :cond_1
    sget-object v0, Lcom/narvii/util/fonticon/IonIconsTypeface;->mChars:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPrefixName()Ljava/lang/String;
    .locals 1

    const-string v0, "ion"

    return-object v0
.end method

.method public getTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    .line 41
    sget-object v0, Lcom/narvii/util/fonticon/IonIconsTypeface;->typeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 43
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "ionicons.ttf"

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    sput-object p1, Lcom/narvii/util/fonticon/IonIconsTypeface;->typeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    return-object p1

    .line 48
    :cond_0
    :goto_0
    sget-object p1, Lcom/narvii/util/fonticon/IonIconsTypeface;->typeface:Landroid/graphics/Typeface;

    return-object p1
.end method
