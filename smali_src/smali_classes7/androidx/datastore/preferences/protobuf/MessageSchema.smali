.class final Landroidx/datastore/preferences/protobuf/MessageSchema;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/Schema;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/datastore/preferences/protobuf/Schema<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_INT_ARRAY:[I

.field private static final ENFORCE_UTF8_MASK:I = 0x20000000

.field private static final FIELD_TYPE_MASK:I = 0xff00000

.field private static final INTS_PER_FIELD:I = 0x3

.field private static final OFFSET_BITS:I = 0x14

.field private static final OFFSET_MASK:I = 0xfffff

.field static final ONEOF_TYPE_OFFSET:I = 0x33

.field private static final REQUIRED_MASK:I = 0x10000000

.field private static final UNSAFE:Lsun/misc/Unsafe;


# instance fields
.field private final buffer:[I

.field private final checkInitializedCount:I

.field private final defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

.field private final extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/ExtensionSchema<",
            "*>;"
        }
    .end annotation
.end field

.field private final hasExtensions:Z

.field private final intArray:[I

.field private final listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

.field private final lite:Z

.field private final mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

.field private final maxFieldNumber:I

.field private final minFieldNumber:I

.field private final newInstanceSchema:Landroidx/datastore/preferences/protobuf/NewInstanceSchema;

.field private final objects:[Ljava/lang/Object;

.field private final proto3:Z

.field private final repeatedFieldOffsetStart:I

.field private final unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation
.end field

.field private final useCachedSizeField:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    sput-object v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->G()Lsun/misc/Unsafe;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sput-object v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 12
    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/MessageLite;ZZ[IIILandroidx/datastore/preferences/protobuf/NewInstanceSchema;Landroidx/datastore/preferences/protobuf/ListFieldSchema;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MapFieldSchema;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Landroidx/datastore/preferences/protobuf/MessageLite;",
            "ZZ[III",
            "Landroidx/datastore/preferences/protobuf/NewInstanceSchema;",
            "Landroidx/datastore/preferences/protobuf/ListFieldSchema;",
            "Landroidx/datastore/preferences/protobuf/UnknownFieldSchema<",
            "**>;",
            "Landroidx/datastore/preferences/protobuf/ExtensionSchema<",
            "*>;",
            "Landroidx/datastore/preferences/protobuf/MapFieldSchema;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    iput-object p2, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    iput p3, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->minFieldNumber:I

    iput p4, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->maxFieldNumber:I

    .line 2
    instance-of p1, p5, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    iput-boolean p1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->lite:Z

    iput-boolean p6, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->proto3:Z

    if-eqz p14, :cond_0

    .line 3
    invoke-virtual {p14, p5}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->e(Landroidx/datastore/preferences/protobuf/MessageLite;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->hasExtensions:Z

    iput-boolean p7, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    iput-object p8, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->intArray:[I

    iput p9, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->checkInitializedCount:I

    iput p10, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    iput-object p11, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->newInstanceSchema:Landroidx/datastore/preferences/protobuf/NewInstanceSchema;

    iput-object p12, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    iput-object p13, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    iput-object p14, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    iput-object p5, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

    iput-object p15, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    return-void
.end method

.method private A(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->b0(I)I

    .line 4
    move-result p3

    .line 5
    .line 6
    .line 7
    const v0, 0xfffff

    .line 8
    and-int/2addr p3, v0

    .line 9
    int-to-long v0, p3

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 13
    move-result p1

    .line 14
    .line 15
    .line 16
    invoke-static {p2, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 17
    move-result p2

    .line 18
    .line 19
    if-ne p1, p2, :cond_0

    .line 20
    const/4 p1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    return p1
.end method

.method private B(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->b0(I)I

    .line 4
    move-result p3

    .line 5
    .line 6
    .line 7
    const v0, 0xfffff

    .line 8
    and-int/2addr p3, v0

    .line 9
    int-to-long v0, p3

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 13
    move-result p1

    .line 14
    .line 15
    if-ne p1, p2, :cond_0

    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    return p1
.end method

.method private static C(I)Z
    .locals 1

    .line 1
    const/high16 v0, 0x10000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static D(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    check-cast p0, Ljava/util/List;

    .line 7
    return-object p0
.end method

.method private static E(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->D(Ljava/lang/Object;J)J

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method private F(Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Reader;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Landroidx/datastore/preferences/protobuf/FieldSet$FieldDescriptorLite<",
            "TET;>;>(",
            "Landroidx/datastore/preferences/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;",
            "Landroidx/datastore/preferences/protobuf/ExtensionSchema<",
            "TET;>;TT;",
            "Landroidx/datastore/preferences/protobuf/Reader;",
            "Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v8, p0

    .line 3
    .line 4
    move-object/from16 v9, p1

    .line 5
    .line 6
    move-object/from16 v10, p3

    .line 7
    .line 8
    move-object/from16 v0, p4

    .line 9
    .line 10
    move-object/from16 v11, p5

    .line 11
    const/4 v12, 0x0

    .line 12
    move-object v13, v12

    .line 13
    move-object v14, v13

    .line 14
    .line 15
    .line 16
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->getFieldNumber()I

    .line 17
    move-result v1

    .line 18
    .line 19
    .line 20
    invoke-direct {v8, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->Z(I)I

    .line 21
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    if-gez v3, :cond_c

    .line 24
    .line 25
    .line 26
    const v2, 0x7fffffff

    .line 27
    .line 28
    if-ne v1, v2, :cond_3

    .line 29
    .line 30
    iget v0, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->checkInitializedCount:I

    .line 31
    .line 32
    :goto_1
    iget v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    .line 33
    .line 34
    if-ge v0, v1, :cond_1

    .line 35
    .line 36
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->intArray:[I

    .line 37
    .line 38
    aget v1, v1, v0

    .line 39
    .line 40
    .line 41
    invoke-direct {v8, v10, v1, v13, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    .line 42
    move-result-object v13

    .line 43
    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_1
    if-eqz v13, :cond_2

    .line 48
    .line 49
    .line 50
    invoke-virtual {v9, v10, v13}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    :cond_2
    return-void

    .line 52
    .line 53
    :cond_3
    :try_start_1
    iget-boolean v2, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->hasExtensions:Z

    .line 54
    .line 55
    if-nez v2, :cond_4

    .line 56
    .line 57
    move-object/from16 v15, p2

    .line 58
    move-object v3, v12

    .line 59
    goto :goto_2

    .line 60
    .line 61
    :cond_4
    iget-object v2, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 62
    .line 63
    move-object/from16 v15, p2

    .line 64
    .line 65
    .line 66
    invoke-virtual {v15, v11, v2, v1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->b(Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/MessageLite;I)Ljava/lang/Object;

    .line 67
    move-result-object v1

    .line 68
    move-object v3, v1

    .line 69
    .line 70
    :goto_2
    if-eqz v3, :cond_6

    .line 71
    .line 72
    if-nez v14, :cond_5

    .line 73
    .line 74
    .line 75
    invoke-virtual/range {p2 .. p3}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->d(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;

    .line 76
    move-result-object v1

    .line 77
    move-object v14, v1

    .line 78
    goto :goto_3

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    .line 81
    goto/16 :goto_b

    .line 82
    .line 83
    :cond_5
    :goto_3
    move-object/from16 v1, p2

    .line 84
    .line 85
    move-object/from16 v2, p4

    .line 86
    .line 87
    move-object/from16 v4, p5

    .line 88
    move-object v5, v14

    .line 89
    move-object v6, v13

    .line 90
    .line 91
    move-object/from16 v7, p1

    .line 92
    .line 93
    .line 94
    invoke-virtual/range {v1 .. v7}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->g(Landroidx/datastore/preferences/protobuf/Reader;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/FieldSet;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    .line 95
    move-result-object v13

    .line 96
    goto :goto_0

    .line 97
    .line 98
    .line 99
    :cond_6
    invoke-virtual {v9, v0}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->q(Landroidx/datastore/preferences/protobuf/Reader;)Z

    .line 100
    move-result v1

    .line 101
    .line 102
    if-eqz v1, :cond_7

    .line 103
    .line 104
    .line 105
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->skipField()Z

    .line 106
    move-result v1

    .line 107
    .line 108
    if-eqz v1, :cond_9

    .line 109
    goto :goto_0

    .line 110
    .line 111
    :cond_7
    if-nez v13, :cond_8

    .line 112
    .line 113
    .line 114
    invoke-virtual {v9, v10}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    move-result-object v1

    .line 116
    move-object v13, v1

    .line 117
    .line 118
    .line 119
    :cond_8
    invoke-virtual {v9, v13, v0}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->m(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Reader;)Z

    .line 120
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    .line 122
    if-eqz v1, :cond_9

    .line 123
    goto :goto_0

    .line 124
    .line 125
    :cond_9
    iget v0, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->checkInitializedCount:I

    .line 126
    .line 127
    :goto_4
    iget v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    .line 128
    .line 129
    if-ge v0, v1, :cond_a

    .line 130
    .line 131
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->intArray:[I

    .line 132
    .line 133
    aget v1, v1, v0

    .line 134
    .line 135
    .line 136
    invoke-direct {v8, v10, v1, v13, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    .line 137
    move-result-object v13

    .line 138
    .line 139
    add-int/lit8 v0, v0, 0x1

    .line 140
    goto :goto_4

    .line 141
    .line 142
    :cond_a
    if-eqz v13, :cond_b

    .line 143
    .line 144
    .line 145
    invoke-virtual {v9, v10, v13}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    :cond_b
    return-void

    .line 147
    .line 148
    :cond_c
    move-object/from16 v15, p2

    .line 149
    .line 150
    .line 151
    :try_start_2
    invoke-direct {v8, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m0(I)I

    .line 152
    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    .line 154
    .line 155
    :try_start_3
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->l0(I)I

    .line 156
    move-result v2

    .line 157
    .line 158
    .line 159
    packed-switch v2, :pswitch_data_0

    .line 160
    .line 161
    if-nez v13, :cond_d

    .line 162
    .line 163
    .line 164
    invoke-virtual/range {p1 .. p1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->n()Ljava/lang/Object;

    .line 165
    move-result-object v13

    .line 166
    .line 167
    .line 168
    :cond_d
    invoke-virtual {v9, v13, v0}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->m(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Reader;)Z

    .line 169
    move-result v1
    :try_end_3
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 170
    .line 171
    if-nez v1, :cond_0

    .line 172
    .line 173
    iget v0, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->checkInitializedCount:I

    .line 174
    .line 175
    :goto_5
    iget v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    .line 176
    .line 177
    if-ge v0, v1, :cond_e

    .line 178
    .line 179
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->intArray:[I

    .line 180
    .line 181
    aget v1, v1, v0

    .line 182
    .line 183
    .line 184
    invoke-direct {v8, v10, v1, v13, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    .line 185
    move-result-object v13

    .line 186
    .line 187
    add-int/lit8 v0, v0, 0x1

    .line 188
    goto :goto_5

    .line 189
    .line 190
    :cond_e
    if-eqz v13, :cond_f

    .line 191
    .line 192
    .line 193
    invoke-virtual {v9, v10, v13}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 194
    :cond_f
    return-void

    .line 195
    .line 196
    .line 197
    :pswitch_0
    :try_start_4
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 198
    move-result-wide v4

    .line 199
    .line 200
    .line 201
    invoke-direct {v8, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 202
    move-result-object v2

    .line 203
    .line 204
    .line 205
    invoke-interface {v0, v2, v11}, Landroidx/datastore/preferences/protobuf/Reader;->a(Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    .line 206
    move-result-object v2

    .line 207
    .line 208
    .line 209
    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->V(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->i0(Ljava/lang/Object;II)V

    .line 213
    .line 214
    goto/16 :goto_0

    .line 215
    .line 216
    .line 217
    :pswitch_1
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 218
    move-result-wide v4

    .line 219
    .line 220
    .line 221
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readSInt64()J

    .line 222
    move-result-wide v6

    .line 223
    .line 224
    .line 225
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 226
    move-result-object v2

    .line 227
    .line 228
    .line 229
    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->V(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->i0(Ljava/lang/Object;II)V

    .line 233
    .line 234
    goto/16 :goto_0

    .line 235
    .line 236
    .line 237
    :pswitch_2
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 238
    move-result-wide v4

    .line 239
    .line 240
    .line 241
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readSInt32()I

    .line 242
    move-result v2

    .line 243
    .line 244
    .line 245
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 246
    move-result-object v2

    .line 247
    .line 248
    .line 249
    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->V(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->i0(Ljava/lang/Object;II)V

    .line 253
    .line 254
    goto/16 :goto_0

    .line 255
    .line 256
    .line 257
    :pswitch_3
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 258
    move-result-wide v4

    .line 259
    .line 260
    .line 261
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readSFixed64()J

    .line 262
    move-result-wide v6

    .line 263
    .line 264
    .line 265
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 266
    move-result-object v2

    .line 267
    .line 268
    .line 269
    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->V(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->i0(Ljava/lang/Object;II)V

    .line 273
    .line 274
    goto/16 :goto_0

    .line 275
    .line 276
    .line 277
    :pswitch_4
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 278
    move-result-wide v4

    .line 279
    .line 280
    .line 281
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readSFixed32()I

    .line 282
    move-result v2

    .line 283
    .line 284
    .line 285
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    move-result-object v2

    .line 287
    .line 288
    .line 289
    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->V(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->i0(Ljava/lang/Object;II)V

    .line 293
    .line 294
    goto/16 :goto_0

    .line 295
    .line 296
    .line 297
    :pswitch_5
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readEnum()I

    .line 298
    move-result v2

    .line 299
    .line 300
    .line 301
    invoke-direct {v8, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    .line 302
    move-result-object v5

    .line 303
    .line 304
    if-eqz v5, :cond_11

    .line 305
    .line 306
    .line 307
    invoke-interface {v5, v2}, Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    .line 308
    move-result v5

    .line 309
    .line 310
    if-eqz v5, :cond_10

    .line 311
    goto :goto_6

    .line 312
    .line 313
    .line 314
    :cond_10
    invoke-static {v1, v2, v13, v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->L(IILjava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    .line 315
    move-result-object v13

    .line 316
    .line 317
    goto/16 :goto_0

    .line 318
    .line 319
    .line 320
    :cond_11
    :goto_6
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 321
    move-result-wide v4

    .line 322
    .line 323
    .line 324
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 325
    move-result-object v2

    .line 326
    .line 327
    .line 328
    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->V(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->i0(Ljava/lang/Object;II)V

    .line 332
    .line 333
    goto/16 :goto_0

    .line 334
    .line 335
    .line 336
    :pswitch_6
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 337
    move-result-wide v4

    .line 338
    .line 339
    .line 340
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readUInt32()I

    .line 341
    move-result v2

    .line 342
    .line 343
    .line 344
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 345
    move-result-object v2

    .line 346
    .line 347
    .line 348
    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->V(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->i0(Ljava/lang/Object;II)V

    .line 352
    .line 353
    goto/16 :goto_0

    .line 354
    .line 355
    .line 356
    :pswitch_7
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 357
    move-result-wide v4

    .line 358
    .line 359
    .line 360
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    .line 361
    move-result-object v2

    .line 362
    .line 363
    .line 364
    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->V(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->i0(Ljava/lang/Object;II)V

    .line 368
    .line 369
    goto/16 :goto_0

    .line 370
    .line 371
    .line 372
    :pswitch_8
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 373
    move-result v2

    .line 374
    .line 375
    if-eqz v2, :cond_12

    .line 376
    .line 377
    .line 378
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 379
    move-result-wide v5

    .line 380
    .line 381
    .line 382
    invoke-static {v10, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 383
    move-result-object v2

    .line 384
    .line 385
    .line 386
    invoke-direct {v8, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 387
    move-result-object v5

    .line 388
    .line 389
    .line 390
    invoke-interface {v0, v5, v11}, Landroidx/datastore/preferences/protobuf/Reader;->c(Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    .line 391
    move-result-object v5

    .line 392
    .line 393
    .line 394
    invoke-static {v2, v5}, Landroidx/datastore/preferences/protobuf/Internal;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    move-result-object v2

    .line 396
    .line 397
    .line 398
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 399
    move-result-wide v4

    .line 400
    .line 401
    .line 402
    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->V(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 403
    goto :goto_7

    .line 404
    .line 405
    .line 406
    :cond_12
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 407
    move-result-wide v4

    .line 408
    .line 409
    .line 410
    invoke-direct {v8, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 411
    move-result-object v2

    .line 412
    .line 413
    .line 414
    invoke-interface {v0, v2, v11}, Landroidx/datastore/preferences/protobuf/Reader;->c(Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    .line 415
    move-result-object v2

    .line 416
    .line 417
    .line 418
    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->V(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h0(Ljava/lang/Object;I)V

    .line 422
    .line 423
    .line 424
    :goto_7
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->i0(Ljava/lang/Object;II)V

    .line 425
    .line 426
    goto/16 :goto_0

    .line 427
    .line 428
    .line 429
    :pswitch_9
    invoke-direct {v8, v10, v4, v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->e0(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/Reader;)V

    .line 430
    .line 431
    .line 432
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->i0(Ljava/lang/Object;II)V

    .line 433
    .line 434
    goto/16 :goto_0

    .line 435
    .line 436
    .line 437
    :pswitch_a
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 438
    move-result-wide v4

    .line 439
    .line 440
    .line 441
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readBool()Z

    .line 442
    move-result v2

    .line 443
    .line 444
    .line 445
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 446
    move-result-object v2

    .line 447
    .line 448
    .line 449
    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->V(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 450
    .line 451
    .line 452
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->i0(Ljava/lang/Object;II)V

    .line 453
    .line 454
    goto/16 :goto_0

    .line 455
    .line 456
    .line 457
    :pswitch_b
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 458
    move-result-wide v4

    .line 459
    .line 460
    .line 461
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readFixed32()I

    .line 462
    move-result v2

    .line 463
    .line 464
    .line 465
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 466
    move-result-object v2

    .line 467
    .line 468
    .line 469
    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->V(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 470
    .line 471
    .line 472
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->i0(Ljava/lang/Object;II)V

    .line 473
    .line 474
    goto/16 :goto_0

    .line 475
    .line 476
    .line 477
    :pswitch_c
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 478
    move-result-wide v4

    .line 479
    .line 480
    .line 481
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readFixed64()J

    .line 482
    move-result-wide v6

    .line 483
    .line 484
    .line 485
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 486
    move-result-object v2

    .line 487
    .line 488
    .line 489
    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->V(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 490
    .line 491
    .line 492
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->i0(Ljava/lang/Object;II)V

    .line 493
    .line 494
    goto/16 :goto_0

    .line 495
    .line 496
    .line 497
    :pswitch_d
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 498
    move-result-wide v4

    .line 499
    .line 500
    .line 501
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readInt32()I

    .line 502
    move-result v2

    .line 503
    .line 504
    .line 505
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 506
    move-result-object v2

    .line 507
    .line 508
    .line 509
    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->V(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 510
    .line 511
    .line 512
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->i0(Ljava/lang/Object;II)V

    .line 513
    .line 514
    goto/16 :goto_0

    .line 515
    .line 516
    .line 517
    :pswitch_e
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 518
    move-result-wide v4

    .line 519
    .line 520
    .line 521
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readUInt64()J

    .line 522
    move-result-wide v6

    .line 523
    .line 524
    .line 525
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 526
    move-result-object v2

    .line 527
    .line 528
    .line 529
    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->V(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 530
    .line 531
    .line 532
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->i0(Ljava/lang/Object;II)V

    .line 533
    .line 534
    goto/16 :goto_0

    .line 535
    .line 536
    .line 537
    :pswitch_f
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 538
    move-result-wide v4

    .line 539
    .line 540
    .line 541
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readInt64()J

    .line 542
    move-result-wide v6

    .line 543
    .line 544
    .line 545
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 546
    move-result-object v2

    .line 547
    .line 548
    .line 549
    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->V(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 550
    .line 551
    .line 552
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->i0(Ljava/lang/Object;II)V

    .line 553
    .line 554
    goto/16 :goto_0

    .line 555
    .line 556
    .line 557
    :pswitch_10
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 558
    move-result-wide v4

    .line 559
    .line 560
    .line 561
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readFloat()F

    .line 562
    move-result v2

    .line 563
    .line 564
    .line 565
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 566
    move-result-object v2

    .line 567
    .line 568
    .line 569
    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->V(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 570
    .line 571
    .line 572
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->i0(Ljava/lang/Object;II)V

    .line 573
    .line 574
    goto/16 :goto_0

    .line 575
    .line 576
    .line 577
    :pswitch_11
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 578
    move-result-wide v4

    .line 579
    .line 580
    .line 581
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readDouble()D

    .line 582
    move-result-wide v6

    .line 583
    .line 584
    .line 585
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 586
    move-result-object v2

    .line 587
    .line 588
    .line 589
    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->V(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 590
    .line 591
    .line 592
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->i0(Ljava/lang/Object;II)V

    .line 593
    .line 594
    goto/16 :goto_0

    .line 595
    .line 596
    .line 597
    :pswitch_12
    invoke-direct {v8, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Ljava/lang/Object;

    .line 598
    move-result-object v4

    .line 599
    .line 600
    move-object/from16 v1, p0

    .line 601
    .line 602
    move-object/from16 v2, p3

    .line 603
    .line 604
    move-object/from16 v5, p5

    .line 605
    .line 606
    move-object/from16 v6, p4

    .line 607
    .line 608
    .line 609
    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->G(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/Reader;)V

    .line 610
    .line 611
    goto/16 :goto_0

    .line 612
    .line 613
    .line 614
    :pswitch_13
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 615
    move-result-wide v4

    .line 616
    .line 617
    .line 618
    invoke-direct {v8, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 619
    move-result-object v6

    .line 620
    .line 621
    move-object/from16 v1, p0

    .line 622
    .line 623
    move-object/from16 v2, p3

    .line 624
    move-wide v3, v4

    .line 625
    .line 626
    move-object/from16 v5, p4

    .line 627
    .line 628
    move-object/from16 v7, p5

    .line 629
    .line 630
    .line 631
    invoke-direct/range {v1 .. v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->c0(Ljava/lang/Object;JLandroidx/datastore/preferences/protobuf/Reader;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    .line 632
    .line 633
    goto/16 :goto_0

    .line 634
    .line 635
    :pswitch_14
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 636
    .line 637
    .line 638
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 639
    move-result-wide v2

    .line 640
    .line 641
    .line 642
    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->e(Ljava/lang/Object;J)Ljava/util/List;

    .line 643
    move-result-object v1

    .line 644
    .line 645
    .line 646
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readSInt64List(Ljava/util/List;)V

    .line 647
    .line 648
    goto/16 :goto_0

    .line 649
    .line 650
    :pswitch_15
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 651
    .line 652
    .line 653
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 654
    move-result-wide v2

    .line 655
    .line 656
    .line 657
    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->e(Ljava/lang/Object;J)Ljava/util/List;

    .line 658
    move-result-object v1

    .line 659
    .line 660
    .line 661
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readSInt32List(Ljava/util/List;)V

    .line 662
    .line 663
    goto/16 :goto_0

    .line 664
    .line 665
    :pswitch_16
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 666
    .line 667
    .line 668
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 669
    move-result-wide v2

    .line 670
    .line 671
    .line 672
    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->e(Ljava/lang/Object;J)Ljava/util/List;

    .line 673
    move-result-object v1

    .line 674
    .line 675
    .line 676
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readSFixed64List(Ljava/util/List;)V

    .line 677
    .line 678
    goto/16 :goto_0

    .line 679
    .line 680
    :pswitch_17
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 681
    .line 682
    .line 683
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 684
    move-result-wide v2

    .line 685
    .line 686
    .line 687
    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->e(Ljava/lang/Object;J)Ljava/util/List;

    .line 688
    move-result-object v1

    .line 689
    .line 690
    .line 691
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readSFixed32List(Ljava/util/List;)V

    .line 692
    .line 693
    goto/16 :goto_0

    .line 694
    .line 695
    :pswitch_18
    iget-object v2, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 696
    .line 697
    .line 698
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 699
    move-result-wide v4

    .line 700
    .line 701
    .line 702
    invoke-virtual {v2, v10, v4, v5}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->e(Ljava/lang/Object;J)Ljava/util/List;

    .line 703
    move-result-object v2

    .line 704
    .line 705
    .line 706
    invoke-interface {v0, v2}, Landroidx/datastore/preferences/protobuf/Reader;->readEnumList(Ljava/util/List;)V

    .line 707
    .line 708
    .line 709
    invoke-direct {v8, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    .line 710
    move-result-object v3

    .line 711
    .line 712
    .line 713
    invoke-static {v1, v2, v3, v13, v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->A(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    .line 714
    move-result-object v13

    .line 715
    .line 716
    goto/16 :goto_0

    .line 717
    .line 718
    :pswitch_19
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 719
    .line 720
    .line 721
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 722
    move-result-wide v2

    .line 723
    .line 724
    .line 725
    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->e(Ljava/lang/Object;J)Ljava/util/List;

    .line 726
    move-result-object v1

    .line 727
    .line 728
    .line 729
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readUInt32List(Ljava/util/List;)V

    .line 730
    .line 731
    goto/16 :goto_0

    .line 732
    .line 733
    :pswitch_1a
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 734
    .line 735
    .line 736
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 737
    move-result-wide v2

    .line 738
    .line 739
    .line 740
    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->e(Ljava/lang/Object;J)Ljava/util/List;

    .line 741
    move-result-object v1

    .line 742
    .line 743
    .line 744
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readBoolList(Ljava/util/List;)V

    .line 745
    .line 746
    goto/16 :goto_0

    .line 747
    .line 748
    :pswitch_1b
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 749
    .line 750
    .line 751
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 752
    move-result-wide v2

    .line 753
    .line 754
    .line 755
    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->e(Ljava/lang/Object;J)Ljava/util/List;

    .line 756
    move-result-object v1

    .line 757
    .line 758
    .line 759
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readFixed32List(Ljava/util/List;)V

    .line 760
    .line 761
    goto/16 :goto_0

    .line 762
    .line 763
    :pswitch_1c
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 764
    .line 765
    .line 766
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 767
    move-result-wide v2

    .line 768
    .line 769
    .line 770
    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->e(Ljava/lang/Object;J)Ljava/util/List;

    .line 771
    move-result-object v1

    .line 772
    .line 773
    .line 774
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readFixed64List(Ljava/util/List;)V

    .line 775
    .line 776
    goto/16 :goto_0

    .line 777
    .line 778
    :pswitch_1d
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 779
    .line 780
    .line 781
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 782
    move-result-wide v2

    .line 783
    .line 784
    .line 785
    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->e(Ljava/lang/Object;J)Ljava/util/List;

    .line 786
    move-result-object v1

    .line 787
    .line 788
    .line 789
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readInt32List(Ljava/util/List;)V

    .line 790
    .line 791
    goto/16 :goto_0

    .line 792
    .line 793
    :pswitch_1e
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 794
    .line 795
    .line 796
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 797
    move-result-wide v2

    .line 798
    .line 799
    .line 800
    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->e(Ljava/lang/Object;J)Ljava/util/List;

    .line 801
    move-result-object v1

    .line 802
    .line 803
    .line 804
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readUInt64List(Ljava/util/List;)V

    .line 805
    .line 806
    goto/16 :goto_0

    .line 807
    .line 808
    :pswitch_1f
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 809
    .line 810
    .line 811
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 812
    move-result-wide v2

    .line 813
    .line 814
    .line 815
    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->e(Ljava/lang/Object;J)Ljava/util/List;

    .line 816
    move-result-object v1

    .line 817
    .line 818
    .line 819
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readInt64List(Ljava/util/List;)V

    .line 820
    .line 821
    goto/16 :goto_0

    .line 822
    .line 823
    :pswitch_20
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 824
    .line 825
    .line 826
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 827
    move-result-wide v2

    .line 828
    .line 829
    .line 830
    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->e(Ljava/lang/Object;J)Ljava/util/List;

    .line 831
    move-result-object v1

    .line 832
    .line 833
    .line 834
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readFloatList(Ljava/util/List;)V

    .line 835
    .line 836
    goto/16 :goto_0

    .line 837
    .line 838
    :pswitch_21
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 839
    .line 840
    .line 841
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 842
    move-result-wide v2

    .line 843
    .line 844
    .line 845
    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->e(Ljava/lang/Object;J)Ljava/util/List;

    .line 846
    move-result-object v1

    .line 847
    .line 848
    .line 849
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readDoubleList(Ljava/util/List;)V

    .line 850
    .line 851
    goto/16 :goto_0

    .line 852
    .line 853
    :pswitch_22
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 854
    .line 855
    .line 856
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 857
    move-result-wide v2

    .line 858
    .line 859
    .line 860
    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->e(Ljava/lang/Object;J)Ljava/util/List;

    .line 861
    move-result-object v1

    .line 862
    .line 863
    .line 864
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readSInt64List(Ljava/util/List;)V

    .line 865
    .line 866
    goto/16 :goto_0

    .line 867
    .line 868
    :pswitch_23
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 869
    .line 870
    .line 871
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 872
    move-result-wide v2

    .line 873
    .line 874
    .line 875
    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->e(Ljava/lang/Object;J)Ljava/util/List;

    .line 876
    move-result-object v1

    .line 877
    .line 878
    .line 879
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readSInt32List(Ljava/util/List;)V

    .line 880
    .line 881
    goto/16 :goto_0

    .line 882
    .line 883
    :pswitch_24
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 884
    .line 885
    .line 886
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 887
    move-result-wide v2

    .line 888
    .line 889
    .line 890
    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->e(Ljava/lang/Object;J)Ljava/util/List;

    .line 891
    move-result-object v1

    .line 892
    .line 893
    .line 894
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readSFixed64List(Ljava/util/List;)V

    .line 895
    .line 896
    goto/16 :goto_0

    .line 897
    .line 898
    :pswitch_25
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 899
    .line 900
    .line 901
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 902
    move-result-wide v2

    .line 903
    .line 904
    .line 905
    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->e(Ljava/lang/Object;J)Ljava/util/List;

    .line 906
    move-result-object v1

    .line 907
    .line 908
    .line 909
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readSFixed32List(Ljava/util/List;)V

    .line 910
    .line 911
    goto/16 :goto_0

    .line 912
    .line 913
    :pswitch_26
    iget-object v2, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 914
    .line 915
    .line 916
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 917
    move-result-wide v4

    .line 918
    .line 919
    .line 920
    invoke-virtual {v2, v10, v4, v5}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->e(Ljava/lang/Object;J)Ljava/util/List;

    .line 921
    move-result-object v2

    .line 922
    .line 923
    .line 924
    invoke-interface {v0, v2}, Landroidx/datastore/preferences/protobuf/Reader;->readEnumList(Ljava/util/List;)V

    .line 925
    .line 926
    .line 927
    invoke-direct {v8, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    .line 928
    move-result-object v3

    .line 929
    .line 930
    .line 931
    invoke-static {v1, v2, v3, v13, v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->A(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    .line 932
    move-result-object v13

    .line 933
    .line 934
    goto/16 :goto_0

    .line 935
    .line 936
    :pswitch_27
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 937
    .line 938
    .line 939
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 940
    move-result-wide v2

    .line 941
    .line 942
    .line 943
    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->e(Ljava/lang/Object;J)Ljava/util/List;

    .line 944
    move-result-object v1

    .line 945
    .line 946
    .line 947
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readUInt32List(Ljava/util/List;)V

    .line 948
    .line 949
    goto/16 :goto_0

    .line 950
    .line 951
    :pswitch_28
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 952
    .line 953
    .line 954
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 955
    move-result-wide v2

    .line 956
    .line 957
    .line 958
    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->e(Ljava/lang/Object;J)Ljava/util/List;

    .line 959
    move-result-object v1

    .line 960
    .line 961
    .line 962
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readBytesList(Ljava/util/List;)V

    .line 963
    .line 964
    goto/16 :goto_0

    .line 965
    .line 966
    .line 967
    :pswitch_29
    invoke-direct {v8, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 968
    move-result-object v5

    .line 969
    .line 970
    move-object/from16 v1, p0

    .line 971
    .line 972
    move-object/from16 v2, p3

    .line 973
    move v3, v4

    .line 974
    .line 975
    move-object/from16 v4, p4

    .line 976
    .line 977
    move-object/from16 v6, p5

    .line 978
    .line 979
    .line 980
    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->d0(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/Reader;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    .line 981
    .line 982
    goto/16 :goto_0

    .line 983
    .line 984
    .line 985
    :pswitch_2a
    invoke-direct {v8, v10, v4, v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->f0(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/Reader;)V

    .line 986
    .line 987
    goto/16 :goto_0

    .line 988
    .line 989
    :pswitch_2b
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 990
    .line 991
    .line 992
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 993
    move-result-wide v2

    .line 994
    .line 995
    .line 996
    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->e(Ljava/lang/Object;J)Ljava/util/List;

    .line 997
    move-result-object v1

    .line 998
    .line 999
    .line 1000
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readBoolList(Ljava/util/List;)V

    .line 1001
    .line 1002
    goto/16 :goto_0

    .line 1003
    .line 1004
    :pswitch_2c
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 1005
    .line 1006
    .line 1007
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1008
    move-result-wide v2

    .line 1009
    .line 1010
    .line 1011
    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->e(Ljava/lang/Object;J)Ljava/util/List;

    .line 1012
    move-result-object v1

    .line 1013
    .line 1014
    .line 1015
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readFixed32List(Ljava/util/List;)V

    .line 1016
    .line 1017
    goto/16 :goto_0

    .line 1018
    .line 1019
    :pswitch_2d
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 1020
    .line 1021
    .line 1022
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1023
    move-result-wide v2

    .line 1024
    .line 1025
    .line 1026
    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->e(Ljava/lang/Object;J)Ljava/util/List;

    .line 1027
    move-result-object v1

    .line 1028
    .line 1029
    .line 1030
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readFixed64List(Ljava/util/List;)V

    .line 1031
    .line 1032
    goto/16 :goto_0

    .line 1033
    .line 1034
    :pswitch_2e
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 1035
    .line 1036
    .line 1037
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1038
    move-result-wide v2

    .line 1039
    .line 1040
    .line 1041
    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->e(Ljava/lang/Object;J)Ljava/util/List;

    .line 1042
    move-result-object v1

    .line 1043
    .line 1044
    .line 1045
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readInt32List(Ljava/util/List;)V

    .line 1046
    .line 1047
    goto/16 :goto_0

    .line 1048
    .line 1049
    :pswitch_2f
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 1050
    .line 1051
    .line 1052
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1053
    move-result-wide v2

    .line 1054
    .line 1055
    .line 1056
    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->e(Ljava/lang/Object;J)Ljava/util/List;

    .line 1057
    move-result-object v1

    .line 1058
    .line 1059
    .line 1060
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readUInt64List(Ljava/util/List;)V

    .line 1061
    .line 1062
    goto/16 :goto_0

    .line 1063
    .line 1064
    :pswitch_30
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 1065
    .line 1066
    .line 1067
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1068
    move-result-wide v2

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->e(Ljava/lang/Object;J)Ljava/util/List;

    .line 1072
    move-result-object v1

    .line 1073
    .line 1074
    .line 1075
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readInt64List(Ljava/util/List;)V

    .line 1076
    .line 1077
    goto/16 :goto_0

    .line 1078
    .line 1079
    :pswitch_31
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 1080
    .line 1081
    .line 1082
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1083
    move-result-wide v2

    .line 1084
    .line 1085
    .line 1086
    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->e(Ljava/lang/Object;J)Ljava/util/List;

    .line 1087
    move-result-object v1

    .line 1088
    .line 1089
    .line 1090
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readFloatList(Ljava/util/List;)V

    .line 1091
    .line 1092
    goto/16 :goto_0

    .line 1093
    .line 1094
    :pswitch_32
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 1095
    .line 1096
    .line 1097
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1098
    move-result-wide v2

    .line 1099
    .line 1100
    .line 1101
    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->e(Ljava/lang/Object;J)Ljava/util/List;

    .line 1102
    move-result-object v1

    .line 1103
    .line 1104
    .line 1105
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readDoubleList(Ljava/util/List;)V

    .line 1106
    .line 1107
    goto/16 :goto_0

    .line 1108
    .line 1109
    .line 1110
    :pswitch_33
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1111
    move-result v1

    .line 1112
    .line 1113
    if-eqz v1, :cond_13

    .line 1114
    .line 1115
    .line 1116
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1117
    move-result-wide v1

    .line 1118
    .line 1119
    .line 1120
    invoke-static {v10, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1121
    move-result-object v1

    .line 1122
    .line 1123
    .line 1124
    invoke-direct {v8, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 1125
    move-result-object v2

    .line 1126
    .line 1127
    .line 1128
    invoke-interface {v0, v2, v11}, Landroidx/datastore/preferences/protobuf/Reader;->a(Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    .line 1129
    move-result-object v2

    .line 1130
    .line 1131
    .line 1132
    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/Internal;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    move-result-object v1

    .line 1134
    .line 1135
    .line 1136
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1137
    move-result-wide v2

    .line 1138
    .line 1139
    .line 1140
    invoke-static {v10, v2, v3, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->V(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1141
    .line 1142
    goto/16 :goto_0

    .line 1143
    .line 1144
    .line 1145
    :cond_13
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1146
    move-result-wide v1

    .line 1147
    .line 1148
    .line 1149
    invoke-direct {v8, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 1150
    move-result-object v4

    .line 1151
    .line 1152
    .line 1153
    invoke-interface {v0, v4, v11}, Landroidx/datastore/preferences/protobuf/Reader;->a(Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    .line 1154
    move-result-object v4

    .line 1155
    .line 1156
    .line 1157
    invoke-static {v10, v1, v2, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->V(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1158
    .line 1159
    .line 1160
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h0(Ljava/lang/Object;I)V

    .line 1161
    .line 1162
    goto/16 :goto_0

    .line 1163
    .line 1164
    .line 1165
    :pswitch_34
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1166
    move-result-wide v1

    .line 1167
    .line 1168
    .line 1169
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readSInt64()J

    .line 1170
    move-result-wide v4

    .line 1171
    .line 1172
    .line 1173
    invoke-static {v10, v1, v2, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->U(Ljava/lang/Object;JJ)V

    .line 1174
    .line 1175
    .line 1176
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h0(Ljava/lang/Object;I)V

    .line 1177
    .line 1178
    goto/16 :goto_0

    .line 1179
    .line 1180
    .line 1181
    :pswitch_35
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1182
    move-result-wide v1

    .line 1183
    .line 1184
    .line 1185
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readSInt32()I

    .line 1186
    move-result v4

    .line 1187
    .line 1188
    .line 1189
    invoke-static {v10, v1, v2, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->T(Ljava/lang/Object;JI)V

    .line 1190
    .line 1191
    .line 1192
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h0(Ljava/lang/Object;I)V

    .line 1193
    .line 1194
    goto/16 :goto_0

    .line 1195
    .line 1196
    .line 1197
    :pswitch_36
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1198
    move-result-wide v1

    .line 1199
    .line 1200
    .line 1201
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readSFixed64()J

    .line 1202
    move-result-wide v4

    .line 1203
    .line 1204
    .line 1205
    invoke-static {v10, v1, v2, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->U(Ljava/lang/Object;JJ)V

    .line 1206
    .line 1207
    .line 1208
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h0(Ljava/lang/Object;I)V

    .line 1209
    .line 1210
    goto/16 :goto_0

    .line 1211
    .line 1212
    .line 1213
    :pswitch_37
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1214
    move-result-wide v1

    .line 1215
    .line 1216
    .line 1217
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readSFixed32()I

    .line 1218
    move-result v4

    .line 1219
    .line 1220
    .line 1221
    invoke-static {v10, v1, v2, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->T(Ljava/lang/Object;JI)V

    .line 1222
    .line 1223
    .line 1224
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h0(Ljava/lang/Object;I)V

    .line 1225
    .line 1226
    goto/16 :goto_0

    .line 1227
    .line 1228
    .line 1229
    :pswitch_38
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readEnum()I

    .line 1230
    move-result v2

    .line 1231
    .line 1232
    .line 1233
    invoke-direct {v8, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    .line 1234
    move-result-object v5

    .line 1235
    .line 1236
    if-eqz v5, :cond_15

    .line 1237
    .line 1238
    .line 1239
    invoke-interface {v5, v2}, Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    .line 1240
    move-result v5

    .line 1241
    .line 1242
    if-eqz v5, :cond_14

    .line 1243
    goto :goto_8

    .line 1244
    .line 1245
    .line 1246
    :cond_14
    invoke-static {v1, v2, v13, v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->L(IILjava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    .line 1247
    move-result-object v13

    .line 1248
    .line 1249
    goto/16 :goto_0

    .line 1250
    .line 1251
    .line 1252
    :cond_15
    :goto_8
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1253
    move-result-wide v4

    .line 1254
    .line 1255
    .line 1256
    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->T(Ljava/lang/Object;JI)V

    .line 1257
    .line 1258
    .line 1259
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h0(Ljava/lang/Object;I)V

    .line 1260
    .line 1261
    goto/16 :goto_0

    .line 1262
    .line 1263
    .line 1264
    :pswitch_39
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1265
    move-result-wide v1

    .line 1266
    .line 1267
    .line 1268
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readUInt32()I

    .line 1269
    move-result v4

    .line 1270
    .line 1271
    .line 1272
    invoke-static {v10, v1, v2, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->T(Ljava/lang/Object;JI)V

    .line 1273
    .line 1274
    .line 1275
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h0(Ljava/lang/Object;I)V

    .line 1276
    .line 1277
    goto/16 :goto_0

    .line 1278
    .line 1279
    .line 1280
    :pswitch_3a
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1281
    move-result-wide v1

    .line 1282
    .line 1283
    .line 1284
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    .line 1285
    move-result-object v4

    .line 1286
    .line 1287
    .line 1288
    invoke-static {v10, v1, v2, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->V(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1289
    .line 1290
    .line 1291
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h0(Ljava/lang/Object;I)V

    .line 1292
    .line 1293
    goto/16 :goto_0

    .line 1294
    .line 1295
    .line 1296
    :pswitch_3b
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1297
    move-result v1

    .line 1298
    .line 1299
    if-eqz v1, :cond_16

    .line 1300
    .line 1301
    .line 1302
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1303
    move-result-wide v1

    .line 1304
    .line 1305
    .line 1306
    invoke-static {v10, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1307
    move-result-object v1

    .line 1308
    .line 1309
    .line 1310
    invoke-direct {v8, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 1311
    move-result-object v2

    .line 1312
    .line 1313
    .line 1314
    invoke-interface {v0, v2, v11}, Landroidx/datastore/preferences/protobuf/Reader;->c(Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    .line 1315
    move-result-object v2

    .line 1316
    .line 1317
    .line 1318
    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/Internal;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    move-result-object v1

    .line 1320
    .line 1321
    .line 1322
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1323
    move-result-wide v2

    .line 1324
    .line 1325
    .line 1326
    invoke-static {v10, v2, v3, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->V(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1327
    .line 1328
    goto/16 :goto_0

    .line 1329
    .line 1330
    .line 1331
    :cond_16
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1332
    move-result-wide v1

    .line 1333
    .line 1334
    .line 1335
    invoke-direct {v8, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 1336
    move-result-object v4

    .line 1337
    .line 1338
    .line 1339
    invoke-interface {v0, v4, v11}, Landroidx/datastore/preferences/protobuf/Reader;->c(Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    .line 1340
    move-result-object v4

    .line 1341
    .line 1342
    .line 1343
    invoke-static {v10, v1, v2, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->V(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1344
    .line 1345
    .line 1346
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h0(Ljava/lang/Object;I)V

    .line 1347
    .line 1348
    goto/16 :goto_0

    .line 1349
    .line 1350
    .line 1351
    :pswitch_3c
    invoke-direct {v8, v10, v4, v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->e0(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/Reader;)V

    .line 1352
    .line 1353
    .line 1354
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h0(Ljava/lang/Object;I)V

    .line 1355
    .line 1356
    goto/16 :goto_0

    .line 1357
    .line 1358
    .line 1359
    :pswitch_3d
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1360
    move-result-wide v1

    .line 1361
    .line 1362
    .line 1363
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readBool()Z

    .line 1364
    move-result v4

    .line 1365
    .line 1366
    .line 1367
    invoke-static {v10, v1, v2, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->K(Ljava/lang/Object;JZ)V

    .line 1368
    .line 1369
    .line 1370
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h0(Ljava/lang/Object;I)V

    .line 1371
    .line 1372
    goto/16 :goto_0

    .line 1373
    .line 1374
    .line 1375
    :pswitch_3e
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1376
    move-result-wide v1

    .line 1377
    .line 1378
    .line 1379
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readFixed32()I

    .line 1380
    move-result v4

    .line 1381
    .line 1382
    .line 1383
    invoke-static {v10, v1, v2, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->T(Ljava/lang/Object;JI)V

    .line 1384
    .line 1385
    .line 1386
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h0(Ljava/lang/Object;I)V

    .line 1387
    .line 1388
    goto/16 :goto_0

    .line 1389
    .line 1390
    .line 1391
    :pswitch_3f
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1392
    move-result-wide v1

    .line 1393
    .line 1394
    .line 1395
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readFixed64()J

    .line 1396
    move-result-wide v4

    .line 1397
    .line 1398
    .line 1399
    invoke-static {v10, v1, v2, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->U(Ljava/lang/Object;JJ)V

    .line 1400
    .line 1401
    .line 1402
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h0(Ljava/lang/Object;I)V

    .line 1403
    .line 1404
    goto/16 :goto_0

    .line 1405
    .line 1406
    .line 1407
    :pswitch_40
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1408
    move-result-wide v1

    .line 1409
    .line 1410
    .line 1411
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readInt32()I

    .line 1412
    move-result v4

    .line 1413
    .line 1414
    .line 1415
    invoke-static {v10, v1, v2, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->T(Ljava/lang/Object;JI)V

    .line 1416
    .line 1417
    .line 1418
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h0(Ljava/lang/Object;I)V

    .line 1419
    .line 1420
    goto/16 :goto_0

    .line 1421
    .line 1422
    .line 1423
    :pswitch_41
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1424
    move-result-wide v1

    .line 1425
    .line 1426
    .line 1427
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readUInt64()J

    .line 1428
    move-result-wide v4

    .line 1429
    .line 1430
    .line 1431
    invoke-static {v10, v1, v2, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->U(Ljava/lang/Object;JJ)V

    .line 1432
    .line 1433
    .line 1434
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h0(Ljava/lang/Object;I)V

    .line 1435
    .line 1436
    goto/16 :goto_0

    .line 1437
    .line 1438
    .line 1439
    :pswitch_42
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1440
    move-result-wide v1

    .line 1441
    .line 1442
    .line 1443
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readInt64()J

    .line 1444
    move-result-wide v4

    .line 1445
    .line 1446
    .line 1447
    invoke-static {v10, v1, v2, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->U(Ljava/lang/Object;JJ)V

    .line 1448
    .line 1449
    .line 1450
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h0(Ljava/lang/Object;I)V

    .line 1451
    .line 1452
    goto/16 :goto_0

    .line 1453
    .line 1454
    .line 1455
    :pswitch_43
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1456
    move-result-wide v1

    .line 1457
    .line 1458
    .line 1459
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readFloat()F

    .line 1460
    move-result v4

    .line 1461
    .line 1462
    .line 1463
    invoke-static {v10, v1, v2, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->S(Ljava/lang/Object;JF)V

    .line 1464
    .line 1465
    .line 1466
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h0(Ljava/lang/Object;I)V

    .line 1467
    .line 1468
    goto/16 :goto_0

    .line 1469
    .line 1470
    .line 1471
    :pswitch_44
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1472
    move-result-wide v1

    .line 1473
    .line 1474
    .line 1475
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readDouble()D

    .line 1476
    move-result-wide v4

    .line 1477
    .line 1478
    .line 1479
    invoke-static {v10, v1, v2, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->R(Ljava/lang/Object;JD)V

    .line 1480
    .line 1481
    .line 1482
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h0(Ljava/lang/Object;I)V
    :try_end_4
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1483
    .line 1484
    goto/16 :goto_0

    .line 1485
    .line 1486
    .line 1487
    :catch_0
    :try_start_5
    invoke-virtual {v9, v0}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->q(Landroidx/datastore/preferences/protobuf/Reader;)Z

    .line 1488
    move-result v1

    .line 1489
    .line 1490
    if-eqz v1, :cond_19

    .line 1491
    .line 1492
    .line 1493
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->skipField()Z

    .line 1494
    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1495
    .line 1496
    if-nez v1, :cond_0

    .line 1497
    .line 1498
    iget v0, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->checkInitializedCount:I

    .line 1499
    .line 1500
    :goto_9
    iget v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    .line 1501
    .line 1502
    if-ge v0, v1, :cond_17

    .line 1503
    .line 1504
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->intArray:[I

    .line 1505
    .line 1506
    aget v1, v1, v0

    .line 1507
    .line 1508
    .line 1509
    invoke-direct {v8, v10, v1, v13, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    .line 1510
    move-result-object v13

    .line 1511
    .line 1512
    add-int/lit8 v0, v0, 0x1

    .line 1513
    goto :goto_9

    .line 1514
    .line 1515
    :cond_17
    if-eqz v13, :cond_18

    .line 1516
    .line 1517
    .line 1518
    invoke-virtual {v9, v10, v13}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1519
    :cond_18
    return-void

    .line 1520
    .line 1521
    :cond_19
    if-nez v13, :cond_1a

    .line 1522
    .line 1523
    .line 1524
    :try_start_6
    invoke-virtual {v9, v10}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1525
    move-result-object v1

    .line 1526
    move-object v13, v1

    .line 1527
    .line 1528
    .line 1529
    :cond_1a
    invoke-virtual {v9, v13, v0}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->m(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Reader;)Z

    .line 1530
    move-result v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1531
    .line 1532
    if-nez v1, :cond_0

    .line 1533
    .line 1534
    iget v0, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->checkInitializedCount:I

    .line 1535
    .line 1536
    :goto_a
    iget v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    .line 1537
    .line 1538
    if-ge v0, v1, :cond_1b

    .line 1539
    .line 1540
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->intArray:[I

    .line 1541
    .line 1542
    aget v1, v1, v0

    .line 1543
    .line 1544
    .line 1545
    invoke-direct {v8, v10, v1, v13, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    .line 1546
    move-result-object v13

    .line 1547
    .line 1548
    add-int/lit8 v0, v0, 0x1

    .line 1549
    goto :goto_a

    .line 1550
    .line 1551
    :cond_1b
    if-eqz v13, :cond_1c

    .line 1552
    .line 1553
    .line 1554
    invoke-virtual {v9, v10, v13}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1555
    :cond_1c
    return-void

    .line 1556
    .line 1557
    :goto_b
    iget v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->checkInitializedCount:I

    .line 1558
    .line 1559
    :goto_c
    iget v2, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    .line 1560
    .line 1561
    if-ge v1, v2, :cond_1d

    .line 1562
    .line 1563
    iget-object v2, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->intArray:[I

    .line 1564
    .line 1565
    aget v2, v2, v1

    .line 1566
    .line 1567
    .line 1568
    invoke-direct {v8, v10, v2, v13, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    .line 1569
    move-result-object v13

    .line 1570
    .line 1571
    add-int/lit8 v1, v1, 0x1

    .line 1572
    goto :goto_c

    .line 1573
    .line 1574
    :cond_1d
    if-eqz v13, :cond_1e

    .line 1575
    .line 1576
    .line 1577
    invoke-virtual {v9, v10, v13}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1578
    :cond_1e
    throw v0

    .line 1579
    .line 1580
    .line 1581
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final G(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/Reader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;",
            "Landroidx/datastore/preferences/protobuf/Reader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m0(I)I

    .line 4
    move-result p2

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    iget-object p2, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 17
    .line 18
    .line 19
    invoke-interface {p2, p3}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->V(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 27
    .line 28
    .line 29
    invoke-interface {v2, p2}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->isImmutable(Ljava/lang/Object;)Z

    .line 30
    move-result v2

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 35
    .line 36
    .line 37
    invoke-interface {v2, p3}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 41
    .line 42
    .line 43
    invoke-interface {v3, v2, p2}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v0, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->V(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 47
    move-object p2, v2

    .line 48
    .line 49
    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 50
    .line 51
    .line 52
    invoke-interface {p1, p2}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    iget-object p2, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 56
    .line 57
    .line 58
    invoke-interface {p2, p3}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    .line 62
    invoke-interface {p5, p1, p2, p4}, Landroidx/datastore/preferences/protobuf/Reader;->f(Ljava/util/Map;Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    .line 63
    return-void
.end method

.method private H(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m0(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 12
    move-result v2

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    return-void

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {p1, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    .line 22
    invoke-static {p2, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-static {v2, p2}, Landroidx/datastore/preferences/protobuf/Internal;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->V(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h0(Ljava/lang/Object;I)V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_1
    if-eqz p2, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-static {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->V(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h0(Ljava/lang/Object;I)V

    .line 47
    :cond_2
    :goto_0
    return-void
.end method

.method private I(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m0(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 12
    move-result-wide v2

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p2, v1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    return-void

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-static {p1, v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-static {p2, v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-static {v0, p2}, Landroidx/datastore/preferences/protobuf/Internal;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v2, v3, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->V(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, p1, v1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->i0(Ljava/lang/Object;II)V

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_1
    if-eqz p2, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v2, v3, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->V(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, p1, v1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->i0(Ljava/lang/Object;II)V

    .line 51
    :cond_2
    :goto_0
    return-void
.end method

.method private J(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m0(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 8
    move-result-wide v1

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 12
    move-result v3

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->l0(I)I

    .line 16
    move-result v0

    .line 17
    .line 18
    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    .line 24
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->I(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    .line 29
    :pswitch_1
    invoke-direct {p0, p2, v3, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v1, v2, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->V(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p1, v3, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->i0(Ljava/lang/Object;II)V

    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    .line 47
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->I(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    .line 52
    :pswitch_3
    invoke-direct {p0, p2, v3, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 53
    move-result v0

    .line 54
    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    .line 58
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    .line 62
    invoke-static {p1, v1, v2, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->V(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, p1, v3, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->i0(Ljava/lang/Object;II)V

    .line 66
    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    :pswitch_4
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 70
    .line 71
    .line 72
    invoke-static {p3, p1, p2, v1, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->F(Landroidx/datastore/preferences/protobuf/MapFieldSchema;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 73
    .line 74
    goto/16 :goto_0

    .line 75
    .line 76
    :pswitch_5
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, p1, p2, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->d(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 80
    .line 81
    goto/16 :goto_0

    .line 82
    .line 83
    .line 84
    :pswitch_6
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->H(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 85
    .line 86
    goto/16 :goto_0

    .line 87
    .line 88
    .line 89
    :pswitch_7
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 90
    move-result v0

    .line 91
    .line 92
    if-eqz v0, :cond_0

    .line 93
    .line 94
    .line 95
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->D(Ljava/lang/Object;J)J

    .line 96
    move-result-wide v3

    .line 97
    .line 98
    .line 99
    invoke-static {p1, v1, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->U(Ljava/lang/Object;JJ)V

    .line 100
    .line 101
    .line 102
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h0(Ljava/lang/Object;I)V

    .line 103
    .line 104
    goto/16 :goto_0

    .line 105
    .line 106
    .line 107
    :pswitch_8
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 108
    move-result v0

    .line 109
    .line 110
    if-eqz v0, :cond_0

    .line 111
    .line 112
    .line 113
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 114
    move-result p2

    .line 115
    .line 116
    .line 117
    invoke-static {p1, v1, v2, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->T(Ljava/lang/Object;JI)V

    .line 118
    .line 119
    .line 120
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h0(Ljava/lang/Object;I)V

    .line 121
    .line 122
    goto/16 :goto_0

    .line 123
    .line 124
    .line 125
    :pswitch_9
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 126
    move-result v0

    .line 127
    .line 128
    if-eqz v0, :cond_0

    .line 129
    .line 130
    .line 131
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->D(Ljava/lang/Object;J)J

    .line 132
    move-result-wide v3

    .line 133
    .line 134
    .line 135
    invoke-static {p1, v1, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->U(Ljava/lang/Object;JJ)V

    .line 136
    .line 137
    .line 138
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h0(Ljava/lang/Object;I)V

    .line 139
    .line 140
    goto/16 :goto_0

    .line 141
    .line 142
    .line 143
    :pswitch_a
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 144
    move-result v0

    .line 145
    .line 146
    if-eqz v0, :cond_0

    .line 147
    .line 148
    .line 149
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 150
    move-result p2

    .line 151
    .line 152
    .line 153
    invoke-static {p1, v1, v2, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->T(Ljava/lang/Object;JI)V

    .line 154
    .line 155
    .line 156
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h0(Ljava/lang/Object;I)V

    .line 157
    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    .line 161
    :pswitch_b
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 162
    move-result v0

    .line 163
    .line 164
    if-eqz v0, :cond_0

    .line 165
    .line 166
    .line 167
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 168
    move-result p2

    .line 169
    .line 170
    .line 171
    invoke-static {p1, v1, v2, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->T(Ljava/lang/Object;JI)V

    .line 172
    .line 173
    .line 174
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h0(Ljava/lang/Object;I)V

    .line 175
    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    .line 179
    :pswitch_c
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 180
    move-result v0

    .line 181
    .line 182
    if-eqz v0, :cond_0

    .line 183
    .line 184
    .line 185
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 186
    move-result p2

    .line 187
    .line 188
    .line 189
    invoke-static {p1, v1, v2, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->T(Ljava/lang/Object;JI)V

    .line 190
    .line 191
    .line 192
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h0(Ljava/lang/Object;I)V

    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    .line 197
    :pswitch_d
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 198
    move-result v0

    .line 199
    .line 200
    if-eqz v0, :cond_0

    .line 201
    .line 202
    .line 203
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 204
    move-result-object p2

    .line 205
    .line 206
    .line 207
    invoke-static {p1, v1, v2, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->V(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h0(Ljava/lang/Object;I)V

    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    .line 215
    :pswitch_e
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->H(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 216
    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    .line 220
    :pswitch_f
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 221
    move-result v0

    .line 222
    .line 223
    if-eqz v0, :cond_0

    .line 224
    .line 225
    .line 226
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 227
    move-result-object p2

    .line 228
    .line 229
    .line 230
    invoke-static {p1, v1, v2, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->V(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h0(Ljava/lang/Object;I)V

    .line 234
    .line 235
    goto/16 :goto_0

    .line 236
    .line 237
    .line 238
    :pswitch_10
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 239
    move-result v0

    .line 240
    .line 241
    if-eqz v0, :cond_0

    .line 242
    .line 243
    .line 244
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->s(Ljava/lang/Object;J)Z

    .line 245
    move-result p2

    .line 246
    .line 247
    .line 248
    invoke-static {p1, v1, v2, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->K(Ljava/lang/Object;JZ)V

    .line 249
    .line 250
    .line 251
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h0(Ljava/lang/Object;I)V

    .line 252
    .line 253
    goto/16 :goto_0

    .line 254
    .line 255
    .line 256
    :pswitch_11
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 257
    move-result v0

    .line 258
    .line 259
    if-eqz v0, :cond_0

    .line 260
    .line 261
    .line 262
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 263
    move-result p2

    .line 264
    .line 265
    .line 266
    invoke-static {p1, v1, v2, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->T(Ljava/lang/Object;JI)V

    .line 267
    .line 268
    .line 269
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h0(Ljava/lang/Object;I)V

    .line 270
    goto :goto_0

    .line 271
    .line 272
    .line 273
    :pswitch_12
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 274
    move-result v0

    .line 275
    .line 276
    if-eqz v0, :cond_0

    .line 277
    .line 278
    .line 279
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->D(Ljava/lang/Object;J)J

    .line 280
    move-result-wide v3

    .line 281
    .line 282
    .line 283
    invoke-static {p1, v1, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->U(Ljava/lang/Object;JJ)V

    .line 284
    .line 285
    .line 286
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h0(Ljava/lang/Object;I)V

    .line 287
    goto :goto_0

    .line 288
    .line 289
    .line 290
    :pswitch_13
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 291
    move-result v0

    .line 292
    .line 293
    if-eqz v0, :cond_0

    .line 294
    .line 295
    .line 296
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 297
    move-result p2

    .line 298
    .line 299
    .line 300
    invoke-static {p1, v1, v2, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->T(Ljava/lang/Object;JI)V

    .line 301
    .line 302
    .line 303
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h0(Ljava/lang/Object;I)V

    .line 304
    goto :goto_0

    .line 305
    .line 306
    .line 307
    :pswitch_14
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 308
    move-result v0

    .line 309
    .line 310
    if-eqz v0, :cond_0

    .line 311
    .line 312
    .line 313
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->D(Ljava/lang/Object;J)J

    .line 314
    move-result-wide v3

    .line 315
    .line 316
    .line 317
    invoke-static {p1, v1, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->U(Ljava/lang/Object;JJ)V

    .line 318
    .line 319
    .line 320
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h0(Ljava/lang/Object;I)V

    .line 321
    goto :goto_0

    .line 322
    .line 323
    .line 324
    :pswitch_15
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 325
    move-result v0

    .line 326
    .line 327
    if-eqz v0, :cond_0

    .line 328
    .line 329
    .line 330
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->D(Ljava/lang/Object;J)J

    .line 331
    move-result-wide v3

    .line 332
    .line 333
    .line 334
    invoke-static {p1, v1, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->U(Ljava/lang/Object;JJ)V

    .line 335
    .line 336
    .line 337
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h0(Ljava/lang/Object;I)V

    .line 338
    goto :goto_0

    .line 339
    .line 340
    .line 341
    :pswitch_16
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 342
    move-result v0

    .line 343
    .line 344
    if-eqz v0, :cond_0

    .line 345
    .line 346
    .line 347
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->A(Ljava/lang/Object;J)F

    .line 348
    move-result p2

    .line 349
    .line 350
    .line 351
    invoke-static {p1, v1, v2, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->S(Ljava/lang/Object;JF)V

    .line 352
    .line 353
    .line 354
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h0(Ljava/lang/Object;I)V

    .line 355
    goto :goto_0

    .line 356
    .line 357
    .line 358
    :pswitch_17
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 359
    move-result v0

    .line 360
    .line 361
    if-eqz v0, :cond_0

    .line 362
    .line 363
    .line 364
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->z(Ljava/lang/Object;J)D

    .line 365
    move-result-wide v3

    .line 366
    .line 367
    .line 368
    invoke-static {p1, v1, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->R(Ljava/lang/Object;JD)V

    .line 369
    .line 370
    .line 371
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h0(Ljava/lang/Object;I)V

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static K(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/MessageInfo;Landroidx/datastore/preferences/protobuf/NewInstanceSchema;Landroidx/datastore/preferences/protobuf/ListFieldSchema;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MapFieldSchema;)Landroidx/datastore/preferences/protobuf/MessageSchema;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroidx/datastore/preferences/protobuf/MessageInfo;",
            "Landroidx/datastore/preferences/protobuf/NewInstanceSchema;",
            "Landroidx/datastore/preferences/protobuf/ListFieldSchema;",
            "Landroidx/datastore/preferences/protobuf/UnknownFieldSchema<",
            "**>;",
            "Landroidx/datastore/preferences/protobuf/ExtensionSchema<",
            "*>;",
            "Landroidx/datastore/preferences/protobuf/MapFieldSchema;",
            ")",
            "Landroidx/datastore/preferences/protobuf/MessageSchema<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of p0, p1, Landroidx/datastore/preferences/protobuf/RawMessageInfo;

    .line 3
    .line 4
    if-eqz p0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;

    .line 8
    move-object v1, p2

    .line 9
    move-object v2, p3

    .line 10
    move-object v3, p4

    .line 11
    move-object v4, p5

    .line 12
    move-object v5, p6

    .line 13
    .line 14
    .line 15
    invoke-static/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->M(Landroidx/datastore/preferences/protobuf/RawMessageInfo;Landroidx/datastore/preferences/protobuf/NewInstanceSchema;Landroidx/datastore/preferences/protobuf/ListFieldSchema;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MapFieldSchema;)Landroidx/datastore/preferences/protobuf/MessageSchema;

    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    move-object v0, p1

    .line 19
    .line 20
    check-cast v0, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;

    .line 21
    move-object v1, p2

    .line 22
    move-object v2, p3

    .line 23
    move-object v3, p4

    .line 24
    move-object v4, p5

    .line 25
    move-object v5, p6

    .line 26
    .line 27
    .line 28
    invoke-static/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->L(Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;Landroidx/datastore/preferences/protobuf/NewInstanceSchema;Landroidx/datastore/preferences/protobuf/ListFieldSchema;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MapFieldSchema;)Landroidx/datastore/preferences/protobuf/MessageSchema;

    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method static L(Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;Landroidx/datastore/preferences/protobuf/NewInstanceSchema;Landroidx/datastore/preferences/protobuf/ListFieldSchema;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MapFieldSchema;)Landroidx/datastore/preferences/protobuf/MessageSchema;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;",
            "Landroidx/datastore/preferences/protobuf/NewInstanceSchema;",
            "Landroidx/datastore/preferences/protobuf/ListFieldSchema;",
            "Landroidx/datastore/preferences/protobuf/UnknownFieldSchema<",
            "**>;",
            "Landroidx/datastore/preferences/protobuf/ExtensionSchema<",
            "*>;",
            "Landroidx/datastore/preferences/protobuf/MapFieldSchema;",
            ")",
            "Landroidx/datastore/preferences/protobuf/MessageSchema<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->getSyntax()Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Landroidx/datastore/preferences/protobuf/ProtoSyntax;->PROTO3:Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    move v10, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v10, v3

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->b()[Landroidx/datastore/preferences/protobuf/FieldInfo;

    .line 17
    move-result-object v0

    .line 18
    array-length v1, v0

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    move v7, v3

    .line 22
    move v8, v7

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_1
    aget-object v1, v0, v3

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/FieldInfo;->e()I

    .line 29
    move-result v1

    .line 30
    array-length v4, v0

    .line 31
    sub-int/2addr v4, v2

    .line 32
    .line 33
    aget-object v2, v0, v4

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/FieldInfo;->e()I

    .line 37
    move-result v2

    .line 38
    move v7, v1

    .line 39
    move v8, v2

    .line 40
    :goto_1
    array-length v1, v0

    .line 41
    .line 42
    mul-int/lit8 v2, v1, 0x3

    .line 43
    .line 44
    new-array v5, v2, [I

    .line 45
    .line 46
    mul-int/lit8 v1, v1, 0x2

    .line 47
    .line 48
    new-array v6, v1, [Ljava/lang/Object;

    .line 49
    array-length v1, v0

    .line 50
    move v2, v3

    .line 51
    move v4, v2

    .line 52
    move v9, v4

    .line 53
    .line 54
    :goto_2
    const/16 v11, 0x31

    .line 55
    .line 56
    const/16 v12, 0x12

    .line 57
    .line 58
    if-ge v2, v1, :cond_4

    .line 59
    .line 60
    aget-object v13, v0, v2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v13}, Landroidx/datastore/preferences/protobuf/FieldInfo;->l()Landroidx/datastore/preferences/protobuf/FieldType;

    .line 64
    move-result-object v14

    .line 65
    .line 66
    sget-object v15, Landroidx/datastore/preferences/protobuf/FieldType;->MAP:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 67
    .line 68
    if-ne v14, v15, :cond_2

    .line 69
    .line 70
    add-int/lit8 v4, v4, 0x1

    .line 71
    goto :goto_3

    .line 72
    .line 73
    .line 74
    :cond_2
    invoke-virtual {v13}, Landroidx/datastore/preferences/protobuf/FieldInfo;->l()Landroidx/datastore/preferences/protobuf/FieldType;

    .line 75
    move-result-object v14

    .line 76
    .line 77
    .line 78
    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/FieldType;->a()I

    .line 79
    move-result v14

    .line 80
    .line 81
    if-lt v14, v12, :cond_3

    .line 82
    .line 83
    .line 84
    invoke-virtual {v13}, Landroidx/datastore/preferences/protobuf/FieldInfo;->l()Landroidx/datastore/preferences/protobuf/FieldType;

    .line 85
    move-result-object v12

    .line 86
    .line 87
    .line 88
    invoke-virtual {v12}, Landroidx/datastore/preferences/protobuf/FieldType;->a()I

    .line 89
    move-result v12

    .line 90
    .line 91
    if-gt v12, v11, :cond_3

    .line 92
    .line 93
    add-int/lit8 v9, v9, 0x1

    .line 94
    .line 95
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 96
    goto :goto_2

    .line 97
    :cond_4
    const/4 v1, 0x0

    .line 98
    .line 99
    if-lez v4, :cond_5

    .line 100
    .line 101
    new-array v2, v4, [I

    .line 102
    goto :goto_4

    .line 103
    :cond_5
    move-object v2, v1

    .line 104
    .line 105
    :goto_4
    if-lez v9, :cond_6

    .line 106
    .line 107
    new-array v1, v9, [I

    .line 108
    .line 109
    .line 110
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->a()[I

    .line 111
    move-result-object v4

    .line 112
    .line 113
    if-nez v4, :cond_7

    .line 114
    .line 115
    sget-object v4, Landroidx/datastore/preferences/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    .line 116
    :cond_7
    move v9, v3

    .line 117
    move v13, v9

    .line 118
    move v14, v13

    .line 119
    move v15, v14

    .line 120
    .line 121
    move/from16 v16, v15

    .line 122
    :goto_5
    array-length v3, v0

    .line 123
    .line 124
    if-ge v9, v3, :cond_b

    .line 125
    .line 126
    aget-object v3, v0, v9

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/FieldInfo;->e()I

    .line 130
    move-result v11

    .line 131
    .line 132
    .line 133
    invoke-static {v3, v5, v13, v10, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->k0(Landroidx/datastore/preferences/protobuf/FieldInfo;[IIZ[Ljava/lang/Object;)V

    .line 134
    array-length v12, v4

    .line 135
    .line 136
    if-ge v14, v12, :cond_8

    .line 137
    .line 138
    aget v12, v4, v14

    .line 139
    .line 140
    if-ne v12, v11, :cond_8

    .line 141
    .line 142
    add-int/lit8 v11, v14, 0x1

    .line 143
    .line 144
    aput v13, v4, v14

    .line 145
    move v14, v11

    .line 146
    .line 147
    .line 148
    :cond_8
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/FieldInfo;->l()Landroidx/datastore/preferences/protobuf/FieldType;

    .line 149
    move-result-object v11

    .line 150
    .line 151
    sget-object v12, Landroidx/datastore/preferences/protobuf/FieldType;->MAP:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 152
    .line 153
    if-ne v11, v12, :cond_a

    .line 154
    .line 155
    add-int/lit8 v3, v15, 0x1

    .line 156
    .line 157
    aput v13, v2, v15

    .line 158
    move v15, v3

    .line 159
    .line 160
    :cond_9
    move/from16 v18, v13

    .line 161
    goto :goto_6

    .line 162
    .line 163
    .line 164
    :cond_a
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/FieldInfo;->l()Landroidx/datastore/preferences/protobuf/FieldType;

    .line 165
    move-result-object v11

    .line 166
    .line 167
    .line 168
    invoke-virtual {v11}, Landroidx/datastore/preferences/protobuf/FieldType;->a()I

    .line 169
    move-result v11

    .line 170
    .line 171
    const/16 v12, 0x12

    .line 172
    .line 173
    if-lt v11, v12, :cond_9

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/FieldInfo;->l()Landroidx/datastore/preferences/protobuf/FieldType;

    .line 177
    move-result-object v11

    .line 178
    .line 179
    .line 180
    invoke-virtual {v11}, Landroidx/datastore/preferences/protobuf/FieldType;->a()I

    .line 181
    move-result v11

    .line 182
    .line 183
    const/16 v12, 0x31

    .line 184
    .line 185
    if-gt v11, v12, :cond_9

    .line 186
    .line 187
    add-int/lit8 v11, v16, 0x1

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/FieldInfo;->d()Ljava/lang/reflect/Field;

    .line 191
    move-result-object v3

    .line 192
    .line 193
    move/from16 v18, v13

    .line 194
    .line 195
    .line 196
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->J(Ljava/lang/reflect/Field;)J

    .line 197
    move-result-wide v12

    .line 198
    long-to-int v3, v12

    .line 199
    .line 200
    aput v3, v1, v16

    .line 201
    .line 202
    move/from16 v16, v11

    .line 203
    .line 204
    :goto_6
    add-int/lit8 v9, v9, 0x1

    .line 205
    .line 206
    add-int/lit8 v13, v18, 0x3

    .line 207
    .line 208
    const/16 v11, 0x31

    .line 209
    .line 210
    const/16 v12, 0x12

    .line 211
    goto :goto_5

    .line 212
    .line 213
    :cond_b
    if-nez v2, :cond_c

    .line 214
    .line 215
    sget-object v2, Landroidx/datastore/preferences/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    .line 216
    .line 217
    :cond_c
    if-nez v1, :cond_d

    .line 218
    .line 219
    sget-object v1, Landroidx/datastore/preferences/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    .line 220
    :cond_d
    array-length v0, v4

    .line 221
    array-length v3, v2

    .line 222
    add-int/2addr v0, v3

    .line 223
    array-length v3, v1

    .line 224
    add-int/2addr v0, v3

    .line 225
    .line 226
    new-array v12, v0, [I

    .line 227
    array-length v0, v4

    .line 228
    const/4 v3, 0x0

    .line 229
    .line 230
    .line 231
    invoke-static {v4, v3, v12, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    array-length v0, v4

    .line 233
    array-length v9, v2

    .line 234
    .line 235
    .line 236
    invoke-static {v2, v3, v12, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    array-length v0, v4

    .line 238
    array-length v9, v2

    .line 239
    add-int/2addr v0, v9

    .line 240
    array-length v9, v1

    .line 241
    .line 242
    .line 243
    invoke-static {v1, v3, v12, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    .line 245
    new-instance v0, Landroidx/datastore/preferences/protobuf/MessageSchema;

    .line 246
    .line 247
    .line 248
    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 249
    move-result-object v9

    .line 250
    const/4 v11, 0x1

    .line 251
    array-length v13, v4

    .line 252
    array-length v1, v4

    .line 253
    array-length v2, v2

    .line 254
    .line 255
    add-int v14, v1, v2

    .line 256
    move-object v4, v0

    .line 257
    .line 258
    move-object/from16 v15, p1

    .line 259
    .line 260
    move-object/from16 v16, p2

    .line 261
    .line 262
    move-object/from16 v17, p3

    .line 263
    .line 264
    move-object/from16 v18, p4

    .line 265
    .line 266
    move-object/from16 v19, p5

    .line 267
    .line 268
    .line 269
    invoke-direct/range {v4 .. v19}, Landroidx/datastore/preferences/protobuf/MessageSchema;-><init>([I[Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/MessageLite;ZZ[IIILandroidx/datastore/preferences/protobuf/NewInstanceSchema;Landroidx/datastore/preferences/protobuf/ListFieldSchema;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MapFieldSchema;)V

    .line 270
    return-object v0
.end method

.method static M(Landroidx/datastore/preferences/protobuf/RawMessageInfo;Landroidx/datastore/preferences/protobuf/NewInstanceSchema;Landroidx/datastore/preferences/protobuf/ListFieldSchema;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MapFieldSchema;)Landroidx/datastore/preferences/protobuf/MessageSchema;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/datastore/preferences/protobuf/RawMessageInfo;",
            "Landroidx/datastore/preferences/protobuf/NewInstanceSchema;",
            "Landroidx/datastore/preferences/protobuf/ListFieldSchema;",
            "Landroidx/datastore/preferences/protobuf/UnknownFieldSchema<",
            "**>;",
            "Landroidx/datastore/preferences/protobuf/ExtensionSchema<",
            "*>;",
            "Landroidx/datastore/preferences/protobuf/MapFieldSchema;",
            ")",
            "Landroidx/datastore/preferences/protobuf/MessageSchema<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->getSyntax()Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    move-result-object v0

    sget-object v1, Landroidx/datastore/preferences/protobuf/ProtoSyntax;->PROTO3:Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    move v10, v2

    .line 2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->b()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v6, 0xd800

    if-lt v4, v6, :cond_2

    and-int/lit16 v4, v4, 0x1fff

    const/4 v7, 0x1

    const/16 v8, 0xd

    :goto_1
    add-int/lit8 v9, v7, 0x1

    .line 5
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_1

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v8

    or-int/2addr v4, v7

    add-int/lit8 v8, v8, 0xd

    move v7, v9

    goto :goto_1

    :cond_1
    shl-int/2addr v7, v8

    or-int/2addr v4, v7

    goto :goto_2

    :cond_2
    const/4 v9, 0x1

    :goto_2
    add-int/lit8 v7, v9, 0x1

    .line 6
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_4

    and-int/lit16 v8, v8, 0x1fff

    const/16 v9, 0xd

    :goto_3
    add-int/lit8 v11, v7, 0x1

    .line 7
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_3

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v8, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v11

    goto :goto_3

    :cond_3
    shl-int/2addr v7, v9

    or-int/2addr v8, v7

    move v7, v11

    :cond_4
    if-nez v8, :cond_5

    sget-object v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    move v9, v2

    move v11, v9

    move v12, v11

    move v14, v12

    move v15, v14

    move-object v13, v8

    move v8, v15

    goto/16 :goto_c

    :cond_5
    add-int/lit8 v8, v7, 0x1

    .line 8
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_7

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_4
    add-int/lit8 v11, v8, 0x1

    .line 9
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_6

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v7, v8

    add-int/lit8 v9, v9, 0xd

    move v8, v11

    goto :goto_4

    :cond_6
    shl-int/2addr v8, v9

    or-int/2addr v7, v8

    move v8, v11

    :cond_7
    add-int/lit8 v9, v8, 0x1

    .line 10
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_9

    and-int/lit16 v8, v8, 0x1fff

    const/16 v11, 0xd

    :goto_5
    add-int/lit8 v12, v9, 0x1

    .line 11
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_8

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    add-int/lit8 v11, v11, 0xd

    move v9, v12

    goto :goto_5

    :cond_8
    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    move v9, v12

    :cond_9
    add-int/lit8 v11, v9, 0x1

    .line 12
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_b

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_6
    add-int/lit8 v13, v11, 0x1

    .line 13
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_a

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_6

    :cond_a
    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    move v11, v13

    :cond_b
    add-int/lit8 v12, v11, 0x1

    .line 14
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_d

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_7
    add-int/lit8 v14, v12, 0x1

    .line 15
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_c

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_7

    :cond_c
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_d
    add-int/lit8 v13, v12, 0x1

    .line 16
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_f

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_8
    add-int/lit8 v15, v13, 0x1

    .line 17
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_e

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_8

    :cond_e
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_f
    add-int/lit8 v14, v13, 0x1

    .line 18
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_11

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_9
    add-int/lit8 v16, v14, 0x1

    .line 19
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_10

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_9

    :cond_10
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_11
    add-int/lit8 v15, v14, 0x1

    .line 20
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_13

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_a
    add-int/lit8 v17, v15, 0x1

    .line 21
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_12

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_a

    :cond_12
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_13
    add-int/lit8 v16, v15, 0x1

    .line 22
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_15

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v2, v16

    const/16 v16, 0xd

    :goto_b
    add-int/lit8 v18, v2, 0x1

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v6, :cond_14

    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v16

    or-int/2addr v15, v2

    add-int/lit8 v16, v16, 0xd

    move/from16 v2, v18

    goto :goto_b

    :cond_14
    shl-int v2, v2, v16

    or-int/2addr v15, v2

    move/from16 v16, v18

    :cond_15
    add-int v2, v15, v13

    add-int/2addr v2, v14

    .line 24
    new-array v2, v2, [I

    mul-int/lit8 v14, v7, 0x2

    add-int/2addr v14, v8

    move v8, v7

    move/from16 v7, v16

    move/from16 v34, v13

    move-object v13, v2

    move v2, v9

    move/from16 v9, v34

    :goto_c
    sget-object v5, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->a()[Ljava/lang/Object;

    move-result-object v18

    .line 26
    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/MessageLite;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    mul-int/lit8 v6, v12, 0x3

    .line 27
    new-array v6, v6, [I

    mul-int/lit8 v12, v12, 0x2

    .line 28
    new-array v12, v12, [Ljava/lang/Object;

    add-int v21, v15, v9

    move/from16 v23, v15

    move/from16 v24, v21

    const/4 v9, 0x0

    const/16 v22, 0x0

    :goto_d
    if-ge v7, v1, :cond_33

    add-int/lit8 v25, v7, 0x1

    .line 29
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move/from16 v26, v1

    const v1, 0xd800

    if-lt v7, v1, :cond_17

    and-int/lit16 v7, v7, 0x1fff

    move/from16 v1, v25

    const/16 v25, 0xd

    :goto_e
    add-int/lit8 v27, v1, 0x1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move/from16 v28, v15

    const v15, 0xd800

    if-lt v1, v15, :cond_16

    and-int/lit16 v1, v1, 0x1fff

    shl-int v1, v1, v25

    or-int/2addr v7, v1

    add-int/lit8 v25, v25, 0xd

    move/from16 v1, v27

    move/from16 v15, v28

    goto :goto_e

    :cond_16
    shl-int v1, v1, v25

    or-int/2addr v7, v1

    move/from16 v1, v27

    goto :goto_f

    :cond_17
    move/from16 v28, v15

    move/from16 v1, v25

    :goto_f
    add-int/lit8 v15, v1, 0x1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move/from16 v25, v15

    const v15, 0xd800

    if-lt v1, v15, :cond_19

    and-int/lit16 v1, v1, 0x1fff

    move/from16 v15, v25

    const/16 v25, 0xd

    :goto_10
    add-int/lit8 v27, v15, 0x1

    .line 32
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v29, v10

    const v10, 0xd800

    if-lt v15, v10, :cond_18

    and-int/lit16 v10, v15, 0x1fff

    shl-int v10, v10, v25

    or-int/2addr v1, v10

    add-int/lit8 v25, v25, 0xd

    move/from16 v15, v27

    move/from16 v10, v29

    goto :goto_10

    :cond_18
    shl-int v10, v15, v25

    or-int/2addr v1, v10

    move/from16 v15, v27

    goto :goto_11

    :cond_19
    move/from16 v29, v10

    move/from16 v15, v25

    :goto_11
    and-int/lit16 v10, v1, 0xff

    move/from16 v25, v11

    and-int/lit16 v11, v1, 0x400

    if-eqz v11, :cond_1a

    add-int/lit8 v11, v9, 0x1

    .line 33
    aput v22, v13, v9

    move v9, v11

    :cond_1a
    const/16 v11, 0x33

    move/from16 v31, v9

    if-lt v10, v11, :cond_22

    add-int/lit8 v11, v15, 0x1

    .line 34
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const v9, 0xd800

    if-lt v15, v9, :cond_1c

    and-int/lit16 v15, v15, 0x1fff

    const/16 v32, 0xd

    :goto_12
    add-int/lit8 v33, v11, 0x1

    .line 35
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v9, :cond_1b

    and-int/lit16 v9, v11, 0x1fff

    shl-int v9, v9, v32

    or-int/2addr v15, v9

    add-int/lit8 v32, v32, 0xd

    move/from16 v11, v33

    const v9, 0xd800

    goto :goto_12

    :cond_1b
    shl-int v9, v11, v32

    or-int/2addr v15, v9

    move/from16 v11, v33

    :cond_1c
    add-int/lit8 v9, v10, -0x33

    move/from16 v32, v11

    const/16 v11, 0x9

    if-eq v9, v11, :cond_1e

    const/16 v11, 0x11

    if-ne v9, v11, :cond_1d

    goto :goto_14

    :cond_1d
    const/16 v11, 0xc

    if-ne v9, v11, :cond_1f

    and-int/lit8 v9, v4, 0x1

    const/4 v11, 0x1

    if-ne v9, v11, :cond_1f

    .line 36
    div-int/lit8 v9, v22, 0x3

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v11

    add-int/lit8 v11, v14, 0x1

    aget-object v14, v18, v14

    aput-object v14, v12, v9

    :goto_13
    move v14, v11

    goto :goto_15

    .line 37
    :cond_1e
    :goto_14
    div-int/lit8 v9, v22, 0x3

    mul-int/lit8 v9, v9, 0x2

    const/4 v11, 0x1

    add-int/2addr v9, v11

    add-int/lit8 v11, v14, 0x1

    aget-object v14, v18, v14

    aput-object v14, v12, v9

    goto :goto_13

    :cond_1f
    :goto_15
    mul-int/lit8 v15, v15, 0x2

    .line 38
    aget-object v9, v18, v15

    .line 39
    instance-of v11, v9, Ljava/lang/reflect/Field;

    if-eqz v11, :cond_20

    .line 40
    check-cast v9, Ljava/lang/reflect/Field;

    :goto_16
    move-object v11, v6

    move/from16 v33, v7

    goto :goto_17

    .line 41
    :cond_20
    check-cast v9, Ljava/lang/String;

    invoke-static {v3, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->g0(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 42
    aput-object v9, v18, v15

    goto :goto_16

    .line 43
    :goto_17
    invoke-virtual {v5, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v6, v6

    add-int/lit8 v15, v15, 0x1

    .line 44
    aget-object v7, v18, v15

    .line 45
    instance-of v9, v7, Ljava/lang/reflect/Field;

    if-eqz v9, :cond_21

    .line 46
    check-cast v7, Ljava/lang/reflect/Field;

    :goto_18
    move v9, v6

    goto :goto_19

    .line 47
    :cond_21
    check-cast v7, Ljava/lang/String;

    invoke-static {v3, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->g0(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 48
    aput-object v7, v18, v15

    goto :goto_18

    .line 49
    :goto_19
    invoke-virtual {v5, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v6, v6

    move/from16 v27, v2

    move/from16 v19, v4

    move v4, v6

    move v6, v9

    move v2, v14

    move/from16 v7, v32

    const/4 v14, 0x0

    move-object v9, v3

    const v3, 0xd800

    goto/16 :goto_24

    :cond_22
    move-object v11, v6

    move/from16 v33, v7

    add-int/lit8 v6, v14, 0x1

    .line 50
    aget-object v7, v18, v14

    check-cast v7, Ljava/lang/String;

    invoke-static {v3, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->g0(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    const/16 v9, 0x9

    if-eq v10, v9, :cond_23

    const/16 v9, 0x11

    if-ne v10, v9, :cond_24

    :cond_23
    move/from16 v27, v2

    const/4 v2, 0x1

    goto/16 :goto_1e

    :cond_24
    const/16 v9, 0x1b

    if-eq v10, v9, :cond_25

    const/16 v9, 0x31

    if-ne v10, v9, :cond_26

    :cond_25
    move/from16 v27, v2

    const/4 v2, 0x1

    goto :goto_1d

    :cond_26
    const/16 v9, 0xc

    if-eq v10, v9, :cond_2b

    const/16 v9, 0x1e

    if-eq v10, v9, :cond_2b

    const/16 v9, 0x2c

    if-ne v10, v9, :cond_27

    goto :goto_1b

    :cond_27
    const/16 v9, 0x32

    if-ne v10, v9, :cond_2a

    add-int/lit8 v9, v23, 0x1

    .line 51
    aput v22, v13, v23

    .line 52
    div-int/lit8 v23, v22, 0x3

    mul-int/lit8 v23, v23, 0x2

    add-int/lit8 v27, v14, 0x2

    aget-object v6, v18, v6

    aput-object v6, v12, v23

    and-int/lit16 v6, v1, 0x800

    if-eqz v6, :cond_29

    add-int/lit8 v23, v23, 0x1

    add-int/lit8 v6, v14, 0x3

    .line 53
    aget-object v14, v18, v27

    aput-object v14, v12, v23

    move/from16 v27, v2

    move/from16 v23, v9

    :cond_28
    :goto_1a
    move-object v9, v3

    goto :goto_1f

    :cond_29
    move/from16 v23, v9

    move/from16 v6, v27

    move/from16 v27, v2

    goto :goto_1a

    :cond_2a
    move/from16 v27, v2

    const/4 v2, 0x1

    goto :goto_1a

    :cond_2b
    :goto_1b
    and-int/lit8 v9, v4, 0x1

    move/from16 v27, v2

    const/4 v2, 0x1

    if-ne v9, v2, :cond_28

    .line 54
    div-int/lit8 v9, v22, 0x3

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v2

    add-int/lit8 v14, v14, 0x2

    aget-object v6, v18, v6

    aput-object v6, v12, v9

    :goto_1c
    move-object v9, v3

    move v6, v14

    goto :goto_1f

    .line 55
    :goto_1d
    div-int/lit8 v9, v22, 0x3

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v2

    add-int/lit8 v14, v14, 0x2

    aget-object v6, v18, v6

    aput-object v6, v12, v9

    goto :goto_1c

    .line 56
    :goto_1e
    div-int/lit8 v9, v22, 0x3

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v2

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v12, v9

    goto :goto_1a

    .line 57
    :goto_1f
    invoke-virtual {v5, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    long-to-int v2, v2

    and-int/lit8 v3, v4, 0x1

    const/4 v7, 0x1

    if-ne v3, v7, :cond_2f

    const/16 v3, 0x11

    if-gt v10, v3, :cond_2f

    add-int/lit8 v3, v15, 0x1

    .line 58
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const v15, 0xd800

    if-lt v14, v15, :cond_2d

    and-int/lit16 v14, v14, 0x1fff

    const/16 v19, 0xd

    :goto_20
    add-int/lit8 v20, v3, 0x1

    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v15, :cond_2c

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v19

    or-int/2addr v14, v3

    add-int/lit8 v19, v19, 0xd

    move/from16 v3, v20

    goto :goto_20

    :cond_2c
    shl-int v3, v3, v19

    or-int/2addr v14, v3

    move/from16 v3, v20

    :cond_2d
    mul-int/lit8 v19, v8, 0x2

    .line 60
    div-int/lit8 v20, v14, 0x20

    add-int v19, v19, v20

    .line 61
    aget-object v7, v18, v19

    .line 62
    instance-of v15, v7, Ljava/lang/reflect/Field;

    if-eqz v15, :cond_2e

    .line 63
    check-cast v7, Ljava/lang/reflect/Field;

    :goto_21
    move v15, v3

    move/from16 v19, v4

    goto :goto_22

    .line 64
    :cond_2e
    check-cast v7, Ljava/lang/String;

    invoke-static {v9, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->g0(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 65
    aput-object v7, v18, v19

    goto :goto_21

    .line 66
    :goto_22
    invoke-virtual {v5, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v3, v3

    .line 67
    rem-int/lit8 v14, v14, 0x20

    move v4, v3

    const v3, 0xd800

    goto :goto_23

    :cond_2f
    move/from16 v19, v4

    const v3, 0xd800

    const/4 v4, 0x0

    const/4 v14, 0x0

    :goto_23
    const/16 v7, 0x12

    if-lt v10, v7, :cond_30

    const/16 v7, 0x31

    if-gt v10, v7, :cond_30

    add-int/lit8 v7, v24, 0x1

    .line 68
    aput v2, v13, v24

    move/from16 v24, v7

    :cond_30
    move v7, v15

    move/from16 v34, v6

    move v6, v2

    move/from16 v2, v34

    :goto_24
    add-int/lit8 v15, v22, 0x1

    .line 69
    aput v33, v11, v22

    add-int/lit8 v30, v22, 0x2

    and-int/lit16 v3, v1, 0x200

    if-eqz v3, :cond_31

    const/high16 v3, 0x20000000

    goto :goto_25

    :cond_31
    const/4 v3, 0x0

    :goto_25
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_32

    const/high16 v1, 0x10000000

    goto :goto_26

    :cond_32
    const/4 v1, 0x0

    :goto_26
    or-int/2addr v1, v3

    shl-int/lit8 v3, v10, 0x14

    or-int/2addr v1, v3

    or-int/2addr v1, v6

    .line 70
    aput v1, v11, v15

    add-int/lit8 v22, v22, 0x3

    shl-int/lit8 v1, v14, 0x14

    or-int/2addr v1, v4

    .line 71
    aput v1, v11, v30

    move v14, v2

    move-object v3, v9

    move-object v6, v11

    move/from16 v4, v19

    move/from16 v11, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v15, v28

    move/from16 v10, v29

    move/from16 v9, v31

    goto/16 :goto_d

    :cond_33
    move/from16 v27, v2

    move/from16 v29, v10

    move/from16 v25, v11

    move/from16 v28, v15

    move-object v11, v6

    .line 72
    new-instance v0, Landroidx/datastore/preferences/protobuf/MessageSchema;

    .line 73
    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/MessageLite;

    move-result-object v9

    const/4 v1, 0x0

    move-object v4, v0

    move-object v5, v11

    move-object v6, v12

    move/from16 v7, v27

    move/from16 v8, v25

    move v11, v1

    move-object v12, v13

    move/from16 v13, v28

    move/from16 v14, v21

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-direct/range {v4 .. v19}, Landroidx/datastore/preferences/protobuf/MessageSchema;-><init>([I[Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/MessageLite;ZZ[IIILandroidx/datastore/preferences/protobuf/NewInstanceSchema;Landroidx/datastore/preferences/protobuf/ListFieldSchema;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MapFieldSchema;)V

    return-object v0
.end method

.method private N(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    .line 3
    .line 4
    aget p1, v0, p1

    .line 5
    return p1
.end method

.method private static O(I)J
    .locals 2

    .line 1
    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method private static P(Ljava/lang/Object;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    check-cast p0, Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static Q(Ljava/lang/Object;J)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    check-cast p0, Ljava/lang/Double;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method private static R(Ljava/lang/Object;J)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    check-cast p0, Ljava/lang/Float;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static S(Ljava/lang/Object;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    check-cast p0, Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static T(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    check-cast p0, Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method private U(Ljava/lang/Object;[BIIIJLandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v7, p0

    .line 2
    move-object v0, p1

    .line 3
    move-wide v1, p6

    .line 4
    .line 5
    sget-object v3, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 6
    move v4, p5

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Ljava/lang/Object;

    .line 10
    move-result-object v4

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 14
    move-result-object v5

    .line 15
    .line 16
    iget-object v6, v7, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 17
    .line 18
    .line 19
    invoke-interface {v6, v5}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->isImmutable(Ljava/lang/Object;)Z

    .line 20
    move-result v6

    .line 21
    .line 22
    if-eqz v6, :cond_0

    .line 23
    .line 24
    iget-object v6, v7, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 25
    .line 26
    .line 27
    invoke-interface {v6, v4}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v6

    .line 29
    .line 30
    iget-object v8, v7, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 31
    .line 32
    .line 33
    invoke-interface {v8, v6, v5}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, p1, v1, v2, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 37
    move-object v5, v6

    .line 38
    .line 39
    :cond_0
    iget-object v0, v7, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v4}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;

    .line 43
    move-result-object v4

    .line 44
    .line 45
    iget-object v0, v7, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, v5}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    .line 49
    move-result-object v5

    .line 50
    move-object v0, p0

    .line 51
    move-object v1, p2

    .line 52
    move v2, p3

    .line 53
    move v3, p4

    .line 54
    .line 55
    move-object/from16 v6, p8

    .line 56
    .line 57
    .line 58
    invoke-direct/range {v0 .. v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->f([BIILandroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;Ljava/util/Map;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 59
    move-result v0

    .line 60
    return v0
.end method

.method private V(Ljava/lang/Object;[BIIIIIIIJILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v3, p2

    .line 7
    .line 8
    move/from16 v4, p3

    .line 9
    .line 10
    move/from16 v2, p5

    .line 11
    .line 12
    move/from16 v8, p6

    .line 13
    .line 14
    move/from16 v5, p7

    .line 15
    .line 16
    move-wide/from16 v9, p10

    .line 17
    .line 18
    move/from16 v6, p12

    .line 19
    .line 20
    move-object/from16 v11, p13

    .line 21
    .line 22
    sget-object v12, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 23
    .line 24
    iget-object v7, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    .line 25
    .line 26
    add-int/lit8 v13, v6, 0x2

    .line 27
    .line 28
    aget v7, v7, v13

    .line 29
    .line 30
    .line 31
    const v13, 0xfffff

    .line 32
    and-int/2addr v7, v13

    .line 33
    int-to-long v13, v7

    .line 34
    const/4 v7, 0x5

    .line 35
    const/4 v15, 0x2

    .line 36
    .line 37
    .line 38
    packed-switch p9, :pswitch_data_0

    .line 39
    .line 40
    goto/16 :goto_9

    .line 41
    :pswitch_0
    const/4 v7, 0x3

    .line 42
    .line 43
    if-ne v5, v7, :cond_a

    .line 44
    .line 45
    and-int/lit8 v2, v2, -0x8

    .line 46
    .line 47
    or-int/lit8 v7, v2, 0x4

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    move-object/from16 v3, p2

    .line 54
    .line 55
    move/from16 v4, p3

    .line 56
    .line 57
    move/from16 v5, p4

    .line 58
    move v6, v7

    .line 59
    .line 60
    move-object/from16 v7, p13

    .line 61
    .line 62
    .line 63
    invoke-static/range {v2 .. v7}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->n(Landroidx/datastore/preferences/protobuf/Schema;[BIIILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 64
    move-result v2

    .line 65
    .line 66
    .line 67
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 68
    move-result v3

    .line 69
    .line 70
    if-ne v3, v8, :cond_0

    .line 71
    .line 72
    .line 73
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 74
    move-result-object v15

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    const/4 v15, 0x0

    .line 77
    .line 78
    :goto_0
    if-nez v15, :cond_1

    .line 79
    .line 80
    iget-object v3, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 84
    goto :goto_1

    .line 85
    .line 86
    :cond_1
    iget-object v3, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    invoke-static {v15, v3}, Landroidx/datastore/preferences/protobuf/Internal;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    move-result-object v3

    .line 91
    .line 92
    .line 93
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :goto_1
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 97
    .line 98
    goto/16 :goto_a

    .line 99
    .line 100
    :pswitch_1
    if-nez v5, :cond_a

    .line 101
    .line 102
    .line 103
    invoke-static {v3, v4, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->L([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 104
    move-result v2

    .line 105
    .line 106
    iget-wide v3, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->long1:J

    .line 107
    .line 108
    .line 109
    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->c(J)J

    .line 110
    move-result-wide v3

    .line 111
    .line 112
    .line 113
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 114
    move-result-object v3

    .line 115
    .line 116
    .line 117
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 121
    .line 122
    goto/16 :goto_a

    .line 123
    .line 124
    :pswitch_2
    if-nez v5, :cond_a

    .line 125
    .line 126
    .line 127
    invoke-static {v3, v4, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->I([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 128
    move-result v2

    .line 129
    .line 130
    iget v3, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->int1:I

    .line 131
    .line 132
    .line 133
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->b(I)I

    .line 134
    move-result v3

    .line 135
    .line 136
    .line 137
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    move-result-object v3

    .line 139
    .line 140
    .line 141
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 145
    .line 146
    goto/16 :goto_a

    .line 147
    .line 148
    :pswitch_3
    if-nez v5, :cond_a

    .line 149
    .line 150
    .line 151
    invoke-static {v3, v4, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->I([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 152
    move-result v3

    .line 153
    .line 154
    iget v4, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->int1:I

    .line 155
    .line 156
    .line 157
    invoke-direct {v0, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    .line 158
    move-result-object v5

    .line 159
    .line 160
    if-eqz v5, :cond_3

    .line 161
    .line 162
    .line 163
    invoke-interface {v5, v4}, Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    .line 164
    move-result v5

    .line 165
    .line 166
    if-eqz v5, :cond_2

    .line 167
    goto :goto_2

    .line 168
    .line 169
    .line 170
    :cond_2
    invoke-static/range {p1 .. p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 171
    move-result-object v1

    .line 172
    int-to-long v4, v4

    .line 173
    .line 174
    .line 175
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 176
    move-result-object v4

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v2, v4}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->n(ILjava/lang/Object;)V

    .line 180
    goto :goto_3

    .line 181
    .line 182
    .line 183
    :cond_3
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    move-result-object v2

    .line 185
    .line 186
    .line 187
    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 191
    :goto_3
    move v2, v3

    .line 192
    .line 193
    goto/16 :goto_a

    .line 194
    .line 195
    :pswitch_4
    if-ne v5, v15, :cond_a

    .line 196
    .line 197
    .line 198
    invoke-static {v3, v4, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->b([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 199
    move-result v2

    .line 200
    .line 201
    iget-object v3, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 208
    .line 209
    goto/16 :goto_a

    .line 210
    .line 211
    :pswitch_5
    if-ne v5, v15, :cond_a

    .line 212
    .line 213
    .line 214
    invoke-direct {v0, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 215
    move-result-object v2

    .line 216
    .line 217
    move/from16 v5, p4

    .line 218
    .line 219
    .line 220
    invoke-static {v2, v3, v4, v5, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->p(Landroidx/datastore/preferences/protobuf/Schema;[BIILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 221
    move-result v2

    .line 222
    .line 223
    .line 224
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 225
    move-result v3

    .line 226
    .line 227
    if-ne v3, v8, :cond_4

    .line 228
    .line 229
    .line 230
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 231
    move-result-object v15

    .line 232
    goto :goto_4

    .line 233
    :cond_4
    const/4 v15, 0x0

    .line 234
    .line 235
    :goto_4
    if-nez v15, :cond_5

    .line 236
    .line 237
    iget-object v3, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 241
    goto :goto_5

    .line 242
    .line 243
    :cond_5
    iget-object v3, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    invoke-static {v15, v3}, Landroidx/datastore/preferences/protobuf/Internal;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    move-result-object v3

    .line 248
    .line 249
    .line 250
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    :goto_5
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 254
    .line 255
    goto/16 :goto_a

    .line 256
    .line 257
    :pswitch_6
    if-ne v5, v15, :cond_a

    .line 258
    .line 259
    .line 260
    invoke-static {v3, v4, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->I([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 261
    move-result v2

    .line 262
    .line 263
    iget v4, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->int1:I

    .line 264
    .line 265
    if-nez v4, :cond_6

    .line 266
    .line 267
    const-string v3, ""

    .line 268
    .line 269
    .line 270
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 271
    goto :goto_7

    .line 272
    .line 273
    :cond_6
    const/high16 v5, 0x20000000

    .line 274
    .line 275
    and-int v5, p8, v5

    .line 276
    .line 277
    if-eqz v5, :cond_8

    .line 278
    .line 279
    add-int v5, v2, v4

    .line 280
    .line 281
    .line 282
    invoke-static {v3, v2, v5}, Landroidx/datastore/preferences/protobuf/Utf8;->u([BII)Z

    .line 283
    move-result v5

    .line 284
    .line 285
    if-eqz v5, :cond_7

    .line 286
    goto :goto_6

    .line 287
    .line 288
    .line 289
    :cond_7
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->c()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 290
    move-result-object v1

    .line 291
    throw v1

    .line 292
    .line 293
    :cond_8
    :goto_6
    new-instance v5, Ljava/lang/String;

    .line 294
    .line 295
    sget-object v6, Landroidx/datastore/preferences/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 296
    .line 297
    .line 298
    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v12, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 302
    add-int/2addr v2, v4

    .line 303
    .line 304
    .line 305
    :goto_7
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 306
    .line 307
    goto/16 :goto_a

    .line 308
    .line 309
    :pswitch_7
    if-nez v5, :cond_a

    .line 310
    .line 311
    .line 312
    invoke-static {v3, v4, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->L([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 313
    move-result v2

    .line 314
    .line 315
    iget-wide v3, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->long1:J

    .line 316
    .line 317
    const-wide/16 v5, 0x0

    .line 318
    .line 319
    cmp-long v3, v3, v5

    .line 320
    .line 321
    if-eqz v3, :cond_9

    .line 322
    const/4 v15, 0x1

    .line 323
    goto :goto_8

    .line 324
    :cond_9
    const/4 v15, 0x0

    .line 325
    .line 326
    .line 327
    :goto_8
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 328
    move-result-object v3

    .line 329
    .line 330
    .line 331
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 335
    .line 336
    goto/16 :goto_a

    .line 337
    .line 338
    :pswitch_8
    if-ne v5, v7, :cond_a

    .line 339
    .line 340
    .line 341
    invoke-static/range {p2 .. p3}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->h([BI)I

    .line 342
    move-result v2

    .line 343
    .line 344
    .line 345
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 346
    move-result-object v2

    .line 347
    .line 348
    .line 349
    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 350
    .line 351
    add-int/lit8 v2, v4, 0x4

    .line 352
    .line 353
    .line 354
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 355
    goto :goto_a

    .line 356
    :pswitch_9
    const/4 v2, 0x1

    .line 357
    .line 358
    if-ne v5, v2, :cond_a

    .line 359
    .line 360
    .line 361
    invoke-static/range {p2 .. p3}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->j([BI)J

    .line 362
    move-result-wide v2

    .line 363
    .line 364
    .line 365
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 366
    move-result-object v2

    .line 367
    .line 368
    .line 369
    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 370
    .line 371
    add-int/lit8 v2, v4, 0x8

    .line 372
    .line 373
    .line 374
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 375
    goto :goto_a

    .line 376
    .line 377
    :pswitch_a
    if-nez v5, :cond_a

    .line 378
    .line 379
    .line 380
    invoke-static {v3, v4, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->I([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 381
    move-result v2

    .line 382
    .line 383
    iget v3, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->int1:I

    .line 384
    .line 385
    .line 386
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 387
    move-result-object v3

    .line 388
    .line 389
    .line 390
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 394
    goto :goto_a

    .line 395
    .line 396
    :pswitch_b
    if-nez v5, :cond_a

    .line 397
    .line 398
    .line 399
    invoke-static {v3, v4, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->L([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 400
    move-result v2

    .line 401
    .line 402
    iget-wide v3, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->long1:J

    .line 403
    .line 404
    .line 405
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 406
    move-result-object v3

    .line 407
    .line 408
    .line 409
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 413
    goto :goto_a

    .line 414
    .line 415
    :pswitch_c
    if-ne v5, v7, :cond_a

    .line 416
    .line 417
    .line 418
    invoke-static/range {p2 .. p3}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->l([BI)F

    .line 419
    move-result v2

    .line 420
    .line 421
    .line 422
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 423
    move-result-object v2

    .line 424
    .line 425
    .line 426
    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 427
    .line 428
    add-int/lit8 v2, v4, 0x4

    .line 429
    .line 430
    .line 431
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 432
    goto :goto_a

    .line 433
    :pswitch_d
    const/4 v2, 0x1

    .line 434
    .line 435
    if-ne v5, v2, :cond_a

    .line 436
    .line 437
    .line 438
    invoke-static/range {p2 .. p3}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->d([BI)D

    .line 439
    move-result-wide v2

    .line 440
    .line 441
    .line 442
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 443
    move-result-object v2

    .line 444
    .line 445
    .line 446
    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 447
    .line 448
    add-int/lit8 v2, v4, 0x8

    .line 449
    .line 450
    .line 451
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 452
    goto :goto_a

    .line 453
    :cond_a
    :goto_9
    move v2, v4

    .line 454
    :goto_a
    return v2

    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private X(Ljava/lang/Object;[BIILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v15, p0

    .line 3
    .line 4
    move-object/from16 v14, p1

    .line 5
    .line 6
    move-object/from16 v12, p2

    .line 7
    .line 8
    move/from16 v13, p4

    .line 9
    .line 10
    move-object/from16 v11, p5

    .line 11
    .line 12
    sget-object v9, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    const/4 v10, -0x1

    .line 14
    .line 15
    const/16 v16, 0x0

    .line 16
    .line 17
    move/from16 v0, p3

    .line 18
    move v1, v10

    .line 19
    .line 20
    move/from16 v2, v16

    .line 21
    .line 22
    :goto_0
    if-ge v0, v13, :cond_10

    .line 23
    .line 24
    add-int/lit8 v3, v0, 0x1

    .line 25
    .line 26
    aget-byte v0, v12, v0

    .line 27
    .line 28
    if-gez v0, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v12, v3, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->H(I[BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 32
    move-result v0

    .line 33
    .line 34
    iget v3, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->int1:I

    .line 35
    move v8, v0

    .line 36
    .line 37
    move/from16 v17, v3

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_0
    move/from16 v17, v0

    .line 41
    move v8, v3

    .line 42
    .line 43
    :goto_1
    ushr-int/lit8 v7, v17, 0x3

    .line 44
    .line 45
    and-int/lit8 v6, v17, 0x7

    .line 46
    .line 47
    if-le v7, v1, :cond_1

    .line 48
    .line 49
    div-int/lit8 v2, v2, 0x3

    .line 50
    .line 51
    .line 52
    invoke-direct {v15, v7, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->a0(II)I

    .line 53
    move-result v0

    .line 54
    :goto_2
    move v4, v0

    .line 55
    goto :goto_3

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-direct {v15, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->Z(I)I

    .line 59
    move-result v0

    .line 60
    goto :goto_2

    .line 61
    .line 62
    :goto_3
    if-ne v4, v10, :cond_2

    .line 63
    .line 64
    move/from16 v24, v7

    .line 65
    move v2, v8

    .line 66
    .line 67
    move-object/from16 v18, v9

    .line 68
    .line 69
    move/from16 v25, v10

    .line 70
    .line 71
    move/from16 v19, v16

    .line 72
    .line 73
    goto/16 :goto_f

    .line 74
    .line 75
    :cond_2
    iget-object v0, v15, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    .line 76
    .line 77
    add-int/lit8 v1, v4, 0x1

    .line 78
    .line 79
    aget v5, v0, v1

    .line 80
    .line 81
    .line 82
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->l0(I)I

    .line 83
    move-result v3

    .line 84
    .line 85
    .line 86
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 87
    move-result-wide v1

    .line 88
    .line 89
    const/16 v0, 0x11

    .line 90
    const/4 v10, 0x2

    .line 91
    .line 92
    if-gt v3, v0, :cond_8

    .line 93
    const/4 v0, 0x1

    .line 94
    .line 95
    .line 96
    packed-switch v3, :pswitch_data_0

    .line 97
    .line 98
    :cond_3
    move/from16 v19, v4

    .line 99
    .line 100
    move/from16 v24, v7

    .line 101
    move v15, v8

    .line 102
    .line 103
    move-object/from16 v18, v9

    .line 104
    .line 105
    :goto_4
    const/16 v25, -0x1

    .line 106
    .line 107
    goto/16 :goto_e

    .line 108
    .line 109
    :pswitch_0
    if-nez v6, :cond_3

    .line 110
    .line 111
    .line 112
    invoke-static {v12, v8, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->L([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 113
    move-result v6

    .line 114
    .line 115
    move-wide/from16 v19, v1

    .line 116
    .line 117
    iget-wide v0, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->long1:J

    .line 118
    .line 119
    .line 120
    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->c(J)J

    .line 121
    move-result-wide v21

    .line 122
    move-object v0, v9

    .line 123
    .line 124
    move-wide/from16 v2, v19

    .line 125
    .line 126
    move-object/from16 v1, p1

    .line 127
    move v10, v4

    .line 128
    .line 129
    move-wide/from16 v4, v21

    .line 130
    .line 131
    .line 132
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 133
    :goto_5
    move v0, v6

    .line 134
    :goto_6
    move v1, v7

    .line 135
    move v2, v10

    .line 136
    :goto_7
    const/4 v10, -0x1

    .line 137
    goto :goto_0

    .line 138
    :pswitch_1
    move-wide v2, v1

    .line 139
    move v10, v4

    .line 140
    .line 141
    if-nez v6, :cond_4

    .line 142
    .line 143
    .line 144
    invoke-static {v12, v8, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->I([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 145
    move-result v0

    .line 146
    .line 147
    iget v1, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->int1:I

    .line 148
    .line 149
    .line 150
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->b(I)I

    .line 151
    move-result v1

    .line 152
    .line 153
    .line 154
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 155
    goto :goto_6

    .line 156
    .line 157
    :cond_4
    move/from16 v24, v7

    .line 158
    move v15, v8

    .line 159
    .line 160
    move-object/from16 v18, v9

    .line 161
    .line 162
    move/from16 v19, v10

    .line 163
    goto :goto_4

    .line 164
    :pswitch_2
    move-wide v2, v1

    .line 165
    move v10, v4

    .line 166
    .line 167
    if-nez v6, :cond_4

    .line 168
    .line 169
    .line 170
    invoke-static {v12, v8, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->I([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 171
    move-result v0

    .line 172
    .line 173
    iget v1, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->int1:I

    .line 174
    .line 175
    .line 176
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 177
    goto :goto_6

    .line 178
    :pswitch_3
    move-wide v2, v1

    .line 179
    .line 180
    if-ne v6, v10, :cond_3

    .line 181
    .line 182
    .line 183
    invoke-static {v12, v8, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->b([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 184
    move-result v0

    .line 185
    .line 186
    iget-object v1, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 190
    :goto_8
    move v2, v4

    .line 191
    move v1, v7

    .line 192
    goto :goto_7

    .line 193
    :pswitch_4
    move-wide v2, v1

    .line 194
    .line 195
    if-ne v6, v10, :cond_3

    .line 196
    .line 197
    .line 198
    invoke-direct {v15, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 199
    move-result-object v0

    .line 200
    .line 201
    .line 202
    invoke-static {v0, v12, v8, v13, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->p(Landroidx/datastore/preferences/protobuf/Schema;[BIILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 203
    move-result v0

    .line 204
    .line 205
    .line 206
    invoke-virtual {v9, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 207
    move-result-object v1

    .line 208
    .line 209
    if-nez v1, :cond_5

    .line 210
    .line 211
    iget-object v1, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 215
    goto :goto_8

    .line 216
    .line 217
    :cond_5
    iget-object v5, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    invoke-static {v1, v5}, Landroidx/datastore/preferences/protobuf/Internal;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    move-result-object v1

    .line 222
    .line 223
    .line 224
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 225
    goto :goto_8

    .line 226
    :pswitch_5
    move-wide v2, v1

    .line 227
    .line 228
    if-ne v6, v10, :cond_3

    .line 229
    .line 230
    const/high16 v0, 0x20000000

    .line 231
    and-int/2addr v0, v5

    .line 232
    .line 233
    if-nez v0, :cond_6

    .line 234
    .line 235
    .line 236
    invoke-static {v12, v8, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->C([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 237
    move-result v0

    .line 238
    goto :goto_9

    .line 239
    .line 240
    .line 241
    :cond_6
    invoke-static {v12, v8, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->F([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 242
    move-result v0

    .line 243
    .line 244
    :goto_9
    iget-object v1, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 248
    goto :goto_8

    .line 249
    :pswitch_6
    move-wide v2, v1

    .line 250
    .line 251
    if-nez v6, :cond_3

    .line 252
    .line 253
    .line 254
    invoke-static {v12, v8, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->L([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 255
    move-result v1

    .line 256
    .line 257
    iget-wide v5, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->long1:J

    .line 258
    .line 259
    const-wide/16 v19, 0x0

    .line 260
    .line 261
    cmp-long v5, v5, v19

    .line 262
    .line 263
    if-eqz v5, :cond_7

    .line 264
    goto :goto_a

    .line 265
    .line 266
    :cond_7
    move/from16 v0, v16

    .line 267
    .line 268
    .line 269
    :goto_a
    invoke-static {v14, v2, v3, v0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->K(Ljava/lang/Object;JZ)V

    .line 270
    move v0, v1

    .line 271
    goto :goto_8

    .line 272
    :pswitch_7
    move-wide v2, v1

    .line 273
    const/4 v0, 0x5

    .line 274
    .line 275
    if-ne v6, v0, :cond_3

    .line 276
    .line 277
    .line 278
    invoke-static {v12, v8}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->h([BI)I

    .line 279
    move-result v0

    .line 280
    .line 281
    .line 282
    invoke-virtual {v9, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 283
    .line 284
    add-int/lit8 v0, v8, 0x4

    .line 285
    goto :goto_8

    .line 286
    :pswitch_8
    move-wide v2, v1

    .line 287
    .line 288
    if-ne v6, v0, :cond_3

    .line 289
    .line 290
    .line 291
    invoke-static {v12, v8}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->j([BI)J

    .line 292
    move-result-wide v5

    .line 293
    move-object v0, v9

    .line 294
    .line 295
    move-object/from16 v1, p1

    .line 296
    move v10, v4

    .line 297
    move-wide v4, v5

    .line 298
    .line 299
    .line 300
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 301
    .line 302
    :goto_b
    add-int/lit8 v0, v8, 0x8

    .line 303
    .line 304
    goto/16 :goto_6

    .line 305
    :pswitch_9
    move-wide v2, v1

    .line 306
    move v10, v4

    .line 307
    .line 308
    if-nez v6, :cond_4

    .line 309
    .line 310
    .line 311
    invoke-static {v12, v8, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->I([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 312
    move-result v0

    .line 313
    .line 314
    iget v1, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->int1:I

    .line 315
    .line 316
    .line 317
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 318
    .line 319
    goto/16 :goto_6

    .line 320
    :pswitch_a
    move-wide v2, v1

    .line 321
    move v10, v4

    .line 322
    .line 323
    if-nez v6, :cond_4

    .line 324
    .line 325
    .line 326
    invoke-static {v12, v8, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->L([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 327
    move-result v6

    .line 328
    .line 329
    iget-wide v4, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->long1:J

    .line 330
    move-object v0, v9

    .line 331
    .line 332
    move-object/from16 v1, p1

    .line 333
    .line 334
    .line 335
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 336
    .line 337
    goto/16 :goto_5

    .line 338
    :pswitch_b
    move-wide v2, v1

    .line 339
    move v10, v4

    .line 340
    const/4 v0, 0x5

    .line 341
    .line 342
    if-ne v6, v0, :cond_4

    .line 343
    .line 344
    .line 345
    invoke-static {v12, v8}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->l([BI)F

    .line 346
    move-result v0

    .line 347
    .line 348
    .line 349
    invoke-static {v14, v2, v3, v0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->S(Ljava/lang/Object;JF)V

    .line 350
    .line 351
    add-int/lit8 v0, v8, 0x4

    .line 352
    .line 353
    goto/16 :goto_6

    .line 354
    :pswitch_c
    move-wide v2, v1

    .line 355
    move v10, v4

    .line 356
    .line 357
    if-ne v6, v0, :cond_4

    .line 358
    .line 359
    .line 360
    invoke-static {v12, v8}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->d([BI)D

    .line 361
    move-result-wide v0

    .line 362
    .line 363
    .line 364
    invoke-static {v14, v2, v3, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->R(Ljava/lang/Object;JD)V

    .line 365
    goto :goto_b

    .line 366
    .line 367
    :cond_8
    const/16 v0, 0x1b

    .line 368
    .line 369
    if-ne v3, v0, :cond_b

    .line 370
    .line 371
    if-ne v6, v10, :cond_3

    .line 372
    .line 373
    .line 374
    invoke-virtual {v9, v14, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 375
    move-result-object v0

    .line 376
    .line 377
    check-cast v0, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 378
    .line 379
    .line 380
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->isModifiable()Z

    .line 381
    move-result v3

    .line 382
    .line 383
    if-nez v3, :cond_a

    .line 384
    .line 385
    .line 386
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 387
    move-result v3

    .line 388
    .line 389
    if-nez v3, :cond_9

    .line 390
    .line 391
    const/16 v3, 0xa

    .line 392
    goto :goto_c

    .line 393
    .line 394
    :cond_9
    mul-int/lit8 v3, v3, 0x2

    .line 395
    .line 396
    .line 397
    :goto_c
    invoke-interface {v0, v3}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 398
    move-result-object v0

    .line 399
    .line 400
    .line 401
    invoke-virtual {v9, v14, v1, v2, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 402
    :cond_a
    move-object v5, v0

    .line 403
    .line 404
    .line 405
    invoke-direct {v15, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 406
    move-result-object v0

    .line 407
    .line 408
    move/from16 v1, v17

    .line 409
    .line 410
    move-object/from16 v2, p2

    .line 411
    move v3, v8

    .line 412
    .line 413
    move/from16 v19, v4

    .line 414
    .line 415
    move/from16 v4, p4

    .line 416
    .line 417
    move-object/from16 v6, p5

    .line 418
    .line 419
    .line 420
    invoke-static/range {v0 .. v6}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->q(Landroidx/datastore/preferences/protobuf/Schema;I[BIILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 421
    move-result v0

    .line 422
    move v1, v7

    .line 423
    .line 424
    move/from16 v2, v19

    .line 425
    .line 426
    goto/16 :goto_7

    .line 427
    .line 428
    :cond_b
    move/from16 v19, v4

    .line 429
    .line 430
    const/16 v0, 0x31

    .line 431
    .line 432
    if-gt v3, v0, :cond_d

    .line 433
    int-to-long v4, v5

    .line 434
    .line 435
    move-object/from16 v0, p0

    .line 436
    .line 437
    move-wide/from16 v20, v1

    .line 438
    .line 439
    move-object/from16 v1, p1

    .line 440
    .line 441
    move-object/from16 v2, p2

    .line 442
    move v10, v3

    .line 443
    move v3, v8

    .line 444
    .line 445
    move-wide/from16 v22, v4

    .line 446
    .line 447
    move/from16 v4, p4

    .line 448
    .line 449
    move/from16 v5, v17

    .line 450
    .line 451
    move/from16 p3, v6

    .line 452
    move v6, v7

    .line 453
    .line 454
    move/from16 v24, v7

    .line 455
    .line 456
    move/from16 v7, p3

    .line 457
    move v15, v8

    .line 458
    .line 459
    move/from16 v8, v19

    .line 460
    .line 461
    move-object/from16 v18, v9

    .line 462
    .line 463
    move/from16 v26, v10

    .line 464
    .line 465
    const/16 v25, -0x1

    .line 466
    .line 467
    move-wide/from16 v9, v22

    .line 468
    .line 469
    move/from16 v11, v26

    .line 470
    .line 471
    move-wide/from16 v12, v20

    .line 472
    .line 473
    move-object/from16 v14, p5

    .line 474
    .line 475
    .line 476
    invoke-direct/range {v0 .. v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->Y(Ljava/lang/Object;[BIIIIIIJIJLandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 477
    move-result v0

    .line 478
    .line 479
    if-eq v0, v15, :cond_c

    .line 480
    .line 481
    :goto_d
    move-object/from16 v15, p0

    .line 482
    .line 483
    move-object/from16 v14, p1

    .line 484
    .line 485
    move-object/from16 v12, p2

    .line 486
    .line 487
    move/from16 v13, p4

    .line 488
    .line 489
    move-object/from16 v11, p5

    .line 490
    .line 491
    move-object/from16 v9, v18

    .line 492
    .line 493
    move/from16 v2, v19

    .line 494
    .line 495
    move/from16 v1, v24

    .line 496
    .line 497
    move/from16 v10, v25

    .line 498
    .line 499
    goto/16 :goto_0

    .line 500
    :cond_c
    move v2, v0

    .line 501
    goto :goto_f

    .line 502
    .line 503
    :cond_d
    move-wide/from16 v20, v1

    .line 504
    .line 505
    move/from16 v26, v3

    .line 506
    .line 507
    move/from16 p3, v6

    .line 508
    .line 509
    move/from16 v24, v7

    .line 510
    move v15, v8

    .line 511
    .line 512
    move-object/from16 v18, v9

    .line 513
    .line 514
    const/16 v25, -0x1

    .line 515
    .line 516
    const/16 v0, 0x32

    .line 517
    .line 518
    move/from16 v9, v26

    .line 519
    .line 520
    if-ne v9, v0, :cond_f

    .line 521
    .line 522
    move/from16 v7, p3

    .line 523
    .line 524
    if-ne v7, v10, :cond_e

    .line 525
    .line 526
    move-object/from16 v0, p0

    .line 527
    .line 528
    move-object/from16 v1, p1

    .line 529
    .line 530
    move-object/from16 v2, p2

    .line 531
    move v3, v15

    .line 532
    .line 533
    move/from16 v4, p4

    .line 534
    .line 535
    move/from16 v5, v19

    .line 536
    .line 537
    move-wide/from16 v6, v20

    .line 538
    .line 539
    move-object/from16 v8, p5

    .line 540
    .line 541
    .line 542
    invoke-direct/range {v0 .. v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->U(Ljava/lang/Object;[BIIIJLandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 543
    move-result v0

    .line 544
    .line 545
    if-eq v0, v15, :cond_c

    .line 546
    goto :goto_d

    .line 547
    :cond_e
    :goto_e
    move v2, v15

    .line 548
    goto :goto_f

    .line 549
    .line 550
    :cond_f
    move/from16 v7, p3

    .line 551
    .line 552
    move-object/from16 v0, p0

    .line 553
    .line 554
    move-object/from16 v1, p1

    .line 555
    .line 556
    move-object/from16 v2, p2

    .line 557
    move v3, v15

    .line 558
    .line 559
    move/from16 v4, p4

    .line 560
    move v8, v5

    .line 561
    .line 562
    move/from16 v5, v17

    .line 563
    .line 564
    move/from16 v6, v24

    .line 565
    .line 566
    move-wide/from16 v10, v20

    .line 567
    .line 568
    move/from16 v12, v19

    .line 569
    .line 570
    move-object/from16 v13, p5

    .line 571
    .line 572
    .line 573
    invoke-direct/range {v0 .. v13}, Landroidx/datastore/preferences/protobuf/MessageSchema;->V(Ljava/lang/Object;[BIIIIIIIJILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 574
    move-result v0

    .line 575
    .line 576
    if-eq v0, v15, :cond_c

    .line 577
    goto :goto_d

    .line 578
    .line 579
    .line 580
    :goto_f
    invoke-static/range {p1 .. p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 581
    move-result-object v4

    .line 582
    .line 583
    move/from16 v0, v17

    .line 584
    .line 585
    move-object/from16 v1, p2

    .line 586
    .line 587
    move/from16 v3, p4

    .line 588
    .line 589
    move-object/from16 v5, p5

    .line 590
    .line 591
    .line 592
    invoke-static/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->G(I[BIILandroidx/datastore/preferences/protobuf/UnknownFieldSetLite;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 593
    move-result v0

    .line 594
    goto :goto_d

    .line 595
    :cond_10
    move v1, v13

    .line 596
    .line 597
    if-ne v0, v1, :cond_11

    .line 598
    return v0

    .line 599
    .line 600
    .line 601
    :cond_11
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->g()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 602
    move-result-object v0

    .line 603
    throw v0

    .line 604
    nop

    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private Y(Ljava/lang/Object;[BIIIIIIJIJLandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v3, p2

    .line 4
    .line 5
    move/from16 v4, p3

    .line 6
    .line 7
    move/from16 v2, p7

    .line 8
    .line 9
    move/from16 v8, p8

    .line 10
    .line 11
    move-wide/from16 v5, p12

    .line 12
    .line 13
    move-object/from16 v7, p14

    .line 14
    .line 15
    sget-object v9, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v9, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 19
    move-result-object v10

    .line 20
    .line 21
    check-cast v10, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 22
    .line 23
    .line 24
    invoke-interface {v10}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->isModifiable()Z

    .line 25
    move-result v11

    .line 26
    const/4 v12, 0x2

    .line 27
    .line 28
    if-nez v11, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 32
    move-result v11

    .line 33
    .line 34
    if-nez v11, :cond_0

    .line 35
    .line 36
    const/16 v11, 0xa

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    mul-int/2addr v11, v12

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-interface {v10, v11}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 42
    move-result-object v10

    .line 43
    .line 44
    .line 45
    invoke-virtual {v9, p1, v5, v6, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 46
    :cond_1
    const/4 v5, 0x1

    .line 47
    const/4 v6, 0x5

    .line 48
    .line 49
    .line 50
    packed-switch p11, :pswitch_data_0

    .line 51
    .line 52
    goto/16 :goto_2

    .line 53
    :pswitch_0
    const/4 v1, 0x3

    .line 54
    .line 55
    if-ne v2, v1, :cond_f

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    move-object/from16 p6, v1

    .line 62
    .line 63
    move/from16 p7, p5

    .line 64
    .line 65
    move-object/from16 p8, p2

    .line 66
    .line 67
    move/from16 p9, p3

    .line 68
    .line 69
    move/from16 p10, p4

    .line 70
    .line 71
    move-object/from16 p11, v10

    .line 72
    .line 73
    move-object/from16 p12, p14

    .line 74
    .line 75
    .line 76
    invoke-static/range {p6 .. p12}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->o(Landroidx/datastore/preferences/protobuf/Schema;I[BIILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 77
    move-result v1

    .line 78
    .line 79
    goto/16 :goto_3

    .line 80
    .line 81
    :pswitch_1
    if-ne v2, v12, :cond_2

    .line 82
    .line 83
    .line 84
    invoke-static {p2, v4, v10, v7}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->x([BILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 85
    move-result v1

    .line 86
    .line 87
    goto/16 :goto_3

    .line 88
    .line 89
    :cond_2
    if-nez v2, :cond_f

    .line 90
    .line 91
    move-object/from16 p6, p2

    .line 92
    .line 93
    move/from16 p7, p3

    .line 94
    .line 95
    move/from16 p8, p4

    .line 96
    .line 97
    move-object/from16 p9, v10

    .line 98
    .line 99
    move-object/from16 p10, p14

    .line 100
    .line 101
    .line 102
    invoke-static/range {p5 .. p10}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->B(I[BIILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 103
    move-result v1

    .line 104
    .line 105
    goto/16 :goto_3

    .line 106
    .line 107
    :pswitch_2
    if-ne v2, v12, :cond_3

    .line 108
    .line 109
    .line 110
    invoke-static {p2, v4, v10, v7}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->w([BILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 111
    move-result v1

    .line 112
    .line 113
    goto/16 :goto_3

    .line 114
    .line 115
    :cond_3
    if-nez v2, :cond_f

    .line 116
    .line 117
    move-object/from16 p6, p2

    .line 118
    .line 119
    move/from16 p7, p3

    .line 120
    .line 121
    move/from16 p8, p4

    .line 122
    .line 123
    move-object/from16 p9, v10

    .line 124
    .line 125
    move-object/from16 p10, p14

    .line 126
    .line 127
    .line 128
    invoke-static/range {p5 .. p10}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->A(I[BIILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 129
    move-result v1

    .line 130
    .line 131
    goto/16 :goto_3

    .line 132
    .line 133
    :pswitch_3
    if-ne v2, v12, :cond_4

    .line 134
    .line 135
    .line 136
    invoke-static {p2, v4, v10, v7}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->y([BILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 137
    move-result v2

    .line 138
    goto :goto_1

    .line 139
    .line 140
    :cond_4
    if-nez v2, :cond_f

    .line 141
    .line 142
    move/from16 v2, p5

    .line 143
    move-object v3, p2

    .line 144
    .line 145
    move/from16 v4, p3

    .line 146
    .line 147
    move/from16 v5, p4

    .line 148
    move-object v6, v10

    .line 149
    .line 150
    move-object/from16 v7, p14

    .line 151
    .line 152
    .line 153
    invoke-static/range {v2 .. v7}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->J(I[BIILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 154
    move-result v2

    .line 155
    .line 156
    :goto_1
    check-cast v1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 157
    .line 158
    iget-object v3, v1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 159
    .line 160
    .line 161
    invoke-static {}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->e()Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 162
    move-result-object v4

    .line 163
    .line 164
    if-ne v3, v4, :cond_5

    .line 165
    const/4 v3, 0x0

    .line 166
    .line 167
    .line 168
    :cond_5
    invoke-direct {p0, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    .line 169
    move-result-object v4

    .line 170
    .line 171
    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    .line 172
    .line 173
    move/from16 v6, p6

    .line 174
    .line 175
    .line 176
    invoke-static {v6, v10, v4, v3, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->A(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    .line 177
    move-result-object v3

    .line 178
    .line 179
    check-cast v3, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 180
    .line 181
    if-eqz v3, :cond_6

    .line 182
    .line 183
    iput-object v3, v1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 184
    :cond_6
    move v1, v2

    .line 185
    .line 186
    goto/16 :goto_3

    .line 187
    .line 188
    :pswitch_4
    if-ne v2, v12, :cond_f

    .line 189
    .line 190
    move-object/from16 p6, p2

    .line 191
    .line 192
    move/from16 p7, p3

    .line 193
    .line 194
    move/from16 p8, p4

    .line 195
    .line 196
    move-object/from16 p9, v10

    .line 197
    .line 198
    move-object/from16 p10, p14

    .line 199
    .line 200
    .line 201
    invoke-static/range {p5 .. p10}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->c(I[BIILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 202
    move-result v1

    .line 203
    .line 204
    goto/16 :goto_3

    .line 205
    .line 206
    :pswitch_5
    if-ne v2, v12, :cond_f

    .line 207
    .line 208
    .line 209
    invoke-direct {p0, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 210
    move-result-object v1

    .line 211
    .line 212
    move-object/from16 p6, v1

    .line 213
    .line 214
    move/from16 p7, p5

    .line 215
    .line 216
    move-object/from16 p8, p2

    .line 217
    .line 218
    move/from16 p9, p3

    .line 219
    .line 220
    move/from16 p10, p4

    .line 221
    .line 222
    move-object/from16 p11, v10

    .line 223
    .line 224
    move-object/from16 p12, p14

    .line 225
    .line 226
    .line 227
    invoke-static/range {p6 .. p12}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->q(Landroidx/datastore/preferences/protobuf/Schema;I[BIILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 228
    move-result v1

    .line 229
    .line 230
    goto/16 :goto_3

    .line 231
    .line 232
    :pswitch_6
    if-ne v2, v12, :cond_f

    .line 233
    .line 234
    .line 235
    const-wide/32 v1, 0x20000000

    .line 236
    .line 237
    and-long v1, p9, v1

    .line 238
    .line 239
    const-wide/16 v5, 0x0

    .line 240
    .line 241
    cmp-long v1, v1, v5

    .line 242
    .line 243
    if-nez v1, :cond_7

    .line 244
    .line 245
    move-object/from16 p6, p2

    .line 246
    .line 247
    move/from16 p7, p3

    .line 248
    .line 249
    move/from16 p8, p4

    .line 250
    .line 251
    move-object/from16 p9, v10

    .line 252
    .line 253
    move-object/from16 p10, p14

    .line 254
    .line 255
    .line 256
    invoke-static/range {p5 .. p10}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->D(I[BIILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 257
    move-result v1

    .line 258
    .line 259
    goto/16 :goto_3

    .line 260
    .line 261
    :cond_7
    move-object/from16 p6, p2

    .line 262
    .line 263
    move/from16 p7, p3

    .line 264
    .line 265
    move/from16 p8, p4

    .line 266
    .line 267
    move-object/from16 p9, v10

    .line 268
    .line 269
    move-object/from16 p10, p14

    .line 270
    .line 271
    .line 272
    invoke-static/range {p5 .. p10}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->E(I[BIILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 273
    move-result v1

    .line 274
    .line 275
    goto/16 :goto_3

    .line 276
    .line 277
    :pswitch_7
    if-ne v2, v12, :cond_8

    .line 278
    .line 279
    .line 280
    invoke-static {p2, v4, v10, v7}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->r([BILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 281
    move-result v1

    .line 282
    .line 283
    goto/16 :goto_3

    .line 284
    .line 285
    :cond_8
    if-nez v2, :cond_f

    .line 286
    .line 287
    move-object/from16 p6, p2

    .line 288
    .line 289
    move/from16 p7, p3

    .line 290
    .line 291
    move/from16 p8, p4

    .line 292
    .line 293
    move-object/from16 p9, v10

    .line 294
    .line 295
    move-object/from16 p10, p14

    .line 296
    .line 297
    .line 298
    invoke-static/range {p5 .. p10}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->a(I[BIILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 299
    move-result v1

    .line 300
    .line 301
    goto/16 :goto_3

    .line 302
    .line 303
    :pswitch_8
    if-ne v2, v12, :cond_9

    .line 304
    .line 305
    .line 306
    invoke-static {p2, v4, v10, v7}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->t([BILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 307
    move-result v1

    .line 308
    .line 309
    goto/16 :goto_3

    .line 310
    .line 311
    :cond_9
    if-ne v2, v6, :cond_f

    .line 312
    .line 313
    move-object/from16 p6, p2

    .line 314
    .line 315
    move/from16 p7, p3

    .line 316
    .line 317
    move/from16 p8, p4

    .line 318
    .line 319
    move-object/from16 p9, v10

    .line 320
    .line 321
    move-object/from16 p10, p14

    .line 322
    .line 323
    .line 324
    invoke-static/range {p5 .. p10}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->i(I[BIILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 325
    move-result v1

    .line 326
    .line 327
    goto/16 :goto_3

    .line 328
    .line 329
    :pswitch_9
    if-ne v2, v12, :cond_a

    .line 330
    .line 331
    .line 332
    invoke-static {p2, v4, v10, v7}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->u([BILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 333
    move-result v1

    .line 334
    .line 335
    goto/16 :goto_3

    .line 336
    .line 337
    :cond_a
    if-ne v2, v5, :cond_f

    .line 338
    .line 339
    move-object/from16 p6, p2

    .line 340
    .line 341
    move/from16 p7, p3

    .line 342
    .line 343
    move/from16 p8, p4

    .line 344
    .line 345
    move-object/from16 p9, v10

    .line 346
    .line 347
    move-object/from16 p10, p14

    .line 348
    .line 349
    .line 350
    invoke-static/range {p5 .. p10}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->k(I[BIILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 351
    move-result v1

    .line 352
    .line 353
    goto/16 :goto_3

    .line 354
    .line 355
    :pswitch_a
    if-ne v2, v12, :cond_b

    .line 356
    .line 357
    .line 358
    invoke-static {p2, v4, v10, v7}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->y([BILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 359
    move-result v1

    .line 360
    .line 361
    goto/16 :goto_3

    .line 362
    .line 363
    :cond_b
    if-nez v2, :cond_f

    .line 364
    .line 365
    move-object/from16 p6, p2

    .line 366
    .line 367
    move/from16 p7, p3

    .line 368
    .line 369
    move/from16 p8, p4

    .line 370
    .line 371
    move-object/from16 p9, v10

    .line 372
    .line 373
    move-object/from16 p10, p14

    .line 374
    .line 375
    .line 376
    invoke-static/range {p5 .. p10}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->J(I[BIILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 377
    move-result v1

    .line 378
    goto :goto_3

    .line 379
    .line 380
    :pswitch_b
    if-ne v2, v12, :cond_c

    .line 381
    .line 382
    .line 383
    invoke-static {p2, v4, v10, v7}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->z([BILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 384
    move-result v1

    .line 385
    goto :goto_3

    .line 386
    .line 387
    :cond_c
    if-nez v2, :cond_f

    .line 388
    .line 389
    move-object/from16 p6, p2

    .line 390
    .line 391
    move/from16 p7, p3

    .line 392
    .line 393
    move/from16 p8, p4

    .line 394
    .line 395
    move-object/from16 p9, v10

    .line 396
    .line 397
    move-object/from16 p10, p14

    .line 398
    .line 399
    .line 400
    invoke-static/range {p5 .. p10}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->M(I[BIILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 401
    move-result v1

    .line 402
    goto :goto_3

    .line 403
    .line 404
    :pswitch_c
    if-ne v2, v12, :cond_d

    .line 405
    .line 406
    .line 407
    invoke-static {p2, v4, v10, v7}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->v([BILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 408
    move-result v1

    .line 409
    goto :goto_3

    .line 410
    .line 411
    :cond_d
    if-ne v2, v6, :cond_f

    .line 412
    .line 413
    move-object/from16 p6, p2

    .line 414
    .line 415
    move/from16 p7, p3

    .line 416
    .line 417
    move/from16 p8, p4

    .line 418
    .line 419
    move-object/from16 p9, v10

    .line 420
    .line 421
    move-object/from16 p10, p14

    .line 422
    .line 423
    .line 424
    invoke-static/range {p5 .. p10}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->m(I[BIILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 425
    move-result v1

    .line 426
    goto :goto_3

    .line 427
    .line 428
    :pswitch_d
    if-ne v2, v12, :cond_e

    .line 429
    .line 430
    .line 431
    invoke-static {p2, v4, v10, v7}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->s([BILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 432
    move-result v1

    .line 433
    goto :goto_3

    .line 434
    .line 435
    :cond_e
    if-ne v2, v5, :cond_f

    .line 436
    .line 437
    move-object/from16 p6, p2

    .line 438
    .line 439
    move/from16 p7, p3

    .line 440
    .line 441
    move/from16 p8, p4

    .line 442
    .line 443
    move-object/from16 p9, v10

    .line 444
    .line 445
    move-object/from16 p10, p14

    .line 446
    .line 447
    .line 448
    invoke-static/range {p5 .. p10}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->e(I[BIILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 449
    move-result v1

    .line 450
    goto :goto_3

    .line 451
    :cond_f
    :goto_2
    move v1, v4

    .line 452
    :goto_3
    return v1

    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private Z(I)I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->minFieldNumber:I

    .line 3
    .line 4
    if-lt p1, v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->maxFieldNumber:I

    .line 7
    .line 8
    if-gt p1, v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j0(II)I

    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p1, -0x1

    .line 16
    return p1
.end method

.method private a0(II)I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->minFieldNumber:I

    .line 3
    .line 4
    if-lt p1, v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->maxFieldNumber:I

    .line 7
    .line 8
    if-gt p1, v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j0(II)I

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, -0x1

    .line 15
    return p1
.end method

.method private b0(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    .line 3
    .line 4
    add-int/lit8 p1, p1, 0x2

    .line 5
    .line 6
    aget p1, v0, p1

    .line 7
    return p1
.end method

.method private c0(Ljava/lang/Object;JLandroidx/datastore/preferences/protobuf/Reader;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J",
            "Landroidx/datastore/preferences/protobuf/Reader;",
            "Landroidx/datastore/preferences/protobuf/Schema<",
            "TE;>;",
            "Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->e(Ljava/lang/Object;J)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-interface {p4, p1, p5, p6}, Landroidx/datastore/preferences/protobuf/Reader;->g(Ljava/util/List;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    .line 10
    return-void
.end method

.method private d(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 8
    move-result p2

    .line 9
    .line 10
    if-ne p1, p2, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method private d0(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/Reader;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Landroidx/datastore/preferences/protobuf/Reader;",
            "Landroidx/datastore/preferences/protobuf/Schema<",
            "TE;>;",
            "Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-object p2, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1, v0, v1}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->e(Ljava/lang/Object;J)Ljava/util/List;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-interface {p3, p1, p4, p5}, Landroidx/datastore/preferences/protobuf/Reader;->d(Ljava/util/List;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    .line 14
    return-void
.end method

.method private static e(Ljava/lang/Object;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->s(Ljava/lang/Object;J)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private e0(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/Reader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->u(I)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    .line 13
    invoke-interface {p3}, Landroidx/datastore/preferences/protobuf/Reader;->readStringRequireUtf8()Ljava/lang/String;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->V(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->lite:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 26
    move-result-wide v0

    .line 27
    .line 28
    .line 29
    invoke-interface {p3}, Landroidx/datastore/preferences/protobuf/Reader;->readString()Ljava/lang/String;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->V(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 38
    move-result-wide v0

    .line 39
    .line 40
    .line 41
    invoke-interface {p3}, Landroidx/datastore/preferences/protobuf/Reader;->readBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    .line 45
    invoke-static {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->V(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 46
    :goto_0
    return-void
.end method

.method private f([BIILandroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;Ljava/util/Map;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([BII",
            "Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v7, p1

    .line 2
    .line 3
    move/from16 v8, p3

    .line 4
    .line 5
    move-object/from16 v9, p4

    .line 6
    .line 7
    move/from16 v0, p2

    .line 8
    .line 9
    move-object/from16 v10, p6

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0, v10}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->I([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 13
    move-result v0

    .line 14
    .line 15
    iget v1, v10, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->int1:I

    .line 16
    .line 17
    if-ltz v1, :cond_6

    .line 18
    .line 19
    sub-int v2, v8, v0

    .line 20
    .line 21
    if-gt v1, v2, :cond_6

    .line 22
    .line 23
    add-int v11, v0, v1

    .line 24
    .line 25
    iget-object v1, v9, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    .line 26
    .line 27
    iget-object v2, v9, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 28
    move-object v12, v1

    .line 29
    move-object v13, v2

    .line 30
    .line 31
    :goto_0
    if-ge v0, v11, :cond_4

    .line 32
    .line 33
    add-int/lit8 v1, v0, 0x1

    .line 34
    .line 35
    aget-byte v0, v7, v0

    .line 36
    .line 37
    if-gez v0, :cond_0

    .line 38
    .line 39
    .line 40
    invoke-static {v0, p1, v1, v10}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->H(I[BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 41
    move-result v0

    .line 42
    .line 43
    iget v1, v10, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->int1:I

    .line 44
    move v2, v0

    .line 45
    move v0, v1

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    move v2, v1

    .line 48
    .line 49
    :goto_1
    ushr-int/lit8 v1, v0, 0x3

    .line 50
    .line 51
    and-int/lit8 v3, v0, 0x7

    .line 52
    const/4 v4, 0x1

    .line 53
    .line 54
    if-eq v1, v4, :cond_2

    .line 55
    const/4 v4, 0x2

    .line 56
    .line 57
    if-eq v1, v4, :cond_1

    .line 58
    goto :goto_2

    .line 59
    .line 60
    :cond_1
    iget-object v1, v9, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->valueType:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->b()I

    .line 64
    move-result v1

    .line 65
    .line 66
    if-ne v3, v1, :cond_3

    .line 67
    .line 68
    iget-object v4, v9, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->valueType:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    .line 69
    .line 70
    iget-object v0, v9, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    move-result-object v5

    .line 75
    move-object v0, p0

    .line 76
    move-object v1, p1

    .line 77
    .line 78
    move/from16 v3, p3

    .line 79
    .line 80
    move-object/from16 v6, p6

    .line 81
    .line 82
    .line 83
    invoke-direct/range {v0 .. v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->g([BIILandroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 84
    move-result v0

    .line 85
    .line 86
    iget-object v13, v10, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 87
    goto :goto_0

    .line 88
    .line 89
    :cond_2
    iget-object v1, v9, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->keyType:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->b()I

    .line 93
    move-result v1

    .line 94
    .line 95
    if-ne v3, v1, :cond_3

    .line 96
    .line 97
    iget-object v4, v9, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->keyType:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    .line 98
    const/4 v5, 0x0

    .line 99
    move-object v0, p0

    .line 100
    move-object v1, p1

    .line 101
    .line 102
    move/from16 v3, p3

    .line 103
    .line 104
    move-object/from16 v6, p6

    .line 105
    .line 106
    .line 107
    invoke-direct/range {v0 .. v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->g([BIILandroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 108
    move-result v0

    .line 109
    .line 110
    iget-object v12, v10, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 111
    goto :goto_0

    .line 112
    .line 113
    .line 114
    :cond_3
    :goto_2
    invoke-static {v0, p1, v2, v8, v10}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->N(I[BIILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 115
    move-result v0

    .line 116
    goto :goto_0

    .line 117
    .line 118
    :cond_4
    if-ne v0, v11, :cond_5

    .line 119
    .line 120
    move-object/from16 v0, p5

    .line 121
    .line 122
    .line 123
    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return v11

    .line 125
    .line 126
    .line 127
    :cond_5
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->g()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 128
    move-result-object v0

    .line 129
    throw v0

    .line 130
    .line 131
    .line 132
    :cond_6
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->k()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 133
    move-result-object v0

    .line 134
    throw v0
.end method

.method private f0(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/Reader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->u(I)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 12
    move-result-wide v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->e(Ljava/lang/Object;J)Ljava/util/List;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-interface {p3, p1}, Landroidx/datastore/preferences/protobuf/Reader;->readStringListRequireUtf8(Ljava/util/List;)V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 23
    .line 24
    .line 25
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 26
    move-result-wide v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->e(Ljava/lang/Object;J)Ljava/util/List;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-interface {p3, p1}, Landroidx/datastore/preferences/protobuf/Reader;->readStringList(Ljava/util/List;)V

    .line 34
    :goto_0
    return-void
.end method

.method private g([BIILandroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/datastore/preferences/protobuf/MessageSchema$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result p4

    .line 7
    .line 8
    aget p4, v0, p4

    .line 9
    .line 10
    .line 11
    packed-switch p4, :pswitch_data_0

    .line 12
    .line 13
    new-instance p1, Ljava/lang/RuntimeException;

    .line 14
    .line 15
    const-string p2, "unsupported field type."

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p1

    .line 20
    .line 21
    .line 22
    :pswitch_0
    invoke-static {p1, p2, p6}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->F([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 23
    move-result p1

    .line 24
    .line 25
    goto/16 :goto_3

    .line 26
    .line 27
    .line 28
    :pswitch_1
    invoke-static {p1, p2, p6}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->L([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 29
    move-result p1

    .line 30
    .line 31
    iget-wide p2, p6, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->long1:J

    .line 32
    .line 33
    .line 34
    invoke-static {p2, p3}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->c(J)J

    .line 35
    move-result-wide p2

    .line 36
    .line 37
    .line 38
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    move-result-object p2

    .line 40
    .line 41
    iput-object p2, p6, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 42
    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    .line 46
    :pswitch_2
    invoke-static {p1, p2, p6}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->I([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 47
    move-result p1

    .line 48
    .line 49
    iget p2, p6, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->int1:I

    .line 50
    .line 51
    .line 52
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->b(I)I

    .line 53
    move-result p2

    .line 54
    .line 55
    .line 56
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object p2

    .line 58
    .line 59
    iput-object p2, p6, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 60
    .line 61
    goto/16 :goto_3

    .line 62
    .line 63
    .line 64
    :pswitch_3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Protobuf;->a()Landroidx/datastore/preferences/protobuf/Protobuf;

    .line 65
    move-result-object p4

    .line 66
    .line 67
    .line 68
    invoke-virtual {p4, p5}, Landroidx/datastore/preferences/protobuf/Protobuf;->d(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/Schema;

    .line 69
    move-result-object p4

    .line 70
    .line 71
    .line 72
    invoke-static {p4, p1, p2, p3, p6}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->p(Landroidx/datastore/preferences/protobuf/Schema;[BIILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 73
    move-result p1

    .line 74
    goto :goto_3

    .line 75
    .line 76
    .line 77
    :pswitch_4
    invoke-static {p1, p2, p6}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->L([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 78
    move-result p1

    .line 79
    .line 80
    iget-wide p2, p6, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->long1:J

    .line 81
    .line 82
    .line 83
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 84
    move-result-object p2

    .line 85
    .line 86
    iput-object p2, p6, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 87
    goto :goto_3

    .line 88
    .line 89
    .line 90
    :pswitch_5
    invoke-static {p1, p2, p6}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->I([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 91
    move-result p1

    .line 92
    .line 93
    iget p2, p6, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->int1:I

    .line 94
    .line 95
    .line 96
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    move-result-object p2

    .line 98
    .line 99
    iput-object p2, p6, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 100
    goto :goto_3

    .line 101
    .line 102
    .line 103
    :pswitch_6
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->l([BI)F

    .line 104
    move-result p1

    .line 105
    .line 106
    .line 107
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    iput-object p1, p6, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 111
    .line 112
    :goto_0
    add-int/lit8 p1, p2, 0x4

    .line 113
    goto :goto_3

    .line 114
    .line 115
    .line 116
    :pswitch_7
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->j([BI)J

    .line 117
    move-result-wide p3

    .line 118
    .line 119
    .line 120
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    iput-object p1, p6, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 124
    .line 125
    :goto_1
    add-int/lit8 p1, p2, 0x8

    .line 126
    goto :goto_3

    .line 127
    .line 128
    .line 129
    :pswitch_8
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->h([BI)I

    .line 130
    move-result p1

    .line 131
    .line 132
    .line 133
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    move-result-object p1

    .line 135
    .line 136
    iput-object p1, p6, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 137
    goto :goto_0

    .line 138
    .line 139
    .line 140
    :pswitch_9
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->d([BI)D

    .line 141
    move-result-wide p3

    .line 142
    .line 143
    .line 144
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 145
    move-result-object p1

    .line 146
    .line 147
    iput-object p1, p6, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 148
    goto :goto_1

    .line 149
    .line 150
    .line 151
    :pswitch_a
    invoke-static {p1, p2, p6}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->b([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 152
    move-result p1

    .line 153
    goto :goto_3

    .line 154
    .line 155
    .line 156
    :pswitch_b
    invoke-static {p1, p2, p6}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->L([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 157
    move-result p1

    .line 158
    .line 159
    iget-wide p2, p6, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->long1:J

    .line 160
    .line 161
    const-wide/16 p4, 0x0

    .line 162
    .line 163
    cmp-long p2, p2, p4

    .line 164
    .line 165
    if-eqz p2, :cond_0

    .line 166
    const/4 p2, 0x1

    .line 167
    goto :goto_2

    .line 168
    :cond_0
    const/4 p2, 0x0

    .line 169
    .line 170
    .line 171
    :goto_2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 172
    move-result-object p2

    .line 173
    .line 174
    iput-object p2, p6, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 175
    :goto_3
    return p1

    .line 176
    nop

    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static g0(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    .line 7
    .line 8
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 9
    move-result-object v0

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    :goto_0
    if-ge v2, v1, :cond_1

    .line 14
    .line 15
    aget-object v3, v0, v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 19
    move-result-object v4

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v4

    .line 24
    .line 25
    if-eqz v4, :cond_0

    .line 26
    return-object v3

    .line 27
    .line 28
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 32
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    const-string v3, "Field "

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string p1, " for "

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string p0, " not found. Known fields are "

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    .line 74
    .line 75
    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 76
    throw v1
.end method

.method private static h(Ljava/lang/Object;J)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->z(Ljava/lang/Object;J)D

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method private h0(Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->proto3:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->b0(I)I

    .line 9
    move-result p2

    .line 10
    .line 11
    ushr-int/lit8 v0, p2, 0x14

    .line 12
    const/4 v1, 0x1

    .line 13
    .line 14
    shl-int v0, v1, v0

    .line 15
    .line 16
    .line 17
    const v1, 0xfffff

    .line 18
    and-int/2addr p2, v1

    .line 19
    int-to-long v1, p2

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 23
    move-result p2

    .line 24
    or-int/2addr p2, v0

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v1, v2, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->T(Ljava/lang/Object;JI)V

    .line 28
    return-void
.end method

.method private i(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m0(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 8
    move-result-wide v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->l0(I)I

    .line 12
    move-result v0

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x1

    .line 15
    .line 16
    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    return v4

    .line 19
    .line 20
    .line 21
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->A(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 22
    move-result p3

    .line 23
    .line 24
    if-eqz p3, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    .line 35
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->K(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    move-result p1

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    move v3, v4

    .line 40
    :cond_0
    return v3

    .line 41
    .line 42
    .line 43
    :pswitch_1
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 48
    move-result-object p2

    .line 49
    .line 50
    .line 51
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->K(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    move-result p1

    .line 53
    return p1

    .line 54
    .line 55
    .line 56
    :pswitch_2
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 61
    move-result-object p2

    .line 62
    .line 63
    .line 64
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->K(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    move-result p1

    .line 66
    return p1

    .line 67
    .line 68
    .line 69
    :pswitch_3
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->d(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 70
    move-result p3

    .line 71
    .line 72
    if-eqz p3, :cond_1

    .line 73
    .line 74
    .line 75
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    .line 79
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 80
    move-result-object p2

    .line 81
    .line 82
    .line 83
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->K(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    move-result p1

    .line 85
    .line 86
    if-eqz p1, :cond_1

    .line 87
    move v3, v4

    .line 88
    :cond_1
    return v3

    .line 89
    .line 90
    .line 91
    :pswitch_4
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->d(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 92
    move-result p3

    .line 93
    .line 94
    if-eqz p3, :cond_2

    .line 95
    .line 96
    .line 97
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->D(Ljava/lang/Object;J)J

    .line 98
    move-result-wide v5

    .line 99
    .line 100
    .line 101
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->D(Ljava/lang/Object;J)J

    .line 102
    move-result-wide p1

    .line 103
    .line 104
    cmp-long p1, v5, p1

    .line 105
    .line 106
    if-nez p1, :cond_2

    .line 107
    move v3, v4

    .line 108
    :cond_2
    return v3

    .line 109
    .line 110
    .line 111
    :pswitch_5
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->d(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 112
    move-result p3

    .line 113
    .line 114
    if-eqz p3, :cond_3

    .line 115
    .line 116
    .line 117
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 118
    move-result p1

    .line 119
    .line 120
    .line 121
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 122
    move-result p2

    .line 123
    .line 124
    if-ne p1, p2, :cond_3

    .line 125
    move v3, v4

    .line 126
    :cond_3
    return v3

    .line 127
    .line 128
    .line 129
    :pswitch_6
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->d(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 130
    move-result p3

    .line 131
    .line 132
    if-eqz p3, :cond_4

    .line 133
    .line 134
    .line 135
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->D(Ljava/lang/Object;J)J

    .line 136
    move-result-wide v5

    .line 137
    .line 138
    .line 139
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->D(Ljava/lang/Object;J)J

    .line 140
    move-result-wide p1

    .line 141
    .line 142
    cmp-long p1, v5, p1

    .line 143
    .line 144
    if-nez p1, :cond_4

    .line 145
    move v3, v4

    .line 146
    :cond_4
    return v3

    .line 147
    .line 148
    .line 149
    :pswitch_7
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->d(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 150
    move-result p3

    .line 151
    .line 152
    if-eqz p3, :cond_5

    .line 153
    .line 154
    .line 155
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 156
    move-result p1

    .line 157
    .line 158
    .line 159
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 160
    move-result p2

    .line 161
    .line 162
    if-ne p1, p2, :cond_5

    .line 163
    move v3, v4

    .line 164
    :cond_5
    return v3

    .line 165
    .line 166
    .line 167
    :pswitch_8
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->d(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 168
    move-result p3

    .line 169
    .line 170
    if-eqz p3, :cond_6

    .line 171
    .line 172
    .line 173
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 174
    move-result p1

    .line 175
    .line 176
    .line 177
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 178
    move-result p2

    .line 179
    .line 180
    if-ne p1, p2, :cond_6

    .line 181
    move v3, v4

    .line 182
    :cond_6
    return v3

    .line 183
    .line 184
    .line 185
    :pswitch_9
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->d(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 186
    move-result p3

    .line 187
    .line 188
    if-eqz p3, :cond_7

    .line 189
    .line 190
    .line 191
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 192
    move-result p1

    .line 193
    .line 194
    .line 195
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 196
    move-result p2

    .line 197
    .line 198
    if-ne p1, p2, :cond_7

    .line 199
    move v3, v4

    .line 200
    :cond_7
    return v3

    .line 201
    .line 202
    .line 203
    :pswitch_a
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->d(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 204
    move-result p3

    .line 205
    .line 206
    if-eqz p3, :cond_8

    .line 207
    .line 208
    .line 209
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 210
    move-result-object p1

    .line 211
    .line 212
    .line 213
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 214
    move-result-object p2

    .line 215
    .line 216
    .line 217
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->K(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 218
    move-result p1

    .line 219
    .line 220
    if-eqz p1, :cond_8

    .line 221
    move v3, v4

    .line 222
    :cond_8
    return v3

    .line 223
    .line 224
    .line 225
    :pswitch_b
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->d(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 226
    move-result p3

    .line 227
    .line 228
    if-eqz p3, :cond_9

    .line 229
    .line 230
    .line 231
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 232
    move-result-object p1

    .line 233
    .line 234
    .line 235
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 236
    move-result-object p2

    .line 237
    .line 238
    .line 239
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->K(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 240
    move-result p1

    .line 241
    .line 242
    if-eqz p1, :cond_9

    .line 243
    move v3, v4

    .line 244
    :cond_9
    return v3

    .line 245
    .line 246
    .line 247
    :pswitch_c
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->d(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 248
    move-result p3

    .line 249
    .line 250
    if-eqz p3, :cond_a

    .line 251
    .line 252
    .line 253
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 254
    move-result-object p1

    .line 255
    .line 256
    .line 257
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 258
    move-result-object p2

    .line 259
    .line 260
    .line 261
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->K(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 262
    move-result p1

    .line 263
    .line 264
    if-eqz p1, :cond_a

    .line 265
    move v3, v4

    .line 266
    :cond_a
    return v3

    .line 267
    .line 268
    .line 269
    :pswitch_d
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->d(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 270
    move-result p3

    .line 271
    .line 272
    if-eqz p3, :cond_b

    .line 273
    .line 274
    .line 275
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->s(Ljava/lang/Object;J)Z

    .line 276
    move-result p1

    .line 277
    .line 278
    .line 279
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->s(Ljava/lang/Object;J)Z

    .line 280
    move-result p2

    .line 281
    .line 282
    if-ne p1, p2, :cond_b

    .line 283
    move v3, v4

    .line 284
    :cond_b
    return v3

    .line 285
    .line 286
    .line 287
    :pswitch_e
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->d(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 288
    move-result p3

    .line 289
    .line 290
    if-eqz p3, :cond_c

    .line 291
    .line 292
    .line 293
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 294
    move-result p1

    .line 295
    .line 296
    .line 297
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 298
    move-result p2

    .line 299
    .line 300
    if-ne p1, p2, :cond_c

    .line 301
    move v3, v4

    .line 302
    :cond_c
    return v3

    .line 303
    .line 304
    .line 305
    :pswitch_f
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->d(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 306
    move-result p3

    .line 307
    .line 308
    if-eqz p3, :cond_d

    .line 309
    .line 310
    .line 311
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->D(Ljava/lang/Object;J)J

    .line 312
    move-result-wide v5

    .line 313
    .line 314
    .line 315
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->D(Ljava/lang/Object;J)J

    .line 316
    move-result-wide p1

    .line 317
    .line 318
    cmp-long p1, v5, p1

    .line 319
    .line 320
    if-nez p1, :cond_d

    .line 321
    move v3, v4

    .line 322
    :cond_d
    return v3

    .line 323
    .line 324
    .line 325
    :pswitch_10
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->d(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 326
    move-result p3

    .line 327
    .line 328
    if-eqz p3, :cond_e

    .line 329
    .line 330
    .line 331
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 332
    move-result p1

    .line 333
    .line 334
    .line 335
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 336
    move-result p2

    .line 337
    .line 338
    if-ne p1, p2, :cond_e

    .line 339
    move v3, v4

    .line 340
    :cond_e
    return v3

    .line 341
    .line 342
    .line 343
    :pswitch_11
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->d(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 344
    move-result p3

    .line 345
    .line 346
    if-eqz p3, :cond_f

    .line 347
    .line 348
    .line 349
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->D(Ljava/lang/Object;J)J

    .line 350
    move-result-wide v5

    .line 351
    .line 352
    .line 353
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->D(Ljava/lang/Object;J)J

    .line 354
    move-result-wide p1

    .line 355
    .line 356
    cmp-long p1, v5, p1

    .line 357
    .line 358
    if-nez p1, :cond_f

    .line 359
    move v3, v4

    .line 360
    :cond_f
    return v3

    .line 361
    .line 362
    .line 363
    :pswitch_12
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->d(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 364
    move-result p3

    .line 365
    .line 366
    if-eqz p3, :cond_10

    .line 367
    .line 368
    .line 369
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->D(Ljava/lang/Object;J)J

    .line 370
    move-result-wide v5

    .line 371
    .line 372
    .line 373
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->D(Ljava/lang/Object;J)J

    .line 374
    move-result-wide p1

    .line 375
    .line 376
    cmp-long p1, v5, p1

    .line 377
    .line 378
    if-nez p1, :cond_10

    .line 379
    move v3, v4

    .line 380
    :cond_10
    return v3

    .line 381
    .line 382
    .line 383
    :pswitch_13
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->d(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 384
    move-result p3

    .line 385
    .line 386
    if-eqz p3, :cond_11

    .line 387
    .line 388
    .line 389
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->A(Ljava/lang/Object;J)F

    .line 390
    move-result p1

    .line 391
    .line 392
    .line 393
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 394
    move-result p1

    .line 395
    .line 396
    .line 397
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->A(Ljava/lang/Object;J)F

    .line 398
    move-result p2

    .line 399
    .line 400
    .line 401
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 402
    move-result p2

    .line 403
    .line 404
    if-ne p1, p2, :cond_11

    .line 405
    move v3, v4

    .line 406
    :cond_11
    return v3

    .line 407
    .line 408
    .line 409
    :pswitch_14
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->d(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 410
    move-result p3

    .line 411
    .line 412
    if-eqz p3, :cond_12

    .line 413
    .line 414
    .line 415
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->z(Ljava/lang/Object;J)D

    .line 416
    move-result-wide v5

    .line 417
    .line 418
    .line 419
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 420
    move-result-wide v5

    .line 421
    .line 422
    .line 423
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->z(Ljava/lang/Object;J)D

    .line 424
    move-result-wide p1

    .line 425
    .line 426
    .line 427
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 428
    move-result-wide p1

    .line 429
    .line 430
    cmp-long p1, v5, p1

    .line 431
    .line 432
    if-nez p1, :cond_12

    .line 433
    move v3, v4

    .line 434
    :cond_12
    return v3

    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private i0(Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->b0(I)I

    .line 4
    move-result p3

    .line 5
    .line 6
    .line 7
    const v0, 0xfffff

    .line 8
    and-int/2addr p3, v0

    .line 9
    int-to-long v0, p3

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->T(Ljava/lang/Object;JI)V

    .line 13
    return-void
.end method

.method private final j(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ITUB;",
            "Landroidx/datastore/preferences/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 4
    move-result v2

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m0(I)I

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    return-object p3

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-direct {p0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    .line 23
    move-result-object v4

    .line 24
    .line 25
    if-nez v4, :cond_1

    .line 26
    return-object p3

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    .line 32
    move-result-object v3

    .line 33
    move-object v0, p0

    .line 34
    move v1, p2

    .line 35
    move-object v5, p3

    .line 36
    move-object v6, p4

    .line 37
    .line 38
    .line 39
    invoke-direct/range {v0 .. v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->k(IILjava/util/Map;Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    .line 40
    move-result-object p1

    .line 41
    return-object p1
.end method

.method private j0(II)I
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    .line 3
    array-length v0, v0

    .line 4
    .line 5
    div-int/lit8 v0, v0, 0x3

    .line 6
    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-gt p2, v0, :cond_2

    .line 10
    .line 11
    add-int v1, v0, p2

    .line 12
    .line 13
    ushr-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    mul-int/lit8 v2, v1, 0x3

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 19
    move-result v3

    .line 20
    .line 21
    if-ne p1, v3, :cond_0

    .line 22
    return v2

    .line 23
    .line 24
    :cond_0
    if-ge p1, v3, :cond_1

    .line 25
    .line 26
    add-int/lit8 v1, v1, -0x1

    .line 27
    move v0, v1

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 31
    move p2, v1

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/4 p1, -0x1

    .line 34
    return p1
.end method

.method private final k(IILjava/util/Map;Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;",
            "TUB;",
            "Landroidx/datastore/preferences/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 14
    move-result-object p3

    .line 15
    .line 16
    .line 17
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p3

    .line 19
    .line 20
    .line 21
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    check-cast v0, Ljava/util/Map$Entry;

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    check-cast v1, Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 40
    move-result v1

    .line 41
    .line 42
    .line 43
    invoke-interface {p4, v1}, Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    .line 44
    move-result v1

    .line 45
    .line 46
    if-nez v1, :cond_0

    .line 47
    .line 48
    if-nez p5, :cond_1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p6}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->n()Ljava/lang/Object;

    .line 52
    move-result-object p5

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    .line 63
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/MapEntryLite;->b(Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 64
    move-result v1

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/ByteString;->x(I)Landroidx/datastore/preferences/protobuf/ByteString$CodedBuilder;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ByteString$CodedBuilder;->b()Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 72
    move-result-object v2

    .line 73
    .line 74
    .line 75
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 76
    move-result-object v3

    .line 77
    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    .line 83
    invoke-static {v2, p1, v3, v0}, Landroidx/datastore/preferences/protobuf/MapEntryLite;->e(Landroidx/datastore/preferences/protobuf/CodedOutputStream;Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ByteString$CodedBuilder;->a()Landroidx/datastore/preferences/protobuf/ByteString;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    .line 90
    invoke-virtual {p6, p5, p2, v0}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->d(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/ByteString;)V

    .line 91
    .line 92
    .line 93
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    .line 94
    goto :goto_0

    .line 95
    :catch_0
    move-exception p1

    .line 96
    .line 97
    new-instance p2, Ljava/lang/RuntimeException;

    .line 98
    .line 99
    .line 100
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 101
    throw p2

    .line 102
    :cond_2
    return-object p5
.end method

.method private static k0(Landroidx/datastore/preferences/protobuf/FieldInfo;[IIZ[Ljava/lang/Object;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldInfo;->i()Landroidx/datastore/preferences/protobuf/OneofInfo;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldInfo;->l()Landroidx/datastore/preferences/protobuf/FieldType;

    .line 11
    move-result-object p3

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3}, Landroidx/datastore/preferences/protobuf/FieldType;->a()I

    .line 15
    move-result p3

    .line 16
    .line 17
    add-int/lit8 p3, p3, 0x33

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/OneofInfo;->b()Ljava/lang/reflect/Field;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->J(Ljava/lang/reflect/Field;)J

    .line 25
    move-result-wide v2

    .line 26
    long-to-int v2, v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/OneofInfo;->a()Ljava/lang/reflect/Field;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->J(Ljava/lang/reflect/Field;)J

    .line 34
    move-result-wide v3

    .line 35
    long-to-int v0, v3

    .line 36
    :goto_0
    move v3, v2

    .line 37
    move v2, v0

    .line 38
    move v0, v1

    .line 39
    goto :goto_1

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldInfo;->l()Landroidx/datastore/preferences/protobuf/FieldType;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldInfo;->d()Ljava/lang/reflect/Field;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    .line 50
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->J(Ljava/lang/reflect/Field;)J

    .line 51
    move-result-wide v2

    .line 52
    long-to-int v2, v2

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/FieldType;->a()I

    .line 56
    move-result v3

    .line 57
    .line 58
    if-nez p3, :cond_1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/FieldType;->b()Z

    .line 62
    move-result p3

    .line 63
    .line 64
    if-nez p3, :cond_1

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/FieldType;->c()Z

    .line 68
    move-result p3

    .line 69
    .line 70
    if-nez p3, :cond_1

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldInfo;->j()Ljava/lang/reflect/Field;

    .line 74
    move-result-object p3

    .line 75
    .line 76
    .line 77
    invoke-static {p3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->J(Ljava/lang/reflect/Field;)J

    .line 78
    move-result-wide v4

    .line 79
    long-to-int v0, v4

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldInfo;->k()I

    .line 83
    move-result p3

    .line 84
    .line 85
    .line 86
    invoke-static {p3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    .line 87
    move-result p3

    .line 88
    move v7, v0

    .line 89
    move v0, p3

    .line 90
    move p3, v3

    .line 91
    move v3, v2

    .line 92
    move v2, v7

    .line 93
    goto :goto_1

    .line 94
    .line 95
    .line 96
    :cond_1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldInfo;->b()Ljava/lang/reflect/Field;

    .line 97
    move-result-object p3

    .line 98
    .line 99
    if-nez p3, :cond_2

    .line 100
    move v0, v1

    .line 101
    move p3, v3

    .line 102
    move v3, v2

    .line 103
    move v2, v0

    .line 104
    goto :goto_1

    .line 105
    .line 106
    .line 107
    :cond_2
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldInfo;->b()Ljava/lang/reflect/Field;

    .line 108
    move-result-object p3

    .line 109
    .line 110
    .line 111
    invoke-static {p3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->J(Ljava/lang/reflect/Field;)J

    .line 112
    move-result-wide v4

    .line 113
    long-to-int v0, v4

    .line 114
    move p3, v3

    .line 115
    goto :goto_0

    .line 116
    .line 117
    .line 118
    :goto_1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldInfo;->e()I

    .line 119
    move-result v4

    .line 120
    .line 121
    aput v4, p1, p2

    .line 122
    .line 123
    add-int/lit8 v4, p2, 0x1

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldInfo;->n()Z

    .line 127
    move-result v5

    .line 128
    .line 129
    if-eqz v5, :cond_3

    .line 130
    .line 131
    const/high16 v5, 0x20000000

    .line 132
    goto :goto_2

    .line 133
    :cond_3
    move v5, v1

    .line 134
    .line 135
    .line 136
    :goto_2
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldInfo;->o()Z

    .line 137
    move-result v6

    .line 138
    .line 139
    if-eqz v6, :cond_4

    .line 140
    .line 141
    const/high16 v1, 0x10000000

    .line 142
    :cond_4
    or-int/2addr v1, v5

    .line 143
    .line 144
    shl-int/lit8 p3, p3, 0x14

    .line 145
    or-int/2addr p3, v1

    .line 146
    or-int/2addr p3, v3

    .line 147
    .line 148
    aput p3, p1, v4

    .line 149
    .line 150
    add-int/lit8 p3, p2, 0x2

    .line 151
    .line 152
    shl-int/lit8 v0, v0, 0x14

    .line 153
    or-int/2addr v0, v2

    .line 154
    .line 155
    aput v0, p1, p3

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldInfo;->h()Ljava/lang/Class;

    .line 159
    move-result-object p1

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldInfo;->f()Ljava/lang/Object;

    .line 163
    move-result-object p3

    .line 164
    .line 165
    if-eqz p3, :cond_6

    .line 166
    .line 167
    div-int/lit8 p2, p2, 0x3

    .line 168
    .line 169
    mul-int/lit8 p2, p2, 0x2

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldInfo;->f()Ljava/lang/Object;

    .line 173
    move-result-object p3

    .line 174
    .line 175
    aput-object p3, p4, p2

    .line 176
    .line 177
    if-eqz p1, :cond_5

    .line 178
    .line 179
    add-int/lit8 p2, p2, 0x1

    .line 180
    .line 181
    aput-object p1, p4, p2

    .line 182
    goto :goto_3

    .line 183
    .line 184
    .line 185
    :cond_5
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldInfo;->c()Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    .line 186
    move-result-object p1

    .line 187
    .line 188
    if-eqz p1, :cond_8

    .line 189
    .line 190
    add-int/lit8 p2, p2, 0x1

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldInfo;->c()Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    .line 194
    move-result-object p0

    .line 195
    .line 196
    aput-object p0, p4, p2

    .line 197
    goto :goto_3

    .line 198
    .line 199
    :cond_6
    if-eqz p1, :cond_7

    .line 200
    .line 201
    div-int/lit8 p2, p2, 0x3

    .line 202
    .line 203
    mul-int/lit8 p2, p2, 0x2

    .line 204
    .line 205
    add-int/lit8 p2, p2, 0x1

    .line 206
    .line 207
    aput-object p1, p4, p2

    .line 208
    goto :goto_3

    .line 209
    .line 210
    .line 211
    :cond_7
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldInfo;->c()Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    .line 212
    move-result-object p1

    .line 213
    .line 214
    if-eqz p1, :cond_8

    .line 215
    .line 216
    div-int/lit8 p2, p2, 0x3

    .line 217
    .line 218
    mul-int/lit8 p2, p2, 0x2

    .line 219
    .line 220
    add-int/lit8 p2, p2, 0x1

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldInfo;->c()Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    .line 224
    move-result-object p0

    .line 225
    .line 226
    aput-object p0, p4, p2

    .line 227
    :cond_8
    :goto_3
    return-void
.end method

.method private static l(Ljava/lang/Object;J)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->A(Ljava/lang/Object;J)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static l0(I)I
    .locals 1

    .line 1
    const/high16 v0, 0xff00000

    and-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x14

    return p0
.end method

.method private m(I)Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    .line 3
    .line 4
    div-int/lit8 p1, p1, 0x3

    .line 5
    .line 6
    mul-int/lit8 p1, p1, 0x2

    .line 7
    .line 8
    add-int/lit8 p1, p1, 0x1

    .line 9
    .line 10
    aget-object p1, v0, p1

    .line 11
    .line 12
    check-cast p1, Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    .line 13
    return-object p1
.end method

.method private m0(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    .line 3
    .line 4
    add-int/lit8 p1, p1, 0x1

    .line 5
    .line 6
    aget p1, v0, p1

    .line 7
    return p1
.end method

.method private n(I)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    .line 3
    .line 4
    div-int/lit8 p1, p1, 0x3

    .line 5
    .line 6
    mul-int/lit8 p1, p1, 0x2

    .line 7
    .line 8
    aget-object p1, v0, p1

    .line 9
    return-object p1
.end method

.method private n0(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/datastore/preferences/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v2, p2

    .line 7
    .line 8
    iget-boolean v3, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->hasExtensions:Z

    .line 9
    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    iget-object v3, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, v1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/FieldSet;->n()Z

    .line 20
    move-result v5

    .line 21
    .line 22
    if-nez v5, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/FieldSet;->s()Ljava/util/Iterator;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    .line 29
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v5

    .line 31
    .line 32
    check-cast v5, Ljava/util/Map$Entry;

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v3, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    .line 37
    :goto_0
    iget-object v6, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    .line 38
    array-length v6, v6

    .line 39
    .line 40
    sget-object v7, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 41
    const/4 v9, -0x1

    .line 42
    const/4 v10, 0x0

    .line 43
    const/4 v11, 0x0

    .line 44
    .line 45
    :goto_1
    if-ge v10, v6, :cond_7

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m0(I)I

    .line 49
    move-result v12

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 53
    move-result v13

    .line 54
    .line 55
    .line 56
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->l0(I)I

    .line 57
    move-result v14

    .line 58
    .line 59
    iget-boolean v15, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->proto3:Z

    .line 60
    .line 61
    if-nez v15, :cond_2

    .line 62
    .line 63
    const/16 v15, 0x11

    .line 64
    .line 65
    if-gt v14, v15, :cond_2

    .line 66
    .line 67
    iget-object v15, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    .line 68
    .line 69
    add-int/lit8 v16, v10, 0x2

    .line 70
    .line 71
    aget v15, v15, v16

    .line 72
    .line 73
    .line 74
    const v16, 0xfffff

    .line 75
    .line 76
    and-int v8, v15, v16

    .line 77
    .line 78
    move-object/from16 v16, v5

    .line 79
    .line 80
    if-eq v8, v9, :cond_1

    .line 81
    int-to-long v4, v8

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 85
    move-result v11

    .line 86
    move v9, v8

    .line 87
    .line 88
    :cond_1
    ushr-int/lit8 v4, v15, 0x14

    .line 89
    const/4 v5, 0x1

    .line 90
    .line 91
    shl-int v4, v5, v4

    .line 92
    .line 93
    move-object/from16 v5, v16

    .line 94
    goto :goto_2

    .line 95
    .line 96
    :cond_2
    move-object/from16 v16, v5

    .line 97
    .line 98
    move-object/from16 v5, v16

    .line 99
    const/4 v4, 0x0

    .line 100
    .line 101
    :goto_2
    if-eqz v5, :cond_4

    .line 102
    .line 103
    iget-object v8, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v8, v5}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->a(Ljava/util/Map$Entry;)I

    .line 107
    move-result v8

    .line 108
    .line 109
    if-gt v8, v13, :cond_4

    .line 110
    .line 111
    iget-object v8, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v8, v2, v5}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->j(Landroidx/datastore/preferences/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 115
    .line 116
    .line 117
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    move-result v5

    .line 119
    .line 120
    if-eqz v5, :cond_3

    .line 121
    .line 122
    .line 123
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    move-result-object v5

    .line 125
    .line 126
    check-cast v5, Ljava/util/Map$Entry;

    .line 127
    goto :goto_2

    .line 128
    :cond_3
    const/4 v5, 0x0

    .line 129
    goto :goto_2

    .line 130
    :cond_4
    move-object v15, v5

    .line 131
    move v8, v6

    .line 132
    .line 133
    .line 134
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 135
    move-result-wide v5

    .line 136
    .line 137
    .line 138
    packed-switch v14, :pswitch_data_0

    .line 139
    :cond_5
    :goto_3
    const/4 v12, 0x0

    .line 140
    .line 141
    goto/16 :goto_4

    .line 142
    .line 143
    .line 144
    :pswitch_0
    invoke-direct {v0, v1, v13, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 145
    move-result v4

    .line 146
    .line 147
    if-eqz v4, :cond_5

    .line 148
    .line 149
    .line 150
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 151
    move-result-object v4

    .line 152
    .line 153
    .line 154
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 155
    move-result-object v5

    .line 156
    .line 157
    .line 158
    invoke-interface {v2, v13, v4, v5}, Landroidx/datastore/preferences/protobuf/Writer;->e(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 159
    goto :goto_3

    .line 160
    .line 161
    .line 162
    :pswitch_1
    invoke-direct {v0, v1, v13, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 163
    move-result v4

    .line 164
    .line 165
    if-eqz v4, :cond_5

    .line 166
    .line 167
    .line 168
    invoke-static {v1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->T(Ljava/lang/Object;J)J

    .line 169
    move-result-wide v4

    .line 170
    .line 171
    .line 172
    invoke-interface {v2, v13, v4, v5}, Landroidx/datastore/preferences/protobuf/Writer;->writeSInt64(IJ)V

    .line 173
    goto :goto_3

    .line 174
    .line 175
    .line 176
    :pswitch_2
    invoke-direct {v0, v1, v13, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 177
    move-result v4

    .line 178
    .line 179
    if-eqz v4, :cond_5

    .line 180
    .line 181
    .line 182
    invoke-static {v1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->S(Ljava/lang/Object;J)I

    .line 183
    move-result v4

    .line 184
    .line 185
    .line 186
    invoke-interface {v2, v13, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeSInt32(II)V

    .line 187
    goto :goto_3

    .line 188
    .line 189
    .line 190
    :pswitch_3
    invoke-direct {v0, v1, v13, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 191
    move-result v4

    .line 192
    .line 193
    if-eqz v4, :cond_5

    .line 194
    .line 195
    .line 196
    invoke-static {v1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->T(Ljava/lang/Object;J)J

    .line 197
    move-result-wide v4

    .line 198
    .line 199
    .line 200
    invoke-interface {v2, v13, v4, v5}, Landroidx/datastore/preferences/protobuf/Writer;->writeSFixed64(IJ)V

    .line 201
    goto :goto_3

    .line 202
    .line 203
    .line 204
    :pswitch_4
    invoke-direct {v0, v1, v13, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 205
    move-result v4

    .line 206
    .line 207
    if-eqz v4, :cond_5

    .line 208
    .line 209
    .line 210
    invoke-static {v1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->S(Ljava/lang/Object;J)I

    .line 211
    move-result v4

    .line 212
    .line 213
    .line 214
    invoke-interface {v2, v13, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeSFixed32(II)V

    .line 215
    goto :goto_3

    .line 216
    .line 217
    .line 218
    :pswitch_5
    invoke-direct {v0, v1, v13, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 219
    move-result v4

    .line 220
    .line 221
    if-eqz v4, :cond_5

    .line 222
    .line 223
    .line 224
    invoke-static {v1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->S(Ljava/lang/Object;J)I

    .line 225
    move-result v4

    .line 226
    .line 227
    .line 228
    invoke-interface {v2, v13, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeEnum(II)V

    .line 229
    goto :goto_3

    .line 230
    .line 231
    .line 232
    :pswitch_6
    invoke-direct {v0, v1, v13, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 233
    move-result v4

    .line 234
    .line 235
    if-eqz v4, :cond_5

    .line 236
    .line 237
    .line 238
    invoke-static {v1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->S(Ljava/lang/Object;J)I

    .line 239
    move-result v4

    .line 240
    .line 241
    .line 242
    invoke-interface {v2, v13, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeUInt32(II)V

    .line 243
    goto :goto_3

    .line 244
    .line 245
    .line 246
    :pswitch_7
    invoke-direct {v0, v1, v13, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 247
    move-result v4

    .line 248
    .line 249
    if-eqz v4, :cond_5

    .line 250
    .line 251
    .line 252
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 253
    move-result-object v4

    .line 254
    .line 255
    check-cast v4, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 256
    .line 257
    .line 258
    invoke-interface {v2, v13, v4}, Landroidx/datastore/preferences/protobuf/Writer;->a(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    .line 259
    goto :goto_3

    .line 260
    .line 261
    .line 262
    :pswitch_8
    invoke-direct {v0, v1, v13, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 263
    move-result v4

    .line 264
    .line 265
    if-eqz v4, :cond_5

    .line 266
    .line 267
    .line 268
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 269
    move-result-object v4

    .line 270
    .line 271
    .line 272
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 273
    move-result-object v5

    .line 274
    .line 275
    .line 276
    invoke-interface {v2, v13, v4, v5}, Landroidx/datastore/preferences/protobuf/Writer;->b(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 277
    .line 278
    goto/16 :goto_3

    .line 279
    .line 280
    .line 281
    :pswitch_9
    invoke-direct {v0, v1, v13, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 282
    move-result v4

    .line 283
    .line 284
    if-eqz v4, :cond_5

    .line 285
    .line 286
    .line 287
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 288
    move-result-object v4

    .line 289
    .line 290
    .line 291
    invoke-direct {v0, v13, v4, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r0(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 292
    .line 293
    goto/16 :goto_3

    .line 294
    .line 295
    .line 296
    :pswitch_a
    invoke-direct {v0, v1, v13, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 297
    move-result v4

    .line 298
    .line 299
    if-eqz v4, :cond_5

    .line 300
    .line 301
    .line 302
    invoke-static {v1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->P(Ljava/lang/Object;J)Z

    .line 303
    move-result v4

    .line 304
    .line 305
    .line 306
    invoke-interface {v2, v13, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeBool(IZ)V

    .line 307
    .line 308
    goto/16 :goto_3

    .line 309
    .line 310
    .line 311
    :pswitch_b
    invoke-direct {v0, v1, v13, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 312
    move-result v4

    .line 313
    .line 314
    if-eqz v4, :cond_5

    .line 315
    .line 316
    .line 317
    invoke-static {v1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->S(Ljava/lang/Object;J)I

    .line 318
    move-result v4

    .line 319
    .line 320
    .line 321
    invoke-interface {v2, v13, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed32(II)V

    .line 322
    .line 323
    goto/16 :goto_3

    .line 324
    .line 325
    .line 326
    :pswitch_c
    invoke-direct {v0, v1, v13, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 327
    move-result v4

    .line 328
    .line 329
    if-eqz v4, :cond_5

    .line 330
    .line 331
    .line 332
    invoke-static {v1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->T(Ljava/lang/Object;J)J

    .line 333
    move-result-wide v4

    .line 334
    .line 335
    .line 336
    invoke-interface {v2, v13, v4, v5}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed64(IJ)V

    .line 337
    .line 338
    goto/16 :goto_3

    .line 339
    .line 340
    .line 341
    :pswitch_d
    invoke-direct {v0, v1, v13, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 342
    move-result v4

    .line 343
    .line 344
    if-eqz v4, :cond_5

    .line 345
    .line 346
    .line 347
    invoke-static {v1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->S(Ljava/lang/Object;J)I

    .line 348
    move-result v4

    .line 349
    .line 350
    .line 351
    invoke-interface {v2, v13, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeInt32(II)V

    .line 352
    .line 353
    goto/16 :goto_3

    .line 354
    .line 355
    .line 356
    :pswitch_e
    invoke-direct {v0, v1, v13, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 357
    move-result v4

    .line 358
    .line 359
    if-eqz v4, :cond_5

    .line 360
    .line 361
    .line 362
    invoke-static {v1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->T(Ljava/lang/Object;J)J

    .line 363
    move-result-wide v4

    .line 364
    .line 365
    .line 366
    invoke-interface {v2, v13, v4, v5}, Landroidx/datastore/preferences/protobuf/Writer;->writeUInt64(IJ)V

    .line 367
    .line 368
    goto/16 :goto_3

    .line 369
    .line 370
    .line 371
    :pswitch_f
    invoke-direct {v0, v1, v13, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 372
    move-result v4

    .line 373
    .line 374
    if-eqz v4, :cond_5

    .line 375
    .line 376
    .line 377
    invoke-static {v1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->T(Ljava/lang/Object;J)J

    .line 378
    move-result-wide v4

    .line 379
    .line 380
    .line 381
    invoke-interface {v2, v13, v4, v5}, Landroidx/datastore/preferences/protobuf/Writer;->writeInt64(IJ)V

    .line 382
    .line 383
    goto/16 :goto_3

    .line 384
    .line 385
    .line 386
    :pswitch_10
    invoke-direct {v0, v1, v13, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 387
    move-result v4

    .line 388
    .line 389
    if-eqz v4, :cond_5

    .line 390
    .line 391
    .line 392
    invoke-static {v1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->R(Ljava/lang/Object;J)F

    .line 393
    move-result v4

    .line 394
    .line 395
    .line 396
    invoke-interface {v2, v13, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeFloat(IF)V

    .line 397
    .line 398
    goto/16 :goto_3

    .line 399
    .line 400
    .line 401
    :pswitch_11
    invoke-direct {v0, v1, v13, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 402
    move-result v4

    .line 403
    .line 404
    if-eqz v4, :cond_5

    .line 405
    .line 406
    .line 407
    invoke-static {v1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->Q(Ljava/lang/Object;J)D

    .line 408
    move-result-wide v4

    .line 409
    .line 410
    .line 411
    invoke-interface {v2, v13, v4, v5}, Landroidx/datastore/preferences/protobuf/Writer;->writeDouble(ID)V

    .line 412
    .line 413
    goto/16 :goto_3

    .line 414
    .line 415
    .line 416
    :pswitch_12
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 417
    move-result-object v4

    .line 418
    .line 419
    .line 420
    invoke-direct {v0, v2, v13, v4, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q0(Landroidx/datastore/preferences/protobuf/Writer;ILjava/lang/Object;I)V

    .line 421
    .line 422
    goto/16 :goto_3

    .line 423
    .line 424
    .line 425
    :pswitch_13
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 426
    move-result v4

    .line 427
    .line 428
    .line 429
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 430
    move-result-object v5

    .line 431
    .line 432
    check-cast v5, Ljava/util/List;

    .line 433
    .line 434
    .line 435
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 436
    move-result-object v6

    .line 437
    .line 438
    .line 439
    invoke-static {v4, v5, v2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->U(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 440
    .line 441
    goto/16 :goto_3

    .line 442
    .line 443
    .line 444
    :pswitch_14
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 445
    move-result v4

    .line 446
    .line 447
    .line 448
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 449
    move-result-object v5

    .line 450
    .line 451
    check-cast v5, Ljava/util/List;

    .line 452
    const/4 v12, 0x1

    .line 453
    .line 454
    .line 455
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->b0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 456
    .line 457
    goto/16 :goto_3

    .line 458
    :pswitch_15
    const/4 v12, 0x1

    .line 459
    .line 460
    .line 461
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 462
    move-result v4

    .line 463
    .line 464
    .line 465
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 466
    move-result-object v5

    .line 467
    .line 468
    check-cast v5, Ljava/util/List;

    .line 469
    .line 470
    .line 471
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 472
    .line 473
    goto/16 :goto_3

    .line 474
    :pswitch_16
    const/4 v12, 0x1

    .line 475
    .line 476
    .line 477
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 478
    move-result v4

    .line 479
    .line 480
    .line 481
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 482
    move-result-object v5

    .line 483
    .line 484
    check-cast v5, Ljava/util/List;

    .line 485
    .line 486
    .line 487
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->Z(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 488
    .line 489
    goto/16 :goto_3

    .line 490
    :pswitch_17
    const/4 v12, 0x1

    .line 491
    .line 492
    .line 493
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 494
    move-result v4

    .line 495
    .line 496
    .line 497
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 498
    move-result-object v5

    .line 499
    .line 500
    check-cast v5, Ljava/util/List;

    .line 501
    .line 502
    .line 503
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->Y(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 504
    .line 505
    goto/16 :goto_3

    .line 506
    :pswitch_18
    const/4 v12, 0x1

    .line 507
    .line 508
    .line 509
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 510
    move-result v4

    .line 511
    .line 512
    .line 513
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 514
    move-result-object v5

    .line 515
    .line 516
    check-cast v5, Ljava/util/List;

    .line 517
    .line 518
    .line 519
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->Q(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 520
    .line 521
    goto/16 :goto_3

    .line 522
    :pswitch_19
    const/4 v12, 0x1

    .line 523
    .line 524
    .line 525
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 526
    move-result v4

    .line 527
    .line 528
    .line 529
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 530
    move-result-object v5

    .line 531
    .line 532
    check-cast v5, Ljava/util/List;

    .line 533
    .line 534
    .line 535
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->d0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 536
    .line 537
    goto/16 :goto_3

    .line 538
    :pswitch_1a
    const/4 v12, 0x1

    .line 539
    .line 540
    .line 541
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 542
    move-result v4

    .line 543
    .line 544
    .line 545
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 546
    move-result-object v5

    .line 547
    .line 548
    check-cast v5, Ljava/util/List;

    .line 549
    .line 550
    .line 551
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->N(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 552
    .line 553
    goto/16 :goto_3

    .line 554
    :pswitch_1b
    const/4 v12, 0x1

    .line 555
    .line 556
    .line 557
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 558
    move-result v4

    .line 559
    .line 560
    .line 561
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 562
    move-result-object v5

    .line 563
    .line 564
    check-cast v5, Ljava/util/List;

    .line 565
    .line 566
    .line 567
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->R(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 568
    .line 569
    goto/16 :goto_3

    .line 570
    :pswitch_1c
    const/4 v12, 0x1

    .line 571
    .line 572
    .line 573
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 574
    move-result v4

    .line 575
    .line 576
    .line 577
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 578
    move-result-object v5

    .line 579
    .line 580
    check-cast v5, Ljava/util/List;

    .line 581
    .line 582
    .line 583
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->S(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 584
    .line 585
    goto/16 :goto_3

    .line 586
    :pswitch_1d
    const/4 v12, 0x1

    .line 587
    .line 588
    .line 589
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 590
    move-result v4

    .line 591
    .line 592
    .line 593
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 594
    move-result-object v5

    .line 595
    .line 596
    check-cast v5, Ljava/util/List;

    .line 597
    .line 598
    .line 599
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->V(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 600
    .line 601
    goto/16 :goto_3

    .line 602
    :pswitch_1e
    const/4 v12, 0x1

    .line 603
    .line 604
    .line 605
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 606
    move-result v4

    .line 607
    .line 608
    .line 609
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 610
    move-result-object v5

    .line 611
    .line 612
    check-cast v5, Ljava/util/List;

    .line 613
    .line 614
    .line 615
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->e0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 616
    .line 617
    goto/16 :goto_3

    .line 618
    :pswitch_1f
    const/4 v12, 0x1

    .line 619
    .line 620
    .line 621
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 622
    move-result v4

    .line 623
    .line 624
    .line 625
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 626
    move-result-object v5

    .line 627
    .line 628
    check-cast v5, Ljava/util/List;

    .line 629
    .line 630
    .line 631
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->W(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 632
    .line 633
    goto/16 :goto_3

    .line 634
    :pswitch_20
    const/4 v12, 0x1

    .line 635
    .line 636
    .line 637
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 638
    move-result v4

    .line 639
    .line 640
    .line 641
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 642
    move-result-object v5

    .line 643
    .line 644
    check-cast v5, Ljava/util/List;

    .line 645
    .line 646
    .line 647
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->T(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 648
    .line 649
    goto/16 :goto_3

    .line 650
    :pswitch_21
    const/4 v12, 0x1

    .line 651
    .line 652
    .line 653
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 654
    move-result v4

    .line 655
    .line 656
    .line 657
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 658
    move-result-object v5

    .line 659
    .line 660
    check-cast v5, Ljava/util/List;

    .line 661
    .line 662
    .line 663
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->P(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 664
    .line 665
    goto/16 :goto_3

    .line 666
    .line 667
    .line 668
    :pswitch_22
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 669
    move-result v4

    .line 670
    .line 671
    .line 672
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 673
    move-result-object v5

    .line 674
    .line 675
    check-cast v5, Ljava/util/List;

    .line 676
    const/4 v12, 0x0

    .line 677
    .line 678
    .line 679
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->b0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 680
    .line 681
    goto/16 :goto_4

    .line 682
    :pswitch_23
    const/4 v12, 0x0

    .line 683
    .line 684
    .line 685
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 686
    move-result v4

    .line 687
    .line 688
    .line 689
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 690
    move-result-object v5

    .line 691
    .line 692
    check-cast v5, Ljava/util/List;

    .line 693
    .line 694
    .line 695
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 696
    .line 697
    goto/16 :goto_4

    .line 698
    :pswitch_24
    const/4 v12, 0x0

    .line 699
    .line 700
    .line 701
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 702
    move-result v4

    .line 703
    .line 704
    .line 705
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 706
    move-result-object v5

    .line 707
    .line 708
    check-cast v5, Ljava/util/List;

    .line 709
    .line 710
    .line 711
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->Z(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 712
    .line 713
    goto/16 :goto_4

    .line 714
    :pswitch_25
    const/4 v12, 0x0

    .line 715
    .line 716
    .line 717
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 718
    move-result v4

    .line 719
    .line 720
    .line 721
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 722
    move-result-object v5

    .line 723
    .line 724
    check-cast v5, Ljava/util/List;

    .line 725
    .line 726
    .line 727
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->Y(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 728
    .line 729
    goto/16 :goto_4

    .line 730
    :pswitch_26
    const/4 v12, 0x0

    .line 731
    .line 732
    .line 733
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 734
    move-result v4

    .line 735
    .line 736
    .line 737
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 738
    move-result-object v5

    .line 739
    .line 740
    check-cast v5, Ljava/util/List;

    .line 741
    .line 742
    .line 743
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->Q(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 744
    .line 745
    goto/16 :goto_4

    .line 746
    :pswitch_27
    const/4 v12, 0x0

    .line 747
    .line 748
    .line 749
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 750
    move-result v4

    .line 751
    .line 752
    .line 753
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 754
    move-result-object v5

    .line 755
    .line 756
    check-cast v5, Ljava/util/List;

    .line 757
    .line 758
    .line 759
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->d0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 760
    .line 761
    goto/16 :goto_4

    .line 762
    .line 763
    .line 764
    :pswitch_28
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 765
    move-result v4

    .line 766
    .line 767
    .line 768
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 769
    move-result-object v5

    .line 770
    .line 771
    check-cast v5, Ljava/util/List;

    .line 772
    .line 773
    .line 774
    invoke-static {v4, v5, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->O(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 775
    .line 776
    goto/16 :goto_3

    .line 777
    .line 778
    .line 779
    :pswitch_29
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 780
    move-result v4

    .line 781
    .line 782
    .line 783
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 784
    move-result-object v5

    .line 785
    .line 786
    check-cast v5, Ljava/util/List;

    .line 787
    .line 788
    .line 789
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 790
    move-result-object v6

    .line 791
    .line 792
    .line 793
    invoke-static {v4, v5, v2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->X(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 794
    .line 795
    goto/16 :goto_3

    .line 796
    .line 797
    .line 798
    :pswitch_2a
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 799
    move-result v4

    .line 800
    .line 801
    .line 802
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 803
    move-result-object v5

    .line 804
    .line 805
    check-cast v5, Ljava/util/List;

    .line 806
    .line 807
    .line 808
    invoke-static {v4, v5, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->c0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 809
    .line 810
    goto/16 :goto_3

    .line 811
    .line 812
    .line 813
    :pswitch_2b
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 814
    move-result v4

    .line 815
    .line 816
    .line 817
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 818
    move-result-object v5

    .line 819
    .line 820
    check-cast v5, Ljava/util/List;

    .line 821
    const/4 v12, 0x0

    .line 822
    .line 823
    .line 824
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->N(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 825
    .line 826
    goto/16 :goto_4

    .line 827
    :pswitch_2c
    const/4 v12, 0x0

    .line 828
    .line 829
    .line 830
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 831
    move-result v4

    .line 832
    .line 833
    .line 834
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 835
    move-result-object v5

    .line 836
    .line 837
    check-cast v5, Ljava/util/List;

    .line 838
    .line 839
    .line 840
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->R(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 841
    .line 842
    goto/16 :goto_4

    .line 843
    :pswitch_2d
    const/4 v12, 0x0

    .line 844
    .line 845
    .line 846
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 847
    move-result v4

    .line 848
    .line 849
    .line 850
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 851
    move-result-object v5

    .line 852
    .line 853
    check-cast v5, Ljava/util/List;

    .line 854
    .line 855
    .line 856
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->S(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 857
    .line 858
    goto/16 :goto_4

    .line 859
    :pswitch_2e
    const/4 v12, 0x0

    .line 860
    .line 861
    .line 862
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 863
    move-result v4

    .line 864
    .line 865
    .line 866
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 867
    move-result-object v5

    .line 868
    .line 869
    check-cast v5, Ljava/util/List;

    .line 870
    .line 871
    .line 872
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->V(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 873
    .line 874
    goto/16 :goto_4

    .line 875
    :pswitch_2f
    const/4 v12, 0x0

    .line 876
    .line 877
    .line 878
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 879
    move-result v4

    .line 880
    .line 881
    .line 882
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 883
    move-result-object v5

    .line 884
    .line 885
    check-cast v5, Ljava/util/List;

    .line 886
    .line 887
    .line 888
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->e0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 889
    .line 890
    goto/16 :goto_4

    .line 891
    :pswitch_30
    const/4 v12, 0x0

    .line 892
    .line 893
    .line 894
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 895
    move-result v4

    .line 896
    .line 897
    .line 898
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 899
    move-result-object v5

    .line 900
    .line 901
    check-cast v5, Ljava/util/List;

    .line 902
    .line 903
    .line 904
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->W(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 905
    .line 906
    goto/16 :goto_4

    .line 907
    :pswitch_31
    const/4 v12, 0x0

    .line 908
    .line 909
    .line 910
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 911
    move-result v4

    .line 912
    .line 913
    .line 914
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 915
    move-result-object v5

    .line 916
    .line 917
    check-cast v5, Ljava/util/List;

    .line 918
    .line 919
    .line 920
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->T(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 921
    .line 922
    goto/16 :goto_4

    .line 923
    :pswitch_32
    const/4 v12, 0x0

    .line 924
    .line 925
    .line 926
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 927
    move-result v4

    .line 928
    .line 929
    .line 930
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 931
    move-result-object v5

    .line 932
    .line 933
    check-cast v5, Ljava/util/List;

    .line 934
    .line 935
    .line 936
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->P(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 937
    .line 938
    goto/16 :goto_4

    .line 939
    :pswitch_33
    const/4 v12, 0x0

    .line 940
    and-int/2addr v4, v11

    .line 941
    .line 942
    if-eqz v4, :cond_6

    .line 943
    .line 944
    .line 945
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 946
    move-result-object v4

    .line 947
    .line 948
    .line 949
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 950
    move-result-object v5

    .line 951
    .line 952
    .line 953
    invoke-interface {v2, v13, v4, v5}, Landroidx/datastore/preferences/protobuf/Writer;->e(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 954
    .line 955
    goto/16 :goto_4

    .line 956
    :pswitch_34
    const/4 v12, 0x0

    .line 957
    and-int/2addr v4, v11

    .line 958
    .line 959
    if-eqz v4, :cond_6

    .line 960
    .line 961
    .line 962
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 963
    move-result-wide v4

    .line 964
    .line 965
    .line 966
    invoke-interface {v2, v13, v4, v5}, Landroidx/datastore/preferences/protobuf/Writer;->writeSInt64(IJ)V

    .line 967
    .line 968
    goto/16 :goto_4

    .line 969
    :pswitch_35
    const/4 v12, 0x0

    .line 970
    and-int/2addr v4, v11

    .line 971
    .line 972
    if-eqz v4, :cond_6

    .line 973
    .line 974
    .line 975
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 976
    move-result v4

    .line 977
    .line 978
    .line 979
    invoke-interface {v2, v13, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeSInt32(II)V

    .line 980
    .line 981
    goto/16 :goto_4

    .line 982
    :pswitch_36
    const/4 v12, 0x0

    .line 983
    and-int/2addr v4, v11

    .line 984
    .line 985
    if-eqz v4, :cond_6

    .line 986
    .line 987
    .line 988
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 989
    move-result-wide v4

    .line 990
    .line 991
    .line 992
    invoke-interface {v2, v13, v4, v5}, Landroidx/datastore/preferences/protobuf/Writer;->writeSFixed64(IJ)V

    .line 993
    .line 994
    goto/16 :goto_4

    .line 995
    :pswitch_37
    const/4 v12, 0x0

    .line 996
    and-int/2addr v4, v11

    .line 997
    .line 998
    if-eqz v4, :cond_6

    .line 999
    .line 1000
    .line 1001
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1002
    move-result v4

    .line 1003
    .line 1004
    .line 1005
    invoke-interface {v2, v13, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeSFixed32(II)V

    .line 1006
    .line 1007
    goto/16 :goto_4

    .line 1008
    :pswitch_38
    const/4 v12, 0x0

    .line 1009
    and-int/2addr v4, v11

    .line 1010
    .line 1011
    if-eqz v4, :cond_6

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1015
    move-result v4

    .line 1016
    .line 1017
    .line 1018
    invoke-interface {v2, v13, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeEnum(II)V

    .line 1019
    .line 1020
    goto/16 :goto_4

    .line 1021
    :pswitch_39
    const/4 v12, 0x0

    .line 1022
    and-int/2addr v4, v11

    .line 1023
    .line 1024
    if-eqz v4, :cond_6

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1028
    move-result v4

    .line 1029
    .line 1030
    .line 1031
    invoke-interface {v2, v13, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeUInt32(II)V

    .line 1032
    .line 1033
    goto/16 :goto_4

    .line 1034
    :pswitch_3a
    const/4 v12, 0x0

    .line 1035
    and-int/2addr v4, v11

    .line 1036
    .line 1037
    if-eqz v4, :cond_6

    .line 1038
    .line 1039
    .line 1040
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1041
    move-result-object v4

    .line 1042
    .line 1043
    check-cast v4, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 1044
    .line 1045
    .line 1046
    invoke-interface {v2, v13, v4}, Landroidx/datastore/preferences/protobuf/Writer;->a(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    .line 1047
    .line 1048
    goto/16 :goto_4

    .line 1049
    :pswitch_3b
    const/4 v12, 0x0

    .line 1050
    and-int/2addr v4, v11

    .line 1051
    .line 1052
    if-eqz v4, :cond_6

    .line 1053
    .line 1054
    .line 1055
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1056
    move-result-object v4

    .line 1057
    .line 1058
    .line 1059
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 1060
    move-result-object v5

    .line 1061
    .line 1062
    .line 1063
    invoke-interface {v2, v13, v4, v5}, Landroidx/datastore/preferences/protobuf/Writer;->b(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 1064
    .line 1065
    goto/16 :goto_4

    .line 1066
    :pswitch_3c
    const/4 v12, 0x0

    .line 1067
    and-int/2addr v4, v11

    .line 1068
    .line 1069
    if-eqz v4, :cond_6

    .line 1070
    .line 1071
    .line 1072
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1073
    move-result-object v4

    .line 1074
    .line 1075
    .line 1076
    invoke-direct {v0, v13, v4, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r0(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 1077
    goto :goto_4

    .line 1078
    :pswitch_3d
    const/4 v12, 0x0

    .line 1079
    and-int/2addr v4, v11

    .line 1080
    .line 1081
    if-eqz v4, :cond_6

    .line 1082
    .line 1083
    .line 1084
    invoke-static {v1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->e(Ljava/lang/Object;J)Z

    .line 1085
    move-result v4

    .line 1086
    .line 1087
    .line 1088
    invoke-interface {v2, v13, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeBool(IZ)V

    .line 1089
    goto :goto_4

    .line 1090
    :pswitch_3e
    const/4 v12, 0x0

    .line 1091
    and-int/2addr v4, v11

    .line 1092
    .line 1093
    if-eqz v4, :cond_6

    .line 1094
    .line 1095
    .line 1096
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1097
    move-result v4

    .line 1098
    .line 1099
    .line 1100
    invoke-interface {v2, v13, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed32(II)V

    .line 1101
    goto :goto_4

    .line 1102
    :pswitch_3f
    const/4 v12, 0x0

    .line 1103
    and-int/2addr v4, v11

    .line 1104
    .line 1105
    if-eqz v4, :cond_6

    .line 1106
    .line 1107
    .line 1108
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1109
    move-result-wide v4

    .line 1110
    .line 1111
    .line 1112
    invoke-interface {v2, v13, v4, v5}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed64(IJ)V

    .line 1113
    goto :goto_4

    .line 1114
    :pswitch_40
    const/4 v12, 0x0

    .line 1115
    and-int/2addr v4, v11

    .line 1116
    .line 1117
    if-eqz v4, :cond_6

    .line 1118
    .line 1119
    .line 1120
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1121
    move-result v4

    .line 1122
    .line 1123
    .line 1124
    invoke-interface {v2, v13, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeInt32(II)V

    .line 1125
    goto :goto_4

    .line 1126
    :pswitch_41
    const/4 v12, 0x0

    .line 1127
    and-int/2addr v4, v11

    .line 1128
    .line 1129
    if-eqz v4, :cond_6

    .line 1130
    .line 1131
    .line 1132
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1133
    move-result-wide v4

    .line 1134
    .line 1135
    .line 1136
    invoke-interface {v2, v13, v4, v5}, Landroidx/datastore/preferences/protobuf/Writer;->writeUInt64(IJ)V

    .line 1137
    goto :goto_4

    .line 1138
    :pswitch_42
    const/4 v12, 0x0

    .line 1139
    and-int/2addr v4, v11

    .line 1140
    .line 1141
    if-eqz v4, :cond_6

    .line 1142
    .line 1143
    .line 1144
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1145
    move-result-wide v4

    .line 1146
    .line 1147
    .line 1148
    invoke-interface {v2, v13, v4, v5}, Landroidx/datastore/preferences/protobuf/Writer;->writeInt64(IJ)V

    .line 1149
    goto :goto_4

    .line 1150
    :pswitch_43
    const/4 v12, 0x0

    .line 1151
    and-int/2addr v4, v11

    .line 1152
    .line 1153
    if-eqz v4, :cond_6

    .line 1154
    .line 1155
    .line 1156
    invoke-static {v1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->l(Ljava/lang/Object;J)F

    .line 1157
    move-result v4

    .line 1158
    .line 1159
    .line 1160
    invoke-interface {v2, v13, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeFloat(IF)V

    .line 1161
    goto :goto_4

    .line 1162
    :pswitch_44
    const/4 v12, 0x0

    .line 1163
    and-int/2addr v4, v11

    .line 1164
    .line 1165
    if-eqz v4, :cond_6

    .line 1166
    .line 1167
    .line 1168
    invoke-static {v1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h(Ljava/lang/Object;J)D

    .line 1169
    move-result-wide v4

    .line 1170
    .line 1171
    .line 1172
    invoke-interface {v2, v13, v4, v5}, Landroidx/datastore/preferences/protobuf/Writer;->writeDouble(ID)V

    .line 1173
    .line 1174
    :cond_6
    :goto_4
    add-int/lit8 v10, v10, 0x3

    .line 1175
    move v6, v8

    .line 1176
    move-object v5, v15

    .line 1177
    .line 1178
    goto/16 :goto_1

    .line 1179
    .line 1180
    :cond_7
    move-object/from16 v16, v5

    .line 1181
    .line 1182
    :goto_5
    if-eqz v5, :cond_9

    .line 1183
    .line 1184
    iget-object v4, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    .line 1185
    .line 1186
    .line 1187
    invoke-virtual {v4, v2, v5}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->j(Landroidx/datastore/preferences/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 1188
    .line 1189
    .line 1190
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1191
    move-result v4

    .line 1192
    .line 1193
    if-eqz v4, :cond_8

    .line 1194
    .line 1195
    .line 1196
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1197
    move-result-object v4

    .line 1198
    .line 1199
    check-cast v4, Ljava/util/Map$Entry;

    .line 1200
    move-object v5, v4

    .line 1201
    goto :goto_5

    .line 1202
    :cond_8
    const/4 v5, 0x0

    .line 1203
    goto :goto_5

    .line 1204
    .line 1205
    :cond_9
    iget-object v3, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    .line 1206
    .line 1207
    .line 1208
    invoke-direct {v0, v3, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->s0(Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 1209
    return-void

    .line 1210
    nop

    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private o(I)Landroidx/datastore/preferences/protobuf/Schema;
    .locals 3

    .line 1
    .line 2
    div-int/lit8 p1, p1, 0x3

    .line 3
    .line 4
    mul-int/lit8 p1, p1, 0x2

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    .line 7
    .line 8
    aget-object v0, v0, p1

    .line 9
    .line 10
    check-cast v0, Landroidx/datastore/preferences/protobuf/Schema;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    return-object v0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Protobuf;->a()Landroidx/datastore/preferences/protobuf/Protobuf;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    .line 20
    .line 21
    add-int/lit8 v2, p1, 0x1

    .line 22
    .line 23
    aget-object v1, v1, v2

    .line 24
    .line 25
    check-cast v1, Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/Protobuf;->d(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/Schema;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    .line 32
    .line 33
    aput-object v0, v1, p1

    .line 34
    return-object v0
.end method

.method private o0(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/datastore/preferences/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->hasExtensions:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/FieldSet;->n()Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/FieldSet;->s()Ljava/util/Iterator;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    check-cast v2, Ljava/util/Map$Entry;

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v0, v1

    .line 30
    move-object v2, v0

    .line 31
    .line 32
    :goto_0
    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    .line 33
    array-length v3, v3

    .line 34
    const/4 v4, 0x0

    .line 35
    move v5, v4

    .line 36
    .line 37
    :goto_1
    if-ge v5, v3, :cond_4

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m0(I)I

    .line 41
    move-result v6

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 45
    move-result v7

    .line 46
    .line 47
    :goto_2
    if-eqz v2, :cond_2

    .line 48
    .line 49
    iget-object v8, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v8, v2}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->a(Ljava/util/Map$Entry;)I

    .line 53
    move-result v8

    .line 54
    .line 55
    if-gt v8, v7, :cond_2

    .line 56
    .line 57
    iget-object v8, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v8, p2, v2}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->j(Landroidx/datastore/preferences/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    move-result v2

    .line 65
    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    move-result-object v2

    .line 71
    .line 72
    check-cast v2, Ljava/util/Map$Entry;

    .line 73
    goto :goto_2

    .line 74
    :cond_1
    move-object v2, v1

    .line 75
    goto :goto_2

    .line 76
    .line 77
    .line 78
    :cond_2
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->l0(I)I

    .line 79
    move-result v8

    .line 80
    const/4 v9, 0x1

    .line 81
    .line 82
    .line 83
    packed-switch v8, :pswitch_data_0

    .line 84
    .line 85
    goto/16 :goto_3

    .line 86
    .line 87
    .line 88
    :pswitch_0
    invoke-direct {p0, p1, v7, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 89
    move-result v8

    .line 90
    .line 91
    if-eqz v8, :cond_3

    .line 92
    .line 93
    .line 94
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 95
    move-result-wide v8

    .line 96
    .line 97
    .line 98
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 99
    move-result-object v6

    .line 100
    .line 101
    .line 102
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 103
    move-result-object v8

    .line 104
    .line 105
    .line 106
    invoke-interface {p2, v7, v6, v8}, Landroidx/datastore/preferences/protobuf/Writer;->e(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 107
    .line 108
    goto/16 :goto_3

    .line 109
    .line 110
    .line 111
    :pswitch_1
    invoke-direct {p0, p1, v7, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 112
    move-result v8

    .line 113
    .line 114
    if-eqz v8, :cond_3

    .line 115
    .line 116
    .line 117
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 118
    move-result-wide v8

    .line 119
    .line 120
    .line 121
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->T(Ljava/lang/Object;J)J

    .line 122
    move-result-wide v8

    .line 123
    .line 124
    .line 125
    invoke-interface {p2, v7, v8, v9}, Landroidx/datastore/preferences/protobuf/Writer;->writeSInt64(IJ)V

    .line 126
    .line 127
    goto/16 :goto_3

    .line 128
    .line 129
    .line 130
    :pswitch_2
    invoke-direct {p0, p1, v7, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 131
    move-result v8

    .line 132
    .line 133
    if-eqz v8, :cond_3

    .line 134
    .line 135
    .line 136
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 137
    move-result-wide v8

    .line 138
    .line 139
    .line 140
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->S(Ljava/lang/Object;J)I

    .line 141
    move-result v6

    .line 142
    .line 143
    .line 144
    invoke-interface {p2, v7, v6}, Landroidx/datastore/preferences/protobuf/Writer;->writeSInt32(II)V

    .line 145
    .line 146
    goto/16 :goto_3

    .line 147
    .line 148
    .line 149
    :pswitch_3
    invoke-direct {p0, p1, v7, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 150
    move-result v8

    .line 151
    .line 152
    if-eqz v8, :cond_3

    .line 153
    .line 154
    .line 155
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 156
    move-result-wide v8

    .line 157
    .line 158
    .line 159
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->T(Ljava/lang/Object;J)J

    .line 160
    move-result-wide v8

    .line 161
    .line 162
    .line 163
    invoke-interface {p2, v7, v8, v9}, Landroidx/datastore/preferences/protobuf/Writer;->writeSFixed64(IJ)V

    .line 164
    .line 165
    goto/16 :goto_3

    .line 166
    .line 167
    .line 168
    :pswitch_4
    invoke-direct {p0, p1, v7, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 169
    move-result v8

    .line 170
    .line 171
    if-eqz v8, :cond_3

    .line 172
    .line 173
    .line 174
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 175
    move-result-wide v8

    .line 176
    .line 177
    .line 178
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->S(Ljava/lang/Object;J)I

    .line 179
    move-result v6

    .line 180
    .line 181
    .line 182
    invoke-interface {p2, v7, v6}, Landroidx/datastore/preferences/protobuf/Writer;->writeSFixed32(II)V

    .line 183
    .line 184
    goto/16 :goto_3

    .line 185
    .line 186
    .line 187
    :pswitch_5
    invoke-direct {p0, p1, v7, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 188
    move-result v8

    .line 189
    .line 190
    if-eqz v8, :cond_3

    .line 191
    .line 192
    .line 193
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 194
    move-result-wide v8

    .line 195
    .line 196
    .line 197
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->S(Ljava/lang/Object;J)I

    .line 198
    move-result v6

    .line 199
    .line 200
    .line 201
    invoke-interface {p2, v7, v6}, Landroidx/datastore/preferences/protobuf/Writer;->writeEnum(II)V

    .line 202
    .line 203
    goto/16 :goto_3

    .line 204
    .line 205
    .line 206
    :pswitch_6
    invoke-direct {p0, p1, v7, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 207
    move-result v8

    .line 208
    .line 209
    if-eqz v8, :cond_3

    .line 210
    .line 211
    .line 212
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 213
    move-result-wide v8

    .line 214
    .line 215
    .line 216
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->S(Ljava/lang/Object;J)I

    .line 217
    move-result v6

    .line 218
    .line 219
    .line 220
    invoke-interface {p2, v7, v6}, Landroidx/datastore/preferences/protobuf/Writer;->writeUInt32(II)V

    .line 221
    .line 222
    goto/16 :goto_3

    .line 223
    .line 224
    .line 225
    :pswitch_7
    invoke-direct {p0, p1, v7, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 226
    move-result v8

    .line 227
    .line 228
    if-eqz v8, :cond_3

    .line 229
    .line 230
    .line 231
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 232
    move-result-wide v8

    .line 233
    .line 234
    .line 235
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 236
    move-result-object v6

    .line 237
    .line 238
    check-cast v6, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 239
    .line 240
    .line 241
    invoke-interface {p2, v7, v6}, Landroidx/datastore/preferences/protobuf/Writer;->a(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    .line 242
    .line 243
    goto/16 :goto_3

    .line 244
    .line 245
    .line 246
    :pswitch_8
    invoke-direct {p0, p1, v7, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 247
    move-result v8

    .line 248
    .line 249
    if-eqz v8, :cond_3

    .line 250
    .line 251
    .line 252
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 253
    move-result-wide v8

    .line 254
    .line 255
    .line 256
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 257
    move-result-object v6

    .line 258
    .line 259
    .line 260
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 261
    move-result-object v8

    .line 262
    .line 263
    .line 264
    invoke-interface {p2, v7, v6, v8}, Landroidx/datastore/preferences/protobuf/Writer;->b(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 265
    .line 266
    goto/16 :goto_3

    .line 267
    .line 268
    .line 269
    :pswitch_9
    invoke-direct {p0, p1, v7, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 270
    move-result v8

    .line 271
    .line 272
    if-eqz v8, :cond_3

    .line 273
    .line 274
    .line 275
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 276
    move-result-wide v8

    .line 277
    .line 278
    .line 279
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 280
    move-result-object v6

    .line 281
    .line 282
    .line 283
    invoke-direct {p0, v7, v6, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r0(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 284
    .line 285
    goto/16 :goto_3

    .line 286
    .line 287
    .line 288
    :pswitch_a
    invoke-direct {p0, p1, v7, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 289
    move-result v8

    .line 290
    .line 291
    if-eqz v8, :cond_3

    .line 292
    .line 293
    .line 294
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 295
    move-result-wide v8

    .line 296
    .line 297
    .line 298
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->P(Ljava/lang/Object;J)Z

    .line 299
    move-result v6

    .line 300
    .line 301
    .line 302
    invoke-interface {p2, v7, v6}, Landroidx/datastore/preferences/protobuf/Writer;->writeBool(IZ)V

    .line 303
    .line 304
    goto/16 :goto_3

    .line 305
    .line 306
    .line 307
    :pswitch_b
    invoke-direct {p0, p1, v7, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 308
    move-result v8

    .line 309
    .line 310
    if-eqz v8, :cond_3

    .line 311
    .line 312
    .line 313
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 314
    move-result-wide v8

    .line 315
    .line 316
    .line 317
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->S(Ljava/lang/Object;J)I

    .line 318
    move-result v6

    .line 319
    .line 320
    .line 321
    invoke-interface {p2, v7, v6}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed32(II)V

    .line 322
    .line 323
    goto/16 :goto_3

    .line 324
    .line 325
    .line 326
    :pswitch_c
    invoke-direct {p0, p1, v7, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 327
    move-result v8

    .line 328
    .line 329
    if-eqz v8, :cond_3

    .line 330
    .line 331
    .line 332
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 333
    move-result-wide v8

    .line 334
    .line 335
    .line 336
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->T(Ljava/lang/Object;J)J

    .line 337
    move-result-wide v8

    .line 338
    .line 339
    .line 340
    invoke-interface {p2, v7, v8, v9}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed64(IJ)V

    .line 341
    .line 342
    goto/16 :goto_3

    .line 343
    .line 344
    .line 345
    :pswitch_d
    invoke-direct {p0, p1, v7, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 346
    move-result v8

    .line 347
    .line 348
    if-eqz v8, :cond_3

    .line 349
    .line 350
    .line 351
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 352
    move-result-wide v8

    .line 353
    .line 354
    .line 355
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->S(Ljava/lang/Object;J)I

    .line 356
    move-result v6

    .line 357
    .line 358
    .line 359
    invoke-interface {p2, v7, v6}, Landroidx/datastore/preferences/protobuf/Writer;->writeInt32(II)V

    .line 360
    .line 361
    goto/16 :goto_3

    .line 362
    .line 363
    .line 364
    :pswitch_e
    invoke-direct {p0, p1, v7, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 365
    move-result v8

    .line 366
    .line 367
    if-eqz v8, :cond_3

    .line 368
    .line 369
    .line 370
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 371
    move-result-wide v8

    .line 372
    .line 373
    .line 374
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->T(Ljava/lang/Object;J)J

    .line 375
    move-result-wide v8

    .line 376
    .line 377
    .line 378
    invoke-interface {p2, v7, v8, v9}, Landroidx/datastore/preferences/protobuf/Writer;->writeUInt64(IJ)V

    .line 379
    .line 380
    goto/16 :goto_3

    .line 381
    .line 382
    .line 383
    :pswitch_f
    invoke-direct {p0, p1, v7, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 384
    move-result v8

    .line 385
    .line 386
    if-eqz v8, :cond_3

    .line 387
    .line 388
    .line 389
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 390
    move-result-wide v8

    .line 391
    .line 392
    .line 393
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->T(Ljava/lang/Object;J)J

    .line 394
    move-result-wide v8

    .line 395
    .line 396
    .line 397
    invoke-interface {p2, v7, v8, v9}, Landroidx/datastore/preferences/protobuf/Writer;->writeInt64(IJ)V

    .line 398
    .line 399
    goto/16 :goto_3

    .line 400
    .line 401
    .line 402
    :pswitch_10
    invoke-direct {p0, p1, v7, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 403
    move-result v8

    .line 404
    .line 405
    if-eqz v8, :cond_3

    .line 406
    .line 407
    .line 408
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 409
    move-result-wide v8

    .line 410
    .line 411
    .line 412
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->R(Ljava/lang/Object;J)F

    .line 413
    move-result v6

    .line 414
    .line 415
    .line 416
    invoke-interface {p2, v7, v6}, Landroidx/datastore/preferences/protobuf/Writer;->writeFloat(IF)V

    .line 417
    .line 418
    goto/16 :goto_3

    .line 419
    .line 420
    .line 421
    :pswitch_11
    invoke-direct {p0, p1, v7, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 422
    move-result v8

    .line 423
    .line 424
    if-eqz v8, :cond_3

    .line 425
    .line 426
    .line 427
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 428
    move-result-wide v8

    .line 429
    .line 430
    .line 431
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->Q(Ljava/lang/Object;J)D

    .line 432
    move-result-wide v8

    .line 433
    .line 434
    .line 435
    invoke-interface {p2, v7, v8, v9}, Landroidx/datastore/preferences/protobuf/Writer;->writeDouble(ID)V

    .line 436
    .line 437
    goto/16 :goto_3

    .line 438
    .line 439
    .line 440
    :pswitch_12
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 441
    move-result-wide v8

    .line 442
    .line 443
    .line 444
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 445
    move-result-object v6

    .line 446
    .line 447
    .line 448
    invoke-direct {p0, p2, v7, v6, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q0(Landroidx/datastore/preferences/protobuf/Writer;ILjava/lang/Object;I)V

    .line 449
    .line 450
    goto/16 :goto_3

    .line 451
    .line 452
    .line 453
    :pswitch_13
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 454
    move-result v7

    .line 455
    .line 456
    .line 457
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 458
    move-result-wide v8

    .line 459
    .line 460
    .line 461
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 462
    move-result-object v6

    .line 463
    .line 464
    check-cast v6, Ljava/util/List;

    .line 465
    .line 466
    .line 467
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 468
    move-result-object v8

    .line 469
    .line 470
    .line 471
    invoke-static {v7, v6, p2, v8}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->U(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 472
    .line 473
    goto/16 :goto_3

    .line 474
    .line 475
    .line 476
    :pswitch_14
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 477
    move-result v7

    .line 478
    .line 479
    .line 480
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 481
    move-result-wide v10

    .line 482
    .line 483
    .line 484
    invoke-static {p1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 485
    move-result-object v6

    .line 486
    .line 487
    check-cast v6, Ljava/util/List;

    .line 488
    .line 489
    .line 490
    invoke-static {v7, v6, p2, v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->b0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 491
    .line 492
    goto/16 :goto_3

    .line 493
    .line 494
    .line 495
    :pswitch_15
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 496
    move-result v7

    .line 497
    .line 498
    .line 499
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 500
    move-result-wide v10

    .line 501
    .line 502
    .line 503
    invoke-static {p1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 504
    move-result-object v6

    .line 505
    .line 506
    check-cast v6, Ljava/util/List;

    .line 507
    .line 508
    .line 509
    invoke-static {v7, v6, p2, v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 510
    .line 511
    goto/16 :goto_3

    .line 512
    .line 513
    .line 514
    :pswitch_16
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 515
    move-result v7

    .line 516
    .line 517
    .line 518
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 519
    move-result-wide v10

    .line 520
    .line 521
    .line 522
    invoke-static {p1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 523
    move-result-object v6

    .line 524
    .line 525
    check-cast v6, Ljava/util/List;

    .line 526
    .line 527
    .line 528
    invoke-static {v7, v6, p2, v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->Z(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 529
    .line 530
    goto/16 :goto_3

    .line 531
    .line 532
    .line 533
    :pswitch_17
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 534
    move-result v7

    .line 535
    .line 536
    .line 537
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 538
    move-result-wide v10

    .line 539
    .line 540
    .line 541
    invoke-static {p1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 542
    move-result-object v6

    .line 543
    .line 544
    check-cast v6, Ljava/util/List;

    .line 545
    .line 546
    .line 547
    invoke-static {v7, v6, p2, v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->Y(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 548
    .line 549
    goto/16 :goto_3

    .line 550
    .line 551
    .line 552
    :pswitch_18
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 553
    move-result v7

    .line 554
    .line 555
    .line 556
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 557
    move-result-wide v10

    .line 558
    .line 559
    .line 560
    invoke-static {p1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 561
    move-result-object v6

    .line 562
    .line 563
    check-cast v6, Ljava/util/List;

    .line 564
    .line 565
    .line 566
    invoke-static {v7, v6, p2, v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->Q(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 567
    .line 568
    goto/16 :goto_3

    .line 569
    .line 570
    .line 571
    :pswitch_19
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 572
    move-result v7

    .line 573
    .line 574
    .line 575
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 576
    move-result-wide v10

    .line 577
    .line 578
    .line 579
    invoke-static {p1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 580
    move-result-object v6

    .line 581
    .line 582
    check-cast v6, Ljava/util/List;

    .line 583
    .line 584
    .line 585
    invoke-static {v7, v6, p2, v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->d0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 586
    .line 587
    goto/16 :goto_3

    .line 588
    .line 589
    .line 590
    :pswitch_1a
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 591
    move-result v7

    .line 592
    .line 593
    .line 594
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 595
    move-result-wide v10

    .line 596
    .line 597
    .line 598
    invoke-static {p1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 599
    move-result-object v6

    .line 600
    .line 601
    check-cast v6, Ljava/util/List;

    .line 602
    .line 603
    .line 604
    invoke-static {v7, v6, p2, v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->N(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 605
    .line 606
    goto/16 :goto_3

    .line 607
    .line 608
    .line 609
    :pswitch_1b
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 610
    move-result v7

    .line 611
    .line 612
    .line 613
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 614
    move-result-wide v10

    .line 615
    .line 616
    .line 617
    invoke-static {p1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 618
    move-result-object v6

    .line 619
    .line 620
    check-cast v6, Ljava/util/List;

    .line 621
    .line 622
    .line 623
    invoke-static {v7, v6, p2, v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->R(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 624
    .line 625
    goto/16 :goto_3

    .line 626
    .line 627
    .line 628
    :pswitch_1c
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 629
    move-result v7

    .line 630
    .line 631
    .line 632
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 633
    move-result-wide v10

    .line 634
    .line 635
    .line 636
    invoke-static {p1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 637
    move-result-object v6

    .line 638
    .line 639
    check-cast v6, Ljava/util/List;

    .line 640
    .line 641
    .line 642
    invoke-static {v7, v6, p2, v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->S(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 643
    .line 644
    goto/16 :goto_3

    .line 645
    .line 646
    .line 647
    :pswitch_1d
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 648
    move-result v7

    .line 649
    .line 650
    .line 651
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 652
    move-result-wide v10

    .line 653
    .line 654
    .line 655
    invoke-static {p1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 656
    move-result-object v6

    .line 657
    .line 658
    check-cast v6, Ljava/util/List;

    .line 659
    .line 660
    .line 661
    invoke-static {v7, v6, p2, v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->V(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 662
    .line 663
    goto/16 :goto_3

    .line 664
    .line 665
    .line 666
    :pswitch_1e
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 667
    move-result v7

    .line 668
    .line 669
    .line 670
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 671
    move-result-wide v10

    .line 672
    .line 673
    .line 674
    invoke-static {p1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 675
    move-result-object v6

    .line 676
    .line 677
    check-cast v6, Ljava/util/List;

    .line 678
    .line 679
    .line 680
    invoke-static {v7, v6, p2, v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->e0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 681
    .line 682
    goto/16 :goto_3

    .line 683
    .line 684
    .line 685
    :pswitch_1f
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 686
    move-result v7

    .line 687
    .line 688
    .line 689
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 690
    move-result-wide v10

    .line 691
    .line 692
    .line 693
    invoke-static {p1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 694
    move-result-object v6

    .line 695
    .line 696
    check-cast v6, Ljava/util/List;

    .line 697
    .line 698
    .line 699
    invoke-static {v7, v6, p2, v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->W(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 700
    .line 701
    goto/16 :goto_3

    .line 702
    .line 703
    .line 704
    :pswitch_20
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 705
    move-result v7

    .line 706
    .line 707
    .line 708
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 709
    move-result-wide v10

    .line 710
    .line 711
    .line 712
    invoke-static {p1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 713
    move-result-object v6

    .line 714
    .line 715
    check-cast v6, Ljava/util/List;

    .line 716
    .line 717
    .line 718
    invoke-static {v7, v6, p2, v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->T(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 719
    .line 720
    goto/16 :goto_3

    .line 721
    .line 722
    .line 723
    :pswitch_21
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 724
    move-result v7

    .line 725
    .line 726
    .line 727
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 728
    move-result-wide v10

    .line 729
    .line 730
    .line 731
    invoke-static {p1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 732
    move-result-object v6

    .line 733
    .line 734
    check-cast v6, Ljava/util/List;

    .line 735
    .line 736
    .line 737
    invoke-static {v7, v6, p2, v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->P(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 738
    .line 739
    goto/16 :goto_3

    .line 740
    .line 741
    .line 742
    :pswitch_22
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 743
    move-result v7

    .line 744
    .line 745
    .line 746
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 747
    move-result-wide v8

    .line 748
    .line 749
    .line 750
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 751
    move-result-object v6

    .line 752
    .line 753
    check-cast v6, Ljava/util/List;

    .line 754
    .line 755
    .line 756
    invoke-static {v7, v6, p2, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->b0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 757
    .line 758
    goto/16 :goto_3

    .line 759
    .line 760
    .line 761
    :pswitch_23
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 762
    move-result v7

    .line 763
    .line 764
    .line 765
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 766
    move-result-wide v8

    .line 767
    .line 768
    .line 769
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 770
    move-result-object v6

    .line 771
    .line 772
    check-cast v6, Ljava/util/List;

    .line 773
    .line 774
    .line 775
    invoke-static {v7, v6, p2, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 776
    .line 777
    goto/16 :goto_3

    .line 778
    .line 779
    .line 780
    :pswitch_24
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 781
    move-result v7

    .line 782
    .line 783
    .line 784
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 785
    move-result-wide v8

    .line 786
    .line 787
    .line 788
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 789
    move-result-object v6

    .line 790
    .line 791
    check-cast v6, Ljava/util/List;

    .line 792
    .line 793
    .line 794
    invoke-static {v7, v6, p2, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->Z(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 795
    .line 796
    goto/16 :goto_3

    .line 797
    .line 798
    .line 799
    :pswitch_25
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 800
    move-result v7

    .line 801
    .line 802
    .line 803
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 804
    move-result-wide v8

    .line 805
    .line 806
    .line 807
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 808
    move-result-object v6

    .line 809
    .line 810
    check-cast v6, Ljava/util/List;

    .line 811
    .line 812
    .line 813
    invoke-static {v7, v6, p2, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->Y(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 814
    .line 815
    goto/16 :goto_3

    .line 816
    .line 817
    .line 818
    :pswitch_26
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 819
    move-result v7

    .line 820
    .line 821
    .line 822
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 823
    move-result-wide v8

    .line 824
    .line 825
    .line 826
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 827
    move-result-object v6

    .line 828
    .line 829
    check-cast v6, Ljava/util/List;

    .line 830
    .line 831
    .line 832
    invoke-static {v7, v6, p2, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->Q(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 833
    .line 834
    goto/16 :goto_3

    .line 835
    .line 836
    .line 837
    :pswitch_27
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 838
    move-result v7

    .line 839
    .line 840
    .line 841
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 842
    move-result-wide v8

    .line 843
    .line 844
    .line 845
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 846
    move-result-object v6

    .line 847
    .line 848
    check-cast v6, Ljava/util/List;

    .line 849
    .line 850
    .line 851
    invoke-static {v7, v6, p2, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->d0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 852
    .line 853
    goto/16 :goto_3

    .line 854
    .line 855
    .line 856
    :pswitch_28
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 857
    move-result v7

    .line 858
    .line 859
    .line 860
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 861
    move-result-wide v8

    .line 862
    .line 863
    .line 864
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 865
    move-result-object v6

    .line 866
    .line 867
    check-cast v6, Ljava/util/List;

    .line 868
    .line 869
    .line 870
    invoke-static {v7, v6, p2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->O(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 871
    .line 872
    goto/16 :goto_3

    .line 873
    .line 874
    .line 875
    :pswitch_29
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 876
    move-result v7

    .line 877
    .line 878
    .line 879
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 880
    move-result-wide v8

    .line 881
    .line 882
    .line 883
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 884
    move-result-object v6

    .line 885
    .line 886
    check-cast v6, Ljava/util/List;

    .line 887
    .line 888
    .line 889
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 890
    move-result-object v8

    .line 891
    .line 892
    .line 893
    invoke-static {v7, v6, p2, v8}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->X(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 894
    .line 895
    goto/16 :goto_3

    .line 896
    .line 897
    .line 898
    :pswitch_2a
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 899
    move-result v7

    .line 900
    .line 901
    .line 902
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 903
    move-result-wide v8

    .line 904
    .line 905
    .line 906
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 907
    move-result-object v6

    .line 908
    .line 909
    check-cast v6, Ljava/util/List;

    .line 910
    .line 911
    .line 912
    invoke-static {v7, v6, p2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->c0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 913
    .line 914
    goto/16 :goto_3

    .line 915
    .line 916
    .line 917
    :pswitch_2b
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 918
    move-result v7

    .line 919
    .line 920
    .line 921
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 922
    move-result-wide v8

    .line 923
    .line 924
    .line 925
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 926
    move-result-object v6

    .line 927
    .line 928
    check-cast v6, Ljava/util/List;

    .line 929
    .line 930
    .line 931
    invoke-static {v7, v6, p2, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->N(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 932
    .line 933
    goto/16 :goto_3

    .line 934
    .line 935
    .line 936
    :pswitch_2c
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 937
    move-result v7

    .line 938
    .line 939
    .line 940
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 941
    move-result-wide v8

    .line 942
    .line 943
    .line 944
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 945
    move-result-object v6

    .line 946
    .line 947
    check-cast v6, Ljava/util/List;

    .line 948
    .line 949
    .line 950
    invoke-static {v7, v6, p2, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->R(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 951
    .line 952
    goto/16 :goto_3

    .line 953
    .line 954
    .line 955
    :pswitch_2d
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 956
    move-result v7

    .line 957
    .line 958
    .line 959
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 960
    move-result-wide v8

    .line 961
    .line 962
    .line 963
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 964
    move-result-object v6

    .line 965
    .line 966
    check-cast v6, Ljava/util/List;

    .line 967
    .line 968
    .line 969
    invoke-static {v7, v6, p2, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->S(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 970
    .line 971
    goto/16 :goto_3

    .line 972
    .line 973
    .line 974
    :pswitch_2e
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 975
    move-result v7

    .line 976
    .line 977
    .line 978
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 979
    move-result-wide v8

    .line 980
    .line 981
    .line 982
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 983
    move-result-object v6

    .line 984
    .line 985
    check-cast v6, Ljava/util/List;

    .line 986
    .line 987
    .line 988
    invoke-static {v7, v6, p2, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->V(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 989
    .line 990
    goto/16 :goto_3

    .line 991
    .line 992
    .line 993
    :pswitch_2f
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 994
    move-result v7

    .line 995
    .line 996
    .line 997
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 998
    move-result-wide v8

    .line 999
    .line 1000
    .line 1001
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1002
    move-result-object v6

    .line 1003
    .line 1004
    check-cast v6, Ljava/util/List;

    .line 1005
    .line 1006
    .line 1007
    invoke-static {v7, v6, p2, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->e0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 1008
    .line 1009
    goto/16 :goto_3

    .line 1010
    .line 1011
    .line 1012
    :pswitch_30
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 1013
    move-result v7

    .line 1014
    .line 1015
    .line 1016
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1017
    move-result-wide v8

    .line 1018
    .line 1019
    .line 1020
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1021
    move-result-object v6

    .line 1022
    .line 1023
    check-cast v6, Ljava/util/List;

    .line 1024
    .line 1025
    .line 1026
    invoke-static {v7, v6, p2, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->W(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 1027
    .line 1028
    goto/16 :goto_3

    .line 1029
    .line 1030
    .line 1031
    :pswitch_31
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 1032
    move-result v7

    .line 1033
    .line 1034
    .line 1035
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1036
    move-result-wide v8

    .line 1037
    .line 1038
    .line 1039
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1040
    move-result-object v6

    .line 1041
    .line 1042
    check-cast v6, Ljava/util/List;

    .line 1043
    .line 1044
    .line 1045
    invoke-static {v7, v6, p2, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->T(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 1046
    .line 1047
    goto/16 :goto_3

    .line 1048
    .line 1049
    .line 1050
    :pswitch_32
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 1051
    move-result v7

    .line 1052
    .line 1053
    .line 1054
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1055
    move-result-wide v8

    .line 1056
    .line 1057
    .line 1058
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1059
    move-result-object v6

    .line 1060
    .line 1061
    check-cast v6, Ljava/util/List;

    .line 1062
    .line 1063
    .line 1064
    invoke-static {v7, v6, p2, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->P(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 1065
    .line 1066
    goto/16 :goto_3

    .line 1067
    .line 1068
    .line 1069
    :pswitch_33
    invoke-direct {p0, p1, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1070
    move-result v8

    .line 1071
    .line 1072
    if-eqz v8, :cond_3

    .line 1073
    .line 1074
    .line 1075
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1076
    move-result-wide v8

    .line 1077
    .line 1078
    .line 1079
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1080
    move-result-object v6

    .line 1081
    .line 1082
    .line 1083
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 1084
    move-result-object v8

    .line 1085
    .line 1086
    .line 1087
    invoke-interface {p2, v7, v6, v8}, Landroidx/datastore/preferences/protobuf/Writer;->e(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 1088
    .line 1089
    goto/16 :goto_3

    .line 1090
    .line 1091
    .line 1092
    :pswitch_34
    invoke-direct {p0, p1, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1093
    move-result v8

    .line 1094
    .line 1095
    if-eqz v8, :cond_3

    .line 1096
    .line 1097
    .line 1098
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1099
    move-result-wide v8

    .line 1100
    .line 1101
    .line 1102
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->E(Ljava/lang/Object;J)J

    .line 1103
    move-result-wide v8

    .line 1104
    .line 1105
    .line 1106
    invoke-interface {p2, v7, v8, v9}, Landroidx/datastore/preferences/protobuf/Writer;->writeSInt64(IJ)V

    .line 1107
    .line 1108
    goto/16 :goto_3

    .line 1109
    .line 1110
    .line 1111
    :pswitch_35
    invoke-direct {p0, p1, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1112
    move-result v8

    .line 1113
    .line 1114
    if-eqz v8, :cond_3

    .line 1115
    .line 1116
    .line 1117
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1118
    move-result-wide v8

    .line 1119
    .line 1120
    .line 1121
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->t(Ljava/lang/Object;J)I

    .line 1122
    move-result v6

    .line 1123
    .line 1124
    .line 1125
    invoke-interface {p2, v7, v6}, Landroidx/datastore/preferences/protobuf/Writer;->writeSInt32(II)V

    .line 1126
    .line 1127
    goto/16 :goto_3

    .line 1128
    .line 1129
    .line 1130
    :pswitch_36
    invoke-direct {p0, p1, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1131
    move-result v8

    .line 1132
    .line 1133
    if-eqz v8, :cond_3

    .line 1134
    .line 1135
    .line 1136
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1137
    move-result-wide v8

    .line 1138
    .line 1139
    .line 1140
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->E(Ljava/lang/Object;J)J

    .line 1141
    move-result-wide v8

    .line 1142
    .line 1143
    .line 1144
    invoke-interface {p2, v7, v8, v9}, Landroidx/datastore/preferences/protobuf/Writer;->writeSFixed64(IJ)V

    .line 1145
    .line 1146
    goto/16 :goto_3

    .line 1147
    .line 1148
    .line 1149
    :pswitch_37
    invoke-direct {p0, p1, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1150
    move-result v8

    .line 1151
    .line 1152
    if-eqz v8, :cond_3

    .line 1153
    .line 1154
    .line 1155
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1156
    move-result-wide v8

    .line 1157
    .line 1158
    .line 1159
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->t(Ljava/lang/Object;J)I

    .line 1160
    move-result v6

    .line 1161
    .line 1162
    .line 1163
    invoke-interface {p2, v7, v6}, Landroidx/datastore/preferences/protobuf/Writer;->writeSFixed32(II)V

    .line 1164
    .line 1165
    goto/16 :goto_3

    .line 1166
    .line 1167
    .line 1168
    :pswitch_38
    invoke-direct {p0, p1, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1169
    move-result v8

    .line 1170
    .line 1171
    if-eqz v8, :cond_3

    .line 1172
    .line 1173
    .line 1174
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1175
    move-result-wide v8

    .line 1176
    .line 1177
    .line 1178
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->t(Ljava/lang/Object;J)I

    .line 1179
    move-result v6

    .line 1180
    .line 1181
    .line 1182
    invoke-interface {p2, v7, v6}, Landroidx/datastore/preferences/protobuf/Writer;->writeEnum(II)V

    .line 1183
    .line 1184
    goto/16 :goto_3

    .line 1185
    .line 1186
    .line 1187
    :pswitch_39
    invoke-direct {p0, p1, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1188
    move-result v8

    .line 1189
    .line 1190
    if-eqz v8, :cond_3

    .line 1191
    .line 1192
    .line 1193
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1194
    move-result-wide v8

    .line 1195
    .line 1196
    .line 1197
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->t(Ljava/lang/Object;J)I

    .line 1198
    move-result v6

    .line 1199
    .line 1200
    .line 1201
    invoke-interface {p2, v7, v6}, Landroidx/datastore/preferences/protobuf/Writer;->writeUInt32(II)V

    .line 1202
    .line 1203
    goto/16 :goto_3

    .line 1204
    .line 1205
    .line 1206
    :pswitch_3a
    invoke-direct {p0, p1, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1207
    move-result v8

    .line 1208
    .line 1209
    if-eqz v8, :cond_3

    .line 1210
    .line 1211
    .line 1212
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1213
    move-result-wide v8

    .line 1214
    .line 1215
    .line 1216
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1217
    move-result-object v6

    .line 1218
    .line 1219
    check-cast v6, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 1220
    .line 1221
    .line 1222
    invoke-interface {p2, v7, v6}, Landroidx/datastore/preferences/protobuf/Writer;->a(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    .line 1223
    .line 1224
    goto/16 :goto_3

    .line 1225
    .line 1226
    .line 1227
    :pswitch_3b
    invoke-direct {p0, p1, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1228
    move-result v8

    .line 1229
    .line 1230
    if-eqz v8, :cond_3

    .line 1231
    .line 1232
    .line 1233
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1234
    move-result-wide v8

    .line 1235
    .line 1236
    .line 1237
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1238
    move-result-object v6

    .line 1239
    .line 1240
    .line 1241
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 1242
    move-result-object v8

    .line 1243
    .line 1244
    .line 1245
    invoke-interface {p2, v7, v6, v8}, Landroidx/datastore/preferences/protobuf/Writer;->b(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 1246
    .line 1247
    goto/16 :goto_3

    .line 1248
    .line 1249
    .line 1250
    :pswitch_3c
    invoke-direct {p0, p1, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1251
    move-result v8

    .line 1252
    .line 1253
    if-eqz v8, :cond_3

    .line 1254
    .line 1255
    .line 1256
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1257
    move-result-wide v8

    .line 1258
    .line 1259
    .line 1260
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1261
    move-result-object v6

    .line 1262
    .line 1263
    .line 1264
    invoke-direct {p0, v7, v6, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r0(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 1265
    .line 1266
    goto/16 :goto_3

    .line 1267
    .line 1268
    .line 1269
    :pswitch_3d
    invoke-direct {p0, p1, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1270
    move-result v8

    .line 1271
    .line 1272
    if-eqz v8, :cond_3

    .line 1273
    .line 1274
    .line 1275
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1276
    move-result-wide v8

    .line 1277
    .line 1278
    .line 1279
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->e(Ljava/lang/Object;J)Z

    .line 1280
    move-result v6

    .line 1281
    .line 1282
    .line 1283
    invoke-interface {p2, v7, v6}, Landroidx/datastore/preferences/protobuf/Writer;->writeBool(IZ)V

    .line 1284
    .line 1285
    goto/16 :goto_3

    .line 1286
    .line 1287
    .line 1288
    :pswitch_3e
    invoke-direct {p0, p1, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1289
    move-result v8

    .line 1290
    .line 1291
    if-eqz v8, :cond_3

    .line 1292
    .line 1293
    .line 1294
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1295
    move-result-wide v8

    .line 1296
    .line 1297
    .line 1298
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->t(Ljava/lang/Object;J)I

    .line 1299
    move-result v6

    .line 1300
    .line 1301
    .line 1302
    invoke-interface {p2, v7, v6}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed32(II)V

    .line 1303
    goto :goto_3

    .line 1304
    .line 1305
    .line 1306
    :pswitch_3f
    invoke-direct {p0, p1, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1307
    move-result v8

    .line 1308
    .line 1309
    if-eqz v8, :cond_3

    .line 1310
    .line 1311
    .line 1312
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1313
    move-result-wide v8

    .line 1314
    .line 1315
    .line 1316
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->E(Ljava/lang/Object;J)J

    .line 1317
    move-result-wide v8

    .line 1318
    .line 1319
    .line 1320
    invoke-interface {p2, v7, v8, v9}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed64(IJ)V

    .line 1321
    goto :goto_3

    .line 1322
    .line 1323
    .line 1324
    :pswitch_40
    invoke-direct {p0, p1, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1325
    move-result v8

    .line 1326
    .line 1327
    if-eqz v8, :cond_3

    .line 1328
    .line 1329
    .line 1330
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1331
    move-result-wide v8

    .line 1332
    .line 1333
    .line 1334
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->t(Ljava/lang/Object;J)I

    .line 1335
    move-result v6

    .line 1336
    .line 1337
    .line 1338
    invoke-interface {p2, v7, v6}, Landroidx/datastore/preferences/protobuf/Writer;->writeInt32(II)V

    .line 1339
    goto :goto_3

    .line 1340
    .line 1341
    .line 1342
    :pswitch_41
    invoke-direct {p0, p1, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1343
    move-result v8

    .line 1344
    .line 1345
    if-eqz v8, :cond_3

    .line 1346
    .line 1347
    .line 1348
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1349
    move-result-wide v8

    .line 1350
    .line 1351
    .line 1352
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->E(Ljava/lang/Object;J)J

    .line 1353
    move-result-wide v8

    .line 1354
    .line 1355
    .line 1356
    invoke-interface {p2, v7, v8, v9}, Landroidx/datastore/preferences/protobuf/Writer;->writeUInt64(IJ)V

    .line 1357
    goto :goto_3

    .line 1358
    .line 1359
    .line 1360
    :pswitch_42
    invoke-direct {p0, p1, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1361
    move-result v8

    .line 1362
    .line 1363
    if-eqz v8, :cond_3

    .line 1364
    .line 1365
    .line 1366
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1367
    move-result-wide v8

    .line 1368
    .line 1369
    .line 1370
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->E(Ljava/lang/Object;J)J

    .line 1371
    move-result-wide v8

    .line 1372
    .line 1373
    .line 1374
    invoke-interface {p2, v7, v8, v9}, Landroidx/datastore/preferences/protobuf/Writer;->writeInt64(IJ)V

    .line 1375
    goto :goto_3

    .line 1376
    .line 1377
    .line 1378
    :pswitch_43
    invoke-direct {p0, p1, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1379
    move-result v8

    .line 1380
    .line 1381
    if-eqz v8, :cond_3

    .line 1382
    .line 1383
    .line 1384
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1385
    move-result-wide v8

    .line 1386
    .line 1387
    .line 1388
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->l(Ljava/lang/Object;J)F

    .line 1389
    move-result v6

    .line 1390
    .line 1391
    .line 1392
    invoke-interface {p2, v7, v6}, Landroidx/datastore/preferences/protobuf/Writer;->writeFloat(IF)V

    .line 1393
    goto :goto_3

    .line 1394
    .line 1395
    .line 1396
    :pswitch_44
    invoke-direct {p0, p1, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1397
    move-result v8

    .line 1398
    .line 1399
    if-eqz v8, :cond_3

    .line 1400
    .line 1401
    .line 1402
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1403
    move-result-wide v8

    .line 1404
    .line 1405
    .line 1406
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h(Ljava/lang/Object;J)D

    .line 1407
    move-result-wide v8

    .line 1408
    .line 1409
    .line 1410
    invoke-interface {p2, v7, v8, v9}, Landroidx/datastore/preferences/protobuf/Writer;->writeDouble(ID)V

    .line 1411
    .line 1412
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x3

    .line 1413
    .line 1414
    goto/16 :goto_1

    .line 1415
    .line 1416
    :cond_4
    :goto_4
    if-eqz v2, :cond_6

    .line 1417
    .line 1418
    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    .line 1419
    .line 1420
    .line 1421
    invoke-virtual {v3, p2, v2}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->j(Landroidx/datastore/preferences/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 1422
    .line 1423
    .line 1424
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1425
    move-result v2

    .line 1426
    .line 1427
    if-eqz v2, :cond_5

    .line 1428
    .line 1429
    .line 1430
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1431
    move-result-object v2

    .line 1432
    .line 1433
    check-cast v2, Ljava/util/Map$Entry;

    .line 1434
    goto :goto_4

    .line 1435
    :cond_5
    move-object v2, v1

    .line 1436
    goto :goto_4

    .line 1437
    .line 1438
    :cond_6
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    .line 1439
    .line 1440
    .line 1441
    invoke-direct {p0, v0, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->s0(Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 1442
    return-void

    .line 1443
    .line 1444
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static p(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;
    .locals 2

    .line 1
    .line 2
    check-cast p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->e()Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->l()Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 17
    :cond_0
    return-object v0
.end method

.method private p0(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/datastore/preferences/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->s0(Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->hasExtensions:Z

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/FieldSet;->n()Z

    .line 20
    move-result v2

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/FieldSet;->g()Ljava/util/Iterator;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    check-cast v2, Ljava/util/Map$Entry;

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v0, v1

    .line 35
    move-object v2, v0

    .line 36
    .line 37
    :goto_0
    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    .line 38
    array-length v3, v3

    .line 39
    .line 40
    add-int/lit8 v3, v3, -0x3

    .line 41
    .line 42
    :goto_1
    if-ltz v3, :cond_4

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m0(I)I

    .line 46
    move-result v4

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 50
    move-result v5

    .line 51
    .line 52
    :goto_2
    if-eqz v2, :cond_2

    .line 53
    .line 54
    iget-object v6, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6, v2}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->a(Ljava/util/Map$Entry;)I

    .line 58
    move-result v6

    .line 59
    .line 60
    if-le v6, v5, :cond_2

    .line 61
    .line 62
    iget-object v6, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6, p2, v2}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->j(Landroidx/datastore/preferences/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    move-result v2

    .line 70
    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    move-result-object v2

    .line 76
    .line 77
    check-cast v2, Ljava/util/Map$Entry;

    .line 78
    goto :goto_2

    .line 79
    :cond_1
    move-object v2, v1

    .line 80
    goto :goto_2

    .line 81
    .line 82
    .line 83
    :cond_2
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->l0(I)I

    .line 84
    move-result v6

    .line 85
    const/4 v7, 0x0

    .line 86
    const/4 v8, 0x1

    .line 87
    .line 88
    .line 89
    packed-switch v6, :pswitch_data_0

    .line 90
    .line 91
    goto/16 :goto_3

    .line 92
    .line 93
    .line 94
    :pswitch_0
    invoke-direct {p0, p1, v5, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 95
    move-result v6

    .line 96
    .line 97
    if-eqz v6, :cond_3

    .line 98
    .line 99
    .line 100
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 101
    move-result-wide v6

    .line 102
    .line 103
    .line 104
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 105
    move-result-object v4

    .line 106
    .line 107
    .line 108
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 109
    move-result-object v6

    .line 110
    .line 111
    .line 112
    invoke-interface {p2, v5, v4, v6}, Landroidx/datastore/preferences/protobuf/Writer;->e(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 113
    .line 114
    goto/16 :goto_3

    .line 115
    .line 116
    .line 117
    :pswitch_1
    invoke-direct {p0, p1, v5, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 118
    move-result v6

    .line 119
    .line 120
    if-eqz v6, :cond_3

    .line 121
    .line 122
    .line 123
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 124
    move-result-wide v6

    .line 125
    .line 126
    .line 127
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->T(Ljava/lang/Object;J)J

    .line 128
    move-result-wide v6

    .line 129
    .line 130
    .line 131
    invoke-interface {p2, v5, v6, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeSInt64(IJ)V

    .line 132
    .line 133
    goto/16 :goto_3

    .line 134
    .line 135
    .line 136
    :pswitch_2
    invoke-direct {p0, p1, v5, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 137
    move-result v6

    .line 138
    .line 139
    if-eqz v6, :cond_3

    .line 140
    .line 141
    .line 142
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 143
    move-result-wide v6

    .line 144
    .line 145
    .line 146
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->S(Ljava/lang/Object;J)I

    .line 147
    move-result v4

    .line 148
    .line 149
    .line 150
    invoke-interface {p2, v5, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeSInt32(II)V

    .line 151
    .line 152
    goto/16 :goto_3

    .line 153
    .line 154
    .line 155
    :pswitch_3
    invoke-direct {p0, p1, v5, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 156
    move-result v6

    .line 157
    .line 158
    if-eqz v6, :cond_3

    .line 159
    .line 160
    .line 161
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 162
    move-result-wide v6

    .line 163
    .line 164
    .line 165
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->T(Ljava/lang/Object;J)J

    .line 166
    move-result-wide v6

    .line 167
    .line 168
    .line 169
    invoke-interface {p2, v5, v6, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeSFixed64(IJ)V

    .line 170
    .line 171
    goto/16 :goto_3

    .line 172
    .line 173
    .line 174
    :pswitch_4
    invoke-direct {p0, p1, v5, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 175
    move-result v6

    .line 176
    .line 177
    if-eqz v6, :cond_3

    .line 178
    .line 179
    .line 180
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 181
    move-result-wide v6

    .line 182
    .line 183
    .line 184
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->S(Ljava/lang/Object;J)I

    .line 185
    move-result v4

    .line 186
    .line 187
    .line 188
    invoke-interface {p2, v5, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeSFixed32(II)V

    .line 189
    .line 190
    goto/16 :goto_3

    .line 191
    .line 192
    .line 193
    :pswitch_5
    invoke-direct {p0, p1, v5, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 194
    move-result v6

    .line 195
    .line 196
    if-eqz v6, :cond_3

    .line 197
    .line 198
    .line 199
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 200
    move-result-wide v6

    .line 201
    .line 202
    .line 203
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->S(Ljava/lang/Object;J)I

    .line 204
    move-result v4

    .line 205
    .line 206
    .line 207
    invoke-interface {p2, v5, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeEnum(II)V

    .line 208
    .line 209
    goto/16 :goto_3

    .line 210
    .line 211
    .line 212
    :pswitch_6
    invoke-direct {p0, p1, v5, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 213
    move-result v6

    .line 214
    .line 215
    if-eqz v6, :cond_3

    .line 216
    .line 217
    .line 218
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 219
    move-result-wide v6

    .line 220
    .line 221
    .line 222
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->S(Ljava/lang/Object;J)I

    .line 223
    move-result v4

    .line 224
    .line 225
    .line 226
    invoke-interface {p2, v5, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeUInt32(II)V

    .line 227
    .line 228
    goto/16 :goto_3

    .line 229
    .line 230
    .line 231
    :pswitch_7
    invoke-direct {p0, p1, v5, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 232
    move-result v6

    .line 233
    .line 234
    if-eqz v6, :cond_3

    .line 235
    .line 236
    .line 237
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 238
    move-result-wide v6

    .line 239
    .line 240
    .line 241
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 242
    move-result-object v4

    .line 243
    .line 244
    check-cast v4, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 245
    .line 246
    .line 247
    invoke-interface {p2, v5, v4}, Landroidx/datastore/preferences/protobuf/Writer;->a(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    .line 248
    .line 249
    goto/16 :goto_3

    .line 250
    .line 251
    .line 252
    :pswitch_8
    invoke-direct {p0, p1, v5, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 253
    move-result v6

    .line 254
    .line 255
    if-eqz v6, :cond_3

    .line 256
    .line 257
    .line 258
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 259
    move-result-wide v6

    .line 260
    .line 261
    .line 262
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 263
    move-result-object v4

    .line 264
    .line 265
    .line 266
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 267
    move-result-object v6

    .line 268
    .line 269
    .line 270
    invoke-interface {p2, v5, v4, v6}, Landroidx/datastore/preferences/protobuf/Writer;->b(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 271
    .line 272
    goto/16 :goto_3

    .line 273
    .line 274
    .line 275
    :pswitch_9
    invoke-direct {p0, p1, v5, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 276
    move-result v6

    .line 277
    .line 278
    if-eqz v6, :cond_3

    .line 279
    .line 280
    .line 281
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 282
    move-result-wide v6

    .line 283
    .line 284
    .line 285
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 286
    move-result-object v4

    .line 287
    .line 288
    .line 289
    invoke-direct {p0, v5, v4, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r0(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 290
    .line 291
    goto/16 :goto_3

    .line 292
    .line 293
    .line 294
    :pswitch_a
    invoke-direct {p0, p1, v5, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 295
    move-result v6

    .line 296
    .line 297
    if-eqz v6, :cond_3

    .line 298
    .line 299
    .line 300
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 301
    move-result-wide v6

    .line 302
    .line 303
    .line 304
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->P(Ljava/lang/Object;J)Z

    .line 305
    move-result v4

    .line 306
    .line 307
    .line 308
    invoke-interface {p2, v5, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeBool(IZ)V

    .line 309
    .line 310
    goto/16 :goto_3

    .line 311
    .line 312
    .line 313
    :pswitch_b
    invoke-direct {p0, p1, v5, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 314
    move-result v6

    .line 315
    .line 316
    if-eqz v6, :cond_3

    .line 317
    .line 318
    .line 319
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 320
    move-result-wide v6

    .line 321
    .line 322
    .line 323
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->S(Ljava/lang/Object;J)I

    .line 324
    move-result v4

    .line 325
    .line 326
    .line 327
    invoke-interface {p2, v5, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed32(II)V

    .line 328
    .line 329
    goto/16 :goto_3

    .line 330
    .line 331
    .line 332
    :pswitch_c
    invoke-direct {p0, p1, v5, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 333
    move-result v6

    .line 334
    .line 335
    if-eqz v6, :cond_3

    .line 336
    .line 337
    .line 338
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 339
    move-result-wide v6

    .line 340
    .line 341
    .line 342
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->T(Ljava/lang/Object;J)J

    .line 343
    move-result-wide v6

    .line 344
    .line 345
    .line 346
    invoke-interface {p2, v5, v6, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed64(IJ)V

    .line 347
    .line 348
    goto/16 :goto_3

    .line 349
    .line 350
    .line 351
    :pswitch_d
    invoke-direct {p0, p1, v5, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 352
    move-result v6

    .line 353
    .line 354
    if-eqz v6, :cond_3

    .line 355
    .line 356
    .line 357
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 358
    move-result-wide v6

    .line 359
    .line 360
    .line 361
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->S(Ljava/lang/Object;J)I

    .line 362
    move-result v4

    .line 363
    .line 364
    .line 365
    invoke-interface {p2, v5, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeInt32(II)V

    .line 366
    .line 367
    goto/16 :goto_3

    .line 368
    .line 369
    .line 370
    :pswitch_e
    invoke-direct {p0, p1, v5, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 371
    move-result v6

    .line 372
    .line 373
    if-eqz v6, :cond_3

    .line 374
    .line 375
    .line 376
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 377
    move-result-wide v6

    .line 378
    .line 379
    .line 380
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->T(Ljava/lang/Object;J)J

    .line 381
    move-result-wide v6

    .line 382
    .line 383
    .line 384
    invoke-interface {p2, v5, v6, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeUInt64(IJ)V

    .line 385
    .line 386
    goto/16 :goto_3

    .line 387
    .line 388
    .line 389
    :pswitch_f
    invoke-direct {p0, p1, v5, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 390
    move-result v6

    .line 391
    .line 392
    if-eqz v6, :cond_3

    .line 393
    .line 394
    .line 395
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 396
    move-result-wide v6

    .line 397
    .line 398
    .line 399
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->T(Ljava/lang/Object;J)J

    .line 400
    move-result-wide v6

    .line 401
    .line 402
    .line 403
    invoke-interface {p2, v5, v6, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeInt64(IJ)V

    .line 404
    .line 405
    goto/16 :goto_3

    .line 406
    .line 407
    .line 408
    :pswitch_10
    invoke-direct {p0, p1, v5, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 409
    move-result v6

    .line 410
    .line 411
    if-eqz v6, :cond_3

    .line 412
    .line 413
    .line 414
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 415
    move-result-wide v6

    .line 416
    .line 417
    .line 418
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->R(Ljava/lang/Object;J)F

    .line 419
    move-result v4

    .line 420
    .line 421
    .line 422
    invoke-interface {p2, v5, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeFloat(IF)V

    .line 423
    .line 424
    goto/16 :goto_3

    .line 425
    .line 426
    .line 427
    :pswitch_11
    invoke-direct {p0, p1, v5, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 428
    move-result v6

    .line 429
    .line 430
    if-eqz v6, :cond_3

    .line 431
    .line 432
    .line 433
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 434
    move-result-wide v6

    .line 435
    .line 436
    .line 437
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->Q(Ljava/lang/Object;J)D

    .line 438
    move-result-wide v6

    .line 439
    .line 440
    .line 441
    invoke-interface {p2, v5, v6, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeDouble(ID)V

    .line 442
    .line 443
    goto/16 :goto_3

    .line 444
    .line 445
    .line 446
    :pswitch_12
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 447
    move-result-wide v6

    .line 448
    .line 449
    .line 450
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 451
    move-result-object v4

    .line 452
    .line 453
    .line 454
    invoke-direct {p0, p2, v5, v4, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q0(Landroidx/datastore/preferences/protobuf/Writer;ILjava/lang/Object;I)V

    .line 455
    .line 456
    goto/16 :goto_3

    .line 457
    .line 458
    .line 459
    :pswitch_13
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 460
    move-result v5

    .line 461
    .line 462
    .line 463
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 464
    move-result-wide v6

    .line 465
    .line 466
    .line 467
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 468
    move-result-object v4

    .line 469
    .line 470
    check-cast v4, Ljava/util/List;

    .line 471
    .line 472
    .line 473
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 474
    move-result-object v6

    .line 475
    .line 476
    .line 477
    invoke-static {v5, v4, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->U(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 478
    .line 479
    goto/16 :goto_3

    .line 480
    .line 481
    .line 482
    :pswitch_14
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 483
    move-result v5

    .line 484
    .line 485
    .line 486
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 487
    move-result-wide v6

    .line 488
    .line 489
    .line 490
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 491
    move-result-object v4

    .line 492
    .line 493
    check-cast v4, Ljava/util/List;

    .line 494
    .line 495
    .line 496
    invoke-static {v5, v4, p2, v8}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->b0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 497
    .line 498
    goto/16 :goto_3

    .line 499
    .line 500
    .line 501
    :pswitch_15
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 502
    move-result v5

    .line 503
    .line 504
    .line 505
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 506
    move-result-wide v6

    .line 507
    .line 508
    .line 509
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 510
    move-result-object v4

    .line 511
    .line 512
    check-cast v4, Ljava/util/List;

    .line 513
    .line 514
    .line 515
    invoke-static {v5, v4, p2, v8}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 516
    .line 517
    goto/16 :goto_3

    .line 518
    .line 519
    .line 520
    :pswitch_16
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 521
    move-result v5

    .line 522
    .line 523
    .line 524
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 525
    move-result-wide v6

    .line 526
    .line 527
    .line 528
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 529
    move-result-object v4

    .line 530
    .line 531
    check-cast v4, Ljava/util/List;

    .line 532
    .line 533
    .line 534
    invoke-static {v5, v4, p2, v8}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->Z(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 535
    .line 536
    goto/16 :goto_3

    .line 537
    .line 538
    .line 539
    :pswitch_17
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 540
    move-result v5

    .line 541
    .line 542
    .line 543
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 544
    move-result-wide v6

    .line 545
    .line 546
    .line 547
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 548
    move-result-object v4

    .line 549
    .line 550
    check-cast v4, Ljava/util/List;

    .line 551
    .line 552
    .line 553
    invoke-static {v5, v4, p2, v8}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->Y(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 554
    .line 555
    goto/16 :goto_3

    .line 556
    .line 557
    .line 558
    :pswitch_18
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 559
    move-result v5

    .line 560
    .line 561
    .line 562
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 563
    move-result-wide v6

    .line 564
    .line 565
    .line 566
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 567
    move-result-object v4

    .line 568
    .line 569
    check-cast v4, Ljava/util/List;

    .line 570
    .line 571
    .line 572
    invoke-static {v5, v4, p2, v8}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->Q(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 573
    .line 574
    goto/16 :goto_3

    .line 575
    .line 576
    .line 577
    :pswitch_19
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 578
    move-result v5

    .line 579
    .line 580
    .line 581
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 582
    move-result-wide v6

    .line 583
    .line 584
    .line 585
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 586
    move-result-object v4

    .line 587
    .line 588
    check-cast v4, Ljava/util/List;

    .line 589
    .line 590
    .line 591
    invoke-static {v5, v4, p2, v8}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->d0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 592
    .line 593
    goto/16 :goto_3

    .line 594
    .line 595
    .line 596
    :pswitch_1a
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 597
    move-result v5

    .line 598
    .line 599
    .line 600
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 601
    move-result-wide v6

    .line 602
    .line 603
    .line 604
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 605
    move-result-object v4

    .line 606
    .line 607
    check-cast v4, Ljava/util/List;

    .line 608
    .line 609
    .line 610
    invoke-static {v5, v4, p2, v8}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->N(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 611
    .line 612
    goto/16 :goto_3

    .line 613
    .line 614
    .line 615
    :pswitch_1b
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 616
    move-result v5

    .line 617
    .line 618
    .line 619
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 620
    move-result-wide v6

    .line 621
    .line 622
    .line 623
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 624
    move-result-object v4

    .line 625
    .line 626
    check-cast v4, Ljava/util/List;

    .line 627
    .line 628
    .line 629
    invoke-static {v5, v4, p2, v8}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->R(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 630
    .line 631
    goto/16 :goto_3

    .line 632
    .line 633
    .line 634
    :pswitch_1c
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 635
    move-result v5

    .line 636
    .line 637
    .line 638
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 639
    move-result-wide v6

    .line 640
    .line 641
    .line 642
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 643
    move-result-object v4

    .line 644
    .line 645
    check-cast v4, Ljava/util/List;

    .line 646
    .line 647
    .line 648
    invoke-static {v5, v4, p2, v8}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->S(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 649
    .line 650
    goto/16 :goto_3

    .line 651
    .line 652
    .line 653
    :pswitch_1d
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 654
    move-result v5

    .line 655
    .line 656
    .line 657
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 658
    move-result-wide v6

    .line 659
    .line 660
    .line 661
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 662
    move-result-object v4

    .line 663
    .line 664
    check-cast v4, Ljava/util/List;

    .line 665
    .line 666
    .line 667
    invoke-static {v5, v4, p2, v8}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->V(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 668
    .line 669
    goto/16 :goto_3

    .line 670
    .line 671
    .line 672
    :pswitch_1e
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 673
    move-result v5

    .line 674
    .line 675
    .line 676
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 677
    move-result-wide v6

    .line 678
    .line 679
    .line 680
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 681
    move-result-object v4

    .line 682
    .line 683
    check-cast v4, Ljava/util/List;

    .line 684
    .line 685
    .line 686
    invoke-static {v5, v4, p2, v8}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->e0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 687
    .line 688
    goto/16 :goto_3

    .line 689
    .line 690
    .line 691
    :pswitch_1f
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 692
    move-result v5

    .line 693
    .line 694
    .line 695
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 696
    move-result-wide v6

    .line 697
    .line 698
    .line 699
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 700
    move-result-object v4

    .line 701
    .line 702
    check-cast v4, Ljava/util/List;

    .line 703
    .line 704
    .line 705
    invoke-static {v5, v4, p2, v8}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->W(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 706
    .line 707
    goto/16 :goto_3

    .line 708
    .line 709
    .line 710
    :pswitch_20
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 711
    move-result v5

    .line 712
    .line 713
    .line 714
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 715
    move-result-wide v6

    .line 716
    .line 717
    .line 718
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 719
    move-result-object v4

    .line 720
    .line 721
    check-cast v4, Ljava/util/List;

    .line 722
    .line 723
    .line 724
    invoke-static {v5, v4, p2, v8}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->T(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 725
    .line 726
    goto/16 :goto_3

    .line 727
    .line 728
    .line 729
    :pswitch_21
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 730
    move-result v5

    .line 731
    .line 732
    .line 733
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 734
    move-result-wide v6

    .line 735
    .line 736
    .line 737
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 738
    move-result-object v4

    .line 739
    .line 740
    check-cast v4, Ljava/util/List;

    .line 741
    .line 742
    .line 743
    invoke-static {v5, v4, p2, v8}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->P(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 744
    .line 745
    goto/16 :goto_3

    .line 746
    .line 747
    .line 748
    :pswitch_22
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 749
    move-result v5

    .line 750
    .line 751
    .line 752
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 753
    move-result-wide v8

    .line 754
    .line 755
    .line 756
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 757
    move-result-object v4

    .line 758
    .line 759
    check-cast v4, Ljava/util/List;

    .line 760
    .line 761
    .line 762
    invoke-static {v5, v4, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->b0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 763
    .line 764
    goto/16 :goto_3

    .line 765
    .line 766
    .line 767
    :pswitch_23
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 768
    move-result v5

    .line 769
    .line 770
    .line 771
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 772
    move-result-wide v8

    .line 773
    .line 774
    .line 775
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 776
    move-result-object v4

    .line 777
    .line 778
    check-cast v4, Ljava/util/List;

    .line 779
    .line 780
    .line 781
    invoke-static {v5, v4, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 782
    .line 783
    goto/16 :goto_3

    .line 784
    .line 785
    .line 786
    :pswitch_24
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 787
    move-result v5

    .line 788
    .line 789
    .line 790
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 791
    move-result-wide v8

    .line 792
    .line 793
    .line 794
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 795
    move-result-object v4

    .line 796
    .line 797
    check-cast v4, Ljava/util/List;

    .line 798
    .line 799
    .line 800
    invoke-static {v5, v4, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->Z(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 801
    .line 802
    goto/16 :goto_3

    .line 803
    .line 804
    .line 805
    :pswitch_25
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 806
    move-result v5

    .line 807
    .line 808
    .line 809
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 810
    move-result-wide v8

    .line 811
    .line 812
    .line 813
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 814
    move-result-object v4

    .line 815
    .line 816
    check-cast v4, Ljava/util/List;

    .line 817
    .line 818
    .line 819
    invoke-static {v5, v4, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->Y(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 820
    .line 821
    goto/16 :goto_3

    .line 822
    .line 823
    .line 824
    :pswitch_26
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 825
    move-result v5

    .line 826
    .line 827
    .line 828
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 829
    move-result-wide v8

    .line 830
    .line 831
    .line 832
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 833
    move-result-object v4

    .line 834
    .line 835
    check-cast v4, Ljava/util/List;

    .line 836
    .line 837
    .line 838
    invoke-static {v5, v4, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->Q(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 839
    .line 840
    goto/16 :goto_3

    .line 841
    .line 842
    .line 843
    :pswitch_27
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 844
    move-result v5

    .line 845
    .line 846
    .line 847
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 848
    move-result-wide v8

    .line 849
    .line 850
    .line 851
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 852
    move-result-object v4

    .line 853
    .line 854
    check-cast v4, Ljava/util/List;

    .line 855
    .line 856
    .line 857
    invoke-static {v5, v4, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->d0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 858
    .line 859
    goto/16 :goto_3

    .line 860
    .line 861
    .line 862
    :pswitch_28
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 863
    move-result v5

    .line 864
    .line 865
    .line 866
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 867
    move-result-wide v6

    .line 868
    .line 869
    .line 870
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 871
    move-result-object v4

    .line 872
    .line 873
    check-cast v4, Ljava/util/List;

    .line 874
    .line 875
    .line 876
    invoke-static {v5, v4, p2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->O(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 877
    .line 878
    goto/16 :goto_3

    .line 879
    .line 880
    .line 881
    :pswitch_29
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 882
    move-result v5

    .line 883
    .line 884
    .line 885
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 886
    move-result-wide v6

    .line 887
    .line 888
    .line 889
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 890
    move-result-object v4

    .line 891
    .line 892
    check-cast v4, Ljava/util/List;

    .line 893
    .line 894
    .line 895
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 896
    move-result-object v6

    .line 897
    .line 898
    .line 899
    invoke-static {v5, v4, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->X(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 900
    .line 901
    goto/16 :goto_3

    .line 902
    .line 903
    .line 904
    :pswitch_2a
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 905
    move-result v5

    .line 906
    .line 907
    .line 908
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 909
    move-result-wide v6

    .line 910
    .line 911
    .line 912
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 913
    move-result-object v4

    .line 914
    .line 915
    check-cast v4, Ljava/util/List;

    .line 916
    .line 917
    .line 918
    invoke-static {v5, v4, p2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->c0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 919
    .line 920
    goto/16 :goto_3

    .line 921
    .line 922
    .line 923
    :pswitch_2b
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 924
    move-result v5

    .line 925
    .line 926
    .line 927
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 928
    move-result-wide v8

    .line 929
    .line 930
    .line 931
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 932
    move-result-object v4

    .line 933
    .line 934
    check-cast v4, Ljava/util/List;

    .line 935
    .line 936
    .line 937
    invoke-static {v5, v4, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->N(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 938
    .line 939
    goto/16 :goto_3

    .line 940
    .line 941
    .line 942
    :pswitch_2c
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 943
    move-result v5

    .line 944
    .line 945
    .line 946
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 947
    move-result-wide v8

    .line 948
    .line 949
    .line 950
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 951
    move-result-object v4

    .line 952
    .line 953
    check-cast v4, Ljava/util/List;

    .line 954
    .line 955
    .line 956
    invoke-static {v5, v4, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->R(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 957
    .line 958
    goto/16 :goto_3

    .line 959
    .line 960
    .line 961
    :pswitch_2d
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 962
    move-result v5

    .line 963
    .line 964
    .line 965
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 966
    move-result-wide v8

    .line 967
    .line 968
    .line 969
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 970
    move-result-object v4

    .line 971
    .line 972
    check-cast v4, Ljava/util/List;

    .line 973
    .line 974
    .line 975
    invoke-static {v5, v4, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->S(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 976
    .line 977
    goto/16 :goto_3

    .line 978
    .line 979
    .line 980
    :pswitch_2e
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 981
    move-result v5

    .line 982
    .line 983
    .line 984
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 985
    move-result-wide v8

    .line 986
    .line 987
    .line 988
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 989
    move-result-object v4

    .line 990
    .line 991
    check-cast v4, Ljava/util/List;

    .line 992
    .line 993
    .line 994
    invoke-static {v5, v4, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->V(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 995
    .line 996
    goto/16 :goto_3

    .line 997
    .line 998
    .line 999
    :pswitch_2f
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 1000
    move-result v5

    .line 1001
    .line 1002
    .line 1003
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1004
    move-result-wide v8

    .line 1005
    .line 1006
    .line 1007
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1008
    move-result-object v4

    .line 1009
    .line 1010
    check-cast v4, Ljava/util/List;

    .line 1011
    .line 1012
    .line 1013
    invoke-static {v5, v4, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->e0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 1014
    .line 1015
    goto/16 :goto_3

    .line 1016
    .line 1017
    .line 1018
    :pswitch_30
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 1019
    move-result v5

    .line 1020
    .line 1021
    .line 1022
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1023
    move-result-wide v8

    .line 1024
    .line 1025
    .line 1026
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1027
    move-result-object v4

    .line 1028
    .line 1029
    check-cast v4, Ljava/util/List;

    .line 1030
    .line 1031
    .line 1032
    invoke-static {v5, v4, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->W(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 1033
    .line 1034
    goto/16 :goto_3

    .line 1035
    .line 1036
    .line 1037
    :pswitch_31
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 1038
    move-result v5

    .line 1039
    .line 1040
    .line 1041
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1042
    move-result-wide v8

    .line 1043
    .line 1044
    .line 1045
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1046
    move-result-object v4

    .line 1047
    .line 1048
    check-cast v4, Ljava/util/List;

    .line 1049
    .line 1050
    .line 1051
    invoke-static {v5, v4, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->T(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 1052
    .line 1053
    goto/16 :goto_3

    .line 1054
    .line 1055
    .line 1056
    :pswitch_32
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 1057
    move-result v5

    .line 1058
    .line 1059
    .line 1060
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1061
    move-result-wide v8

    .line 1062
    .line 1063
    .line 1064
    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1065
    move-result-object v4

    .line 1066
    .line 1067
    check-cast v4, Ljava/util/List;

    .line 1068
    .line 1069
    .line 1070
    invoke-static {v5, v4, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->P(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 1071
    .line 1072
    goto/16 :goto_3

    .line 1073
    .line 1074
    .line 1075
    :pswitch_33
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1076
    move-result v6

    .line 1077
    .line 1078
    if-eqz v6, :cond_3

    .line 1079
    .line 1080
    .line 1081
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1082
    move-result-wide v6

    .line 1083
    .line 1084
    .line 1085
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1086
    move-result-object v4

    .line 1087
    .line 1088
    .line 1089
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 1090
    move-result-object v6

    .line 1091
    .line 1092
    .line 1093
    invoke-interface {p2, v5, v4, v6}, Landroidx/datastore/preferences/protobuf/Writer;->e(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 1094
    .line 1095
    goto/16 :goto_3

    .line 1096
    .line 1097
    .line 1098
    :pswitch_34
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1099
    move-result v6

    .line 1100
    .line 1101
    if-eqz v6, :cond_3

    .line 1102
    .line 1103
    .line 1104
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1105
    move-result-wide v6

    .line 1106
    .line 1107
    .line 1108
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->E(Ljava/lang/Object;J)J

    .line 1109
    move-result-wide v6

    .line 1110
    .line 1111
    .line 1112
    invoke-interface {p2, v5, v6, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeSInt64(IJ)V

    .line 1113
    .line 1114
    goto/16 :goto_3

    .line 1115
    .line 1116
    .line 1117
    :pswitch_35
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1118
    move-result v6

    .line 1119
    .line 1120
    if-eqz v6, :cond_3

    .line 1121
    .line 1122
    .line 1123
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1124
    move-result-wide v6

    .line 1125
    .line 1126
    .line 1127
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->t(Ljava/lang/Object;J)I

    .line 1128
    move-result v4

    .line 1129
    .line 1130
    .line 1131
    invoke-interface {p2, v5, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeSInt32(II)V

    .line 1132
    .line 1133
    goto/16 :goto_3

    .line 1134
    .line 1135
    .line 1136
    :pswitch_36
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1137
    move-result v6

    .line 1138
    .line 1139
    if-eqz v6, :cond_3

    .line 1140
    .line 1141
    .line 1142
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1143
    move-result-wide v6

    .line 1144
    .line 1145
    .line 1146
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->E(Ljava/lang/Object;J)J

    .line 1147
    move-result-wide v6

    .line 1148
    .line 1149
    .line 1150
    invoke-interface {p2, v5, v6, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeSFixed64(IJ)V

    .line 1151
    .line 1152
    goto/16 :goto_3

    .line 1153
    .line 1154
    .line 1155
    :pswitch_37
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1156
    move-result v6

    .line 1157
    .line 1158
    if-eqz v6, :cond_3

    .line 1159
    .line 1160
    .line 1161
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1162
    move-result-wide v6

    .line 1163
    .line 1164
    .line 1165
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->t(Ljava/lang/Object;J)I

    .line 1166
    move-result v4

    .line 1167
    .line 1168
    .line 1169
    invoke-interface {p2, v5, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeSFixed32(II)V

    .line 1170
    .line 1171
    goto/16 :goto_3

    .line 1172
    .line 1173
    .line 1174
    :pswitch_38
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1175
    move-result v6

    .line 1176
    .line 1177
    if-eqz v6, :cond_3

    .line 1178
    .line 1179
    .line 1180
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1181
    move-result-wide v6

    .line 1182
    .line 1183
    .line 1184
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->t(Ljava/lang/Object;J)I

    .line 1185
    move-result v4

    .line 1186
    .line 1187
    .line 1188
    invoke-interface {p2, v5, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeEnum(II)V

    .line 1189
    .line 1190
    goto/16 :goto_3

    .line 1191
    .line 1192
    .line 1193
    :pswitch_39
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1194
    move-result v6

    .line 1195
    .line 1196
    if-eqz v6, :cond_3

    .line 1197
    .line 1198
    .line 1199
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1200
    move-result-wide v6

    .line 1201
    .line 1202
    .line 1203
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->t(Ljava/lang/Object;J)I

    .line 1204
    move-result v4

    .line 1205
    .line 1206
    .line 1207
    invoke-interface {p2, v5, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeUInt32(II)V

    .line 1208
    .line 1209
    goto/16 :goto_3

    .line 1210
    .line 1211
    .line 1212
    :pswitch_3a
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1213
    move-result v6

    .line 1214
    .line 1215
    if-eqz v6, :cond_3

    .line 1216
    .line 1217
    .line 1218
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1219
    move-result-wide v6

    .line 1220
    .line 1221
    .line 1222
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1223
    move-result-object v4

    .line 1224
    .line 1225
    check-cast v4, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 1226
    .line 1227
    .line 1228
    invoke-interface {p2, v5, v4}, Landroidx/datastore/preferences/protobuf/Writer;->a(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    .line 1229
    .line 1230
    goto/16 :goto_3

    .line 1231
    .line 1232
    .line 1233
    :pswitch_3b
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1234
    move-result v6

    .line 1235
    .line 1236
    if-eqz v6, :cond_3

    .line 1237
    .line 1238
    .line 1239
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1240
    move-result-wide v6

    .line 1241
    .line 1242
    .line 1243
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1244
    move-result-object v4

    .line 1245
    .line 1246
    .line 1247
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 1248
    move-result-object v6

    .line 1249
    .line 1250
    .line 1251
    invoke-interface {p2, v5, v4, v6}, Landroidx/datastore/preferences/protobuf/Writer;->b(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 1252
    .line 1253
    goto/16 :goto_3

    .line 1254
    .line 1255
    .line 1256
    :pswitch_3c
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1257
    move-result v6

    .line 1258
    .line 1259
    if-eqz v6, :cond_3

    .line 1260
    .line 1261
    .line 1262
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1263
    move-result-wide v6

    .line 1264
    .line 1265
    .line 1266
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1267
    move-result-object v4

    .line 1268
    .line 1269
    .line 1270
    invoke-direct {p0, v5, v4, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r0(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 1271
    .line 1272
    goto/16 :goto_3

    .line 1273
    .line 1274
    .line 1275
    :pswitch_3d
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1276
    move-result v6

    .line 1277
    .line 1278
    if-eqz v6, :cond_3

    .line 1279
    .line 1280
    .line 1281
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1282
    move-result-wide v6

    .line 1283
    .line 1284
    .line 1285
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->e(Ljava/lang/Object;J)Z

    .line 1286
    move-result v4

    .line 1287
    .line 1288
    .line 1289
    invoke-interface {p2, v5, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeBool(IZ)V

    .line 1290
    .line 1291
    goto/16 :goto_3

    .line 1292
    .line 1293
    .line 1294
    :pswitch_3e
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1295
    move-result v6

    .line 1296
    .line 1297
    if-eqz v6, :cond_3

    .line 1298
    .line 1299
    .line 1300
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1301
    move-result-wide v6

    .line 1302
    .line 1303
    .line 1304
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->t(Ljava/lang/Object;J)I

    .line 1305
    move-result v4

    .line 1306
    .line 1307
    .line 1308
    invoke-interface {p2, v5, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed32(II)V

    .line 1309
    goto :goto_3

    .line 1310
    .line 1311
    .line 1312
    :pswitch_3f
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1313
    move-result v6

    .line 1314
    .line 1315
    if-eqz v6, :cond_3

    .line 1316
    .line 1317
    .line 1318
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1319
    move-result-wide v6

    .line 1320
    .line 1321
    .line 1322
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->E(Ljava/lang/Object;J)J

    .line 1323
    move-result-wide v6

    .line 1324
    .line 1325
    .line 1326
    invoke-interface {p2, v5, v6, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed64(IJ)V

    .line 1327
    goto :goto_3

    .line 1328
    .line 1329
    .line 1330
    :pswitch_40
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1331
    move-result v6

    .line 1332
    .line 1333
    if-eqz v6, :cond_3

    .line 1334
    .line 1335
    .line 1336
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1337
    move-result-wide v6

    .line 1338
    .line 1339
    .line 1340
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->t(Ljava/lang/Object;J)I

    .line 1341
    move-result v4

    .line 1342
    .line 1343
    .line 1344
    invoke-interface {p2, v5, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeInt32(II)V

    .line 1345
    goto :goto_3

    .line 1346
    .line 1347
    .line 1348
    :pswitch_41
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1349
    move-result v6

    .line 1350
    .line 1351
    if-eqz v6, :cond_3

    .line 1352
    .line 1353
    .line 1354
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1355
    move-result-wide v6

    .line 1356
    .line 1357
    .line 1358
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->E(Ljava/lang/Object;J)J

    .line 1359
    move-result-wide v6

    .line 1360
    .line 1361
    .line 1362
    invoke-interface {p2, v5, v6, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeUInt64(IJ)V

    .line 1363
    goto :goto_3

    .line 1364
    .line 1365
    .line 1366
    :pswitch_42
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1367
    move-result v6

    .line 1368
    .line 1369
    if-eqz v6, :cond_3

    .line 1370
    .line 1371
    .line 1372
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1373
    move-result-wide v6

    .line 1374
    .line 1375
    .line 1376
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->E(Ljava/lang/Object;J)J

    .line 1377
    move-result-wide v6

    .line 1378
    .line 1379
    .line 1380
    invoke-interface {p2, v5, v6, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeInt64(IJ)V

    .line 1381
    goto :goto_3

    .line 1382
    .line 1383
    .line 1384
    :pswitch_43
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1385
    move-result v6

    .line 1386
    .line 1387
    if-eqz v6, :cond_3

    .line 1388
    .line 1389
    .line 1390
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1391
    move-result-wide v6

    .line 1392
    .line 1393
    .line 1394
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->l(Ljava/lang/Object;J)F

    .line 1395
    move-result v4

    .line 1396
    .line 1397
    .line 1398
    invoke-interface {p2, v5, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeFloat(IF)V

    .line 1399
    goto :goto_3

    .line 1400
    .line 1401
    .line 1402
    :pswitch_44
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1403
    move-result v6

    .line 1404
    .line 1405
    if-eqz v6, :cond_3

    .line 1406
    .line 1407
    .line 1408
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 1409
    move-result-wide v6

    .line 1410
    .line 1411
    .line 1412
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->h(Ljava/lang/Object;J)D

    .line 1413
    move-result-wide v6

    .line 1414
    .line 1415
    .line 1416
    invoke-interface {p2, v5, v6, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeDouble(ID)V

    .line 1417
    .line 1418
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, -0x3

    .line 1419
    .line 1420
    goto/16 :goto_1

    .line 1421
    .line 1422
    :cond_4
    :goto_4
    if-eqz v2, :cond_6

    .line 1423
    .line 1424
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    .line 1425
    .line 1426
    .line 1427
    invoke-virtual {p1, p2, v2}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->j(Landroidx/datastore/preferences/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 1428
    .line 1429
    .line 1430
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1431
    move-result p1

    .line 1432
    .line 1433
    if-eqz p1, :cond_5

    .line 1434
    .line 1435
    .line 1436
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1437
    move-result-object p1

    .line 1438
    .line 1439
    check-cast p1, Ljava/util/Map$Entry;

    .line 1440
    move-object v2, p1

    .line 1441
    goto :goto_4

    .line 1442
    :cond_5
    move-object v2, v1

    .line 1443
    goto :goto_4

    .line 1444
    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private q(Ljava/lang/Object;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    sget-object v2, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 7
    const/4 v4, -0x1

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v7, 0x0

    .line 11
    .line 12
    :goto_0
    iget-object v8, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    .line 13
    array-length v8, v8

    .line 14
    .line 15
    if-ge v5, v8, :cond_15

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m0(I)I

    .line 19
    move-result v8

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 23
    move-result v9

    .line 24
    .line 25
    .line 26
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->l0(I)I

    .line 27
    move-result v10

    .line 28
    .line 29
    const/16 v11, 0x11

    .line 30
    .line 31
    .line 32
    const v12, 0xfffff

    .line 33
    const/4 v13, 0x1

    .line 34
    .line 35
    if-gt v10, v11, :cond_1

    .line 36
    .line 37
    iget-object v11, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    .line 38
    .line 39
    add-int/lit8 v14, v5, 0x2

    .line 40
    .line 41
    aget v11, v11, v14

    .line 42
    and-int/2addr v12, v11

    .line 43
    .line 44
    ushr-int/lit8 v14, v11, 0x14

    .line 45
    .line 46
    shl-int v14, v13, v14

    .line 47
    move v15, v14

    .line 48
    .line 49
    if-eq v12, v4, :cond_0

    .line 50
    int-to-long v13, v12

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 54
    move-result v7

    .line 55
    move v4, v12

    .line 56
    :cond_0
    move v14, v15

    .line 57
    goto :goto_2

    .line 58
    .line 59
    :cond_1
    iget-boolean v11, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 60
    .line 61
    if-eqz v11, :cond_2

    .line 62
    .line 63
    sget-object v11, Landroidx/datastore/preferences/protobuf/FieldType;->DOUBLE_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v11}, Landroidx/datastore/preferences/protobuf/FieldType;->a()I

    .line 67
    move-result v11

    .line 68
    .line 69
    if-lt v10, v11, :cond_2

    .line 70
    .line 71
    sget-object v11, Landroidx/datastore/preferences/protobuf/FieldType;->SINT64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v11}, Landroidx/datastore/preferences/protobuf/FieldType;->a()I

    .line 75
    move-result v11

    .line 76
    .line 77
    if-gt v10, v11, :cond_2

    .line 78
    .line 79
    iget-object v11, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    .line 80
    .line 81
    add-int/lit8 v13, v5, 0x2

    .line 82
    .line 83
    aget v11, v11, v13

    .line 84
    and-int/2addr v11, v12

    .line 85
    :goto_1
    const/4 v14, 0x0

    .line 86
    goto :goto_2

    .line 87
    :cond_2
    const/4 v11, 0x0

    .line 88
    goto :goto_1

    .line 89
    .line 90
    .line 91
    :goto_2
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 92
    move-result-wide v12

    .line 93
    move v15, v4

    .line 94
    const/4 v8, 0x0

    .line 95
    .line 96
    const-wide/16 v3, 0x0

    .line 97
    .line 98
    .line 99
    packed-switch v10, :pswitch_data_0

    .line 100
    goto :goto_4

    .line 101
    .line 102
    .line 103
    :pswitch_0
    invoke-direct {v0, v1, v9, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 104
    move-result v3

    .line 105
    .line 106
    if-eqz v3, :cond_3

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 110
    move-result-object v3

    .line 111
    .line 112
    check-cast v3, Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 113
    .line 114
    .line 115
    invoke-direct {v0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 116
    move-result-object v4

    .line 117
    .line 118
    .line 119
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->A(ILandroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 120
    move-result v3

    .line 121
    :goto_3
    add-int/2addr v6, v3

    .line 122
    :cond_3
    :goto_4
    const/4 v10, 0x0

    .line 123
    .line 124
    goto/16 :goto_9

    .line 125
    .line 126
    .line 127
    :pswitch_1
    invoke-direct {v0, v1, v9, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 128
    move-result v3

    .line 129
    .line 130
    if-eqz v3, :cond_3

    .line 131
    .line 132
    .line 133
    invoke-static {v1, v12, v13}, Landroidx/datastore/preferences/protobuf/MessageSchema;->T(Ljava/lang/Object;J)J

    .line 134
    move-result-wide v3

    .line 135
    .line 136
    .line 137
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->Z(IJ)I

    .line 138
    move-result v3

    .line 139
    goto :goto_3

    .line 140
    .line 141
    .line 142
    :pswitch_2
    invoke-direct {v0, v1, v9, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 143
    move-result v3

    .line 144
    .line 145
    if-eqz v3, :cond_3

    .line 146
    .line 147
    .line 148
    invoke-static {v1, v12, v13}, Landroidx/datastore/preferences/protobuf/MessageSchema;->S(Ljava/lang/Object;J)I

    .line 149
    move-result v3

    .line 150
    .line 151
    .line 152
    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->X(II)I

    .line 153
    move-result v3

    .line 154
    goto :goto_3

    .line 155
    .line 156
    .line 157
    :pswitch_3
    invoke-direct {v0, v1, v9, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 158
    move-result v8

    .line 159
    .line 160
    if-eqz v8, :cond_3

    .line 161
    .line 162
    .line 163
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V(IJ)I

    .line 164
    move-result v3

    .line 165
    goto :goto_3

    .line 166
    .line 167
    .line 168
    :pswitch_4
    invoke-direct {v0, v1, v9, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 169
    move-result v3

    .line 170
    .line 171
    if-eqz v3, :cond_3

    .line 172
    const/4 v3, 0x0

    .line 173
    .line 174
    .line 175
    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T(II)I

    .line 176
    move-result v4

    .line 177
    :goto_5
    add-int/2addr v6, v4

    .line 178
    goto :goto_4

    .line 179
    .line 180
    .line 181
    :pswitch_5
    invoke-direct {v0, v1, v9, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 182
    move-result v3

    .line 183
    .line 184
    if-eqz v3, :cond_3

    .line 185
    .line 186
    .line 187
    invoke-static {v1, v12, v13}, Landroidx/datastore/preferences/protobuf/MessageSchema;->S(Ljava/lang/Object;J)I

    .line 188
    move-result v3

    .line 189
    .line 190
    .line 191
    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->s(II)I

    .line 192
    move-result v3

    .line 193
    goto :goto_3

    .line 194
    .line 195
    .line 196
    :pswitch_6
    invoke-direct {v0, v1, v9, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 197
    move-result v3

    .line 198
    .line 199
    if-eqz v3, :cond_3

    .line 200
    .line 201
    .line 202
    invoke-static {v1, v12, v13}, Landroidx/datastore/preferences/protobuf/MessageSchema;->S(Ljava/lang/Object;J)I

    .line 203
    move-result v3

    .line 204
    .line 205
    .line 206
    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e0(II)I

    .line 207
    move-result v3

    .line 208
    goto :goto_3

    .line 209
    .line 210
    .line 211
    :pswitch_7
    invoke-direct {v0, v1, v9, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 212
    move-result v3

    .line 213
    .line 214
    if-eqz v3, :cond_3

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 218
    move-result-object v3

    .line 219
    .line 220
    check-cast v3, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 221
    .line 222
    .line 223
    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->o(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    .line 224
    move-result v3

    .line 225
    goto :goto_3

    .line 226
    .line 227
    .line 228
    :pswitch_8
    invoke-direct {v0, v1, v9, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 229
    move-result v3

    .line 230
    .line 231
    if-eqz v3, :cond_3

    .line 232
    .line 233
    .line 234
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 235
    move-result-object v3

    .line 236
    .line 237
    .line 238
    invoke-direct {v0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 239
    move-result-object v4

    .line 240
    .line 241
    .line 242
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->o(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 243
    move-result v3

    .line 244
    goto :goto_3

    .line 245
    .line 246
    .line 247
    :pswitch_9
    invoke-direct {v0, v1, v9, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 248
    move-result v3

    .line 249
    .line 250
    if-eqz v3, :cond_3

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 254
    move-result-object v3

    .line 255
    .line 256
    instance-of v4, v3, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 257
    .line 258
    if-eqz v4, :cond_4

    .line 259
    .line 260
    check-cast v3, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 261
    .line 262
    .line 263
    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->o(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    .line 264
    move-result v3

    .line 265
    .line 266
    goto/16 :goto_3

    .line 267
    .line 268
    :cond_4
    check-cast v3, Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->b0(ILjava/lang/String;)I

    .line 272
    move-result v3

    .line 273
    .line 274
    goto/16 :goto_3

    .line 275
    .line 276
    .line 277
    :pswitch_a
    invoke-direct {v0, v1, v9, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 278
    move-result v3

    .line 279
    .line 280
    if-eqz v3, :cond_3

    .line 281
    const/4 v3, 0x1

    .line 282
    .line 283
    .line 284
    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->l(IZ)I

    .line 285
    move-result v3

    .line 286
    .line 287
    goto/16 :goto_3

    .line 288
    .line 289
    .line 290
    :pswitch_b
    invoke-direct {v0, v1, v9, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 291
    move-result v3

    .line 292
    .line 293
    if-eqz v3, :cond_3

    .line 294
    const/4 v3, 0x0

    .line 295
    .line 296
    .line 297
    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->u(II)I

    .line 298
    move-result v4

    .line 299
    goto :goto_5

    .line 300
    .line 301
    .line 302
    :pswitch_c
    invoke-direct {v0, v1, v9, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 303
    move-result v8

    .line 304
    .line 305
    if-eqz v8, :cond_3

    .line 306
    .line 307
    .line 308
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->w(IJ)I

    .line 309
    move-result v3

    .line 310
    .line 311
    goto/16 :goto_3

    .line 312
    .line 313
    .line 314
    :pswitch_d
    invoke-direct {v0, v1, v9, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 315
    move-result v3

    .line 316
    .line 317
    if-eqz v3, :cond_3

    .line 318
    .line 319
    .line 320
    invoke-static {v1, v12, v13}, Landroidx/datastore/preferences/protobuf/MessageSchema;->S(Ljava/lang/Object;J)I

    .line 321
    move-result v3

    .line 322
    .line 323
    .line 324
    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->D(II)I

    .line 325
    move-result v3

    .line 326
    .line 327
    goto/16 :goto_3

    .line 328
    .line 329
    .line 330
    :pswitch_e
    invoke-direct {v0, v1, v9, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 331
    move-result v3

    .line 332
    .line 333
    if-eqz v3, :cond_3

    .line 334
    .line 335
    .line 336
    invoke-static {v1, v12, v13}, Landroidx/datastore/preferences/protobuf/MessageSchema;->T(Ljava/lang/Object;J)J

    .line 337
    move-result-wide v3

    .line 338
    .line 339
    .line 340
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->g0(IJ)I

    .line 341
    move-result v3

    .line 342
    .line 343
    goto/16 :goto_3

    .line 344
    .line 345
    .line 346
    :pswitch_f
    invoke-direct {v0, v1, v9, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 347
    move-result v3

    .line 348
    .line 349
    if-eqz v3, :cond_3

    .line 350
    .line 351
    .line 352
    invoke-static {v1, v12, v13}, Landroidx/datastore/preferences/protobuf/MessageSchema;->T(Ljava/lang/Object;J)J

    .line 353
    move-result-wide v3

    .line 354
    .line 355
    .line 356
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->F(IJ)I

    .line 357
    move-result v3

    .line 358
    .line 359
    goto/16 :goto_3

    .line 360
    .line 361
    .line 362
    :pswitch_10
    invoke-direct {v0, v1, v9, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 363
    move-result v3

    .line 364
    .line 365
    if-eqz v3, :cond_3

    .line 366
    .line 367
    .line 368
    invoke-static {v9, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->y(IF)I

    .line 369
    move-result v3

    .line 370
    .line 371
    goto/16 :goto_3

    .line 372
    .line 373
    .line 374
    :pswitch_11
    invoke-direct {v0, v1, v9, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 375
    move-result v3

    .line 376
    .line 377
    if-eqz v3, :cond_3

    .line 378
    .line 379
    const-wide/16 v3, 0x0

    .line 380
    .line 381
    .line 382
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->q(ID)I

    .line 383
    move-result v3

    .line 384
    .line 385
    goto/16 :goto_3

    .line 386
    .line 387
    :pswitch_12
    iget-object v3, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 391
    move-result-object v4

    .line 392
    .line 393
    .line 394
    invoke-direct {v0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Ljava/lang/Object;

    .line 395
    move-result-object v8

    .line 396
    .line 397
    .line 398
    invoke-interface {v3, v9, v4, v8}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 399
    move-result v3

    .line 400
    .line 401
    goto/16 :goto_3

    .line 402
    .line 403
    .line 404
    :pswitch_13
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 405
    move-result-object v3

    .line 406
    .line 407
    check-cast v3, Ljava/util/List;

    .line 408
    .line 409
    .line 410
    invoke-direct {v0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 411
    move-result-object v4

    .line 412
    .line 413
    .line 414
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->j(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 415
    move-result v3

    .line 416
    .line 417
    goto/16 :goto_3

    .line 418
    .line 419
    .line 420
    :pswitch_14
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 421
    move-result-object v3

    .line 422
    .line 423
    check-cast v3, Ljava/util/List;

    .line 424
    .line 425
    .line 426
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->t(Ljava/util/List;)I

    .line 427
    move-result v3

    .line 428
    .line 429
    if-lez v3, :cond_3

    .line 430
    .line 431
    iget-boolean v4, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 432
    .line 433
    if-eqz v4, :cond_5

    .line 434
    int-to-long v11, v11

    .line 435
    .line 436
    .line 437
    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 438
    .line 439
    .line 440
    :cond_5
    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 441
    move-result v4

    .line 442
    .line 443
    .line 444
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f0(I)I

    .line 445
    move-result v8

    .line 446
    :goto_6
    add-int/2addr v4, v8

    .line 447
    add-int/2addr v4, v3

    .line 448
    .line 449
    goto/16 :goto_5

    .line 450
    .line 451
    .line 452
    :pswitch_15
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 453
    move-result-object v3

    .line 454
    .line 455
    check-cast v3, Ljava/util/List;

    .line 456
    .line 457
    .line 458
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->r(Ljava/util/List;)I

    .line 459
    move-result v3

    .line 460
    .line 461
    if-lez v3, :cond_3

    .line 462
    .line 463
    iget-boolean v4, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 464
    .line 465
    if-eqz v4, :cond_6

    .line 466
    int-to-long v11, v11

    .line 467
    .line 468
    .line 469
    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 470
    .line 471
    .line 472
    :cond_6
    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 473
    move-result v4

    .line 474
    .line 475
    .line 476
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f0(I)I

    .line 477
    move-result v8

    .line 478
    goto :goto_6

    .line 479
    .line 480
    .line 481
    :pswitch_16
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 482
    move-result-object v3

    .line 483
    .line 484
    check-cast v3, Ljava/util/List;

    .line 485
    .line 486
    .line 487
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->i(Ljava/util/List;)I

    .line 488
    move-result v3

    .line 489
    .line 490
    if-lez v3, :cond_3

    .line 491
    .line 492
    iget-boolean v4, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 493
    .line 494
    if-eqz v4, :cond_7

    .line 495
    int-to-long v11, v11

    .line 496
    .line 497
    .line 498
    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 499
    .line 500
    .line 501
    :cond_7
    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 502
    move-result v4

    .line 503
    .line 504
    .line 505
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f0(I)I

    .line 506
    move-result v8

    .line 507
    goto :goto_6

    .line 508
    .line 509
    .line 510
    :pswitch_17
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 511
    move-result-object v3

    .line 512
    .line 513
    check-cast v3, Ljava/util/List;

    .line 514
    .line 515
    .line 516
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->g(Ljava/util/List;)I

    .line 517
    move-result v3

    .line 518
    .line 519
    if-lez v3, :cond_3

    .line 520
    .line 521
    iget-boolean v4, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 522
    .line 523
    if-eqz v4, :cond_8

    .line 524
    int-to-long v11, v11

    .line 525
    .line 526
    .line 527
    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 528
    .line 529
    .line 530
    :cond_8
    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 531
    move-result v4

    .line 532
    .line 533
    .line 534
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f0(I)I

    .line 535
    move-result v8

    .line 536
    goto :goto_6

    .line 537
    .line 538
    .line 539
    :pswitch_18
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 540
    move-result-object v3

    .line 541
    .line 542
    check-cast v3, Ljava/util/List;

    .line 543
    .line 544
    .line 545
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->e(Ljava/util/List;)I

    .line 546
    move-result v3

    .line 547
    .line 548
    if-lez v3, :cond_3

    .line 549
    .line 550
    iget-boolean v4, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 551
    .line 552
    if-eqz v4, :cond_9

    .line 553
    int-to-long v11, v11

    .line 554
    .line 555
    .line 556
    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 557
    .line 558
    .line 559
    :cond_9
    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 560
    move-result v4

    .line 561
    .line 562
    .line 563
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f0(I)I

    .line 564
    move-result v8

    .line 565
    goto :goto_6

    .line 566
    .line 567
    .line 568
    :pswitch_19
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 569
    move-result-object v3

    .line 570
    .line 571
    check-cast v3, Ljava/util/List;

    .line 572
    .line 573
    .line 574
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->w(Ljava/util/List;)I

    .line 575
    move-result v3

    .line 576
    .line 577
    if-lez v3, :cond_3

    .line 578
    .line 579
    iget-boolean v4, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 580
    .line 581
    if-eqz v4, :cond_a

    .line 582
    int-to-long v11, v11

    .line 583
    .line 584
    .line 585
    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 586
    .line 587
    .line 588
    :cond_a
    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 589
    move-result v4

    .line 590
    .line 591
    .line 592
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f0(I)I

    .line 593
    move-result v8

    .line 594
    .line 595
    goto/16 :goto_6

    .line 596
    .line 597
    .line 598
    :pswitch_1a
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 599
    move-result-object v3

    .line 600
    .line 601
    check-cast v3, Ljava/util/List;

    .line 602
    .line 603
    .line 604
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->b(Ljava/util/List;)I

    .line 605
    move-result v3

    .line 606
    .line 607
    if-lez v3, :cond_3

    .line 608
    .line 609
    iget-boolean v4, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 610
    .line 611
    if-eqz v4, :cond_b

    .line 612
    int-to-long v11, v11

    .line 613
    .line 614
    .line 615
    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 616
    .line 617
    .line 618
    :cond_b
    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 619
    move-result v4

    .line 620
    .line 621
    .line 622
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f0(I)I

    .line 623
    move-result v8

    .line 624
    .line 625
    goto/16 :goto_6

    .line 626
    .line 627
    .line 628
    :pswitch_1b
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 629
    move-result-object v3

    .line 630
    .line 631
    check-cast v3, Ljava/util/List;

    .line 632
    .line 633
    .line 634
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->g(Ljava/util/List;)I

    .line 635
    move-result v3

    .line 636
    .line 637
    if-lez v3, :cond_3

    .line 638
    .line 639
    iget-boolean v4, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 640
    .line 641
    if-eqz v4, :cond_c

    .line 642
    int-to-long v11, v11

    .line 643
    .line 644
    .line 645
    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 646
    .line 647
    .line 648
    :cond_c
    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 649
    move-result v4

    .line 650
    .line 651
    .line 652
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f0(I)I

    .line 653
    move-result v8

    .line 654
    .line 655
    goto/16 :goto_6

    .line 656
    .line 657
    .line 658
    :pswitch_1c
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 659
    move-result-object v3

    .line 660
    .line 661
    check-cast v3, Ljava/util/List;

    .line 662
    .line 663
    .line 664
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->i(Ljava/util/List;)I

    .line 665
    move-result v3

    .line 666
    .line 667
    if-lez v3, :cond_3

    .line 668
    .line 669
    iget-boolean v4, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 670
    .line 671
    if-eqz v4, :cond_d

    .line 672
    int-to-long v11, v11

    .line 673
    .line 674
    .line 675
    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 676
    .line 677
    .line 678
    :cond_d
    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 679
    move-result v4

    .line 680
    .line 681
    .line 682
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f0(I)I

    .line 683
    move-result v8

    .line 684
    .line 685
    goto/16 :goto_6

    .line 686
    .line 687
    .line 688
    :pswitch_1d
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 689
    move-result-object v3

    .line 690
    .line 691
    check-cast v3, Ljava/util/List;

    .line 692
    .line 693
    .line 694
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->l(Ljava/util/List;)I

    .line 695
    move-result v3

    .line 696
    .line 697
    if-lez v3, :cond_3

    .line 698
    .line 699
    iget-boolean v4, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 700
    .line 701
    if-eqz v4, :cond_e

    .line 702
    int-to-long v11, v11

    .line 703
    .line 704
    .line 705
    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 706
    .line 707
    .line 708
    :cond_e
    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 709
    move-result v4

    .line 710
    .line 711
    .line 712
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f0(I)I

    .line 713
    move-result v8

    .line 714
    .line 715
    goto/16 :goto_6

    .line 716
    .line 717
    .line 718
    :pswitch_1e
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 719
    move-result-object v3

    .line 720
    .line 721
    check-cast v3, Ljava/util/List;

    .line 722
    .line 723
    .line 724
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->y(Ljava/util/List;)I

    .line 725
    move-result v3

    .line 726
    .line 727
    if-lez v3, :cond_3

    .line 728
    .line 729
    iget-boolean v4, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 730
    .line 731
    if-eqz v4, :cond_f

    .line 732
    int-to-long v11, v11

    .line 733
    .line 734
    .line 735
    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 736
    .line 737
    .line 738
    :cond_f
    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 739
    move-result v4

    .line 740
    .line 741
    .line 742
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f0(I)I

    .line 743
    move-result v8

    .line 744
    .line 745
    goto/16 :goto_6

    .line 746
    .line 747
    .line 748
    :pswitch_1f
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 749
    move-result-object v3

    .line 750
    .line 751
    check-cast v3, Ljava/util/List;

    .line 752
    .line 753
    .line 754
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->n(Ljava/util/List;)I

    .line 755
    move-result v3

    .line 756
    .line 757
    if-lez v3, :cond_3

    .line 758
    .line 759
    iget-boolean v4, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 760
    .line 761
    if-eqz v4, :cond_10

    .line 762
    int-to-long v11, v11

    .line 763
    .line 764
    .line 765
    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 766
    .line 767
    .line 768
    :cond_10
    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 769
    move-result v4

    .line 770
    .line 771
    .line 772
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f0(I)I

    .line 773
    move-result v8

    .line 774
    .line 775
    goto/16 :goto_6

    .line 776
    .line 777
    .line 778
    :pswitch_20
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 779
    move-result-object v3

    .line 780
    .line 781
    check-cast v3, Ljava/util/List;

    .line 782
    .line 783
    .line 784
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->g(Ljava/util/List;)I

    .line 785
    move-result v3

    .line 786
    .line 787
    if-lez v3, :cond_3

    .line 788
    .line 789
    iget-boolean v4, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 790
    .line 791
    if-eqz v4, :cond_11

    .line 792
    int-to-long v11, v11

    .line 793
    .line 794
    .line 795
    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 796
    .line 797
    .line 798
    :cond_11
    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 799
    move-result v4

    .line 800
    .line 801
    .line 802
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f0(I)I

    .line 803
    move-result v8

    .line 804
    .line 805
    goto/16 :goto_6

    .line 806
    .line 807
    .line 808
    :pswitch_21
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 809
    move-result-object v3

    .line 810
    .line 811
    check-cast v3, Ljava/util/List;

    .line 812
    .line 813
    .line 814
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->i(Ljava/util/List;)I

    .line 815
    move-result v3

    .line 816
    .line 817
    if-lez v3, :cond_3

    .line 818
    .line 819
    iget-boolean v4, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 820
    .line 821
    if-eqz v4, :cond_12

    .line 822
    int-to-long v11, v11

    .line 823
    .line 824
    .line 825
    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 826
    .line 827
    .line 828
    :cond_12
    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 829
    move-result v4

    .line 830
    .line 831
    .line 832
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f0(I)I

    .line 833
    move-result v8

    .line 834
    .line 835
    goto/16 :goto_6

    .line 836
    .line 837
    .line 838
    :pswitch_22
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 839
    move-result-object v3

    .line 840
    .line 841
    check-cast v3, Ljava/util/List;

    .line 842
    const/4 v4, 0x0

    .line 843
    .line 844
    .line 845
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->s(ILjava/util/List;Z)I

    .line 846
    move-result v3

    .line 847
    :goto_7
    add-int/2addr v6, v3

    .line 848
    move v10, v4

    .line 849
    .line 850
    goto/16 :goto_9

    .line 851
    :pswitch_23
    const/4 v4, 0x0

    .line 852
    .line 853
    .line 854
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 855
    move-result-object v3

    .line 856
    .line 857
    check-cast v3, Ljava/util/List;

    .line 858
    .line 859
    .line 860
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->q(ILjava/util/List;Z)I

    .line 861
    move-result v3

    .line 862
    goto :goto_7

    .line 863
    :pswitch_24
    const/4 v4, 0x0

    .line 864
    .line 865
    .line 866
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 867
    move-result-object v3

    .line 868
    .line 869
    check-cast v3, Ljava/util/List;

    .line 870
    .line 871
    .line 872
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->h(ILjava/util/List;Z)I

    .line 873
    move-result v3

    .line 874
    goto :goto_7

    .line 875
    :pswitch_25
    const/4 v4, 0x0

    .line 876
    .line 877
    .line 878
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 879
    move-result-object v3

    .line 880
    .line 881
    check-cast v3, Ljava/util/List;

    .line 882
    .line 883
    .line 884
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->f(ILjava/util/List;Z)I

    .line 885
    move-result v3

    .line 886
    goto :goto_7

    .line 887
    :pswitch_26
    const/4 v4, 0x0

    .line 888
    .line 889
    .line 890
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 891
    move-result-object v3

    .line 892
    .line 893
    check-cast v3, Ljava/util/List;

    .line 894
    .line 895
    .line 896
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->d(ILjava/util/List;Z)I

    .line 897
    move-result v3

    .line 898
    goto :goto_7

    .line 899
    :pswitch_27
    const/4 v4, 0x0

    .line 900
    .line 901
    .line 902
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 903
    move-result-object v3

    .line 904
    .line 905
    check-cast v3, Ljava/util/List;

    .line 906
    .line 907
    .line 908
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->v(ILjava/util/List;Z)I

    .line 909
    move-result v3

    .line 910
    .line 911
    goto/16 :goto_3

    .line 912
    .line 913
    .line 914
    :pswitch_28
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 915
    move-result-object v3

    .line 916
    .line 917
    check-cast v3, Ljava/util/List;

    .line 918
    .line 919
    .line 920
    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->c(ILjava/util/List;)I

    .line 921
    move-result v3

    .line 922
    .line 923
    goto/16 :goto_3

    .line 924
    .line 925
    .line 926
    :pswitch_29
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 927
    move-result-object v3

    .line 928
    .line 929
    check-cast v3, Ljava/util/List;

    .line 930
    .line 931
    .line 932
    invoke-direct {v0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 933
    move-result-object v4

    .line 934
    .line 935
    .line 936
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->p(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 937
    move-result v3

    .line 938
    .line 939
    goto/16 :goto_3

    .line 940
    .line 941
    .line 942
    :pswitch_2a
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 943
    move-result-object v3

    .line 944
    .line 945
    check-cast v3, Ljava/util/List;

    .line 946
    .line 947
    .line 948
    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->u(ILjava/util/List;)I

    .line 949
    move-result v3

    .line 950
    .line 951
    goto/16 :goto_3

    .line 952
    .line 953
    .line 954
    :pswitch_2b
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 955
    move-result-object v3

    .line 956
    .line 957
    check-cast v3, Ljava/util/List;

    .line 958
    const/4 v4, 0x0

    .line 959
    .line 960
    .line 961
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a(ILjava/util/List;Z)I

    .line 962
    move-result v3

    .line 963
    goto :goto_7

    .line 964
    :pswitch_2c
    const/4 v4, 0x0

    .line 965
    .line 966
    .line 967
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 968
    move-result-object v3

    .line 969
    .line 970
    check-cast v3, Ljava/util/List;

    .line 971
    .line 972
    .line 973
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->f(ILjava/util/List;Z)I

    .line 974
    move-result v3

    .line 975
    .line 976
    goto/16 :goto_7

    .line 977
    :pswitch_2d
    const/4 v4, 0x0

    .line 978
    .line 979
    .line 980
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 981
    move-result-object v3

    .line 982
    .line 983
    check-cast v3, Ljava/util/List;

    .line 984
    .line 985
    .line 986
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->h(ILjava/util/List;Z)I

    .line 987
    move-result v3

    .line 988
    .line 989
    goto/16 :goto_7

    .line 990
    :pswitch_2e
    const/4 v4, 0x0

    .line 991
    .line 992
    .line 993
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 994
    move-result-object v3

    .line 995
    .line 996
    check-cast v3, Ljava/util/List;

    .line 997
    .line 998
    .line 999
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->k(ILjava/util/List;Z)I

    .line 1000
    move-result v3

    .line 1001
    .line 1002
    goto/16 :goto_7

    .line 1003
    :pswitch_2f
    const/4 v4, 0x0

    .line 1004
    .line 1005
    .line 1006
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1007
    move-result-object v3

    .line 1008
    .line 1009
    check-cast v3, Ljava/util/List;

    .line 1010
    .line 1011
    .line 1012
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->x(ILjava/util/List;Z)I

    .line 1013
    move-result v3

    .line 1014
    .line 1015
    goto/16 :goto_7

    .line 1016
    :pswitch_30
    const/4 v4, 0x0

    .line 1017
    .line 1018
    .line 1019
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1020
    move-result-object v3

    .line 1021
    .line 1022
    check-cast v3, Ljava/util/List;

    .line 1023
    .line 1024
    .line 1025
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->m(ILjava/util/List;Z)I

    .line 1026
    move-result v3

    .line 1027
    .line 1028
    goto/16 :goto_7

    .line 1029
    :pswitch_31
    const/4 v4, 0x0

    .line 1030
    .line 1031
    .line 1032
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1033
    move-result-object v3

    .line 1034
    .line 1035
    check-cast v3, Ljava/util/List;

    .line 1036
    .line 1037
    .line 1038
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->f(ILjava/util/List;Z)I

    .line 1039
    move-result v3

    .line 1040
    .line 1041
    goto/16 :goto_7

    .line 1042
    :pswitch_32
    const/4 v4, 0x0

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1046
    move-result-object v3

    .line 1047
    .line 1048
    check-cast v3, Ljava/util/List;

    .line 1049
    .line 1050
    .line 1051
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->h(ILjava/util/List;Z)I

    .line 1052
    move-result v3

    .line 1053
    .line 1054
    goto/16 :goto_3

    .line 1055
    .line 1056
    :pswitch_33
    and-int v3, v7, v14

    .line 1057
    .line 1058
    if-eqz v3, :cond_3

    .line 1059
    .line 1060
    .line 1061
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1062
    move-result-object v3

    .line 1063
    .line 1064
    check-cast v3, Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 1065
    .line 1066
    .line 1067
    invoke-direct {v0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 1068
    move-result-object v4

    .line 1069
    .line 1070
    .line 1071
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->A(ILandroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 1072
    move-result v3

    .line 1073
    .line 1074
    goto/16 :goto_3

    .line 1075
    .line 1076
    :pswitch_34
    and-int v3, v7, v14

    .line 1077
    .line 1078
    if-eqz v3, :cond_3

    .line 1079
    .line 1080
    .line 1081
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1082
    move-result-wide v3

    .line 1083
    .line 1084
    .line 1085
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->Z(IJ)I

    .line 1086
    move-result v3

    .line 1087
    .line 1088
    goto/16 :goto_3

    .line 1089
    .line 1090
    :pswitch_35
    and-int v3, v7, v14

    .line 1091
    .line 1092
    if-eqz v3, :cond_3

    .line 1093
    .line 1094
    .line 1095
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1096
    move-result v3

    .line 1097
    .line 1098
    .line 1099
    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->X(II)I

    .line 1100
    move-result v3

    .line 1101
    .line 1102
    goto/16 :goto_3

    .line 1103
    .line 1104
    :pswitch_36
    and-int v10, v7, v14

    .line 1105
    .line 1106
    if-eqz v10, :cond_3

    .line 1107
    .line 1108
    .line 1109
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V(IJ)I

    .line 1110
    move-result v3

    .line 1111
    .line 1112
    goto/16 :goto_3

    .line 1113
    .line 1114
    :pswitch_37
    and-int v3, v7, v14

    .line 1115
    .line 1116
    if-eqz v3, :cond_3

    .line 1117
    const/4 v3, 0x0

    .line 1118
    .line 1119
    .line 1120
    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T(II)I

    .line 1121
    move-result v4

    .line 1122
    .line 1123
    goto/16 :goto_5

    .line 1124
    .line 1125
    :pswitch_38
    and-int v3, v7, v14

    .line 1126
    .line 1127
    if-eqz v3, :cond_3

    .line 1128
    .line 1129
    .line 1130
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1131
    move-result v3

    .line 1132
    .line 1133
    .line 1134
    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->s(II)I

    .line 1135
    move-result v3

    .line 1136
    .line 1137
    goto/16 :goto_3

    .line 1138
    .line 1139
    :pswitch_39
    and-int v3, v7, v14

    .line 1140
    .line 1141
    if-eqz v3, :cond_3

    .line 1142
    .line 1143
    .line 1144
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1145
    move-result v3

    .line 1146
    .line 1147
    .line 1148
    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e0(II)I

    .line 1149
    move-result v3

    .line 1150
    .line 1151
    goto/16 :goto_3

    .line 1152
    .line 1153
    :pswitch_3a
    and-int v3, v7, v14

    .line 1154
    .line 1155
    if-eqz v3, :cond_3

    .line 1156
    .line 1157
    .line 1158
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1159
    move-result-object v3

    .line 1160
    .line 1161
    check-cast v3, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 1162
    .line 1163
    .line 1164
    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->o(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    .line 1165
    move-result v3

    .line 1166
    .line 1167
    goto/16 :goto_3

    .line 1168
    .line 1169
    :pswitch_3b
    and-int v3, v7, v14

    .line 1170
    .line 1171
    if-eqz v3, :cond_3

    .line 1172
    .line 1173
    .line 1174
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1175
    move-result-object v3

    .line 1176
    .line 1177
    .line 1178
    invoke-direct {v0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 1179
    move-result-object v4

    .line 1180
    .line 1181
    .line 1182
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->o(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 1183
    move-result v3

    .line 1184
    .line 1185
    goto/16 :goto_3

    .line 1186
    .line 1187
    :pswitch_3c
    and-int v3, v7, v14

    .line 1188
    .line 1189
    if-eqz v3, :cond_3

    .line 1190
    .line 1191
    .line 1192
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1193
    move-result-object v3

    .line 1194
    .line 1195
    instance-of v4, v3, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 1196
    .line 1197
    if-eqz v4, :cond_13

    .line 1198
    .line 1199
    check-cast v3, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 1200
    .line 1201
    .line 1202
    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->o(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    .line 1203
    move-result v3

    .line 1204
    .line 1205
    goto/16 :goto_3

    .line 1206
    .line 1207
    :cond_13
    check-cast v3, Ljava/lang/String;

    .line 1208
    .line 1209
    .line 1210
    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->b0(ILjava/lang/String;)I

    .line 1211
    move-result v3

    .line 1212
    .line 1213
    goto/16 :goto_3

    .line 1214
    .line 1215
    :pswitch_3d
    and-int v3, v7, v14

    .line 1216
    .line 1217
    if-eqz v3, :cond_3

    .line 1218
    const/4 v3, 0x1

    .line 1219
    .line 1220
    .line 1221
    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->l(IZ)I

    .line 1222
    move-result v3

    .line 1223
    .line 1224
    goto/16 :goto_3

    .line 1225
    .line 1226
    :pswitch_3e
    and-int v3, v7, v14

    .line 1227
    .line 1228
    if-eqz v3, :cond_3

    .line 1229
    const/4 v10, 0x0

    .line 1230
    .line 1231
    .line 1232
    invoke-static {v9, v10}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->u(II)I

    .line 1233
    move-result v3

    .line 1234
    :goto_8
    add-int/2addr v6, v3

    .line 1235
    goto :goto_9

    .line 1236
    :pswitch_3f
    const/4 v10, 0x0

    .line 1237
    .line 1238
    and-int v8, v7, v14

    .line 1239
    .line 1240
    if-eqz v8, :cond_14

    .line 1241
    .line 1242
    .line 1243
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->w(IJ)I

    .line 1244
    move-result v3

    .line 1245
    goto :goto_8

    .line 1246
    :pswitch_40
    const/4 v10, 0x0

    .line 1247
    .line 1248
    and-int v3, v7, v14

    .line 1249
    .line 1250
    if-eqz v3, :cond_14

    .line 1251
    .line 1252
    .line 1253
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1254
    move-result v3

    .line 1255
    .line 1256
    .line 1257
    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->D(II)I

    .line 1258
    move-result v3

    .line 1259
    goto :goto_8

    .line 1260
    :pswitch_41
    const/4 v10, 0x0

    .line 1261
    .line 1262
    and-int v3, v7, v14

    .line 1263
    .line 1264
    if-eqz v3, :cond_14

    .line 1265
    .line 1266
    .line 1267
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1268
    move-result-wide v3

    .line 1269
    .line 1270
    .line 1271
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->g0(IJ)I

    .line 1272
    move-result v3

    .line 1273
    goto :goto_8

    .line 1274
    :pswitch_42
    const/4 v10, 0x0

    .line 1275
    .line 1276
    and-int v3, v7, v14

    .line 1277
    .line 1278
    if-eqz v3, :cond_14

    .line 1279
    .line 1280
    .line 1281
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1282
    move-result-wide v3

    .line 1283
    .line 1284
    .line 1285
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->F(IJ)I

    .line 1286
    move-result v3

    .line 1287
    goto :goto_8

    .line 1288
    :pswitch_43
    const/4 v10, 0x0

    .line 1289
    .line 1290
    and-int v3, v7, v14

    .line 1291
    .line 1292
    if-eqz v3, :cond_14

    .line 1293
    .line 1294
    .line 1295
    invoke-static {v9, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->y(IF)I

    .line 1296
    move-result v3

    .line 1297
    goto :goto_8

    .line 1298
    :pswitch_44
    const/4 v10, 0x0

    .line 1299
    .line 1300
    and-int v3, v7, v14

    .line 1301
    .line 1302
    if-eqz v3, :cond_14

    .line 1303
    .line 1304
    const-wide/16 v3, 0x0

    .line 1305
    .line 1306
    .line 1307
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->q(ID)I

    .line 1308
    move-result v3

    .line 1309
    goto :goto_8

    .line 1310
    .line 1311
    :cond_14
    :goto_9
    add-int/lit8 v5, v5, 0x3

    .line 1312
    move v4, v15

    .line 1313
    .line 1314
    goto/16 :goto_0

    .line 1315
    .line 1316
    :cond_15
    iget-object v2, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    .line 1317
    .line 1318
    .line 1319
    invoke-direct {v0, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->s(Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I

    .line 1320
    move-result v2

    .line 1321
    add-int/2addr v6, v2

    .line 1322
    .line 1323
    iget-boolean v2, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->hasExtensions:Z

    .line 1324
    .line 1325
    if-eqz v2, :cond_16

    .line 1326
    .line 1327
    iget-object v2, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    .line 1328
    .line 1329
    .line 1330
    invoke-virtual {v2, v1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;

    .line 1331
    move-result-object v1

    .line 1332
    .line 1333
    .line 1334
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/FieldSet;->l()I

    .line 1335
    move-result v1

    .line 1336
    add-int/2addr v6, v1

    .line 1337
    :cond_16
    return v6

    .line 1338
    nop

    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
    .line 1391
    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private q0(Landroidx/datastore/preferences/protobuf/Writer;ILjava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/datastore/preferences/protobuf/Writer;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Ljava/lang/Object;

    .line 8
    move-result-object p4

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p4}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;

    .line 12
    move-result-object p4

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p3}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->forMapData(Ljava/lang/Object;)Ljava/util/Map;

    .line 18
    move-result-object p3

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, p2, p4, p3}, Landroidx/datastore/preferences/protobuf/Writer;->c(ILandroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V

    .line 22
    :cond_0
    return-void
.end method

.method private r(Ljava/lang/Object;)I
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 6
    const/4 v3, 0x0

    .line 7
    move v4, v3

    .line 8
    move v5, v4

    .line 9
    .line 10
    :goto_0
    iget-object v6, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    .line 11
    array-length v6, v6

    .line 12
    .line 13
    if-ge v4, v6, :cond_12

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m0(I)I

    .line 17
    move-result v6

    .line 18
    .line 19
    .line 20
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->l0(I)I

    .line 21
    move-result v7

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 25
    move-result v8

    .line 26
    .line 27
    .line 28
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 29
    move-result-wide v9

    .line 30
    .line 31
    sget-object v6, Landroidx/datastore/preferences/protobuf/FieldType;->DOUBLE_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6}, Landroidx/datastore/preferences/protobuf/FieldType;->a()I

    .line 35
    move-result v6

    .line 36
    .line 37
    if-lt v7, v6, :cond_0

    .line 38
    .line 39
    sget-object v6, Landroidx/datastore/preferences/protobuf/FieldType;->SINT64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v6}, Landroidx/datastore/preferences/protobuf/FieldType;->a()I

    .line 43
    move-result v6

    .line 44
    .line 45
    if-gt v7, v6, :cond_0

    .line 46
    .line 47
    iget-object v6, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    .line 48
    .line 49
    add-int/lit8 v11, v4, 0x2

    .line 50
    .line 51
    aget v6, v6, v11

    .line 52
    .line 53
    .line 54
    const v11, 0xfffff

    .line 55
    and-int/2addr v6, v11

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    move v6, v3

    .line 58
    :goto_1
    const/4 v13, 0x0

    .line 59
    const/4 v14, 0x1

    .line 60
    .line 61
    const-wide/16 v11, 0x0

    .line 62
    .line 63
    .line 64
    packed-switch v7, :pswitch_data_0

    .line 65
    .line 66
    goto/16 :goto_4

    .line 67
    .line 68
    .line 69
    :pswitch_0
    invoke-direct {p0, v1, v8, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 70
    move-result v6

    .line 71
    .line 72
    if-eqz v6, :cond_11

    .line 73
    .line 74
    .line 75
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 76
    move-result-object v6

    .line 77
    .line 78
    check-cast v6, Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 82
    move-result-object v7

    .line 83
    .line 84
    .line 85
    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->A(ILandroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 86
    move-result v6

    .line 87
    :goto_2
    add-int/2addr v5, v6

    .line 88
    .line 89
    goto/16 :goto_4

    .line 90
    .line 91
    .line 92
    :pswitch_1
    invoke-direct {p0, v1, v8, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 93
    move-result v6

    .line 94
    .line 95
    if-eqz v6, :cond_11

    .line 96
    .line 97
    .line 98
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->T(Ljava/lang/Object;J)J

    .line 99
    move-result-wide v6

    .line 100
    .line 101
    .line 102
    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->Z(IJ)I

    .line 103
    move-result v6

    .line 104
    goto :goto_2

    .line 105
    .line 106
    .line 107
    :pswitch_2
    invoke-direct {p0, v1, v8, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 108
    move-result v6

    .line 109
    .line 110
    if-eqz v6, :cond_11

    .line 111
    .line 112
    .line 113
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->S(Ljava/lang/Object;J)I

    .line 114
    move-result v6

    .line 115
    .line 116
    .line 117
    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->X(II)I

    .line 118
    move-result v6

    .line 119
    goto :goto_2

    .line 120
    .line 121
    .line 122
    :pswitch_3
    invoke-direct {p0, v1, v8, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 123
    move-result v6

    .line 124
    .line 125
    if-eqz v6, :cond_11

    .line 126
    .line 127
    .line 128
    invoke-static {v8, v11, v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V(IJ)I

    .line 129
    move-result v6

    .line 130
    goto :goto_2

    .line 131
    .line 132
    .line 133
    :pswitch_4
    invoke-direct {p0, v1, v8, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 134
    move-result v6

    .line 135
    .line 136
    if-eqz v6, :cond_11

    .line 137
    .line 138
    .line 139
    invoke-static {v8, v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T(II)I

    .line 140
    move-result v6

    .line 141
    goto :goto_2

    .line 142
    .line 143
    .line 144
    :pswitch_5
    invoke-direct {p0, v1, v8, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 145
    move-result v6

    .line 146
    .line 147
    if-eqz v6, :cond_11

    .line 148
    .line 149
    .line 150
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->S(Ljava/lang/Object;J)I

    .line 151
    move-result v6

    .line 152
    .line 153
    .line 154
    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->s(II)I

    .line 155
    move-result v6

    .line 156
    goto :goto_2

    .line 157
    .line 158
    .line 159
    :pswitch_6
    invoke-direct {p0, v1, v8, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 160
    move-result v6

    .line 161
    .line 162
    if-eqz v6, :cond_11

    .line 163
    .line 164
    .line 165
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->S(Ljava/lang/Object;J)I

    .line 166
    move-result v6

    .line 167
    .line 168
    .line 169
    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e0(II)I

    .line 170
    move-result v6

    .line 171
    goto :goto_2

    .line 172
    .line 173
    .line 174
    :pswitch_7
    invoke-direct {p0, v1, v8, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 175
    move-result v6

    .line 176
    .line 177
    if-eqz v6, :cond_11

    .line 178
    .line 179
    .line 180
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 181
    move-result-object v6

    .line 182
    .line 183
    check-cast v6, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 184
    .line 185
    .line 186
    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->o(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    .line 187
    move-result v6

    .line 188
    goto :goto_2

    .line 189
    .line 190
    .line 191
    :pswitch_8
    invoke-direct {p0, v1, v8, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 192
    move-result v6

    .line 193
    .line 194
    if-eqz v6, :cond_11

    .line 195
    .line 196
    .line 197
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 198
    move-result-object v6

    .line 199
    .line 200
    .line 201
    invoke-direct {p0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 202
    move-result-object v7

    .line 203
    .line 204
    .line 205
    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->o(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 206
    move-result v6

    .line 207
    goto :goto_2

    .line 208
    .line 209
    .line 210
    :pswitch_9
    invoke-direct {p0, v1, v8, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 211
    move-result v6

    .line 212
    .line 213
    if-eqz v6, :cond_11

    .line 214
    .line 215
    .line 216
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 217
    move-result-object v6

    .line 218
    .line 219
    instance-of v7, v6, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 220
    .line 221
    if-eqz v7, :cond_1

    .line 222
    .line 223
    check-cast v6, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 224
    .line 225
    .line 226
    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->o(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    .line 227
    move-result v6

    .line 228
    .line 229
    goto/16 :goto_2

    .line 230
    .line 231
    :cond_1
    check-cast v6, Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->b0(ILjava/lang/String;)I

    .line 235
    move-result v6

    .line 236
    .line 237
    goto/16 :goto_2

    .line 238
    .line 239
    .line 240
    :pswitch_a
    invoke-direct {p0, v1, v8, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 241
    move-result v6

    .line 242
    .line 243
    if-eqz v6, :cond_11

    .line 244
    .line 245
    .line 246
    invoke-static {v8, v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->l(IZ)I

    .line 247
    move-result v6

    .line 248
    .line 249
    goto/16 :goto_2

    .line 250
    .line 251
    .line 252
    :pswitch_b
    invoke-direct {p0, v1, v8, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 253
    move-result v6

    .line 254
    .line 255
    if-eqz v6, :cond_11

    .line 256
    .line 257
    .line 258
    invoke-static {v8, v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->u(II)I

    .line 259
    move-result v6

    .line 260
    .line 261
    goto/16 :goto_2

    .line 262
    .line 263
    .line 264
    :pswitch_c
    invoke-direct {p0, v1, v8, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 265
    move-result v6

    .line 266
    .line 267
    if-eqz v6, :cond_11

    .line 268
    .line 269
    .line 270
    invoke-static {v8, v11, v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->w(IJ)I

    .line 271
    move-result v6

    .line 272
    .line 273
    goto/16 :goto_2

    .line 274
    .line 275
    .line 276
    :pswitch_d
    invoke-direct {p0, v1, v8, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 277
    move-result v6

    .line 278
    .line 279
    if-eqz v6, :cond_11

    .line 280
    .line 281
    .line 282
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->S(Ljava/lang/Object;J)I

    .line 283
    move-result v6

    .line 284
    .line 285
    .line 286
    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->D(II)I

    .line 287
    move-result v6

    .line 288
    .line 289
    goto/16 :goto_2

    .line 290
    .line 291
    .line 292
    :pswitch_e
    invoke-direct {p0, v1, v8, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 293
    move-result v6

    .line 294
    .line 295
    if-eqz v6, :cond_11

    .line 296
    .line 297
    .line 298
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->T(Ljava/lang/Object;J)J

    .line 299
    move-result-wide v6

    .line 300
    .line 301
    .line 302
    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->g0(IJ)I

    .line 303
    move-result v6

    .line 304
    .line 305
    goto/16 :goto_2

    .line 306
    .line 307
    .line 308
    :pswitch_f
    invoke-direct {p0, v1, v8, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 309
    move-result v6

    .line 310
    .line 311
    if-eqz v6, :cond_11

    .line 312
    .line 313
    .line 314
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->T(Ljava/lang/Object;J)J

    .line 315
    move-result-wide v6

    .line 316
    .line 317
    .line 318
    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->F(IJ)I

    .line 319
    move-result v6

    .line 320
    .line 321
    goto/16 :goto_2

    .line 322
    .line 323
    .line 324
    :pswitch_10
    invoke-direct {p0, v1, v8, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 325
    move-result v6

    .line 326
    .line 327
    if-eqz v6, :cond_11

    .line 328
    .line 329
    .line 330
    invoke-static {v8, v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->y(IF)I

    .line 331
    move-result v6

    .line 332
    .line 333
    goto/16 :goto_2

    .line 334
    .line 335
    .line 336
    :pswitch_11
    invoke-direct {p0, v1, v8, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 337
    move-result v6

    .line 338
    .line 339
    if-eqz v6, :cond_11

    .line 340
    .line 341
    const-wide/16 v6, 0x0

    .line 342
    .line 343
    .line 344
    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->q(ID)I

    .line 345
    move-result v6

    .line 346
    .line 347
    goto/16 :goto_2

    .line 348
    .line 349
    :pswitch_12
    iget-object v6, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 350
    .line 351
    .line 352
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 353
    move-result-object v7

    .line 354
    .line 355
    .line 356
    invoke-direct {p0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Ljava/lang/Object;

    .line 357
    move-result-object v9

    .line 358
    .line 359
    .line 360
    invoke-interface {v6, v8, v7, v9}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 361
    move-result v6

    .line 362
    .line 363
    goto/16 :goto_2

    .line 364
    .line 365
    .line 366
    :pswitch_13
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(Ljava/lang/Object;J)Ljava/util/List;

    .line 367
    move-result-object v6

    .line 368
    .line 369
    .line 370
    invoke-direct {p0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 371
    move-result-object v7

    .line 372
    .line 373
    .line 374
    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->j(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 375
    move-result v6

    .line 376
    .line 377
    goto/16 :goto_2

    .line 378
    .line 379
    .line 380
    :pswitch_14
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 381
    move-result-object v7

    .line 382
    .line 383
    check-cast v7, Ljava/util/List;

    .line 384
    .line 385
    .line 386
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->t(Ljava/util/List;)I

    .line 387
    move-result v7

    .line 388
    .line 389
    if-lez v7, :cond_11

    .line 390
    .line 391
    iget-boolean v9, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 392
    .line 393
    if-eqz v9, :cond_2

    .line 394
    int-to-long v9, v6

    .line 395
    .line 396
    .line 397
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 398
    .line 399
    .line 400
    :cond_2
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 401
    move-result v6

    .line 402
    .line 403
    .line 404
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f0(I)I

    .line 405
    move-result v8

    .line 406
    :goto_3
    add-int/2addr v6, v8

    .line 407
    add-int/2addr v6, v7

    .line 408
    .line 409
    goto/16 :goto_2

    .line 410
    .line 411
    .line 412
    :pswitch_15
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 413
    move-result-object v7

    .line 414
    .line 415
    check-cast v7, Ljava/util/List;

    .line 416
    .line 417
    .line 418
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->r(Ljava/util/List;)I

    .line 419
    move-result v7

    .line 420
    .line 421
    if-lez v7, :cond_11

    .line 422
    .line 423
    iget-boolean v9, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 424
    .line 425
    if-eqz v9, :cond_3

    .line 426
    int-to-long v9, v6

    .line 427
    .line 428
    .line 429
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 430
    .line 431
    .line 432
    :cond_3
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 433
    move-result v6

    .line 434
    .line 435
    .line 436
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f0(I)I

    .line 437
    move-result v8

    .line 438
    goto :goto_3

    .line 439
    .line 440
    .line 441
    :pswitch_16
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 442
    move-result-object v7

    .line 443
    .line 444
    check-cast v7, Ljava/util/List;

    .line 445
    .line 446
    .line 447
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->i(Ljava/util/List;)I

    .line 448
    move-result v7

    .line 449
    .line 450
    if-lez v7, :cond_11

    .line 451
    .line 452
    iget-boolean v9, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 453
    .line 454
    if-eqz v9, :cond_4

    .line 455
    int-to-long v9, v6

    .line 456
    .line 457
    .line 458
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 459
    .line 460
    .line 461
    :cond_4
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 462
    move-result v6

    .line 463
    .line 464
    .line 465
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f0(I)I

    .line 466
    move-result v8

    .line 467
    goto :goto_3

    .line 468
    .line 469
    .line 470
    :pswitch_17
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 471
    move-result-object v7

    .line 472
    .line 473
    check-cast v7, Ljava/util/List;

    .line 474
    .line 475
    .line 476
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->g(Ljava/util/List;)I

    .line 477
    move-result v7

    .line 478
    .line 479
    if-lez v7, :cond_11

    .line 480
    .line 481
    iget-boolean v9, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 482
    .line 483
    if-eqz v9, :cond_5

    .line 484
    int-to-long v9, v6

    .line 485
    .line 486
    .line 487
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 488
    .line 489
    .line 490
    :cond_5
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 491
    move-result v6

    .line 492
    .line 493
    .line 494
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f0(I)I

    .line 495
    move-result v8

    .line 496
    goto :goto_3

    .line 497
    .line 498
    .line 499
    :pswitch_18
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 500
    move-result-object v7

    .line 501
    .line 502
    check-cast v7, Ljava/util/List;

    .line 503
    .line 504
    .line 505
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->e(Ljava/util/List;)I

    .line 506
    move-result v7

    .line 507
    .line 508
    if-lez v7, :cond_11

    .line 509
    .line 510
    iget-boolean v9, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 511
    .line 512
    if-eqz v9, :cond_6

    .line 513
    int-to-long v9, v6

    .line 514
    .line 515
    .line 516
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 517
    .line 518
    .line 519
    :cond_6
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 520
    move-result v6

    .line 521
    .line 522
    .line 523
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f0(I)I

    .line 524
    move-result v8

    .line 525
    goto :goto_3

    .line 526
    .line 527
    .line 528
    :pswitch_19
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 529
    move-result-object v7

    .line 530
    .line 531
    check-cast v7, Ljava/util/List;

    .line 532
    .line 533
    .line 534
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->w(Ljava/util/List;)I

    .line 535
    move-result v7

    .line 536
    .line 537
    if-lez v7, :cond_11

    .line 538
    .line 539
    iget-boolean v9, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 540
    .line 541
    if-eqz v9, :cond_7

    .line 542
    int-to-long v9, v6

    .line 543
    .line 544
    .line 545
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 546
    .line 547
    .line 548
    :cond_7
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 549
    move-result v6

    .line 550
    .line 551
    .line 552
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f0(I)I

    .line 553
    move-result v8

    .line 554
    .line 555
    goto/16 :goto_3

    .line 556
    .line 557
    .line 558
    :pswitch_1a
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 559
    move-result-object v7

    .line 560
    .line 561
    check-cast v7, Ljava/util/List;

    .line 562
    .line 563
    .line 564
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->b(Ljava/util/List;)I

    .line 565
    move-result v7

    .line 566
    .line 567
    if-lez v7, :cond_11

    .line 568
    .line 569
    iget-boolean v9, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 570
    .line 571
    if-eqz v9, :cond_8

    .line 572
    int-to-long v9, v6

    .line 573
    .line 574
    .line 575
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 576
    .line 577
    .line 578
    :cond_8
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 579
    move-result v6

    .line 580
    .line 581
    .line 582
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f0(I)I

    .line 583
    move-result v8

    .line 584
    .line 585
    goto/16 :goto_3

    .line 586
    .line 587
    .line 588
    :pswitch_1b
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 589
    move-result-object v7

    .line 590
    .line 591
    check-cast v7, Ljava/util/List;

    .line 592
    .line 593
    .line 594
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->g(Ljava/util/List;)I

    .line 595
    move-result v7

    .line 596
    .line 597
    if-lez v7, :cond_11

    .line 598
    .line 599
    iget-boolean v9, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 600
    .line 601
    if-eqz v9, :cond_9

    .line 602
    int-to-long v9, v6

    .line 603
    .line 604
    .line 605
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 606
    .line 607
    .line 608
    :cond_9
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 609
    move-result v6

    .line 610
    .line 611
    .line 612
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f0(I)I

    .line 613
    move-result v8

    .line 614
    .line 615
    goto/16 :goto_3

    .line 616
    .line 617
    .line 618
    :pswitch_1c
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 619
    move-result-object v7

    .line 620
    .line 621
    check-cast v7, Ljava/util/List;

    .line 622
    .line 623
    .line 624
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->i(Ljava/util/List;)I

    .line 625
    move-result v7

    .line 626
    .line 627
    if-lez v7, :cond_11

    .line 628
    .line 629
    iget-boolean v9, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 630
    .line 631
    if-eqz v9, :cond_a

    .line 632
    int-to-long v9, v6

    .line 633
    .line 634
    .line 635
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 636
    .line 637
    .line 638
    :cond_a
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 639
    move-result v6

    .line 640
    .line 641
    .line 642
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f0(I)I

    .line 643
    move-result v8

    .line 644
    .line 645
    goto/16 :goto_3

    .line 646
    .line 647
    .line 648
    :pswitch_1d
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 649
    move-result-object v7

    .line 650
    .line 651
    check-cast v7, Ljava/util/List;

    .line 652
    .line 653
    .line 654
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->l(Ljava/util/List;)I

    .line 655
    move-result v7

    .line 656
    .line 657
    if-lez v7, :cond_11

    .line 658
    .line 659
    iget-boolean v9, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 660
    .line 661
    if-eqz v9, :cond_b

    .line 662
    int-to-long v9, v6

    .line 663
    .line 664
    .line 665
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 666
    .line 667
    .line 668
    :cond_b
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 669
    move-result v6

    .line 670
    .line 671
    .line 672
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f0(I)I

    .line 673
    move-result v8

    .line 674
    .line 675
    goto/16 :goto_3

    .line 676
    .line 677
    .line 678
    :pswitch_1e
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 679
    move-result-object v7

    .line 680
    .line 681
    check-cast v7, Ljava/util/List;

    .line 682
    .line 683
    .line 684
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->y(Ljava/util/List;)I

    .line 685
    move-result v7

    .line 686
    .line 687
    if-lez v7, :cond_11

    .line 688
    .line 689
    iget-boolean v9, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 690
    .line 691
    if-eqz v9, :cond_c

    .line 692
    int-to-long v9, v6

    .line 693
    .line 694
    .line 695
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 696
    .line 697
    .line 698
    :cond_c
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 699
    move-result v6

    .line 700
    .line 701
    .line 702
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f0(I)I

    .line 703
    move-result v8

    .line 704
    .line 705
    goto/16 :goto_3

    .line 706
    .line 707
    .line 708
    :pswitch_1f
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 709
    move-result-object v7

    .line 710
    .line 711
    check-cast v7, Ljava/util/List;

    .line 712
    .line 713
    .line 714
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->n(Ljava/util/List;)I

    .line 715
    move-result v7

    .line 716
    .line 717
    if-lez v7, :cond_11

    .line 718
    .line 719
    iget-boolean v9, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 720
    .line 721
    if-eqz v9, :cond_d

    .line 722
    int-to-long v9, v6

    .line 723
    .line 724
    .line 725
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 726
    .line 727
    .line 728
    :cond_d
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 729
    move-result v6

    .line 730
    .line 731
    .line 732
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f0(I)I

    .line 733
    move-result v8

    .line 734
    .line 735
    goto/16 :goto_3

    .line 736
    .line 737
    .line 738
    :pswitch_20
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 739
    move-result-object v7

    .line 740
    .line 741
    check-cast v7, Ljava/util/List;

    .line 742
    .line 743
    .line 744
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->g(Ljava/util/List;)I

    .line 745
    move-result v7

    .line 746
    .line 747
    if-lez v7, :cond_11

    .line 748
    .line 749
    iget-boolean v9, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 750
    .line 751
    if-eqz v9, :cond_e

    .line 752
    int-to-long v9, v6

    .line 753
    .line 754
    .line 755
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 756
    .line 757
    .line 758
    :cond_e
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 759
    move-result v6

    .line 760
    .line 761
    .line 762
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f0(I)I

    .line 763
    move-result v8

    .line 764
    .line 765
    goto/16 :goto_3

    .line 766
    .line 767
    .line 768
    :pswitch_21
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 769
    move-result-object v7

    .line 770
    .line 771
    check-cast v7, Ljava/util/List;

    .line 772
    .line 773
    .line 774
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->i(Ljava/util/List;)I

    .line 775
    move-result v7

    .line 776
    .line 777
    if-lez v7, :cond_11

    .line 778
    .line 779
    iget-boolean v9, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 780
    .line 781
    if-eqz v9, :cond_f

    .line 782
    int-to-long v9, v6

    .line 783
    .line 784
    .line 785
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 786
    .line 787
    .line 788
    :cond_f
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 789
    move-result v6

    .line 790
    .line 791
    .line 792
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f0(I)I

    .line 793
    move-result v8

    .line 794
    .line 795
    goto/16 :goto_3

    .line 796
    .line 797
    .line 798
    :pswitch_22
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(Ljava/lang/Object;J)Ljava/util/List;

    .line 799
    move-result-object v6

    .line 800
    .line 801
    .line 802
    invoke-static {v8, v6, v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->s(ILjava/util/List;Z)I

    .line 803
    move-result v6

    .line 804
    .line 805
    goto/16 :goto_2

    .line 806
    .line 807
    .line 808
    :pswitch_23
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(Ljava/lang/Object;J)Ljava/util/List;

    .line 809
    move-result-object v6

    .line 810
    .line 811
    .line 812
    invoke-static {v8, v6, v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->q(ILjava/util/List;Z)I

    .line 813
    move-result v6

    .line 814
    .line 815
    goto/16 :goto_2

    .line 816
    .line 817
    .line 818
    :pswitch_24
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(Ljava/lang/Object;J)Ljava/util/List;

    .line 819
    move-result-object v6

    .line 820
    .line 821
    .line 822
    invoke-static {v8, v6, v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->h(ILjava/util/List;Z)I

    .line 823
    move-result v6

    .line 824
    .line 825
    goto/16 :goto_2

    .line 826
    .line 827
    .line 828
    :pswitch_25
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(Ljava/lang/Object;J)Ljava/util/List;

    .line 829
    move-result-object v6

    .line 830
    .line 831
    .line 832
    invoke-static {v8, v6, v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->f(ILjava/util/List;Z)I

    .line 833
    move-result v6

    .line 834
    .line 835
    goto/16 :goto_2

    .line 836
    .line 837
    .line 838
    :pswitch_26
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(Ljava/lang/Object;J)Ljava/util/List;

    .line 839
    move-result-object v6

    .line 840
    .line 841
    .line 842
    invoke-static {v8, v6, v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->d(ILjava/util/List;Z)I

    .line 843
    move-result v6

    .line 844
    .line 845
    goto/16 :goto_2

    .line 846
    .line 847
    .line 848
    :pswitch_27
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(Ljava/lang/Object;J)Ljava/util/List;

    .line 849
    move-result-object v6

    .line 850
    .line 851
    .line 852
    invoke-static {v8, v6, v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->v(ILjava/util/List;Z)I

    .line 853
    move-result v6

    .line 854
    .line 855
    goto/16 :goto_2

    .line 856
    .line 857
    .line 858
    :pswitch_28
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(Ljava/lang/Object;J)Ljava/util/List;

    .line 859
    move-result-object v6

    .line 860
    .line 861
    .line 862
    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->c(ILjava/util/List;)I

    .line 863
    move-result v6

    .line 864
    .line 865
    goto/16 :goto_2

    .line 866
    .line 867
    .line 868
    :pswitch_29
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(Ljava/lang/Object;J)Ljava/util/List;

    .line 869
    move-result-object v6

    .line 870
    .line 871
    .line 872
    invoke-direct {p0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 873
    move-result-object v7

    .line 874
    .line 875
    .line 876
    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->p(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 877
    move-result v6

    .line 878
    .line 879
    goto/16 :goto_2

    .line 880
    .line 881
    .line 882
    :pswitch_2a
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(Ljava/lang/Object;J)Ljava/util/List;

    .line 883
    move-result-object v6

    .line 884
    .line 885
    .line 886
    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->u(ILjava/util/List;)I

    .line 887
    move-result v6

    .line 888
    .line 889
    goto/16 :goto_2

    .line 890
    .line 891
    .line 892
    :pswitch_2b
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(Ljava/lang/Object;J)Ljava/util/List;

    .line 893
    move-result-object v6

    .line 894
    .line 895
    .line 896
    invoke-static {v8, v6, v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a(ILjava/util/List;Z)I

    .line 897
    move-result v6

    .line 898
    .line 899
    goto/16 :goto_2

    .line 900
    .line 901
    .line 902
    :pswitch_2c
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(Ljava/lang/Object;J)Ljava/util/List;

    .line 903
    move-result-object v6

    .line 904
    .line 905
    .line 906
    invoke-static {v8, v6, v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->f(ILjava/util/List;Z)I

    .line 907
    move-result v6

    .line 908
    .line 909
    goto/16 :goto_2

    .line 910
    .line 911
    .line 912
    :pswitch_2d
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(Ljava/lang/Object;J)Ljava/util/List;

    .line 913
    move-result-object v6

    .line 914
    .line 915
    .line 916
    invoke-static {v8, v6, v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->h(ILjava/util/List;Z)I

    .line 917
    move-result v6

    .line 918
    .line 919
    goto/16 :goto_2

    .line 920
    .line 921
    .line 922
    :pswitch_2e
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(Ljava/lang/Object;J)Ljava/util/List;

    .line 923
    move-result-object v6

    .line 924
    .line 925
    .line 926
    invoke-static {v8, v6, v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->k(ILjava/util/List;Z)I

    .line 927
    move-result v6

    .line 928
    .line 929
    goto/16 :goto_2

    .line 930
    .line 931
    .line 932
    :pswitch_2f
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(Ljava/lang/Object;J)Ljava/util/List;

    .line 933
    move-result-object v6

    .line 934
    .line 935
    .line 936
    invoke-static {v8, v6, v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->x(ILjava/util/List;Z)I

    .line 937
    move-result v6

    .line 938
    .line 939
    goto/16 :goto_2

    .line 940
    .line 941
    .line 942
    :pswitch_30
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(Ljava/lang/Object;J)Ljava/util/List;

    .line 943
    move-result-object v6

    .line 944
    .line 945
    .line 946
    invoke-static {v8, v6, v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->m(ILjava/util/List;Z)I

    .line 947
    move-result v6

    .line 948
    .line 949
    goto/16 :goto_2

    .line 950
    .line 951
    .line 952
    :pswitch_31
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(Ljava/lang/Object;J)Ljava/util/List;

    .line 953
    move-result-object v6

    .line 954
    .line 955
    .line 956
    invoke-static {v8, v6, v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->f(ILjava/util/List;Z)I

    .line 957
    move-result v6

    .line 958
    .line 959
    goto/16 :goto_2

    .line 960
    .line 961
    .line 962
    :pswitch_32
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(Ljava/lang/Object;J)Ljava/util/List;

    .line 963
    move-result-object v6

    .line 964
    .line 965
    .line 966
    invoke-static {v8, v6, v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->h(ILjava/util/List;Z)I

    .line 967
    move-result v6

    .line 968
    .line 969
    goto/16 :goto_2

    .line 970
    .line 971
    .line 972
    :pswitch_33
    invoke-direct {p0, v1, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 973
    move-result v6

    .line 974
    .line 975
    if-eqz v6, :cond_11

    .line 976
    .line 977
    .line 978
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 979
    move-result-object v6

    .line 980
    .line 981
    check-cast v6, Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 982
    .line 983
    .line 984
    invoke-direct {p0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 985
    move-result-object v7

    .line 986
    .line 987
    .line 988
    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->A(ILandroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 989
    move-result v6

    .line 990
    .line 991
    goto/16 :goto_2

    .line 992
    .line 993
    .line 994
    :pswitch_34
    invoke-direct {p0, v1, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 995
    move-result v6

    .line 996
    .line 997
    if-eqz v6, :cond_11

    .line 998
    .line 999
    .line 1000
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->D(Ljava/lang/Object;J)J

    .line 1001
    move-result-wide v6

    .line 1002
    .line 1003
    .line 1004
    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->Z(IJ)I

    .line 1005
    move-result v6

    .line 1006
    .line 1007
    goto/16 :goto_2

    .line 1008
    .line 1009
    .line 1010
    :pswitch_35
    invoke-direct {p0, v1, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1011
    move-result v6

    .line 1012
    .line 1013
    if-eqz v6, :cond_11

    .line 1014
    .line 1015
    .line 1016
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 1017
    move-result v6

    .line 1018
    .line 1019
    .line 1020
    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->X(II)I

    .line 1021
    move-result v6

    .line 1022
    .line 1023
    goto/16 :goto_2

    .line 1024
    .line 1025
    .line 1026
    :pswitch_36
    invoke-direct {p0, v1, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1027
    move-result v6

    .line 1028
    .line 1029
    if-eqz v6, :cond_11

    .line 1030
    .line 1031
    .line 1032
    invoke-static {v8, v11, v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V(IJ)I

    .line 1033
    move-result v6

    .line 1034
    .line 1035
    goto/16 :goto_2

    .line 1036
    .line 1037
    .line 1038
    :pswitch_37
    invoke-direct {p0, v1, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1039
    move-result v6

    .line 1040
    .line 1041
    if-eqz v6, :cond_11

    .line 1042
    .line 1043
    .line 1044
    invoke-static {v8, v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T(II)I

    .line 1045
    move-result v6

    .line 1046
    .line 1047
    goto/16 :goto_2

    .line 1048
    .line 1049
    .line 1050
    :pswitch_38
    invoke-direct {p0, v1, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1051
    move-result v6

    .line 1052
    .line 1053
    if-eqz v6, :cond_11

    .line 1054
    .line 1055
    .line 1056
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 1057
    move-result v6

    .line 1058
    .line 1059
    .line 1060
    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->s(II)I

    .line 1061
    move-result v6

    .line 1062
    .line 1063
    goto/16 :goto_2

    .line 1064
    .line 1065
    .line 1066
    :pswitch_39
    invoke-direct {p0, v1, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1067
    move-result v6

    .line 1068
    .line 1069
    if-eqz v6, :cond_11

    .line 1070
    .line 1071
    .line 1072
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 1073
    move-result v6

    .line 1074
    .line 1075
    .line 1076
    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e0(II)I

    .line 1077
    move-result v6

    .line 1078
    .line 1079
    goto/16 :goto_2

    .line 1080
    .line 1081
    .line 1082
    :pswitch_3a
    invoke-direct {p0, v1, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1083
    move-result v6

    .line 1084
    .line 1085
    if-eqz v6, :cond_11

    .line 1086
    .line 1087
    .line 1088
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1089
    move-result-object v6

    .line 1090
    .line 1091
    check-cast v6, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 1092
    .line 1093
    .line 1094
    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->o(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    .line 1095
    move-result v6

    .line 1096
    .line 1097
    goto/16 :goto_2

    .line 1098
    .line 1099
    .line 1100
    :pswitch_3b
    invoke-direct {p0, v1, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1101
    move-result v6

    .line 1102
    .line 1103
    if-eqz v6, :cond_11

    .line 1104
    .line 1105
    .line 1106
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1107
    move-result-object v6

    .line 1108
    .line 1109
    .line 1110
    invoke-direct {p0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 1111
    move-result-object v7

    .line 1112
    .line 1113
    .line 1114
    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->o(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 1115
    move-result v6

    .line 1116
    .line 1117
    goto/16 :goto_2

    .line 1118
    .line 1119
    .line 1120
    :pswitch_3c
    invoke-direct {p0, v1, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1121
    move-result v6

    .line 1122
    .line 1123
    if-eqz v6, :cond_11

    .line 1124
    .line 1125
    .line 1126
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1127
    move-result-object v6

    .line 1128
    .line 1129
    instance-of v7, v6, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 1130
    .line 1131
    if-eqz v7, :cond_10

    .line 1132
    .line 1133
    check-cast v6, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 1134
    .line 1135
    .line 1136
    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->o(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    .line 1137
    move-result v6

    .line 1138
    .line 1139
    goto/16 :goto_2

    .line 1140
    .line 1141
    :cond_10
    check-cast v6, Ljava/lang/String;

    .line 1142
    .line 1143
    .line 1144
    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->b0(ILjava/lang/String;)I

    .line 1145
    move-result v6

    .line 1146
    .line 1147
    goto/16 :goto_2

    .line 1148
    .line 1149
    .line 1150
    :pswitch_3d
    invoke-direct {p0, v1, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1151
    move-result v6

    .line 1152
    .line 1153
    if-eqz v6, :cond_11

    .line 1154
    .line 1155
    .line 1156
    invoke-static {v8, v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->l(IZ)I

    .line 1157
    move-result v6

    .line 1158
    .line 1159
    goto/16 :goto_2

    .line 1160
    .line 1161
    .line 1162
    :pswitch_3e
    invoke-direct {p0, v1, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1163
    move-result v6

    .line 1164
    .line 1165
    if-eqz v6, :cond_11

    .line 1166
    .line 1167
    .line 1168
    invoke-static {v8, v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->u(II)I

    .line 1169
    move-result v6

    .line 1170
    .line 1171
    goto/16 :goto_2

    .line 1172
    .line 1173
    .line 1174
    :pswitch_3f
    invoke-direct {p0, v1, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1175
    move-result v6

    .line 1176
    .line 1177
    if-eqz v6, :cond_11

    .line 1178
    .line 1179
    .line 1180
    invoke-static {v8, v11, v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->w(IJ)I

    .line 1181
    move-result v6

    .line 1182
    .line 1183
    goto/16 :goto_2

    .line 1184
    .line 1185
    .line 1186
    :pswitch_40
    invoke-direct {p0, v1, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1187
    move-result v6

    .line 1188
    .line 1189
    if-eqz v6, :cond_11

    .line 1190
    .line 1191
    .line 1192
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 1193
    move-result v6

    .line 1194
    .line 1195
    .line 1196
    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->D(II)I

    .line 1197
    move-result v6

    .line 1198
    .line 1199
    goto/16 :goto_2

    .line 1200
    .line 1201
    .line 1202
    :pswitch_41
    invoke-direct {p0, v1, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1203
    move-result v6

    .line 1204
    .line 1205
    if-eqz v6, :cond_11

    .line 1206
    .line 1207
    .line 1208
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->D(Ljava/lang/Object;J)J

    .line 1209
    move-result-wide v6

    .line 1210
    .line 1211
    .line 1212
    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->g0(IJ)I

    .line 1213
    move-result v6

    .line 1214
    .line 1215
    goto/16 :goto_2

    .line 1216
    .line 1217
    .line 1218
    :pswitch_42
    invoke-direct {p0, v1, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1219
    move-result v6

    .line 1220
    .line 1221
    if-eqz v6, :cond_11

    .line 1222
    .line 1223
    .line 1224
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->D(Ljava/lang/Object;J)J

    .line 1225
    move-result-wide v6

    .line 1226
    .line 1227
    .line 1228
    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->F(IJ)I

    .line 1229
    move-result v6

    .line 1230
    .line 1231
    goto/16 :goto_2

    .line 1232
    .line 1233
    .line 1234
    :pswitch_43
    invoke-direct {p0, v1, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1235
    move-result v6

    .line 1236
    .line 1237
    if-eqz v6, :cond_11

    .line 1238
    .line 1239
    .line 1240
    invoke-static {v8, v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->y(IF)I

    .line 1241
    move-result v6

    .line 1242
    .line 1243
    goto/16 :goto_2

    .line 1244
    .line 1245
    .line 1246
    :pswitch_44
    invoke-direct {p0, v1, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 1247
    move-result v6

    .line 1248
    .line 1249
    if-eqz v6, :cond_11

    .line 1250
    .line 1251
    const-wide/16 v6, 0x0

    .line 1252
    .line 1253
    .line 1254
    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->q(ID)I

    .line 1255
    move-result v6

    .line 1256
    .line 1257
    goto/16 :goto_2

    .line 1258
    .line 1259
    :cond_11
    :goto_4
    add-int/lit8 v4, v4, 0x3

    .line 1260
    .line 1261
    goto/16 :goto_0

    .line 1262
    .line 1263
    :cond_12
    iget-object v2, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    .line 1264
    .line 1265
    .line 1266
    invoke-direct {p0, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->s(Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I

    .line 1267
    move-result v1

    .line 1268
    add-int/2addr v5, v1

    .line 1269
    return v5

    .line 1270
    nop

    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
    .line 1391
    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private r0(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p2, Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-interface {p3, p1, p2}, Landroidx/datastore/preferences/protobuf/Writer;->writeString(ILjava/lang/String;)V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    check-cast p2, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 13
    .line 14
    .line 15
    invoke-interface {p3, p1, p2}, Landroidx/datastore/preferences/protobuf/Writer;->a(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    .line 16
    :goto_0
    return-void
.end method

.method private s(Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/datastore/preferences/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->h(Ljava/lang/Object;)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method private s0(Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/datastore/preferences/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TT;",
            "Landroidx/datastore/preferences/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->t(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 8
    return-void
.end method

.method private static t(Ljava/lang/Object;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static u(I)Z
    .locals 1

    .line 1
    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private v(Ljava/lang/Object;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->proto3:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-eqz v0, :cond_11

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m0(I)I

    .line 10
    move-result p2

    .line 11
    .line 12
    .line 13
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 14
    move-result-wide v3

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->l0(I)I

    .line 18
    move-result p2

    .line 19
    .line 20
    const-wide/16 v5, 0x0

    .line 21
    .line 22
    .line 23
    packed-switch p2, :pswitch_data_0

    .line 24
    .line 25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    .line 28
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 29
    throw p1

    .line 30
    .line 31
    .line 32
    :pswitch_0
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    move v1, v2

    .line 37
    :cond_0
    return v1

    .line 38
    .line 39
    .line 40
    :pswitch_1
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->D(Ljava/lang/Object;J)J

    .line 41
    move-result-wide p1

    .line 42
    .line 43
    cmp-long p1, p1, v5

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    move v1, v2

    .line 47
    :cond_1
    return v1

    .line 48
    .line 49
    .line 50
    :pswitch_2
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 51
    move-result p1

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    move v1, v2

    .line 55
    :cond_2
    return v1

    .line 56
    .line 57
    .line 58
    :pswitch_3
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->D(Ljava/lang/Object;J)J

    .line 59
    move-result-wide p1

    .line 60
    .line 61
    cmp-long p1, p1, v5

    .line 62
    .line 63
    if-eqz p1, :cond_3

    .line 64
    move v1, v2

    .line 65
    :cond_3
    return v1

    .line 66
    .line 67
    .line 68
    :pswitch_4
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 69
    move-result p1

    .line 70
    .line 71
    if-eqz p1, :cond_4

    .line 72
    move v1, v2

    .line 73
    :cond_4
    return v1

    .line 74
    .line 75
    .line 76
    :pswitch_5
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 77
    move-result p1

    .line 78
    .line 79
    if-eqz p1, :cond_5

    .line 80
    move v1, v2

    .line 81
    :cond_5
    return v1

    .line 82
    .line 83
    .line 84
    :pswitch_6
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 85
    move-result p1

    .line 86
    .line 87
    if-eqz p1, :cond_6

    .line 88
    move v1, v2

    .line 89
    :cond_6
    return v1

    .line 90
    .line 91
    :pswitch_7
    sget-object p2, Landroidx/datastore/preferences/protobuf/ByteString;->EMPTY:Landroidx/datastore/preferences/protobuf/ByteString;

    .line 92
    .line 93
    .line 94
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 95
    move-result-object p1

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    .line 99
    move-result p1

    .line 100
    xor-int/2addr p1, v2

    .line 101
    return p1

    .line 102
    .line 103
    .line 104
    :pswitch_8
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    if-eqz p1, :cond_7

    .line 108
    move v1, v2

    .line 109
    :cond_7
    return v1

    .line 110
    .line 111
    .line 112
    :pswitch_9
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 113
    move-result-object p1

    .line 114
    .line 115
    instance-of p2, p1, Ljava/lang/String;

    .line 116
    .line 117
    if-eqz p2, :cond_8

    .line 118
    .line 119
    check-cast p1, Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 123
    move-result p1

    .line 124
    xor-int/2addr p1, v2

    .line 125
    return p1

    .line 126
    .line 127
    :cond_8
    instance-of p2, p1, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 128
    .line 129
    if-eqz p2, :cond_9

    .line 130
    .line 131
    sget-object p2, Landroidx/datastore/preferences/protobuf/ByteString;->EMPTY:Landroidx/datastore/preferences/protobuf/ByteString;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    .line 135
    move-result p1

    .line 136
    xor-int/2addr p1, v2

    .line 137
    return p1

    .line 138
    .line 139
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 140
    .line 141
    .line 142
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 143
    throw p1

    .line 144
    .line 145
    .line 146
    :pswitch_a
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->s(Ljava/lang/Object;J)Z

    .line 147
    move-result p1

    .line 148
    return p1

    .line 149
    .line 150
    .line 151
    :pswitch_b
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 152
    move-result p1

    .line 153
    .line 154
    if-eqz p1, :cond_a

    .line 155
    move v1, v2

    .line 156
    :cond_a
    return v1

    .line 157
    .line 158
    .line 159
    :pswitch_c
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->D(Ljava/lang/Object;J)J

    .line 160
    move-result-wide p1

    .line 161
    .line 162
    cmp-long p1, p1, v5

    .line 163
    .line 164
    if-eqz p1, :cond_b

    .line 165
    move v1, v2

    .line 166
    :cond_b
    return v1

    .line 167
    .line 168
    .line 169
    :pswitch_d
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 170
    move-result p1

    .line 171
    .line 172
    if-eqz p1, :cond_c

    .line 173
    move v1, v2

    .line 174
    :cond_c
    return v1

    .line 175
    .line 176
    .line 177
    :pswitch_e
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->D(Ljava/lang/Object;J)J

    .line 178
    move-result-wide p1

    .line 179
    .line 180
    cmp-long p1, p1, v5

    .line 181
    .line 182
    if-eqz p1, :cond_d

    .line 183
    move v1, v2

    .line 184
    :cond_d
    return v1

    .line 185
    .line 186
    .line 187
    :pswitch_f
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->D(Ljava/lang/Object;J)J

    .line 188
    move-result-wide p1

    .line 189
    .line 190
    cmp-long p1, p1, v5

    .line 191
    .line 192
    if-eqz p1, :cond_e

    .line 193
    move v1, v2

    .line 194
    :cond_e
    return v1

    .line 195
    .line 196
    .line 197
    :pswitch_10
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->A(Ljava/lang/Object;J)F

    .line 198
    move-result p1

    .line 199
    const/4 p2, 0x0

    .line 200
    .line 201
    cmpl-float p1, p1, p2

    .line 202
    .line 203
    if-eqz p1, :cond_f

    .line 204
    move v1, v2

    .line 205
    :cond_f
    return v1

    .line 206
    .line 207
    .line 208
    :pswitch_11
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->z(Ljava/lang/Object;J)D

    .line 209
    move-result-wide p1

    .line 210
    .line 211
    const-wide/16 v3, 0x0

    .line 212
    .line 213
    cmpl-double p1, p1, v3

    .line 214
    .line 215
    if-eqz p1, :cond_10

    .line 216
    move v1, v2

    .line 217
    :cond_10
    return v1

    .line 218
    .line 219
    .line 220
    :cond_11
    invoke-direct {p0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->b0(I)I

    .line 221
    move-result p2

    .line 222
    .line 223
    ushr-int/lit8 v0, p2, 0x14

    .line 224
    .line 225
    shl-int v0, v2, v0

    .line 226
    .line 227
    .line 228
    const v3, 0xfffff

    .line 229
    and-int/2addr p2, v3

    .line 230
    int-to-long v3, p2

    .line 231
    .line 232
    .line 233
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 234
    move-result p1

    .line 235
    and-int/2addr p1, v0

    .line 236
    .line 237
    if-eqz p1, :cond_12

    .line 238
    move v1, v2

    .line 239
    :cond_12
    return v1

    .line 240
    nop

    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private w(Ljava/lang/Object;III)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)Z"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->proto3:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(Ljava/lang/Object;I)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    .line 11
    :cond_0
    and-int p1, p3, p4

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 p1, 0x0

    .line 17
    :goto_0
    return p1
.end method

.method private static x(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/Schema;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p0}, Landroidx/datastore/preferences/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private y(Ljava/lang/Object;II)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Ljava/util/List;

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result p2

    .line 15
    const/4 v0, 0x1

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    return v0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-direct {p0, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 22
    move-result-object p2

    .line 23
    const/4 p3, 0x0

    .line 24
    move v1, p3

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 28
    move-result v2

    .line 29
    .line 30
    if-ge v1, v2, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-interface {p2, v2}, Landroidx/datastore/preferences/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    .line 38
    move-result v2

    .line 39
    .line 40
    if-nez v2, :cond_1

    .line 41
    return p3

    .line 42
    .line 43
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    return v0
.end method

.method private z(Ljava/lang/Object;II)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 3
    .line 4
    .line 5
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 6
    move-result-wide v1

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->forMapData(Ljava/lang/Object;)Ljava/util/Map;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 18
    move-result p2

    .line 19
    const/4 v0, 0x1

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    return v0

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-direct {p0, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Ljava/lang/Object;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 29
    .line 30
    .line 31
    invoke-interface {p3, p2}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    iget-object p2, p2, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->valueType:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->a()Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    sget-object p3, Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;->MESSAGE:Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;

    .line 41
    .line 42
    if-eq p2, p3, :cond_1

    .line 43
    return v0

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object p1

    .line 52
    const/4 p2, 0x0

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    move-result p3

    .line 57
    .line 58
    if-eqz p3, :cond_4

    .line 59
    .line 60
    .line 61
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object p3

    .line 63
    .line 64
    if-nez p2, :cond_3

    .line 65
    .line 66
    .line 67
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Protobuf;->a()Landroidx/datastore/preferences/protobuf/Protobuf;

    .line 68
    move-result-object p2

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v1}, Landroidx/datastore/preferences/protobuf/Protobuf;->d(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/Schema;

    .line 76
    move-result-object p2

    .line 77
    .line 78
    .line 79
    :cond_3
    invoke-interface {p2, p3}, Landroidx/datastore/preferences/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    .line 80
    move-result p3

    .line 81
    .line 82
    if-nez p3, :cond_2

    .line 83
    const/4 p1, 0x0

    .line 84
    return p1

    .line 85
    :cond_4
    return v0
.end method


# virtual methods
.method W(Ljava/lang/Object;[BIIILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    sget-object v10, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    move/from16 v0, p3

    move/from16 v2, v16

    move v3, v2

    move v6, v3

    const/4 v1, -0x1

    const/4 v7, -0x1

    :goto_0
    if-ge v0, v13, :cond_1c

    add-int/lit8 v3, v0, 0x1

    .line 1
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 2
    invoke-static {v0, v12, v3, v9}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->H(I[BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 3
    iget v3, v9, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->int1:I

    move v4, v0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    move v4, v3

    :goto_1
    ushr-int/lit8 v3, v5, 0x3

    and-int/lit8 v0, v5, 0x7

    const/4 v8, 0x3

    if-le v3, v1, :cond_1

    .line 4
    div-int/2addr v2, v8

    invoke-direct {v15, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->a0(II)I

    move-result v1

    :goto_2
    move v2, v1

    const/4 v1, -0x1

    goto :goto_3

    .line 5
    :cond_1
    invoke-direct {v15, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->Z(I)I

    move-result v1

    goto :goto_2

    :goto_3
    if-ne v2, v1, :cond_2

    move/from16 v17, v3

    move v2, v4

    move v8, v5

    move/from16 v22, v6

    move/from16 v19, v7

    move-object/from16 v27, v10

    move v0, v11

    move/from16 v20, v16

    goto/16 :goto_15

    :cond_2
    iget-object v1, v15, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v18, v2, 0x1

    .line 6
    aget v1, v1, v18

    .line 7
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->l0(I)I

    move-result v8

    .line 8
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    move-result-wide v11

    move/from16 v18, v5

    const/16 v5, 0x11

    move/from16 v19, v1

    if-gt v8, v5, :cond_11

    iget-object v5, v15, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v20, v2, 0x2

    .line 9
    aget v5, v5, v20

    ushr-int/lit8 v20, v5, 0x14

    const/4 v1, 0x1

    shl-int v20, v1, v20

    const v22, 0xfffff

    and-int v5, v5, v22

    if-eq v5, v7, :cond_4

    const/4 v13, -0x1

    move/from16 v17, v2

    if-eq v7, v13, :cond_3

    int-to-long v1, v7

    .line 10
    invoke-virtual {v10, v14, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_3
    int-to-long v1, v5

    .line 11
    invoke-virtual {v10, v14, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    move v6, v1

    move v7, v5

    goto :goto_4

    :cond_4
    move/from16 v17, v2

    const/4 v13, -0x1

    :goto_4
    const/4 v1, 0x5

    packed-switch v8, :pswitch_data_0

    move-object/from16 v12, p2

    move v11, v4

    move/from16 v8, v17

    move/from16 v17, v3

    move/from16 v28, v18

    move/from16 v18, v13

    move/from16 v13, v28

    goto/16 :goto_10

    :pswitch_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    shl-int/lit8 v0, v3, 0x3

    or-int/lit8 v5, v0, 0x4

    move/from16 v2, v17

    .line 12
    invoke-direct {v15, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v0

    move-object/from16 v1, p2

    move v8, v2

    move v2, v4

    move/from16 v17, v3

    move/from16 v3, p4

    move v4, v5

    move/from16 v13, v18

    move-object/from16 v5, p6

    .line 13
    invoke-static/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->n(Landroidx/datastore/preferences/protobuf/Schema;[BIIILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    and-int v1, v6, v20

    if-nez v1, :cond_5

    .line 14
    iget-object v1, v9, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v10, v14, v11, v12, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 15
    :cond_5
    invoke-virtual {v10, v14, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 16
    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/Internal;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 17
    invoke-virtual {v10, v14, v11, v12, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_5
    or-int v6, v6, v20

    move-object/from16 v12, p2

    :goto_6
    move/from16 v11, p5

    move v2, v8

    move v3, v13

    move/from16 v1, v17

    :goto_7
    move/from16 v13, p4

    goto/16 :goto_0

    :cond_6
    move/from16 v8, v17

    move/from16 v13, v18

    move/from16 v17, v3

    :cond_7
    move-object/from16 v12, p2

    :cond_8
    move v11, v4

    const/16 v18, -0x1

    goto/16 :goto_10

    :pswitch_1
    move/from16 v8, v17

    move/from16 v13, v18

    move/from16 v17, v3

    if-nez v0, :cond_7

    move-wide v2, v11

    move-object/from16 v12, p2

    .line 18
    invoke-static {v12, v4, v9}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->L([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v11

    .line 19
    iget-wide v0, v9, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->long1:J

    .line 20
    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->c(J)J

    move-result-wide v4

    move-object v0, v10

    move-object/from16 v1, p1

    .line 21
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_8
    or-int v6, v6, v20

    move v2, v8

    move v0, v11

    move v3, v13

    move/from16 v1, v17

    move/from16 v13, p4

    :goto_9
    move/from16 v11, p5

    goto/16 :goto_0

    :pswitch_2
    move/from16 v8, v17

    move/from16 v13, v18

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    if-nez v0, :cond_8

    .line 22
    invoke-static {v12, v4, v9}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->I([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 23
    iget v1, v9, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->int1:I

    .line 24
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->b(I)I

    move-result v1

    .line 25
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_a
    or-int v6, v6, v20

    goto :goto_6

    :pswitch_3
    move/from16 v8, v17

    move/from16 v13, v18

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    if-nez v0, :cond_8

    .line 26
    invoke-static {v12, v4, v9}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->I([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 27
    iget v1, v9, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->int1:I

    .line 28
    invoke-direct {v15, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 29
    invoke-interface {v4, v1}, Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_b

    .line 30
    :cond_9
    invoke-static/range {p1 .. p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v13, v1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->n(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 31
    :cond_a
    :goto_b
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    :pswitch_4
    move/from16 v8, v17

    move/from16 v13, v18

    const/4 v1, 0x2

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    if-ne v0, v1, :cond_8

    .line 32
    invoke-static {v12, v4, v9}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->b([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 33
    iget-object v1, v9, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_a

    :pswitch_5
    move/from16 v8, v17

    move/from16 v13, v18

    const/4 v1, 0x2

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    if-ne v0, v1, :cond_c

    .line 34
    invoke-direct {v15, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v0

    move/from16 v11, p4

    const/16 v18, -0x1

    .line 35
    invoke-static {v0, v12, v4, v11, v9}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->p(Landroidx/datastore/preferences/protobuf/Schema;[BIILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    and-int v1, v6, v20

    if-nez v1, :cond_b

    .line 36
    iget-object v1, v9, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_c

    .line 37
    :cond_b
    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, v9, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 38
    invoke-static {v1, v4}, Landroidx/datastore/preferences/protobuf/Internal;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 39
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_c
    or-int v6, v6, v20

    move v2, v8

    move v3, v13

    move/from16 v1, v17

    move v13, v11

    goto/16 :goto_9

    :cond_c
    move/from16 v11, p4

    const/16 v18, -0x1

    :cond_d
    move v11, v4

    goto/16 :goto_10

    :pswitch_6
    move/from16 v8, v17

    const/4 v1, 0x2

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    move/from16 v11, p4

    move/from16 v28, v18

    move/from16 v18, v13

    move/from16 v13, v28

    if-ne v0, v1, :cond_d

    const/high16 v0, 0x20000000

    and-int v0, v19, v0

    if-nez v0, :cond_e

    .line 40
    invoke-static {v12, v4, v9}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->C([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto :goto_d

    .line 41
    :cond_e
    invoke-static {v12, v4, v9}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->F([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 42
    :goto_d
    iget-object v1, v9, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_c

    :pswitch_7
    move/from16 v8, v17

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    move/from16 v11, p4

    move/from16 v28, v18

    move/from16 v18, v13

    move/from16 v13, v28

    if-nez v0, :cond_d

    .line 43
    invoke-static {v12, v4, v9}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->L([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 44
    iget-wide v4, v9, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v23, 0x0

    cmp-long v1, v4, v23

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_e

    :cond_f
    move/from16 v1, v16

    :goto_e
    invoke-static {v14, v2, v3, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->K(Ljava/lang/Object;JZ)V

    goto :goto_c

    :pswitch_8
    move/from16 v8, v17

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    move/from16 v11, p4

    move/from16 v28, v18

    move/from16 v18, v13

    move/from16 v13, v28

    if-ne v0, v1, :cond_d

    .line 45
    invoke-static {v12, v4}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->h([BI)I

    move-result v0

    invoke-virtual {v10, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    goto :goto_c

    :pswitch_9
    move/from16 v8, v17

    const/4 v1, 0x1

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    move/from16 v11, p4

    move/from16 v28, v18

    move/from16 v18, v13

    move/from16 v13, v28

    if-ne v0, v1, :cond_d

    .line 46
    invoke-static {v12, v4}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->j([BI)J

    move-result-wide v21

    move-object v0, v10

    move-object/from16 v1, p1

    move v11, v4

    move-wide/from16 v4, v21

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_f
    add-int/lit8 v0, v11, 0x8

    goto/16 :goto_a

    :pswitch_a
    move/from16 v8, v17

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    move v11, v4

    move/from16 v28, v18

    move/from16 v18, v13

    move/from16 v13, v28

    if-nez v0, :cond_10

    .line 47
    invoke-static {v12, v11, v9}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->I([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 48
    iget v1, v9, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_b
    move/from16 v8, v17

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    move v11, v4

    move/from16 v28, v18

    move/from16 v18, v13

    move/from16 v13, v28

    if-nez v0, :cond_10

    .line 49
    invoke-static {v12, v11, v9}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->L([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v11

    .line 50
    iget-wide v4, v9, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->long1:J

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_8

    :pswitch_c
    move/from16 v8, v17

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    move v11, v4

    move/from16 v28, v18

    move/from16 v18, v13

    move/from16 v13, v28

    if-ne v0, v1, :cond_10

    .line 51
    invoke-static {v12, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->l([BI)F

    move-result v0

    invoke-static {v14, v2, v3, v0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->S(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v11, 0x4

    goto/16 :goto_a

    :pswitch_d
    move/from16 v8, v17

    const/4 v1, 0x1

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    move v11, v4

    move/from16 v28, v18

    move/from16 v18, v13

    move/from16 v13, v28

    if-ne v0, v1, :cond_10

    .line 52
    invoke-static {v12, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->d([BI)D

    move-result-wide v0

    invoke-static {v14, v2, v3, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->R(Ljava/lang/Object;JD)V

    goto :goto_f

    :cond_10
    :goto_10
    move/from16 v0, p5

    move/from16 v22, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move-object/from16 v27, v10

    move v2, v11

    move v8, v13

    goto/16 :goto_15

    :cond_11
    move v5, v2

    move/from16 v17, v3

    move-wide v2, v11

    move/from16 v13, v18

    const/16 v18, -0x1

    move-object/from16 v12, p2

    move v11, v4

    const/16 v1, 0x1b

    if-ne v8, v1, :cond_15

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 53
    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 54
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_13

    .line 55
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_12

    const/16 v1, 0xa

    goto :goto_11

    :cond_12
    mul-int/lit8 v1, v1, 0x2

    .line 56
    :goto_11
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 57
    invoke-virtual {v10, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_13
    move-object v8, v0

    .line 58
    invoke-direct {v15, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v0

    move v1, v13

    move-object/from16 v2, p2

    move v3, v11

    move/from16 v4, p4

    move/from16 v20, v5

    move-object v5, v8

    move/from16 v22, v6

    move-object/from16 v6, p6

    .line 59
    invoke-static/range {v0 .. v6}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->q(Landroidx/datastore/preferences/protobuf/Schema;I[BIILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move/from16 v11, p5

    move v3, v13

    move/from16 v1, v17

    move/from16 v2, v20

    move/from16 v6, v22

    goto/16 :goto_7

    :cond_14
    move/from16 v20, v5

    move/from16 v22, v6

    move/from16 v19, v7

    move-object/from16 v27, v10

    move v15, v11

    move/from16 v25, v13

    goto/16 :goto_14

    :cond_15
    move/from16 v20, v5

    move/from16 v22, v6

    const/16 v1, 0x31

    if-gt v8, v1, :cond_17

    move/from16 v1, v19

    int-to-long v5, v1

    move v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v23, v2

    move-object/from16 v2, p2

    move v3, v11

    move/from16 p3, v4

    move/from16 v4, p4

    move-wide/from16 v25, v5

    move v5, v13

    move/from16 v6, v17

    move/from16 v19, v7

    move/from16 v7, p3

    move/from16 v18, v8

    move/from16 v8, v20

    move-object/from16 v27, v10

    move-wide/from16 v9, v25

    move v15, v11

    move/from16 v11, v18

    move/from16 v25, v13

    move-wide/from16 v12, v23

    move-object/from16 v14, p6

    .line 60
    invoke-direct/range {v0 .. v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->Y(Ljava/lang/Object;[BIIIIIIJIJLandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-eq v0, v15, :cond_16

    :goto_12
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v1, v17

    move/from16 v7, v19

    move/from16 v2, v20

    move/from16 v6, v22

    move/from16 v3, v25

    :goto_13
    move-object/from16 v10, v27

    goto/16 :goto_0

    :cond_16
    move v2, v0

    move/from16 v8, v25

    move/from16 v0, p5

    goto/16 :goto_15

    :cond_17
    move/from16 p3, v0

    move-wide/from16 v23, v2

    move/from16 v18, v8

    move-object/from16 v27, v10

    move v15, v11

    move/from16 v25, v13

    move/from16 v1, v19

    move/from16 v19, v7

    const/16 v0, 0x32

    move/from16 v9, v18

    if-ne v9, v0, :cond_19

    move/from16 v7, p3

    const/4 v0, 0x2

    if-ne v7, v0, :cond_18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v20

    move-wide/from16 v6, v23

    move-object/from16 v8, p6

    .line 61
    invoke-direct/range {v0 .. v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->U(Ljava/lang/Object;[BIIIJLandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-eq v0, v15, :cond_16

    goto :goto_12

    :cond_18
    :goto_14
    move/from16 v0, p5

    move v2, v15

    move/from16 v8, v25

    goto :goto_15

    :cond_19
    move/from16 v7, p3

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v25

    move/from16 v6, v17

    move-wide/from16 v10, v23

    move/from16 v12, v20

    move-object/from16 v13, p6

    .line 62
    invoke-direct/range {v0 .. v13}, Landroidx/datastore/preferences/protobuf/MessageSchema;->V(Ljava/lang/Object;[BIIIIIIIJILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-eq v0, v15, :cond_16

    goto :goto_12

    :goto_15
    if-ne v8, v0, :cond_1a

    if-eqz v0, :cond_1a

    move-object/from16 v9, p0

    move v10, v0

    move v0, v2

    move v3, v8

    move/from16 v7, v19

    move/from16 v6, v22

    :goto_16
    const/4 v1, -0x1

    goto :goto_18

    :cond_1a
    move-object/from16 v9, p0

    move v10, v0

    iget-boolean v0, v9, Landroidx/datastore/preferences/protobuf/MessageSchema;->hasExtensions:Z

    move-object/from16 v11, p6

    if-eqz v0, :cond_1b

    .line 63
    iget-object v0, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->extensionRegistry:Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    .line 64
    invoke-static {}, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->b()Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    move-result-object v1

    if-eq v0, v1, :cond_1b

    iget-object v5, v9, Landroidx/datastore/preferences/protobuf/MessageSchema;->defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

    iget-object v6, v9, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    move v0, v8

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v7, p6

    .line 65
    invoke-static/range {v0 .. v7}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->g(I[BIILjava/lang/Object;Landroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto :goto_17

    .line 66
    :cond_1b
    invoke-static/range {p1 .. p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object v4

    move v0, v8

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 67
    invoke-static/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->G(I[BIILandroidx/datastore/preferences/protobuf/UnknownFieldSetLite;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    :goto_17
    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v3, v8

    move-object v15, v9

    move-object v9, v11

    move/from16 v1, v17

    move/from16 v7, v19

    move/from16 v2, v20

    move/from16 v6, v22

    move v11, v10

    goto/16 :goto_13

    :cond_1c
    move/from16 v22, v6

    move/from16 v19, v7

    move-object/from16 v27, v10

    move v10, v11

    move-object v9, v15

    goto :goto_16

    :goto_18
    if-eq v7, v1, :cond_1d

    int-to-long v1, v7

    move-object/from16 v4, p1

    move-object/from16 v5, v27

    .line 68
    invoke-virtual {v5, v4, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_19

    :cond_1d
    move-object/from16 v4, p1

    :goto_19
    iget v1, v9, Landroidx/datastore/preferences/protobuf/MessageSchema;->checkInitializedCount:I

    const/4 v2, 0x0

    :goto_1a
    iget v5, v9, Landroidx/datastore/preferences/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v1, v5, :cond_1e

    iget-object v5, v9, Landroidx/datastore/preferences/protobuf/MessageSchema;->intArray:[I

    .line 69
    aget v5, v5, v1

    iget-object v6, v9, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    .line 70
    invoke-direct {v9, v4, v5, v2, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_1e
    if-eqz v2, :cond_1f

    iget-object v1, v9, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    .line 71
    invoke-virtual {v1, v4, v2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    if-nez v10, :cond_21

    move/from16 v1, p4

    if-ne v0, v1, :cond_20

    goto :goto_1b

    .line 72
    :cond_20
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->g()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_21
    move/from16 v1, p4

    if-gt v0, v1, :cond_22

    if-ne v3, v10, :cond_22

    :goto_1b
    return v0

    .line 73
    :cond_22
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->g()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/datastore/preferences/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p2}, Landroidx/datastore/preferences/protobuf/Writer;->fieldOrder()Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;->DESCENDING:Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p0(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->proto3:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o0(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n0(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 24
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Reader;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/datastore/preferences/protobuf/Reader;",
            "Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    .line 8
    move-object v0, p0

    .line 9
    move-object v3, p1

    .line 10
    move-object v4, p2

    .line 11
    move-object v5, p3

    .line 12
    .line 13
    .line 14
    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->F(Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Reader;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    .line 15
    return-void
.end method

.method public c(Ljava/lang/Object;[BIILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->proto3:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct/range {p0 .. p5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->X(Ljava/lang/Object;[BIILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v6, 0x0

    .line 10
    move-object v1, p0

    .line 11
    move-object v2, p1

    .line 12
    move-object v3, p2

    .line 13
    move v4, p3

    .line 14
    move v5, p4

    .line 15
    move-object v7, p5

    .line 16
    .line 17
    .line 18
    invoke-virtual/range {v1 .. v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->W(Ljava/lang/Object;[BIIILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 19
    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    .line 7
    :goto_0
    if-ge v2, v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1, p2, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->i(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 11
    move-result v3

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    return v1

    .line 15
    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x3

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    return v1

    .line 37
    .line 38
    :cond_2
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->hasExtensions:Z

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p2}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;

    .line 52
    move-result-object p2

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/FieldSet;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result p1

    .line 57
    return p1

    .line 58
    :cond_3
    const/4 p1, 0x1

    .line 59
    return p1
.end method

.method public getSerializedSize(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->proto3:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(Ljava/lang/Object;)I

    .line 8
    move-result p1

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(Ljava/lang/Object;)I

    .line 13
    move-result p1

    .line 14
    :goto_0
    return p1
.end method

.method public hashCode(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    .line 7
    :goto_0
    if-ge v1, v0, :cond_2

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m0(I)I

    .line 11
    move-result v3

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 15
    move-result v4

    .line 16
    .line 17
    .line 18
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 19
    move-result-wide v5

    .line 20
    .line 21
    .line 22
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->l0(I)I

    .line 23
    move-result v3

    .line 24
    .line 25
    const/16 v7, 0x25

    .line 26
    .line 27
    .line 28
    packed-switch v3, :pswitch_data_0

    .line 29
    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    .line 33
    :pswitch_0
    invoke-direct {p0, p1, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 34
    move-result v3

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    mul-int/lit8 v2, v2, 0x35

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 46
    move-result v3

    .line 47
    :goto_1
    add-int/2addr v2, v3

    .line 48
    .line 49
    goto/16 :goto_3

    .line 50
    .line 51
    .line 52
    :pswitch_1
    invoke-direct {p0, p1, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 53
    move-result v3

    .line 54
    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    mul-int/lit8 v2, v2, 0x35

    .line 58
    .line 59
    .line 60
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->T(Ljava/lang/Object;J)J

    .line 61
    move-result-wide v3

    .line 62
    .line 63
    .line 64
    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/Internal;->f(J)I

    .line 65
    move-result v3

    .line 66
    goto :goto_1

    .line 67
    .line 68
    .line 69
    :pswitch_2
    invoke-direct {p0, p1, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 70
    move-result v3

    .line 71
    .line 72
    if-eqz v3, :cond_1

    .line 73
    .line 74
    mul-int/lit8 v2, v2, 0x35

    .line 75
    .line 76
    .line 77
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->S(Ljava/lang/Object;J)I

    .line 78
    move-result v3

    .line 79
    goto :goto_1

    .line 80
    .line 81
    .line 82
    :pswitch_3
    invoke-direct {p0, p1, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 83
    move-result v3

    .line 84
    .line 85
    if-eqz v3, :cond_1

    .line 86
    .line 87
    mul-int/lit8 v2, v2, 0x35

    .line 88
    .line 89
    .line 90
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->T(Ljava/lang/Object;J)J

    .line 91
    move-result-wide v3

    .line 92
    .line 93
    .line 94
    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/Internal;->f(J)I

    .line 95
    move-result v3

    .line 96
    goto :goto_1

    .line 97
    .line 98
    .line 99
    :pswitch_4
    invoke-direct {p0, p1, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 100
    move-result v3

    .line 101
    .line 102
    if-eqz v3, :cond_1

    .line 103
    .line 104
    mul-int/lit8 v2, v2, 0x35

    .line 105
    .line 106
    .line 107
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->S(Ljava/lang/Object;J)I

    .line 108
    move-result v3

    .line 109
    goto :goto_1

    .line 110
    .line 111
    .line 112
    :pswitch_5
    invoke-direct {p0, p1, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 113
    move-result v3

    .line 114
    .line 115
    if-eqz v3, :cond_1

    .line 116
    .line 117
    mul-int/lit8 v2, v2, 0x35

    .line 118
    .line 119
    .line 120
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->S(Ljava/lang/Object;J)I

    .line 121
    move-result v3

    .line 122
    goto :goto_1

    .line 123
    .line 124
    .line 125
    :pswitch_6
    invoke-direct {p0, p1, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 126
    move-result v3

    .line 127
    .line 128
    if-eqz v3, :cond_1

    .line 129
    .line 130
    mul-int/lit8 v2, v2, 0x35

    .line 131
    .line 132
    .line 133
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->S(Ljava/lang/Object;J)I

    .line 134
    move-result v3

    .line 135
    goto :goto_1

    .line 136
    .line 137
    .line 138
    :pswitch_7
    invoke-direct {p0, p1, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 139
    move-result v3

    .line 140
    .line 141
    if-eqz v3, :cond_1

    .line 142
    .line 143
    mul-int/lit8 v2, v2, 0x35

    .line 144
    .line 145
    .line 146
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 147
    move-result-object v3

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 151
    move-result v3

    .line 152
    goto :goto_1

    .line 153
    .line 154
    .line 155
    :pswitch_8
    invoke-direct {p0, p1, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 156
    move-result v3

    .line 157
    .line 158
    if-eqz v3, :cond_1

    .line 159
    .line 160
    .line 161
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 162
    move-result-object v3

    .line 163
    .line 164
    mul-int/lit8 v2, v2, 0x35

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 168
    move-result v3

    .line 169
    goto :goto_1

    .line 170
    .line 171
    .line 172
    :pswitch_9
    invoke-direct {p0, p1, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 173
    move-result v3

    .line 174
    .line 175
    if-eqz v3, :cond_1

    .line 176
    .line 177
    mul-int/lit8 v2, v2, 0x35

    .line 178
    .line 179
    .line 180
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 181
    move-result-object v3

    .line 182
    .line 183
    check-cast v3, Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 187
    move-result v3

    .line 188
    .line 189
    goto/16 :goto_1

    .line 190
    .line 191
    .line 192
    :pswitch_a
    invoke-direct {p0, p1, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 193
    move-result v3

    .line 194
    .line 195
    if-eqz v3, :cond_1

    .line 196
    .line 197
    mul-int/lit8 v2, v2, 0x35

    .line 198
    .line 199
    .line 200
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->P(Ljava/lang/Object;J)Z

    .line 201
    move-result v3

    .line 202
    .line 203
    .line 204
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/Internal;->c(Z)I

    .line 205
    move-result v3

    .line 206
    .line 207
    goto/16 :goto_1

    .line 208
    .line 209
    .line 210
    :pswitch_b
    invoke-direct {p0, p1, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 211
    move-result v3

    .line 212
    .line 213
    if-eqz v3, :cond_1

    .line 214
    .line 215
    mul-int/lit8 v2, v2, 0x35

    .line 216
    .line 217
    .line 218
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->S(Ljava/lang/Object;J)I

    .line 219
    move-result v3

    .line 220
    .line 221
    goto/16 :goto_1

    .line 222
    .line 223
    .line 224
    :pswitch_c
    invoke-direct {p0, p1, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 225
    move-result v3

    .line 226
    .line 227
    if-eqz v3, :cond_1

    .line 228
    .line 229
    mul-int/lit8 v2, v2, 0x35

    .line 230
    .line 231
    .line 232
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->T(Ljava/lang/Object;J)J

    .line 233
    move-result-wide v3

    .line 234
    .line 235
    .line 236
    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/Internal;->f(J)I

    .line 237
    move-result v3

    .line 238
    .line 239
    goto/16 :goto_1

    .line 240
    .line 241
    .line 242
    :pswitch_d
    invoke-direct {p0, p1, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 243
    move-result v3

    .line 244
    .line 245
    if-eqz v3, :cond_1

    .line 246
    .line 247
    mul-int/lit8 v2, v2, 0x35

    .line 248
    .line 249
    .line 250
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->S(Ljava/lang/Object;J)I

    .line 251
    move-result v3

    .line 252
    .line 253
    goto/16 :goto_1

    .line 254
    .line 255
    .line 256
    :pswitch_e
    invoke-direct {p0, p1, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 257
    move-result v3

    .line 258
    .line 259
    if-eqz v3, :cond_1

    .line 260
    .line 261
    mul-int/lit8 v2, v2, 0x35

    .line 262
    .line 263
    .line 264
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->T(Ljava/lang/Object;J)J

    .line 265
    move-result-wide v3

    .line 266
    .line 267
    .line 268
    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/Internal;->f(J)I

    .line 269
    move-result v3

    .line 270
    .line 271
    goto/16 :goto_1

    .line 272
    .line 273
    .line 274
    :pswitch_f
    invoke-direct {p0, p1, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 275
    move-result v3

    .line 276
    .line 277
    if-eqz v3, :cond_1

    .line 278
    .line 279
    mul-int/lit8 v2, v2, 0x35

    .line 280
    .line 281
    .line 282
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->T(Ljava/lang/Object;J)J

    .line 283
    move-result-wide v3

    .line 284
    .line 285
    .line 286
    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/Internal;->f(J)I

    .line 287
    move-result v3

    .line 288
    .line 289
    goto/16 :goto_1

    .line 290
    .line 291
    .line 292
    :pswitch_10
    invoke-direct {p0, p1, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 293
    move-result v3

    .line 294
    .line 295
    if-eqz v3, :cond_1

    .line 296
    .line 297
    mul-int/lit8 v2, v2, 0x35

    .line 298
    .line 299
    .line 300
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->R(Ljava/lang/Object;J)F

    .line 301
    move-result v3

    .line 302
    .line 303
    .line 304
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 305
    move-result v3

    .line 306
    .line 307
    goto/16 :goto_1

    .line 308
    .line 309
    .line 310
    :pswitch_11
    invoke-direct {p0, p1, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 311
    move-result v3

    .line 312
    .line 313
    if-eqz v3, :cond_1

    .line 314
    .line 315
    mul-int/lit8 v2, v2, 0x35

    .line 316
    .line 317
    .line 318
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->Q(Ljava/lang/Object;J)D

    .line 319
    move-result-wide v3

    .line 320
    .line 321
    .line 322
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 323
    move-result-wide v3

    .line 324
    .line 325
    .line 326
    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/Internal;->f(J)I

    .line 327
    move-result v3

    .line 328
    .line 329
    goto/16 :goto_1

    .line 330
    .line 331
    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    .line 332
    .line 333
    .line 334
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 335
    move-result-object v3

    .line 336
    .line 337
    .line 338
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 339
    move-result v3

    .line 340
    .line 341
    goto/16 :goto_1

    .line 342
    .line 343
    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    .line 344
    .line 345
    .line 346
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 347
    move-result-object v3

    .line 348
    .line 349
    .line 350
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 351
    move-result v3

    .line 352
    .line 353
    goto/16 :goto_1

    .line 354
    .line 355
    .line 356
    :pswitch_14
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 357
    move-result-object v3

    .line 358
    .line 359
    if-eqz v3, :cond_0

    .line 360
    .line 361
    .line 362
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 363
    move-result v7

    .line 364
    .line 365
    :cond_0
    :goto_2
    mul-int/lit8 v2, v2, 0x35

    .line 366
    add-int/2addr v2, v7

    .line 367
    .line 368
    goto/16 :goto_3

    .line 369
    .line 370
    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    .line 371
    .line 372
    .line 373
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->D(Ljava/lang/Object;J)J

    .line 374
    move-result-wide v3

    .line 375
    .line 376
    .line 377
    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/Internal;->f(J)I

    .line 378
    move-result v3

    .line 379
    .line 380
    goto/16 :goto_1

    .line 381
    .line 382
    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    .line 383
    .line 384
    .line 385
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 386
    move-result v3

    .line 387
    .line 388
    goto/16 :goto_1

    .line 389
    .line 390
    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    .line 391
    .line 392
    .line 393
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->D(Ljava/lang/Object;J)J

    .line 394
    move-result-wide v3

    .line 395
    .line 396
    .line 397
    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/Internal;->f(J)I

    .line 398
    move-result v3

    .line 399
    .line 400
    goto/16 :goto_1

    .line 401
    .line 402
    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    .line 403
    .line 404
    .line 405
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 406
    move-result v3

    .line 407
    .line 408
    goto/16 :goto_1

    .line 409
    .line 410
    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    .line 411
    .line 412
    .line 413
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 414
    move-result v3

    .line 415
    .line 416
    goto/16 :goto_1

    .line 417
    .line 418
    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    .line 419
    .line 420
    .line 421
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 422
    move-result v3

    .line 423
    .line 424
    goto/16 :goto_1

    .line 425
    .line 426
    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    .line 427
    .line 428
    .line 429
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 430
    move-result-object v3

    .line 431
    .line 432
    .line 433
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 434
    move-result v3

    .line 435
    .line 436
    goto/16 :goto_1

    .line 437
    .line 438
    .line 439
    :pswitch_1c
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 440
    move-result-object v3

    .line 441
    .line 442
    if-eqz v3, :cond_0

    .line 443
    .line 444
    .line 445
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 446
    move-result v7

    .line 447
    goto :goto_2

    .line 448
    .line 449
    :pswitch_1d
    mul-int/lit8 v2, v2, 0x35

    .line 450
    .line 451
    .line 452
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 453
    move-result-object v3

    .line 454
    .line 455
    check-cast v3, Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 459
    move-result v3

    .line 460
    .line 461
    goto/16 :goto_1

    .line 462
    .line 463
    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    .line 464
    .line 465
    .line 466
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->s(Ljava/lang/Object;J)Z

    .line 467
    move-result v3

    .line 468
    .line 469
    .line 470
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/Internal;->c(Z)I

    .line 471
    move-result v3

    .line 472
    .line 473
    goto/16 :goto_1

    .line 474
    .line 475
    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    .line 476
    .line 477
    .line 478
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 479
    move-result v3

    .line 480
    .line 481
    goto/16 :goto_1

    .line 482
    .line 483
    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    .line 484
    .line 485
    .line 486
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->D(Ljava/lang/Object;J)J

    .line 487
    move-result-wide v3

    .line 488
    .line 489
    .line 490
    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/Internal;->f(J)I

    .line 491
    move-result v3

    .line 492
    .line 493
    goto/16 :goto_1

    .line 494
    .line 495
    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    .line 496
    .line 497
    .line 498
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->B(Ljava/lang/Object;J)I

    .line 499
    move-result v3

    .line 500
    .line 501
    goto/16 :goto_1

    .line 502
    .line 503
    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    .line 504
    .line 505
    .line 506
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->D(Ljava/lang/Object;J)J

    .line 507
    move-result-wide v3

    .line 508
    .line 509
    .line 510
    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/Internal;->f(J)I

    .line 511
    move-result v3

    .line 512
    .line 513
    goto/16 :goto_1

    .line 514
    .line 515
    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    .line 516
    .line 517
    .line 518
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->D(Ljava/lang/Object;J)J

    .line 519
    move-result-wide v3

    .line 520
    .line 521
    .line 522
    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/Internal;->f(J)I

    .line 523
    move-result v3

    .line 524
    .line 525
    goto/16 :goto_1

    .line 526
    .line 527
    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    .line 528
    .line 529
    .line 530
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->A(Ljava/lang/Object;J)F

    .line 531
    move-result v3

    .line 532
    .line 533
    .line 534
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 535
    move-result v3

    .line 536
    .line 537
    goto/16 :goto_1

    .line 538
    .line 539
    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    .line 540
    .line 541
    .line 542
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->z(Ljava/lang/Object;J)D

    .line 543
    move-result-wide v3

    .line 544
    .line 545
    .line 546
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 547
    move-result-wide v3

    .line 548
    .line 549
    .line 550
    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/Internal;->f(J)I

    .line 551
    move-result v3

    .line 552
    .line 553
    goto/16 :goto_1

    .line 554
    .line 555
    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x3

    .line 556
    .line 557
    goto/16 :goto_0

    .line 558
    .line 559
    :cond_2
    mul-int/lit8 v2, v2, 0x35

    .line 560
    .line 561
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    .line 562
    .line 563
    .line 564
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    move-result-object v0

    .line 566
    .line 567
    .line 568
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 569
    move-result v0

    .line 570
    add-int/2addr v2, v0

    .line 571
    .line 572
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->hasExtensions:Z

    .line 573
    .line 574
    if-eqz v0, :cond_3

    .line 575
    .line 576
    mul-int/lit8 v2, v2, 0x35

    .line 577
    .line 578
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    .line 579
    .line 580
    .line 581
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;

    .line 582
    move-result-object p1

    .line 583
    .line 584
    .line 585
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/FieldSet;->hashCode()I

    .line 586
    move-result p1

    .line 587
    add-int/2addr v2, p1

    .line 588
    :cond_3
    return v2

    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isInitialized(Ljava/lang/Object;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    .line 6
    :goto_0
    iget v4, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->checkInitializedCount:I

    .line 7
    const/4 v5, 0x1

    .line 8
    .line 9
    if-ge v2, v4, :cond_8

    .line 10
    .line 11
    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->intArray:[I

    .line 12
    .line 13
    aget v4, v4, v2

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->N(I)I

    .line 17
    move-result v6

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m0(I)I

    .line 21
    move-result v7

    .line 22
    .line 23
    iget-boolean v8, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->proto3:Z

    .line 24
    .line 25
    if-nez v8, :cond_0

    .line 26
    .line 27
    iget-object v8, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    .line 28
    .line 29
    add-int/lit8 v9, v4, 0x2

    .line 30
    .line 31
    aget v8, v8, v9

    .line 32
    .line 33
    .line 34
    const v9, 0xfffff

    .line 35
    and-int/2addr v9, v8

    .line 36
    .line 37
    ushr-int/lit8 v8, v8, 0x14

    .line 38
    shl-int/2addr v5, v8

    .line 39
    .line 40
    if-eq v9, v0, :cond_1

    .line 41
    .line 42
    sget-object v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 43
    int-to-long v10, v9

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 47
    move-result v3

    .line 48
    move v0, v9

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    move v5, v1

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_1
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->C(I)Z

    .line 54
    move-result v8

    .line 55
    .line 56
    if-eqz v8, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, p1, v4, v3, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->w(Ljava/lang/Object;III)Z

    .line 60
    move-result v8

    .line 61
    .line 62
    if-nez v8, :cond_2

    .line 63
    return v1

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->l0(I)I

    .line 67
    move-result v8

    .line 68
    .line 69
    const/16 v9, 0x9

    .line 70
    .line 71
    if-eq v8, v9, :cond_6

    .line 72
    .line 73
    const/16 v9, 0x11

    .line 74
    .line 75
    if-eq v8, v9, :cond_6

    .line 76
    .line 77
    const/16 v5, 0x1b

    .line 78
    .line 79
    if-eq v8, v5, :cond_5

    .line 80
    .line 81
    const/16 v5, 0x3c

    .line 82
    .line 83
    if-eq v8, v5, :cond_4

    .line 84
    .line 85
    const/16 v5, 0x44

    .line 86
    .line 87
    if-eq v8, v5, :cond_4

    .line 88
    .line 89
    const/16 v5, 0x31

    .line 90
    .line 91
    if-eq v8, v5, :cond_5

    .line 92
    .line 93
    const/16 v5, 0x32

    .line 94
    .line 95
    if-eq v8, v5, :cond_3

    .line 96
    goto :goto_2

    .line 97
    .line 98
    .line 99
    :cond_3
    invoke-direct {p0, p1, v7, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->z(Ljava/lang/Object;II)Z

    .line 100
    move-result v4

    .line 101
    .line 102
    if-nez v4, :cond_7

    .line 103
    return v1

    .line 104
    .line 105
    .line 106
    :cond_4
    invoke-direct {p0, p1, v6, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;II)Z

    .line 107
    move-result v5

    .line 108
    .line 109
    if-eqz v5, :cond_7

    .line 110
    .line 111
    .line 112
    invoke-direct {p0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 113
    move-result-object v4

    .line 114
    .line 115
    .line 116
    invoke-static {p1, v7, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/Schema;)Z

    .line 117
    move-result v4

    .line 118
    .line 119
    if-nez v4, :cond_7

    .line 120
    return v1

    .line 121
    .line 122
    .line 123
    :cond_5
    invoke-direct {p0, p1, v7, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(Ljava/lang/Object;II)Z

    .line 124
    move-result v4

    .line 125
    .line 126
    if-nez v4, :cond_7

    .line 127
    return v1

    .line 128
    .line 129
    .line 130
    :cond_6
    invoke-direct {p0, p1, v4, v3, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->w(Ljava/lang/Object;III)Z

    .line 131
    move-result v5

    .line 132
    .line 133
    if-eqz v5, :cond_7

    .line 134
    .line 135
    .line 136
    invoke-direct {p0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 137
    move-result-object v4

    .line 138
    .line 139
    .line 140
    invoke-static {p1, v7, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/Schema;)Z

    .line 141
    move-result v4

    .line 142
    .line 143
    if-nez v4, :cond_7

    .line 144
    return v1

    .line 145
    .line 146
    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 147
    .line 148
    goto/16 :goto_0

    .line 149
    .line 150
    :cond_8
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->hasExtensions:Z

    .line 151
    .line 152
    if-eqz v0, :cond_9

    .line 153
    .line 154
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;

    .line 158
    move-result-object p1

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/FieldSet;->p()Z

    .line 162
    move-result p1

    .line 163
    .line 164
    if-nez p1, :cond_9

    .line 165
    return v1

    .line 166
    :cond_9
    return v5
.end method

.method public makeImmutable(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->checkInitializedCount:I

    .line 3
    .line 4
    :goto_0
    iget v1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    .line 5
    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->intArray:[I

    .line 9
    .line 10
    aget v1, v1, v0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m0(I)I

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->O(I)J

    .line 18
    move-result-wide v1

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    if-nez v3, :cond_0

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_0
    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 28
    .line 29
    .line 30
    invoke-interface {v4, v3}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v1, v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->V(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 35
    .line 36
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->intArray:[I

    .line 40
    array-length v0, v0

    .line 41
    .line 42
    :goto_2
    if-ge v1, v0, :cond_2

    .line 43
    .line 44
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 45
    .line 46
    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->intArray:[I

    .line 47
    .line 48
    aget v3, v3, v1

    .line 49
    int-to-long v3, v3

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p1, v3, v4}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->c(Ljava/lang/Object;J)V

    .line 53
    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 55
    goto :goto_2

    .line 56
    .line 57
    :cond_2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->j(Ljava/lang/Object;)V

    .line 61
    .line 62
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->hasExtensions:Z

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->f(Ljava/lang/Object;)V

    .line 70
    :cond_3
    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    :goto_0
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    .line 7
    array-length v1, v1

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1, p2, v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->J(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 13
    .line 14
    add-int/lit8 v0, v0, 0x3

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->proto3:Z

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    .line 22
    .line 23
    .line 24
    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->G(Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->hasExtensions:Z

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    .line 31
    .line 32
    .line 33
    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->E(Landroidx/datastore/preferences/protobuf/ExtensionSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    :cond_1
    return-void
.end method

.method public newInstance()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->newInstanceSchema:Landroidx/datastore/preferences/protobuf/NewInstanceSchema;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/NewInstanceSchema;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
