.class public Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$DoubleArraySerializer;,
        Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$FloatArraySerializer;,
        Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$LongArraySerializer;,
        Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$IntArraySerializer;,
        Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$CharArraySerializer;,
        Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$ShortArraySerializer;,
        Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$ByteArraySerializer;,
        Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$BooleanArraySerializer;,
        Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$TypedPrimitiveArraySerializer;
    }
.end annotation


# static fields
.field protected static final _arraySerializers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers;->_arraySerializers:Ljava/util/HashMap;

    .line 8
    .line 9
    const-class v1, [Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    new-instance v2, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$BooleanArraySerializer;

    .line 16
    .line 17
    .line 18
    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$BooleanArraySerializer;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    const-class v1, [B

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    new-instance v2, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$ByteArraySerializer;

    .line 30
    .line 31
    .line 32
    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$ByteArraySerializer;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    const-class v1, [C

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    new-instance v2, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$CharArraySerializer;

    .line 44
    .line 45
    .line 46
    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$CharArraySerializer;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    const-class v1, [S

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    new-instance v2, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$ShortArraySerializer;

    .line 58
    .line 59
    .line 60
    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$ShortArraySerializer;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    const-class v1, [I

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    new-instance v2, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$IntArraySerializer;

    .line 72
    .line 73
    .line 74
    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$IntArraySerializer;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    const-class v1, [J

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    new-instance v2, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$LongArraySerializer;

    .line 86
    .line 87
    .line 88
    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$LongArraySerializer;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    const-class v1, [F

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    new-instance v2, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$FloatArraySerializer;

    .line 100
    .line 101
    .line 102
    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$FloatArraySerializer;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    const-class v1, [D

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 111
    move-result-object v1

    .line 112
    .line 113
    new-instance v2, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$DoubleArraySerializer;

    .line 114
    .line 115
    .line 116
    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$DoubleArraySerializer;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findStandardImpl(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers;->_arraySerializers:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    check-cast p0, Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 13
    return-object p0
.end method
