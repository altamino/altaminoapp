.class public final enum Landroidx/datastore/preferences/protobuf/JavaType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/datastore/preferences/protobuf/JavaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/datastore/preferences/protobuf/JavaType;

.field public static final enum BOOLEAN:Landroidx/datastore/preferences/protobuf/JavaType;

.field public static final enum BYTE_STRING:Landroidx/datastore/preferences/protobuf/JavaType;

.field public static final enum DOUBLE:Landroidx/datastore/preferences/protobuf/JavaType;

.field public static final enum ENUM:Landroidx/datastore/preferences/protobuf/JavaType;

.field public static final enum FLOAT:Landroidx/datastore/preferences/protobuf/JavaType;

.field public static final enum INT:Landroidx/datastore/preferences/protobuf/JavaType;

.field public static final enum LONG:Landroidx/datastore/preferences/protobuf/JavaType;

.field public static final enum MESSAGE:Landroidx/datastore/preferences/protobuf/JavaType;

.field public static final enum STRING:Landroidx/datastore/preferences/protobuf/JavaType;

.field public static final enum VOID:Landroidx/datastore/preferences/protobuf/JavaType;


# instance fields
.field private final boxedType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final defaultDefault:Ljava/lang/Object;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 1
    .line 2
    new-instance v6, Landroidx/datastore/preferences/protobuf/JavaType;

    .line 3
    .line 4
    const-string v1, "VOID"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    const-class v3, Ljava/lang/Void;

    .line 8
    .line 9
    const-class v4, Ljava/lang/Void;

    .line 10
    const/4 v5, 0x0

    .line 11
    move-object v0, v6

    .line 12
    .line 13
    .line 14
    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 15
    .line 16
    sput-object v6, Landroidx/datastore/preferences/protobuf/JavaType;->VOID:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 17
    .line 18
    new-instance v0, Landroidx/datastore/preferences/protobuf/JavaType;

    .line 19
    .line 20
    const-string v8, "INT"

    .line 21
    const/4 v9, 0x1

    .line 22
    .line 23
    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 24
    .line 25
    const-class v11, Ljava/lang/Integer;

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v12

    .line 31
    move-object v7, v0

    .line 32
    move-object v10, v13

    .line 33
    .line 34
    .line 35
    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 36
    .line 37
    sput-object v0, Landroidx/datastore/preferences/protobuf/JavaType;->INT:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 38
    .line 39
    new-instance v2, Landroidx/datastore/preferences/protobuf/JavaType;

    .line 40
    .line 41
    const-string v15, "LONG"

    .line 42
    .line 43
    const/16 v16, 0x2

    .line 44
    .line 45
    sget-object v17, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 46
    .line 47
    const-class v18, Ljava/lang/Long;

    .line 48
    .line 49
    const-wide/16 v3, 0x0

    .line 50
    .line 51
    .line 52
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    move-result-object v19

    .line 54
    move-object v14, v2

    .line 55
    .line 56
    .line 57
    invoke-direct/range {v14 .. v19}, Landroidx/datastore/preferences/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 58
    .line 59
    sput-object v2, Landroidx/datastore/preferences/protobuf/JavaType;->LONG:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 60
    .line 61
    new-instance v3, Landroidx/datastore/preferences/protobuf/JavaType;

    .line 62
    .line 63
    const-string v8, "FLOAT"

    .line 64
    const/4 v9, 0x3

    .line 65
    .line 66
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 67
    .line 68
    const-class v11, Ljava/lang/Float;

    .line 69
    const/4 v4, 0x0

    .line 70
    .line 71
    .line 72
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 73
    move-result-object v12

    .line 74
    move-object v7, v3

    .line 75
    .line 76
    .line 77
    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 78
    .line 79
    sput-object v3, Landroidx/datastore/preferences/protobuf/JavaType;->FLOAT:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 80
    .line 81
    new-instance v4, Landroidx/datastore/preferences/protobuf/JavaType;

    .line 82
    .line 83
    const-string v15, "DOUBLE"

    .line 84
    .line 85
    const/16 v16, 0x4

    .line 86
    .line 87
    sget-object v17, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 88
    .line 89
    const-class v18, Ljava/lang/Double;

    .line 90
    .line 91
    const-wide/16 v7, 0x0

    .line 92
    .line 93
    .line 94
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 95
    move-result-object v19

    .line 96
    move-object v14, v4

    .line 97
    .line 98
    .line 99
    invoke-direct/range {v14 .. v19}, Landroidx/datastore/preferences/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 100
    .line 101
    sput-object v4, Landroidx/datastore/preferences/protobuf/JavaType;->DOUBLE:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 102
    .line 103
    new-instance v5, Landroidx/datastore/preferences/protobuf/JavaType;

    .line 104
    .line 105
    const-string v8, "BOOLEAN"

    .line 106
    const/4 v9, 0x5

    .line 107
    .line 108
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 109
    .line 110
    const-class v11, Ljava/lang/Boolean;

    .line 111
    .line 112
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 113
    move-object v7, v5

    .line 114
    .line 115
    .line 116
    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 117
    .line 118
    sput-object v5, Landroidx/datastore/preferences/protobuf/JavaType;->BOOLEAN:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 119
    .line 120
    new-instance v7, Landroidx/datastore/preferences/protobuf/JavaType;

    .line 121
    .line 122
    const-string v15, "STRING"

    .line 123
    .line 124
    const/16 v16, 0x6

    .line 125
    .line 126
    const-class v17, Ljava/lang/String;

    .line 127
    .line 128
    const-class v18, Ljava/lang/String;

    .line 129
    .line 130
    const-string v19, ""

    .line 131
    move-object v14, v7

    .line 132
    .line 133
    .line 134
    invoke-direct/range {v14 .. v19}, Landroidx/datastore/preferences/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 135
    .line 136
    sput-object v7, Landroidx/datastore/preferences/protobuf/JavaType;->STRING:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 137
    .line 138
    new-instance v8, Landroidx/datastore/preferences/protobuf/JavaType;

    .line 139
    .line 140
    const-string v21, "BYTE_STRING"

    .line 141
    .line 142
    const/16 v22, 0x7

    .line 143
    .line 144
    const-class v23, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 145
    .line 146
    const-class v24, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 147
    .line 148
    sget-object v25, Landroidx/datastore/preferences/protobuf/ByteString;->EMPTY:Landroidx/datastore/preferences/protobuf/ByteString;

    .line 149
    .line 150
    move-object/from16 v20, v8

    .line 151
    .line 152
    .line 153
    invoke-direct/range {v20 .. v25}, Landroidx/datastore/preferences/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 154
    .line 155
    sput-object v8, Landroidx/datastore/preferences/protobuf/JavaType;->BYTE_STRING:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 156
    .line 157
    new-instance v9, Landroidx/datastore/preferences/protobuf/JavaType;

    .line 158
    .line 159
    const-string v11, "ENUM"

    .line 160
    .line 161
    const/16 v12, 0x8

    .line 162
    .line 163
    const-class v14, Ljava/lang/Integer;

    .line 164
    const/4 v15, 0x0

    .line 165
    move-object v10, v9

    .line 166
    .line 167
    .line 168
    invoke-direct/range {v10 .. v15}, Landroidx/datastore/preferences/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 169
    .line 170
    sput-object v9, Landroidx/datastore/preferences/protobuf/JavaType;->ENUM:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 171
    .line 172
    new-instance v10, Landroidx/datastore/preferences/protobuf/JavaType;

    .line 173
    .line 174
    const-string v17, "MESSAGE"

    .line 175
    .line 176
    const/16 v18, 0x9

    .line 177
    .line 178
    const-class v19, Ljava/lang/Object;

    .line 179
    .line 180
    const-class v20, Ljava/lang/Object;

    .line 181
    .line 182
    const/16 v21, 0x0

    .line 183
    .line 184
    move-object/from16 v16, v10

    .line 185
    .line 186
    .line 187
    invoke-direct/range {v16 .. v21}, Landroidx/datastore/preferences/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 188
    .line 189
    sput-object v10, Landroidx/datastore/preferences/protobuf/JavaType;->MESSAGE:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 190
    .line 191
    const/16 v11, 0xa

    .line 192
    .line 193
    new-array v11, v11, [Landroidx/datastore/preferences/protobuf/JavaType;

    .line 194
    .line 195
    aput-object v6, v11, v1

    .line 196
    const/4 v1, 0x1

    .line 197
    .line 198
    aput-object v0, v11, v1

    .line 199
    const/4 v0, 0x2

    .line 200
    .line 201
    aput-object v2, v11, v0

    .line 202
    const/4 v0, 0x3

    .line 203
    .line 204
    aput-object v3, v11, v0

    .line 205
    const/4 v0, 0x4

    .line 206
    .line 207
    aput-object v4, v11, v0

    .line 208
    const/4 v0, 0x5

    .line 209
    .line 210
    aput-object v5, v11, v0

    .line 211
    const/4 v0, 0x6

    .line 212
    .line 213
    aput-object v7, v11, v0

    .line 214
    const/4 v0, 0x7

    .line 215
    .line 216
    aput-object v8, v11, v0

    .line 217
    .line 218
    const/16 v0, 0x8

    .line 219
    .line 220
    aput-object v9, v11, v0

    .line 221
    .line 222
    const/16 v0, 0x9

    .line 223
    .line 224
    aput-object v10, v11, v0

    .line 225
    .line 226
    sput-object v11, Landroidx/datastore/preferences/protobuf/JavaType;->$VALUES:[Landroidx/datastore/preferences/protobuf/JavaType;

    .line 227
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/datastore/preferences/protobuf/JavaType;->type:Ljava/lang/Class;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/datastore/preferences/protobuf/JavaType;->boxedType:Ljava/lang/Class;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/datastore/preferences/protobuf/JavaType;->defaultDefault:Ljava/lang/Object;

    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/JavaType;
    .locals 1

    .line 1
    .line 2
    const-class v0, Landroidx/datastore/preferences/protobuf/JavaType;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Landroidx/datastore/preferences/protobuf/JavaType;

    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/datastore/preferences/protobuf/JavaType;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroidx/datastore/preferences/protobuf/JavaType;->$VALUES:[Landroidx/datastore/preferences/protobuf/JavaType;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Landroidx/datastore/preferences/protobuf/JavaType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Landroidx/datastore/preferences/protobuf/JavaType;

    .line 9
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/JavaType;->boxedType:Ljava/lang/Class;

    return-object v0
.end method
