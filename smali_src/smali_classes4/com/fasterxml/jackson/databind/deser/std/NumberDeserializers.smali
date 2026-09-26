.class public Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigDecimalDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigIntegerDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$NumberDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ShortDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BooleanDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$PrimitiveOrWrapperDeserializer;
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
    sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers;->_classNames:Ljava/util/HashSet;

    .line 8
    .line 9
    const/16 v0, 0xb

    .line 10
    .line 11
    new-array v1, v0, [Ljava/lang/Class;

    .line 12
    .line 13
    const-class v2, Ljava/lang/Boolean;

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    aput-object v2, v1, v3

    .line 17
    const/4 v2, 0x1

    .line 18
    .line 19
    const-class v4, Ljava/lang/Byte;

    .line 20
    .line 21
    aput-object v4, v1, v2

    .line 22
    const/4 v2, 0x2

    .line 23
    .line 24
    const-class v4, Ljava/lang/Short;

    .line 25
    .line 26
    aput-object v4, v1, v2

    .line 27
    const/4 v2, 0x3

    .line 28
    .line 29
    const-class v4, Ljava/lang/Character;

    .line 30
    .line 31
    aput-object v4, v1, v2

    .line 32
    const/4 v2, 0x4

    .line 33
    .line 34
    const-class v4, Ljava/lang/Integer;

    .line 35
    .line 36
    aput-object v4, v1, v2

    .line 37
    const/4 v2, 0x5

    .line 38
    .line 39
    const-class v4, Ljava/lang/Long;

    .line 40
    .line 41
    aput-object v4, v1, v2

    .line 42
    const/4 v2, 0x6

    .line 43
    .line 44
    const-class v4, Ljava/lang/Float;

    .line 45
    .line 46
    aput-object v4, v1, v2

    .line 47
    const/4 v2, 0x7

    .line 48
    .line 49
    const-class v4, Ljava/lang/Double;

    .line 50
    .line 51
    aput-object v4, v1, v2

    .line 52
    .line 53
    const/16 v2, 0x8

    .line 54
    .line 55
    const-class v4, Ljava/lang/Number;

    .line 56
    .line 57
    aput-object v4, v1, v2

    .line 58
    .line 59
    const/16 v2, 0x9

    .line 60
    .line 61
    const-class v4, Ljava/math/BigDecimal;

    .line 62
    .line 63
    aput-object v4, v1, v2

    .line 64
    .line 65
    const/16 v2, 0xa

    .line 66
    .line 67
    const-class v4, Ljava/math/BigInteger;

    .line 68
    .line 69
    aput-object v4, v1, v2

    .line 70
    .line 71
    :goto_0
    if-ge v3, v0, :cond_0

    .line 72
    .line 73
    aget-object v2, v1, v3

    .line 74
    .line 75
    sget-object v4, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers;->_classNames:Ljava/util/HashSet;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 79
    move-result-object v2

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    add-int/lit8 v3, v3, 0x1

    .line 85
    goto :goto_0

    .line 86
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

.method public static all()[Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x13

    .line 3
    .line 4
    new-array v0, v0, [Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;

    .line 5
    .line 6
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BooleanDeserializer;

    .line 7
    .line 8
    const-class v2, Ljava/lang/Boolean;

    .line 9
    const/4 v3, 0x0

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2, v3}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BooleanDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Boolean;)V

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    aput-object v1, v0, v2

    .line 16
    .line 17
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;

    .line 18
    .line 19
    const-class v4, Ljava/lang/Byte;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v4, v3}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Byte;)V

    .line 23
    const/4 v4, 0x1

    .line 24
    .line 25
    aput-object v1, v0, v4

    .line 26
    .line 27
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ShortDeserializer;

    .line 28
    .line 29
    const-class v4, Ljava/lang/Short;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v4, v3}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ShortDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Short;)V

    .line 33
    const/4 v4, 0x2

    .line 34
    .line 35
    aput-object v1, v0, v4

    .line 36
    .line 37
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;

    .line 38
    .line 39
    const-class v4, Ljava/lang/Character;

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, v4, v3}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Character;)V

    .line 43
    const/4 v4, 0x3

    .line 44
    .line 45
    aput-object v1, v0, v4

    .line 46
    .line 47
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;

    .line 48
    .line 49
    const-class v4, Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, v4, v3}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Integer;)V

    .line 53
    const/4 v4, 0x4

    .line 54
    .line 55
    aput-object v1, v0, v4

    .line 56
    .line 57
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;

    .line 58
    .line 59
    const-class v4, Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    invoke-direct {v1, v4, v3}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Long;)V

    .line 63
    const/4 v4, 0x5

    .line 64
    .line 65
    aput-object v1, v0, v4

    .line 66
    .line 67
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;

    .line 68
    .line 69
    const-class v4, Ljava/lang/Float;

    .line 70
    .line 71
    .line 72
    invoke-direct {v1, v4, v3}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Float;)V

    .line 73
    const/4 v4, 0x6

    .line 74
    .line 75
    aput-object v1, v0, v4

    .line 76
    .line 77
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;

    .line 78
    .line 79
    const-class v4, Ljava/lang/Double;

    .line 80
    .line 81
    .line 82
    invoke-direct {v1, v4, v3}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Double;)V

    .line 83
    const/4 v3, 0x7

    .line 84
    .line 85
    aput-object v1, v0, v3

    .line 86
    .line 87
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BooleanDeserializer;

    .line 88
    .line 89
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 90
    .line 91
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 92
    .line 93
    .line 94
    invoke-direct {v1, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BooleanDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Boolean;)V

    .line 95
    .line 96
    const/16 v3, 0x8

    .line 97
    .line 98
    aput-object v1, v0, v3

    .line 99
    .line 100
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;

    .line 101
    .line 102
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 106
    move-result-object v4

    .line 107
    .line 108
    .line 109
    invoke-direct {v1, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Byte;)V

    .line 110
    .line 111
    const/16 v3, 0x9

    .line 112
    .line 113
    aput-object v1, v0, v3

    .line 114
    .line 115
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ShortDeserializer;

    .line 116
    .line 117
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 121
    move-result-object v4

    .line 122
    .line 123
    .line 124
    invoke-direct {v1, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ShortDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Short;)V

    .line 125
    .line 126
    const/16 v3, 0xa

    .line 127
    .line 128
    aput-object v1, v0, v3

    .line 129
    .line 130
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;

    .line 131
    .line 132
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 136
    move-result-object v4

    .line 137
    .line 138
    .line 139
    invoke-direct {v1, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Character;)V

    .line 140
    .line 141
    const/16 v3, 0xb

    .line 142
    .line 143
    aput-object v1, v0, v3

    .line 144
    .line 145
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;

    .line 146
    .line 147
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    move-result-object v2

    .line 152
    .line 153
    .line 154
    invoke-direct {v1, v3, v2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Integer;)V

    .line 155
    .line 156
    const/16 v2, 0xc

    .line 157
    .line 158
    aput-object v1, v0, v2

    .line 159
    .line 160
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;

    .line 161
    .line 162
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 163
    .line 164
    const-wide/16 v3, 0x0

    .line 165
    .line 166
    .line 167
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 168
    move-result-object v3

    .line 169
    .line 170
    .line 171
    invoke-direct {v1, v2, v3}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Long;)V

    .line 172
    .line 173
    const/16 v2, 0xd

    .line 174
    .line 175
    aput-object v1, v0, v2

    .line 176
    .line 177
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;

    .line 178
    .line 179
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 180
    const/4 v3, 0x0

    .line 181
    .line 182
    .line 183
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 184
    move-result-object v3

    .line 185
    .line 186
    .line 187
    invoke-direct {v1, v2, v3}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Float;)V

    .line 188
    .line 189
    const/16 v2, 0xe

    .line 190
    .line 191
    aput-object v1, v0, v2

    .line 192
    .line 193
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;

    .line 194
    .line 195
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 196
    .line 197
    const-wide/16 v3, 0x0

    .line 198
    .line 199
    .line 200
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 201
    move-result-object v3

    .line 202
    .line 203
    .line 204
    invoke-direct {v1, v2, v3}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Double;)V

    .line 205
    .line 206
    const/16 v2, 0xf

    .line 207
    .line 208
    aput-object v1, v0, v2

    .line 209
    .line 210
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$NumberDeserializer;

    .line 211
    .line 212
    .line 213
    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$NumberDeserializer;-><init>()V

    .line 214
    .line 215
    const/16 v2, 0x10

    .line 216
    .line 217
    aput-object v1, v0, v2

    .line 218
    .line 219
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigDecimalDeserializer;

    .line 220
    .line 221
    .line 222
    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigDecimalDeserializer;-><init>()V

    .line 223
    .line 224
    const/16 v2, 0x11

    .line 225
    .line 226
    aput-object v1, v0, v2

    .line 227
    .line 228
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigIntegerDeserializer;

    .line 229
    .line 230
    .line 231
    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigIntegerDeserializer;-><init>()V

    .line 232
    .line 233
    const/16 v2, 0x12

    .line 234
    .line 235
    aput-object v1, v0, v2

    .line 236
    return-object v0
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
    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_7

    .line 7
    .line 8
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 9
    .line 10
    if-ne p0, p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;->access$000()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;

    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    .line 17
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 18
    .line 19
    if-ne p0, p1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BooleanDeserializer;->access$100()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BooleanDeserializer;

    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    .line 26
    :cond_1
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 27
    .line 28
    if-ne p0, p1, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;->access$200()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;

    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    .line 35
    :cond_2
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 36
    .line 37
    if-ne p0, p1, :cond_3

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;->access$300()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;

    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    .line 44
    :cond_3
    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 45
    .line 46
    if-ne p0, p1, :cond_4

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;->access$400()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;

    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    .line 53
    :cond_4
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 54
    .line 55
    if-ne p0, p1, :cond_5

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;->access$500()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;

    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    .line 62
    :cond_5
    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 63
    .line 64
    if-ne p0, p1, :cond_6

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ShortDeserializer;->access$600()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ShortDeserializer;

    .line 68
    move-result-object p0

    .line 69
    return-object p0

    .line 70
    .line 71
    :cond_6
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 72
    .line 73
    if-ne p0, p1, :cond_12

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;->access$700()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;

    .line 77
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    .line 80
    :cond_7
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers;->_classNames:Ljava/util/HashSet;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 84
    move-result p1

    .line 85
    .line 86
    if-eqz p1, :cond_13

    .line 87
    .line 88
    const-class p1, Ljava/lang/Integer;

    .line 89
    .line 90
    if-ne p0, p1, :cond_8

    .line 91
    .line 92
    .line 93
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;->access$800()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;

    .line 94
    move-result-object p0

    .line 95
    return-object p0

    .line 96
    .line 97
    :cond_8
    const-class p1, Ljava/lang/Boolean;

    .line 98
    .line 99
    if-ne p0, p1, :cond_9

    .line 100
    .line 101
    .line 102
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BooleanDeserializer;->access$900()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BooleanDeserializer;

    .line 103
    move-result-object p0

    .line 104
    return-object p0

    .line 105
    .line 106
    :cond_9
    const-class p1, Ljava/lang/Long;

    .line 107
    .line 108
    if-ne p0, p1, :cond_a

    .line 109
    .line 110
    .line 111
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;->access$1000()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;

    .line 112
    move-result-object p0

    .line 113
    return-object p0

    .line 114
    .line 115
    :cond_a
    const-class p1, Ljava/lang/Double;

    .line 116
    .line 117
    if-ne p0, p1, :cond_b

    .line 118
    .line 119
    .line 120
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;->access$1100()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;

    .line 121
    move-result-object p0

    .line 122
    return-object p0

    .line 123
    .line 124
    :cond_b
    const-class p1, Ljava/lang/Character;

    .line 125
    .line 126
    if-ne p0, p1, :cond_c

    .line 127
    .line 128
    .line 129
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;->access$1200()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;

    .line 130
    move-result-object p0

    .line 131
    return-object p0

    .line 132
    .line 133
    :cond_c
    const-class p1, Ljava/lang/Byte;

    .line 134
    .line 135
    if-ne p0, p1, :cond_d

    .line 136
    .line 137
    .line 138
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;->access$1300()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;

    .line 139
    move-result-object p0

    .line 140
    return-object p0

    .line 141
    .line 142
    :cond_d
    const-class p1, Ljava/lang/Short;

    .line 143
    .line 144
    if-ne p0, p1, :cond_e

    .line 145
    .line 146
    .line 147
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ShortDeserializer;->access$1400()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ShortDeserializer;

    .line 148
    move-result-object p0

    .line 149
    return-object p0

    .line 150
    .line 151
    :cond_e
    const-class p1, Ljava/lang/Float;

    .line 152
    .line 153
    if-ne p0, p1, :cond_f

    .line 154
    .line 155
    .line 156
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;->access$1500()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;

    .line 157
    move-result-object p0

    .line 158
    return-object p0

    .line 159
    .line 160
    :cond_f
    const-class p1, Ljava/lang/Number;

    .line 161
    .line 162
    if-ne p0, p1, :cond_10

    .line 163
    .line 164
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$NumberDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$NumberDeserializer;

    .line 165
    return-object p0

    .line 166
    .line 167
    :cond_10
    const-class p1, Ljava/math/BigDecimal;

    .line 168
    .line 169
    if-ne p0, p1, :cond_11

    .line 170
    .line 171
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigDecimalDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigDecimalDeserializer;

    .line 172
    return-object p0

    .line 173
    .line 174
    :cond_11
    const-class p1, Ljava/math/BigInteger;

    .line 175
    .line 176
    if-ne p0, p1, :cond_12

    .line 177
    .line 178
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigIntegerDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigIntegerDeserializer;

    .line 179
    return-object p0

    .line 180
    .line 181
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 182
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    const-string v1, "Internal error: can\'t find deserializer for "

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 195
    move-result-object p0

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    move-result-object p0

    .line 203
    .line 204
    .line 205
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 206
    throw p1

    .line 207
    :cond_13
    const/4 p0, 0x0

    .line 208
    return-object p0
.end method
