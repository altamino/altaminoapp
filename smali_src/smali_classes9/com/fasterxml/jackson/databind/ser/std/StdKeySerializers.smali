.class public Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$CalendarKeySerializer;,
        Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$DateKeySerializer;,
        Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$StringKeySerializer;
    }
.end annotation


# static fields
.field protected static final DEFAULT_KEY_SERIALIZER:Lcom/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected static final DEFAULT_STRING_SERIALIZER:Lcom/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializer;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializer;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers;->DEFAULT_KEY_SERIALIZER:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 8
    .line 9
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$StringKeySerializer;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$StringKeySerializer;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers;->DEFAULT_STRING_SERIALIZER:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStdKeySerializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    sget-object p0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers;->DEFAULT_KEY_SERIALIZER:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 5
    return-object p0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    const-class v0, Ljava/lang/String;

    .line 12
    .line 13
    if-ne p0, v0, :cond_1

    .line 14
    .line 15
    sget-object p0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers;->DEFAULT_STRING_SERIALIZER:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 16
    return-object p0

    .line 17
    .line 18
    :cond_1
    const-class v0, Ljava/lang/Object;

    .line 19
    .line 20
    if-ne p0, v0, :cond_2

    .line 21
    .line 22
    sget-object p0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers;->DEFAULT_KEY_SERIALIZER:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 23
    return-object p0

    .line 24
    .line 25
    :cond_2
    const-class v0, Ljava/util/Date;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    sget-object p0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$DateKeySerializer;->instance:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 34
    return-object p0

    .line 35
    .line 36
    :cond_3
    const-class v0, Ljava/util/Calendar;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 40
    move-result p0

    .line 41
    .line 42
    if-eqz p0, :cond_4

    .line 43
    .line 44
    sget-object p0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$CalendarKeySerializer;->instance:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 45
    return-object p0

    .line 46
    .line 47
    :cond_4
    sget-object p0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers;->DEFAULT_KEY_SERIALIZER:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 48
    return-object p0
.end method
