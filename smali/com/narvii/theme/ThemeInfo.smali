.class public Lcom/narvii/theme/ThemeInfo;
.super Ljava/lang/Object;
.source "ThemeInfo.java"


# static fields
.field public static final BACKGROUND_IMAGE:Ljava/lang/String; = "background-image"

.field public static final LOGO_IMAGE:Ljava/lang/String; = "logo"

.field public static final TITLEBAR_BACKGROUND_IMAGE:Ljava/lang/String; = "titlebar-background-image"

.field public static final TITLEBAR_IMAGE:Ljava/lang/String; = "titlebar-image"


# instance fields
.field public author:Ljava/lang/String;

.field public background:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "background-image"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/theme/ThemeImage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/theme/ThemeImage;",
            ">;"
        }
    .end annotation
.end field

.field public formatVersion:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "format-version"
    .end annotation
.end field

.field public icon:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/theme/ThemeImage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/theme/ThemeImage;",
            ">;"
        }
    .end annotation
.end field

.field public id:Ljava/lang/String;

.field public logo:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/theme/ThemeImage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/theme/ThemeImage;",
            ">;"
        }
    .end annotation
.end field

.field public oldTitlebar:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "titlebar-image"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/theme/ThemeImage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/theme/ThemeImage;",
            ">;"
        }
    .end annotation
.end field

.field public revision:I

.field public themeColor:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "theme-color"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$ColorDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$ColorSerializer;
    .end annotation
.end field

.field public titlebar:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "titlebar-background-image"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/theme/ThemeImage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/theme/ThemeImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/narvii/theme/ThemeInfo;
    .locals 2

    .line 45
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 46
    const-class v1, Lcom/narvii/theme/ThemeInfo;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/theme/ThemeInfo;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lcom/narvii/theme/ThemeInfo;->clone()Lcom/narvii/theme/ThemeInfo;

    move-result-object v0

    return-object v0
.end method
