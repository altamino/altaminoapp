.class public final enum Lcom/fasterxml/jackson/databind/MapperFeature;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/cfg/ConfigFeature;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/databind/MapperFeature;",
        ">;",
        "Lcom/fasterxml/jackson/databind/cfg/ConfigFeature;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum ALLOW_FINAL_FIELDS_AS_MUTATORS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum AUTO_DETECT_CREATORS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum AUTO_DETECT_FIELDS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum AUTO_DETECT_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum AUTO_DETECT_IS_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum AUTO_DETECT_SETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum DEFAULT_VIEW_INCLUSION:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum INFER_PROPERTY_MUTATORS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum REQUIRE_SETTERS_FOR_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum SORT_PROPERTIES_ALPHABETICALLY:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum USE_ANNOTATIONS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum USE_GETTERS_AS_SETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum USE_STATIC_TYPING:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum USE_WRAPPER_NAME_AS_PROPERTY_NAME:Lcom/fasterxml/jackson/databind/MapperFeature;


# instance fields
.field private final _defaultState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 3
    .line 4
    const-string v1, "USE_ANNOTATIONS"

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 10
    .line 11
    sput-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_ANNOTATIONS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 12
    .line 13
    new-instance v1, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 14
    .line 15
    const-string v4, "AUTO_DETECT_CREATORS"

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v4, v3, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 19
    .line 20
    sput-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_CREATORS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 21
    .line 22
    new-instance v4, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 23
    .line 24
    const-string v5, "AUTO_DETECT_FIELDS"

    .line 25
    const/4 v6, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v4, v5, v6, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 29
    .line 30
    sput-object v4, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_FIELDS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 31
    .line 32
    new-instance v5, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 33
    .line 34
    const-string v7, "AUTO_DETECT_GETTERS"

    .line 35
    const/4 v8, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v5, v7, v8, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 39
    .line 40
    sput-object v5, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 41
    .line 42
    new-instance v7, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 43
    .line 44
    const-string v9, "AUTO_DETECT_IS_GETTERS"

    .line 45
    const/4 v10, 0x4

    .line 46
    .line 47
    .line 48
    invoke-direct {v7, v9, v10, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 49
    .line 50
    sput-object v7, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_IS_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 51
    .line 52
    new-instance v9, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 53
    .line 54
    const-string v11, "AUTO_DETECT_SETTERS"

    .line 55
    const/4 v12, 0x5

    .line 56
    .line 57
    .line 58
    invoke-direct {v9, v11, v12, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 59
    .line 60
    sput-object v9, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_SETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 61
    .line 62
    new-instance v11, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 63
    .line 64
    const-string v13, "REQUIRE_SETTERS_FOR_GETTERS"

    .line 65
    const/4 v14, 0x6

    .line 66
    .line 67
    .line 68
    invoke-direct {v11, v13, v14, v2}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 69
    .line 70
    sput-object v11, Lcom/fasterxml/jackson/databind/MapperFeature;->REQUIRE_SETTERS_FOR_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 71
    .line 72
    new-instance v13, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 73
    .line 74
    const-string v15, "USE_GETTERS_AS_SETTERS"

    .line 75
    const/4 v14, 0x7

    .line 76
    .line 77
    .line 78
    invoke-direct {v13, v15, v14, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 79
    .line 80
    sput-object v13, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_GETTERS_AS_SETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 81
    .line 82
    new-instance v15, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 83
    .line 84
    const-string v14, "CAN_OVERRIDE_ACCESS_MODIFIERS"

    .line 85
    .line 86
    const/16 v12, 0x8

    .line 87
    .line 88
    .line 89
    invoke-direct {v15, v14, v12, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 90
    .line 91
    sput-object v15, Lcom/fasterxml/jackson/databind/MapperFeature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 92
    .line 93
    new-instance v14, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 94
    .line 95
    const-string v12, "INFER_PROPERTY_MUTATORS"

    .line 96
    .line 97
    const/16 v10, 0x9

    .line 98
    .line 99
    .line 100
    invoke-direct {v14, v12, v10, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 101
    .line 102
    sput-object v14, Lcom/fasterxml/jackson/databind/MapperFeature;->INFER_PROPERTY_MUTATORS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 103
    .line 104
    new-instance v12, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 105
    .line 106
    const-string v10, "ALLOW_FINAL_FIELDS_AS_MUTATORS"

    .line 107
    .line 108
    const/16 v8, 0xa

    .line 109
    .line 110
    .line 111
    invoke-direct {v12, v10, v8, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 112
    .line 113
    sput-object v12, Lcom/fasterxml/jackson/databind/MapperFeature;->ALLOW_FINAL_FIELDS_AS_MUTATORS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 114
    .line 115
    new-instance v10, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 116
    .line 117
    const-string v8, "USE_STATIC_TYPING"

    .line 118
    .line 119
    const/16 v6, 0xb

    .line 120
    .line 121
    .line 122
    invoke-direct {v10, v8, v6, v2}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 123
    .line 124
    sput-object v10, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_STATIC_TYPING:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 125
    .line 126
    new-instance v8, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 127
    .line 128
    const-string v6, "DEFAULT_VIEW_INCLUSION"

    .line 129
    .line 130
    const/16 v2, 0xc

    .line 131
    .line 132
    .line 133
    invoke-direct {v8, v6, v2, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 134
    .line 135
    sput-object v8, Lcom/fasterxml/jackson/databind/MapperFeature;->DEFAULT_VIEW_INCLUSION:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 136
    .line 137
    new-instance v6, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 138
    .line 139
    const-string v2, "SORT_PROPERTIES_ALPHABETICALLY"

    .line 140
    .line 141
    const/16 v3, 0xd

    .line 142
    .line 143
    move-object/from16 v16, v8

    .line 144
    const/4 v8, 0x0

    .line 145
    .line 146
    .line 147
    invoke-direct {v6, v2, v3, v8}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 148
    .line 149
    sput-object v6, Lcom/fasterxml/jackson/databind/MapperFeature;->SORT_PROPERTIES_ALPHABETICALLY:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 150
    .line 151
    new-instance v2, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 152
    .line 153
    const-string v3, "USE_WRAPPER_NAME_AS_PROPERTY_NAME"

    .line 154
    .line 155
    move-object/from16 v17, v6

    .line 156
    .line 157
    const/16 v6, 0xe

    .line 158
    .line 159
    .line 160
    invoke-direct {v2, v3, v6, v8}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 161
    .line 162
    sput-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_WRAPPER_NAME_AS_PROPERTY_NAME:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 163
    .line 164
    const/16 v3, 0xf

    .line 165
    .line 166
    new-array v3, v3, [Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 167
    .line 168
    aput-object v0, v3, v8

    .line 169
    const/4 v0, 0x1

    .line 170
    .line 171
    aput-object v1, v3, v0

    .line 172
    const/4 v0, 0x2

    .line 173
    .line 174
    aput-object v4, v3, v0

    .line 175
    const/4 v0, 0x3

    .line 176
    .line 177
    aput-object v5, v3, v0

    .line 178
    const/4 v0, 0x4

    .line 179
    .line 180
    aput-object v7, v3, v0

    .line 181
    const/4 v0, 0x5

    .line 182
    .line 183
    aput-object v9, v3, v0

    .line 184
    const/4 v0, 0x6

    .line 185
    .line 186
    aput-object v11, v3, v0

    .line 187
    const/4 v0, 0x7

    .line 188
    .line 189
    aput-object v13, v3, v0

    .line 190
    .line 191
    const/16 v0, 0x8

    .line 192
    .line 193
    aput-object v15, v3, v0

    .line 194
    .line 195
    const/16 v0, 0x9

    .line 196
    .line 197
    aput-object v14, v3, v0

    .line 198
    .line 199
    const/16 v0, 0xa

    .line 200
    .line 201
    aput-object v12, v3, v0

    .line 202
    .line 203
    const/16 v0, 0xb

    .line 204
    .line 205
    aput-object v10, v3, v0

    .line 206
    .line 207
    const/16 v0, 0xc

    .line 208
    .line 209
    aput-object v16, v3, v0

    .line 210
    .line 211
    const/16 v0, 0xd

    .line 212
    .line 213
    aput-object v17, v3, v0

    .line 214
    .line 215
    aput-object v2, v3, v6

    .line 216
    .line 217
    sput-object v3, Lcom/fasterxml/jackson/databind/MapperFeature;->$VALUES:[Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 218
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/fasterxml/jackson/databind/MapperFeature;->_defaultState:Z

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/MapperFeature;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/databind/MapperFeature;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->$VALUES:[Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lcom/fasterxml/jackson/databind/MapperFeature;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 9
    return-object v0
.end method


# virtual methods
.method public enabledByDefault()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/MapperFeature;->_defaultState:Z

    return v0
.end method

.method public getMask()I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 5
    move-result v1

    .line 6
    shl-int/2addr v0, v1

    .line 7
    return v0
.end method
