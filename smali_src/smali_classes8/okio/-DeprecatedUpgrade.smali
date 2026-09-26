.class public final Lokio/-DeprecatedUpgrade;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Okio:Lokio/-DeprecatedOkio;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Utf8:Lokio/-DeprecatedUtf8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lokio/-DeprecatedOkio;->INSTANCE:Lokio/-DeprecatedOkio;

    .line 3
    .line 4
    sput-object v0, Lokio/-DeprecatedUpgrade;->Okio:Lokio/-DeprecatedOkio;

    .line 5
    .line 6
    sget-object v0, Lokio/-DeprecatedUtf8;->INSTANCE:Lokio/-DeprecatedUtf8;

    .line 7
    .line 8
    sput-object v0, Lokio/-DeprecatedUpgrade;->Utf8:Lokio/-DeprecatedUtf8;

    .line 9
    return-void
.end method

.method public static final getOkio()Lokio/-DeprecatedOkio;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lokio/-DeprecatedUpgrade;->Okio:Lokio/-DeprecatedOkio;

    return-object v0
.end method

.method public static final getUtf8()Lokio/-DeprecatedUtf8;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lokio/-DeprecatedUpgrade;->Utf8:Lokio/-DeprecatedUtf8;

    return-object v0
.end method
