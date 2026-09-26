.class public Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$FileDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$LocaleDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$PatternDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$CurrencyDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$URIDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$URLDeserializer;
    }
.end annotation


# static fields
.field private static final _classNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashSet;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;->_classNames:Ljava/util/HashSet;

    .line 8
    .line 9
    const/16 v0, 0xe

    .line 10
    .line 11
    new-array v1, v0, [Ljava/lang/Class;

    .line 12
    .line 13
    const-class v2, Ljava/util/UUID;

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    aput-object v2, v1, v3

    .line 17
    const/4 v2, 0x1

    .line 18
    .line 19
    const-class v4, Ljava/net/URL;

    .line 20
    .line 21
    aput-object v4, v1, v2

    .line 22
    const/4 v2, 0x2

    .line 23
    .line 24
    const-class v4, Ljava/net/URI;

    .line 25
    .line 26
    aput-object v4, v1, v2

    .line 27
    const/4 v2, 0x3

    .line 28
    .line 29
    const-class v4, Ljava/io/File;

    .line 30
    .line 31
    aput-object v4, v1, v2

    .line 32
    const/4 v2, 0x4

    .line 33
    .line 34
    const-class v4, Ljava/util/Currency;

    .line 35
    .line 36
    aput-object v4, v1, v2

    .line 37
    const/4 v2, 0x5

    .line 38
    .line 39
    const-class v4, Ljava/util/regex/Pattern;

    .line 40
    .line 41
    aput-object v4, v1, v2

    .line 42
    const/4 v2, 0x6

    .line 43
    .line 44
    const-class v4, Ljava/util/Locale;

    .line 45
    .line 46
    aput-object v4, v1, v2

    .line 47
    const/4 v2, 0x7

    .line 48
    .line 49
    const-class v4, Ljava/net/InetAddress;

    .line 50
    .line 51
    aput-object v4, v1, v2

    .line 52
    .line 53
    const/16 v2, 0x8

    .line 54
    .line 55
    const-class v4, Ljava/net/InetSocketAddress;

    .line 56
    .line 57
    aput-object v4, v1, v2

    .line 58
    .line 59
    const/16 v2, 0x9

    .line 60
    .line 61
    const-class v4, Ljava/nio/charset/Charset;

    .line 62
    .line 63
    aput-object v4, v1, v2

    .line 64
    .line 65
    const/16 v2, 0xa

    .line 66
    .line 67
    const-class v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    .line 69
    aput-object v4, v1, v2

    .line 70
    .line 71
    const/16 v2, 0xb

    .line 72
    .line 73
    const-class v4, Ljava/lang/Class;

    .line 74
    .line 75
    aput-object v4, v1, v2

    .line 76
    .line 77
    const/16 v2, 0xc

    .line 78
    .line 79
    const-class v4, Ljava/lang/StackTraceElement;

    .line 80
    .line 81
    aput-object v4, v1, v2

    .line 82
    .line 83
    const/16 v2, 0xd

    .line 84
    .line 85
    const-class v4, Ljava/nio/ByteBuffer;

    .line 86
    .line 87
    aput-object v4, v1, v2

    .line 88
    .line 89
    :goto_0
    if-ge v3, v0, :cond_0

    .line 90
    .line 91
    aget-object v2, v1, v3

    .line 92
    .line 93
    sget-object v4, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;->_classNames:Ljava/util/HashSet;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 97
    move-result-object v2

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    add-int/lit8 v3, v3, 0x1

    .line 103
    goto :goto_0

    .line 104
    :cond_0
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

.method public static find(Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;->_classNames:Ljava/util/HashSet;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    .line 12
    :cond_0
    const-class v0, Ljava/net/URI;

    .line 13
    .line 14
    if-ne p0, v0, :cond_1

    .line 15
    .line 16
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$URIDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$URIDeserializer;

    .line 17
    return-object p0

    .line 18
    .line 19
    :cond_1
    const-class v0, Ljava/net/URL;

    .line 20
    .line 21
    if-ne p0, v0, :cond_2

    .line 22
    .line 23
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$URLDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$URLDeserializer;

    .line 24
    return-object p0

    .line 25
    .line 26
    :cond_2
    const-class v0, Ljava/io/File;

    .line 27
    .line 28
    if-ne p0, v0, :cond_3

    .line 29
    .line 30
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$FileDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$FileDeserializer;

    .line 31
    return-object p0

    .line 32
    .line 33
    :cond_3
    const-class v0, Ljava/util/UUID;

    .line 34
    .line 35
    if-ne p0, v0, :cond_4

    .line 36
    .line 37
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;

    .line 38
    return-object p0

    .line 39
    .line 40
    :cond_4
    const-class v0, Ljava/util/Currency;

    .line 41
    .line 42
    if-ne p0, v0, :cond_5

    .line 43
    .line 44
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$CurrencyDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$CurrencyDeserializer;

    .line 45
    return-object p0

    .line 46
    .line 47
    :cond_5
    const-class v0, Ljava/util/regex/Pattern;

    .line 48
    .line 49
    if-ne p0, v0, :cond_6

    .line 50
    .line 51
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$PatternDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$PatternDeserializer;

    .line 52
    return-object p0

    .line 53
    .line 54
    :cond_6
    const-class v0, Ljava/util/Locale;

    .line 55
    .line 56
    if-ne p0, v0, :cond_7

    .line 57
    .line 58
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$LocaleDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$LocaleDeserializer;

    .line 59
    return-object p0

    .line 60
    .line 61
    :cond_7
    const-class v0, Ljava/net/InetAddress;

    .line 62
    .line 63
    if-ne p0, v0, :cond_8

    .line 64
    .line 65
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/InetAddressDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/InetAddressDeserializer;

    .line 66
    return-object p0

    .line 67
    .line 68
    :cond_8
    const-class v0, Ljava/net/InetSocketAddress;

    .line 69
    .line 70
    if-ne p0, v0, :cond_9

    .line 71
    .line 72
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/InetSocketAddressDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/InetSocketAddressDeserializer;

    .line 73
    return-object p0

    .line 74
    .line 75
    :cond_9
    const-class v0, Ljava/nio/charset/Charset;

    .line 76
    .line 77
    if-ne p0, v0, :cond_a

    .line 78
    .line 79
    new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/CharsetDeserializer;

    .line 80
    .line 81
    .line 82
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/std/CharsetDeserializer;-><init>()V

    .line 83
    return-object p0

    .line 84
    .line 85
    :cond_a
    const-class v0, Ljava/lang/Class;

    .line 86
    .line 87
    if-ne p0, v0, :cond_b

    .line 88
    .line 89
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/ClassDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/ClassDeserializer;

    .line 90
    return-object p0

    .line 91
    .line 92
    :cond_b
    const-class v0, Ljava/lang/StackTraceElement;

    .line 93
    .line 94
    if-ne p0, v0, :cond_c

    .line 95
    .line 96
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/StackTraceElementDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/StackTraceElementDeserializer;

    .line 97
    return-object p0

    .line 98
    .line 99
    :cond_c
    const-class v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 100
    .line 101
    if-ne p0, v0, :cond_d

    .line 102
    .line 103
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/AtomicBooleanDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/AtomicBooleanDeserializer;

    .line 104
    return-object p0

    .line 105
    .line 106
    :cond_d
    const-class v0, Ljava/nio/ByteBuffer;

    .line 107
    .line 108
    if-ne p0, v0, :cond_e

    .line 109
    .line 110
    new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/ByteBufferDeserializer;

    .line 111
    .line 112
    .line 113
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/std/ByteBufferDeserializer;-><init>()V

    .line 114
    return-object p0

    .line 115
    .line 116
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 117
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    const-string v1, "Internal error: can\'t find deserializer for "

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object p1

    .line 134
    .line 135
    .line 136
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 137
    throw p0
.end method
