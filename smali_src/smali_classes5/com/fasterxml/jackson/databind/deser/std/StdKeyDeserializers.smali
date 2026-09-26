.class public Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xcd01b6e7cfbcee7L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static constructDelegatingKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/KeyDeserializer;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DelegatingKD;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DelegatingKD;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    .line 10
    return-object p0
.end method

.method public static constructEnumKeyDeserializer(Lcom/fasterxml/jackson/databind/util/EnumResolver;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/KeyDeserializer;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;-><init>(Lcom/fasterxml/jackson/databind/util/EnumResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V

    return-object v0
.end method

.method public static constructEnumKeyDeserializer(Lcom/fasterxml/jackson/databind/util/EnumResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ")",
            "Lcom/fasterxml/jackson/databind/KeyDeserializer;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;-><init>(Lcom/fasterxml/jackson/databind/util/EnumResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V

    return-object v0
.end method

.method public static constructStringKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringKD;->forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringKD;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static findStringBasedKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    new-array v1, v0, [Ljava/lang/Class;

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    const-class v3, Ljava/lang/String;

    .line 11
    .line 12
    aput-object v3, v1, v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/BeanDescription;->findSingleArgConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    .line 22
    move-result p0

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V

    .line 28
    .line 29
    :cond_0
    new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringCtorKeyDeserializer;

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringCtorKeyDeserializer;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 33
    return-object p0

    .line 34
    .line 35
    :cond_1
    new-array v0, v0, [Ljava/lang/Class;

    .line 36
    .line 37
    aput-object v3, v0, v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->findFactoryMethod([Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    .line 47
    move-result p0

    .line 48
    .line 49
    if-eqz p0, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V

    .line 53
    .line 54
    :cond_2
    new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringFactoryKeyDeserializer;

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringFactoryKeyDeserializer;-><init>(Ljava/lang/reflect/Method;)V

    .line 58
    return-object p0

    .line 59
    :cond_3
    const/4 p0, 0x0

    .line 60
    return-object p0
.end method


# virtual methods
.method public findKeyDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-class p2, Ljava/lang/String;

    .line 7
    .line 8
    if-eq p1, p2, :cond_e

    .line 9
    .line 10
    const-class p2, Ljava/lang/Object;

    .line 11
    .line 12
    if-ne p1, p2, :cond_0

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_0
    const-class p2, Ljava/util/UUID;

    .line 17
    .line 18
    if-ne p1, p2, :cond_1

    .line 19
    .line 20
    new-instance p1, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$UuidKD;

    .line 21
    .line 22
    .line 23
    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$UuidKD;-><init>()V

    .line 24
    return-object p1

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    .line 28
    move-result p2

    .line 29
    .line 30
    if-eqz p2, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->wrapperType(Ljava/lang/Class;)Ljava/lang/Class;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    :cond_2
    const-class p2, Ljava/lang/Integer;

    .line 37
    .line 38
    if-ne p1, p2, :cond_3

    .line 39
    .line 40
    new-instance p1, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$IntKD;

    .line 41
    .line 42
    .line 43
    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$IntKD;-><init>()V

    .line 44
    return-object p1

    .line 45
    .line 46
    :cond_3
    const-class p2, Ljava/lang/Long;

    .line 47
    .line 48
    if-ne p1, p2, :cond_4

    .line 49
    .line 50
    new-instance p1, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$LongKD;

    .line 51
    .line 52
    .line 53
    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$LongKD;-><init>()V

    .line 54
    return-object p1

    .line 55
    .line 56
    :cond_4
    const-class p2, Ljava/util/Date;

    .line 57
    .line 58
    if-ne p1, p2, :cond_5

    .line 59
    .line 60
    new-instance p1, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DateKD;

    .line 61
    .line 62
    .line 63
    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DateKD;-><init>()V

    .line 64
    return-object p1

    .line 65
    .line 66
    :cond_5
    const-class p2, Ljava/util/Calendar;

    .line 67
    .line 68
    if-ne p1, p2, :cond_6

    .line 69
    .line 70
    new-instance p1, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$CalendarKD;

    .line 71
    .line 72
    .line 73
    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$CalendarKD;-><init>()V

    .line 74
    return-object p1

    .line 75
    .line 76
    :cond_6
    const-class p2, Ljava/lang/Boolean;

    .line 77
    .line 78
    if-ne p1, p2, :cond_7

    .line 79
    .line 80
    new-instance p1, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$BoolKD;

    .line 81
    .line 82
    .line 83
    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$BoolKD;-><init>()V

    .line 84
    return-object p1

    .line 85
    .line 86
    :cond_7
    const-class p2, Ljava/lang/Byte;

    .line 87
    .line 88
    if-ne p1, p2, :cond_8

    .line 89
    .line 90
    new-instance p1, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$ByteKD;

    .line 91
    .line 92
    .line 93
    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$ByteKD;-><init>()V

    .line 94
    return-object p1

    .line 95
    .line 96
    :cond_8
    const-class p2, Ljava/lang/Character;

    .line 97
    .line 98
    if-ne p1, p2, :cond_9

    .line 99
    .line 100
    new-instance p1, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$CharKD;

    .line 101
    .line 102
    .line 103
    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$CharKD;-><init>()V

    .line 104
    return-object p1

    .line 105
    .line 106
    :cond_9
    const-class p2, Ljava/lang/Short;

    .line 107
    .line 108
    if-ne p1, p2, :cond_a

    .line 109
    .line 110
    new-instance p1, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$ShortKD;

    .line 111
    .line 112
    .line 113
    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$ShortKD;-><init>()V

    .line 114
    return-object p1

    .line 115
    .line 116
    :cond_a
    const-class p2, Ljava/lang/Float;

    .line 117
    .line 118
    if-ne p1, p2, :cond_b

    .line 119
    .line 120
    new-instance p1, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$FloatKD;

    .line 121
    .line 122
    .line 123
    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$FloatKD;-><init>()V

    .line 124
    return-object p1

    .line 125
    .line 126
    :cond_b
    const-class p2, Ljava/lang/Double;

    .line 127
    .line 128
    if-ne p1, p2, :cond_c

    .line 129
    .line 130
    new-instance p1, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DoubleKD;

    .line 131
    .line 132
    .line 133
    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DoubleKD;-><init>()V

    .line 134
    return-object p1

    .line 135
    .line 136
    :cond_c
    const-class p2, Ljava/util/Locale;

    .line 137
    .line 138
    if-ne p1, p2, :cond_d

    .line 139
    .line 140
    new-instance p1, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$LocaleKD;

    .line 141
    .line 142
    .line 143
    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$LocaleKD;-><init>()V

    .line 144
    return-object p1

    .line 145
    :cond_d
    const/4 p1, 0x0

    .line 146
    return-object p1

    .line 147
    .line 148
    .line 149
    :cond_e
    :goto_0
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringKD;->forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringKD;

    .line 150
    move-result-object p1

    .line 151
    return-object p1
.end method
