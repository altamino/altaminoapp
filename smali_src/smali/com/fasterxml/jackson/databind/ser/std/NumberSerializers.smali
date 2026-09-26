.class public Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$NumberSerializer;,
        Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$DoubleSerializer;,
        Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$FloatSerializer;,
        Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$LongSerializer;,
        Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$IntLikeSerializer;,
        Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$IntegerSerializer;,
        Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$ShortSerializer;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$IntegerSerializer;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$IntegerSerializer;-><init>()V

    .line 6
    .line 7
    const-class v1, Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    const-class v0, Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    sget-object v1, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$LongSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$LongSerializer;

    .line 32
    .line 33
    .line 34
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    const-class v0, Ljava/lang/Byte;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    sget-object v1, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$IntLikeSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$IntLikeSerializer;

    .line 52
    .line 53
    .line 54
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    const-class v0, Ljava/lang/Short;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    sget-object v1, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$ShortSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$ShortSerializer;

    .line 72
    .line 73
    .line 74
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    .line 83
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    const-class v0, Ljava/lang/Float;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    sget-object v1, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$FloatSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$FloatSerializer;

    .line 92
    .line 93
    .line 94
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    .line 103
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    const-class v0, Ljava/lang/Double;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    sget-object v1, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$DoubleSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$DoubleSerializer;

    .line 112
    .line 113
    .line 114
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    .line 123
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-void
.end method
