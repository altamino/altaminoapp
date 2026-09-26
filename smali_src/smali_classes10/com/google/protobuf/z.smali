.class final Lcom/google/protobuf/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/m0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/m0<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_INT_ARRAY:[I

.field private static final ENFORCE_UTF8_MASK:I = 0x20000000

.field private static final FIELD_TYPE_MASK:I = 0xff00000

.field private static final INTS_PER_FIELD:I = 0x3

.field private static final NO_PRESENCE_SENTINEL:I = 0xfffff

.field private static final OFFSET_BITS:I = 0x14

.field private static final OFFSET_MASK:I = 0xfffff

.field static final ONEOF_TYPE_OFFSET:I = 0x33

.field private static final REQUIRED_MASK:I = 0x10000000

.field private static final UNSAFE:Lsun/misc/Unsafe;


# instance fields
.field private final buffer:[I

.field private final checkInitializedCount:I

.field private final defaultInstance:Lcom/google/protobuf/MessageLite;

.field private final extensionSchema:Lcom/google/protobuf/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/j<",
            "*>;"
        }
    .end annotation
.end field

.field private final hasExtensions:Z

.field private final intArray:[I

.field private final listFieldSchema:Lcom/google/protobuf/q;

.field private final lite:Z

.field private final mapFieldSchema:Lcom/google/protobuf/t;

.field private final maxFieldNumber:I

.field private final minFieldNumber:I

.field private final newInstanceSchema:Lcom/google/protobuf/b0;

.field private final objects:[Ljava/lang/Object;

.field private final proto3:Z

.field private final repeatedFieldOffsetStart:I

.field private final unknownFieldSchema:Lcom/google/protobuf/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/r0<",
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
    sput-object v0, Lcom/google/protobuf/z;->EMPTY_INT_ARRAY:[I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/google/protobuf/t0;->getUnsafe()Lsun/misc/Unsafe;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sput-object v0, Lcom/google/protobuf/z;->UNSAFE:Lsun/misc/Unsafe;

    .line 12
    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/protobuf/MessageLite;ZZ[IIILcom/google/protobuf/b0;Lcom/google/protobuf/q;Lcom/google/protobuf/r0;Lcom/google/protobuf/j;Lcom/google/protobuf/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/google/protobuf/MessageLite;",
            "ZZ[III",
            "Lcom/google/protobuf/b0;",
            "Lcom/google/protobuf/q;",
            "Lcom/google/protobuf/r0<",
            "**>;",
            "Lcom/google/protobuf/j<",
            "*>;",
            "Lcom/google/protobuf/t;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/z;->buffer:[I

    iput-object p2, p0, Lcom/google/protobuf/z;->objects:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/protobuf/z;->minFieldNumber:I

    iput p4, p0, Lcom/google/protobuf/z;->maxFieldNumber:I

    .line 2
    instance-of p1, p5, Lcom/google/protobuf/GeneratedMessageLite;

    iput-boolean p1, p0, Lcom/google/protobuf/z;->lite:Z

    iput-boolean p6, p0, Lcom/google/protobuf/z;->proto3:Z

    if-eqz p14, :cond_0

    .line 3
    invoke-virtual {p14, p5}, Lcom/google/protobuf/j;->hasExtensions(Lcom/google/protobuf/MessageLite;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/protobuf/z;->hasExtensions:Z

    iput-boolean p7, p0, Lcom/google/protobuf/z;->useCachedSizeField:Z

    iput-object p8, p0, Lcom/google/protobuf/z;->intArray:[I

    iput p9, p0, Lcom/google/protobuf/z;->checkInitializedCount:I

    iput p10, p0, Lcom/google/protobuf/z;->repeatedFieldOffsetStart:I

    iput-object p11, p0, Lcom/google/protobuf/z;->newInstanceSchema:Lcom/google/protobuf/b0;

    iput-object p12, p0, Lcom/google/protobuf/z;->listFieldSchema:Lcom/google/protobuf/q;

    iput-object p13, p0, Lcom/google/protobuf/z;->unknownFieldSchema:Lcom/google/protobuf/r0;

    iput-object p14, p0, Lcom/google/protobuf/z;->extensionSchema:Lcom/google/protobuf/j;

    iput-object p5, p0, Lcom/google/protobuf/z;->defaultInstance:Lcom/google/protobuf/MessageLite;

    iput-object p15, p0, Lcom/google/protobuf/z;->mapFieldSchema:Lcom/google/protobuf/t;

    return-void
.end method

.method private arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

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

.method private static booleanAt(Ljava/lang/Object;J)Z
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
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/t0;->getBoolean(Ljava/lang/Object;J)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static checkMutable(Ljava/lang/Object;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/protobuf/z;->isMutable(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    const-string v2, "Mutating immutable message: "

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    throw v0
.end method

.method private decodeMapEntry([BIILcom/google/protobuf/MapEntryLite$b;Ljava/util/Map;Lcom/google/protobuf/c$b;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([BII",
            "Lcom/google/protobuf/MapEntryLite$b<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/protobuf/c$b;",
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
    invoke-static {p1, v0, v10}, Lcom/google/protobuf/c;->decodeVarint32([BILcom/google/protobuf/c$b;)I

    .line 13
    move-result v0

    .line 14
    .line 15
    iget v1, v10, Lcom/google/protobuf/c$b;->int1:I

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
    iget-object v1, v9, Lcom/google/protobuf/MapEntryLite$b;->defaultKey:Ljava/lang/Object;

    .line 26
    .line 27
    iget-object v2, v9, Lcom/google/protobuf/MapEntryLite$b;->defaultValue:Ljava/lang/Object;

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
    invoke-static {v0, p1, v1, v10}, Lcom/google/protobuf/c;->decodeVarint32(I[BILcom/google/protobuf/c$b;)I

    .line 41
    move-result v0

    .line 42
    .line 43
    iget v1, v10, Lcom/google/protobuf/c$b;->int1:I

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
    iget-object v1, v9, Lcom/google/protobuf/MapEntryLite$b;->valueType:Lcom/google/protobuf/WireFormat$FieldType;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/google/protobuf/WireFormat$FieldType;->getWireType()I

    .line 64
    move-result v1

    .line 65
    .line 66
    if-ne v3, v1, :cond_3

    .line 67
    .line 68
    iget-object v4, v9, Lcom/google/protobuf/MapEntryLite$b;->valueType:Lcom/google/protobuf/WireFormat$FieldType;

    .line 69
    .line 70
    iget-object v0, v9, Lcom/google/protobuf/MapEntryLite$b;->defaultValue:Ljava/lang/Object;

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
    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/z;->decodeMapEntryValue([BIILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/c$b;)I

    .line 84
    move-result v0

    .line 85
    .line 86
    iget-object v13, v10, Lcom/google/protobuf/c$b;->object1:Ljava/lang/Object;

    .line 87
    goto :goto_0

    .line 88
    .line 89
    :cond_2
    iget-object v1, v9, Lcom/google/protobuf/MapEntryLite$b;->keyType:Lcom/google/protobuf/WireFormat$FieldType;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/google/protobuf/WireFormat$FieldType;->getWireType()I

    .line 93
    move-result v1

    .line 94
    .line 95
    if-ne v3, v1, :cond_3

    .line 96
    .line 97
    iget-object v4, v9, Lcom/google/protobuf/MapEntryLite$b;->keyType:Lcom/google/protobuf/WireFormat$FieldType;

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
    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/z;->decodeMapEntryValue([BIILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/c$b;)I

    .line 108
    move-result v0

    .line 109
    .line 110
    iget-object v12, v10, Lcom/google/protobuf/c$b;->object1:Ljava/lang/Object;

    .line 111
    goto :goto_0

    .line 112
    .line 113
    .line 114
    :cond_3
    :goto_2
    invoke-static {v0, p1, v2, v8, v10}, Lcom/google/protobuf/c;->skipField(I[BIILcom/google/protobuf/c$b;)I

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
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 128
    move-result-object v0

    .line 129
    throw v0

    .line 130
    .line 131
    .line 132
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 133
    move-result-object v0

    .line 134
    throw v0
.end method

.method private decodeMapEntryValue([BIILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/c$b;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/c$b;",
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
    sget-object v0, Lcom/google/protobuf/z$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

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
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/c;->decodeStringRequireUtf8([BILcom/google/protobuf/c$b;)I

    .line 23
    move-result p1

    .line 24
    .line 25
    goto/16 :goto_3

    .line 26
    .line 27
    .line 28
    :pswitch_1
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/c;->decodeVarint64([BILcom/google/protobuf/c$b;)I

    .line 29
    move-result p1

    .line 30
    .line 31
    iget-wide p2, p6, Lcom/google/protobuf/c$b;->long1:J

    .line 32
    .line 33
    .line 34
    invoke-static {p2, p3}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

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
    iput-object p2, p6, Lcom/google/protobuf/c$b;->object1:Ljava/lang/Object;

    .line 42
    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    .line 46
    :pswitch_2
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/c;->decodeVarint32([BILcom/google/protobuf/c$b;)I

    .line 47
    move-result p1

    .line 48
    .line 49
    iget p2, p6, Lcom/google/protobuf/c$b;->int1:I

    .line 50
    .line 51
    .line 52
    invoke-static {p2}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

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
    iput-object p2, p6, Lcom/google/protobuf/c$b;->object1:Ljava/lang/Object;

    .line 60
    .line 61
    goto/16 :goto_3

    .line 62
    .line 63
    .line 64
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/h0;->getInstance()Lcom/google/protobuf/h0;

    .line 65
    move-result-object p4

    .line 66
    .line 67
    .line 68
    invoke-virtual {p4, p5}, Lcom/google/protobuf/h0;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/m0;

    .line 69
    move-result-object p4

    .line 70
    .line 71
    .line 72
    invoke-static {p4, p1, p2, p3, p6}, Lcom/google/protobuf/c;->decodeMessageField(Lcom/google/protobuf/m0;[BIILcom/google/protobuf/c$b;)I

    .line 73
    move-result p1

    .line 74
    goto :goto_3

    .line 75
    .line 76
    .line 77
    :pswitch_4
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/c;->decodeVarint64([BILcom/google/protobuf/c$b;)I

    .line 78
    move-result p1

    .line 79
    .line 80
    iget-wide p2, p6, Lcom/google/protobuf/c$b;->long1:J

    .line 81
    .line 82
    .line 83
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 84
    move-result-object p2

    .line 85
    .line 86
    iput-object p2, p6, Lcom/google/protobuf/c$b;->object1:Ljava/lang/Object;

    .line 87
    goto :goto_3

    .line 88
    .line 89
    .line 90
    :pswitch_5
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/c;->decodeVarint32([BILcom/google/protobuf/c$b;)I

    .line 91
    move-result p1

    .line 92
    .line 93
    iget p2, p6, Lcom/google/protobuf/c$b;->int1:I

    .line 94
    .line 95
    .line 96
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    move-result-object p2

    .line 98
    .line 99
    iput-object p2, p6, Lcom/google/protobuf/c$b;->object1:Ljava/lang/Object;

    .line 100
    goto :goto_3

    .line 101
    .line 102
    .line 103
    :pswitch_6
    invoke-static {p1, p2}, Lcom/google/protobuf/c;->decodeFloat([BI)F

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
    iput-object p1, p6, Lcom/google/protobuf/c$b;->object1:Ljava/lang/Object;

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
    invoke-static {p1, p2}, Lcom/google/protobuf/c;->decodeFixed64([BI)J

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
    iput-object p1, p6, Lcom/google/protobuf/c$b;->object1:Ljava/lang/Object;

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
    invoke-static {p1, p2}, Lcom/google/protobuf/c;->decodeFixed32([BI)I

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
    iput-object p1, p6, Lcom/google/protobuf/c$b;->object1:Ljava/lang/Object;

    .line 137
    goto :goto_0

    .line 138
    .line 139
    .line 140
    :pswitch_9
    invoke-static {p1, p2}, Lcom/google/protobuf/c;->decodeDouble([BI)D

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
    iput-object p1, p6, Lcom/google/protobuf/c$b;->object1:Ljava/lang/Object;

    .line 148
    goto :goto_1

    .line 149
    .line 150
    .line 151
    :pswitch_a
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/c;->decodeBytes([BILcom/google/protobuf/c$b;)I

    .line 152
    move-result p1

    .line 153
    goto :goto_3

    .line 154
    .line 155
    .line 156
    :pswitch_b
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/c;->decodeVarint64([BILcom/google/protobuf/c$b;)I

    .line 157
    move-result p1

    .line 158
    .line 159
    iget-wide p2, p6, Lcom/google/protobuf/c$b;->long1:J

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
    iput-object p2, p6, Lcom/google/protobuf/c$b;->object1:Ljava/lang/Object;

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

.method private static doubleAt(Ljava/lang/Object;J)D
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
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/t0;->getDouble(Ljava/lang/Object;J)D

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method private equals(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p3}, Lcom/google/protobuf/z;->typeAndOffsetAt(I)I

    move-result v0

    .line 10
    invoke-static {v0}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v1

    .line 11
    invoke-static {v0}, Lcom/google/protobuf/z;->type(I)I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    return v4

    .line 12
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/z;->isOneofCaseEqual(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 13
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 14
    invoke-static {p1, p2}, Lcom/google/protobuf/o0;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v3, v4

    :cond_0
    return v3

    .line 15
    :pswitch_1
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 16
    invoke-static {p1, p2}, Lcom/google/protobuf/o0;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 17
    :pswitch_2
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 18
    invoke-static {p1, p2}, Lcom/google/protobuf/o0;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 19
    :pswitch_3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/z;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 20
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 21
    invoke-static {p1, p2}, Lcom/google/protobuf/o0;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v3, v4

    :cond_1
    return v3

    .line 22
    :pswitch_4
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/z;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 23
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/t0;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, v5, p1

    if-nez p1, :cond_2

    move v3, v4

    :cond_2
    return v3

    .line 24
    :pswitch_5
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/z;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 25
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_3

    move v3, v4

    :cond_3
    return v3

    .line 26
    :pswitch_6
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/z;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 27
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/t0;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, v5, p1

    if-nez p1, :cond_4

    move v3, v4

    :cond_4
    return v3

    .line 28
    :pswitch_7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/z;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 29
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_5

    move v3, v4

    :cond_5
    return v3

    .line 30
    :pswitch_8
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/z;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 31
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_6

    move v3, v4

    :cond_6
    return v3

    .line 32
    :pswitch_9
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/z;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 33
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_7

    move v3, v4

    :cond_7
    return v3

    .line 34
    :pswitch_a
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/z;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 35
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 36
    invoke-static {p1, p2}, Lcom/google/protobuf/o0;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    move v3, v4

    :cond_8
    return v3

    .line 37
    :pswitch_b
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/z;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 38
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 39
    invoke-static {p1, p2}, Lcom/google/protobuf/o0;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    move v3, v4

    :cond_9
    return v3

    .line 40
    :pswitch_c
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/z;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 41
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 42
    invoke-static {p1, p2}, Lcom/google/protobuf/o0;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    move v3, v4

    :cond_a
    return v3

    .line 43
    :pswitch_d
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/z;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 44
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/t0;->getBoolean(Ljava/lang/Object;J)Z

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getBoolean(Ljava/lang/Object;J)Z

    move-result p2

    if-ne p1, p2, :cond_b

    move v3, v4

    :cond_b
    return v3

    .line 45
    :pswitch_e
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/z;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 46
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_c

    move v3, v4

    :cond_c
    return v3

    .line 47
    :pswitch_f
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/z;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 48
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/t0;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, v5, p1

    if-nez p1, :cond_d

    move v3, v4

    :cond_d
    return v3

    .line 49
    :pswitch_10
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/z;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 50
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_e

    move v3, v4

    :cond_e
    return v3

    .line 51
    :pswitch_11
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/z;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_f

    .line 52
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/t0;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, v5, p1

    if-nez p1, :cond_f

    move v3, v4

    :cond_f
    return v3

    .line 53
    :pswitch_12
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/z;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_10

    .line 54
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/t0;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, v5, p1

    if-nez p1, :cond_10

    move v3, v4

    :cond_10
    return v3

    .line 55
    :pswitch_13
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/z;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_11

    .line 56
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/t0;->getFloat(Ljava/lang/Object;J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    .line 57
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getFloat(Ljava/lang/Object;J)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    if-ne p1, p2, :cond_11

    move v3, v4

    :cond_11
    return v3

    .line 58
    :pswitch_14
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/z;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_12

    .line 59
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/t0;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    .line 60
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getDouble(Ljava/lang/Object;J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    cmp-long p1, v5, p1

    if-nez p1, :cond_12

    move v3, v4

    :cond_12
    return v3

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

.method private filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/r0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ITUB;",
            "Lcom/google/protobuf/r0<",
            "TUT;TUB;>;",
            "Ljava/lang/Object;",
            ")TUB;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 4
    move-result v2

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/google/protobuf/z;->typeAndOffsetAt(I)I

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/protobuf/z;->offset(I)J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

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
    invoke-direct {p0, p2}, Lcom/google/protobuf/z;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;

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
    iget-object v0, p0, Lcom/google/protobuf/z;->mapFieldSchema:Lcom/google/protobuf/t;

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, p1}, Lcom/google/protobuf/t;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

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
    move-object v7, p5

    .line 38
    .line 39
    .line 40
    invoke-direct/range {v0 .. v7}, Lcom/google/protobuf/z;->filterUnknownEnumMap(IILjava/util/Map;Lcom/google/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/google/protobuf/r0;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method

.method private filterUnknownEnumMap(IILjava/util/Map;Lcom/google/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/google/protobuf/r0;Ljava/lang/Object;)Ljava/lang/Object;
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
            "Lcom/google/protobuf/Internal$EnumVerifier;",
            "TUB;",
            "Lcom/google/protobuf/r0<",
            "TUT;TUB;>;",
            "Ljava/lang/Object;",
            ")TUB;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/protobuf/z;->mapFieldSchema:Lcom/google/protobuf/t;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/google/protobuf/z;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/google/protobuf/t;->forMapMetadata(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$b;

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
    invoke-interface {p4, v1}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

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
    invoke-virtual {p6, p7}, Lcom/google/protobuf/r0;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/MapEntryLite;->computeSerializedSize(Lcom/google/protobuf/MapEntryLite$b;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 64
    move-result v1

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->newCodedBuilder(I)Lcom/google/protobuf/ByteString$g;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString$g;->getCodedOutput()Lcom/google/protobuf/CodedOutputStream;

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
    invoke-static {v2, p1, v3, v0}, Lcom/google/protobuf/MapEntryLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/MapEntryLite$b;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString$g;->build()Lcom/google/protobuf/ByteString;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    .line 90
    invoke-virtual {p6, p5, p2, v0}, Lcom/google/protobuf/r0;->addLengthDelimited(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V

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

.method private static floatAt(Ljava/lang/Object;J)F
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
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/t0;->getFloat(Ljava/lang/Object;J)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/protobuf/z;->objects:[Ljava/lang/Object;

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
    check-cast p1, Lcom/google/protobuf/Internal$EnumVerifier;

    .line 13
    return-object p1
.end method

.method private getMapFieldDefaultEntry(I)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/protobuf/z;->objects:[Ljava/lang/Object;

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

.method private getMessageFieldSchema(I)Lcom/google/protobuf/m0;
    .locals 3

    .line 1
    .line 2
    div-int/lit8 p1, p1, 0x3

    .line 3
    .line 4
    mul-int/lit8 p1, p1, 0x2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/protobuf/z;->objects:[Ljava/lang/Object;

    .line 7
    .line 8
    aget-object v0, v0, p1

    .line 9
    .line 10
    check-cast v0, Lcom/google/protobuf/m0;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    return-object v0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {}, Lcom/google/protobuf/h0;->getInstance()Lcom/google/protobuf/h0;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/protobuf/z;->objects:[Ljava/lang/Object;

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
    invoke-virtual {v0, v1}, Lcom/google/protobuf/h0;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/m0;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/google/protobuf/z;->objects:[Ljava/lang/Object;

    .line 32
    .line 33
    aput-object v0, v1, p1

    .line 34
    return-object v0
.end method

.method static getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 2

    .line 1
    .line 2
    check-cast p0, Lcom/google/protobuf/GeneratedMessageLite;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->newInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 17
    :cond_0
    return-object v0
.end method

.method private getSerializedSizeProto2(Ljava/lang/Object;)I
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
    sget-object v2, Lcom/google/protobuf/z;->UNSAFE:Lsun/misc/Unsafe;

    .line 7
    .line 8
    .line 9
    const v4, 0xfffff

    .line 10
    move v7, v4

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v8, 0x0

    .line 14
    .line 15
    :goto_0
    iget-object v9, v0, Lcom/google/protobuf/z;->buffer:[I

    .line 16
    array-length v9, v9

    .line 17
    .line 18
    if-ge v5, v9, :cond_15

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v5}, Lcom/google/protobuf/z;->typeAndOffsetAt(I)I

    .line 22
    move-result v9

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v5}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 26
    move-result v10

    .line 27
    .line 28
    .line 29
    invoke-static {v9}, Lcom/google/protobuf/z;->type(I)I

    .line 30
    move-result v11

    .line 31
    .line 32
    const/16 v12, 0x11

    .line 33
    const/4 v13, 0x1

    .line 34
    .line 35
    if-gt v11, v12, :cond_0

    .line 36
    .line 37
    iget-object v12, v0, Lcom/google/protobuf/z;->buffer:[I

    .line 38
    .line 39
    add-int/lit8 v14, v5, 0x2

    .line 40
    .line 41
    aget v12, v12, v14

    .line 42
    .line 43
    and-int v14, v12, v4

    .line 44
    .line 45
    ushr-int/lit8 v15, v12, 0x14

    .line 46
    .line 47
    shl-int v15, v13, v15

    .line 48
    .line 49
    if-eq v14, v7, :cond_2

    .line 50
    int-to-long v7, v14

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 54
    move-result v8

    .line 55
    move v7, v14

    .line 56
    goto :goto_2

    .line 57
    .line 58
    :cond_0
    iget-boolean v12, v0, Lcom/google/protobuf/z;->useCachedSizeField:Z

    .line 59
    .line 60
    if-eqz v12, :cond_1

    .line 61
    .line 62
    sget-object v12, Lcom/google/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v12}, Lcom/google/protobuf/FieldType;->id()I

    .line 66
    move-result v12

    .line 67
    .line 68
    if-lt v11, v12, :cond_1

    .line 69
    .line 70
    sget-object v12, Lcom/google/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v12}, Lcom/google/protobuf/FieldType;->id()I

    .line 74
    move-result v12

    .line 75
    .line 76
    if-gt v11, v12, :cond_1

    .line 77
    .line 78
    iget-object v12, v0, Lcom/google/protobuf/z;->buffer:[I

    .line 79
    .line 80
    add-int/lit8 v14, v5, 0x2

    .line 81
    .line 82
    aget v12, v12, v14

    .line 83
    and-int/2addr v12, v4

    .line 84
    :goto_1
    const/4 v15, 0x0

    .line 85
    goto :goto_2

    .line 86
    :cond_1
    const/4 v12, 0x0

    .line 87
    goto :goto_1

    .line 88
    .line 89
    .line 90
    :cond_2
    :goto_2
    invoke-static {v9}, Lcom/google/protobuf/z;->offset(I)J

    .line 91
    move-result-wide v13

    .line 92
    const/4 v9, 0x0

    .line 93
    .line 94
    const-wide/16 v3, 0x0

    .line 95
    .line 96
    .line 97
    packed-switch v11, :pswitch_data_0

    .line 98
    goto :goto_4

    .line 99
    .line 100
    .line 101
    :pswitch_0
    invoke-direct {v0, v1, v10, v5}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 102
    move-result v3

    .line 103
    .line 104
    if-eqz v3, :cond_3

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 108
    move-result-object v3

    .line 109
    .line 110
    check-cast v3, Lcom/google/protobuf/MessageLite;

    .line 111
    .line 112
    .line 113
    invoke-direct {v0, v5}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    .line 114
    move-result-object v4

    .line 115
    .line 116
    .line 117
    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/m0;)I

    .line 118
    move-result v3

    .line 119
    :goto_3
    add-int/2addr v6, v3

    .line 120
    :cond_3
    :goto_4
    const/4 v11, 0x0

    .line 121
    .line 122
    goto/16 :goto_9

    .line 123
    .line 124
    .line 125
    :pswitch_1
    invoke-direct {v0, v1, v10, v5}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 126
    move-result v3

    .line 127
    .line 128
    if-eqz v3, :cond_3

    .line 129
    .line 130
    .line 131
    invoke-static {v1, v13, v14}, Lcom/google/protobuf/z;->oneofLongAt(Ljava/lang/Object;J)J

    .line 132
    move-result-wide v3

    .line 133
    .line 134
    .line 135
    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    .line 136
    move-result v3

    .line 137
    goto :goto_3

    .line 138
    .line 139
    .line 140
    :pswitch_2
    invoke-direct {v0, v1, v10, v5}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 141
    move-result v3

    .line 142
    .line 143
    if-eqz v3, :cond_3

    .line 144
    .line 145
    .line 146
    invoke-static {v1, v13, v14}, Lcom/google/protobuf/z;->oneofIntAt(Ljava/lang/Object;J)I

    .line 147
    move-result v3

    .line 148
    .line 149
    .line 150
    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    .line 151
    move-result v3

    .line 152
    goto :goto_3

    .line 153
    .line 154
    .line 155
    :pswitch_3
    invoke-direct {v0, v1, v10, v5}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 156
    move-result v9

    .line 157
    .line 158
    if-eqz v9, :cond_3

    .line 159
    .line 160
    .line 161
    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    .line 162
    move-result v3

    .line 163
    goto :goto_3

    .line 164
    .line 165
    .line 166
    :pswitch_4
    invoke-direct {v0, v1, v10, v5}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 167
    move-result v3

    .line 168
    .line 169
    if-eqz v3, :cond_3

    .line 170
    const/4 v3, 0x0

    .line 171
    .line 172
    .line 173
    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    .line 174
    move-result v4

    .line 175
    :goto_5
    add-int/2addr v6, v4

    .line 176
    goto :goto_4

    .line 177
    .line 178
    .line 179
    :pswitch_5
    invoke-direct {v0, v1, v10, v5}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 180
    move-result v3

    .line 181
    .line 182
    if-eqz v3, :cond_3

    .line 183
    .line 184
    .line 185
    invoke-static {v1, v13, v14}, Lcom/google/protobuf/z;->oneofIntAt(Ljava/lang/Object;J)I

    .line 186
    move-result v3

    .line 187
    .line 188
    .line 189
    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 190
    move-result v3

    .line 191
    goto :goto_3

    .line 192
    .line 193
    .line 194
    :pswitch_6
    invoke-direct {v0, v1, v10, v5}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 195
    move-result v3

    .line 196
    .line 197
    if-eqz v3, :cond_3

    .line 198
    .line 199
    .line 200
    invoke-static {v1, v13, v14}, Lcom/google/protobuf/z;->oneofIntAt(Ljava/lang/Object;J)I

    .line 201
    move-result v3

    .line 202
    .line 203
    .line 204
    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    .line 205
    move-result v3

    .line 206
    goto :goto_3

    .line 207
    .line 208
    .line 209
    :pswitch_7
    invoke-direct {v0, v1, v10, v5}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 210
    move-result v3

    .line 211
    .line 212
    if-eqz v3, :cond_3

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 216
    move-result-object v3

    .line 217
    .line 218
    check-cast v3, Lcom/google/protobuf/ByteString;

    .line 219
    .line 220
    .line 221
    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    .line 222
    move-result v3

    .line 223
    goto :goto_3

    .line 224
    .line 225
    .line 226
    :pswitch_8
    invoke-direct {v0, v1, v10, v5}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 227
    move-result v3

    .line 228
    .line 229
    if-eqz v3, :cond_3

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 233
    move-result-object v3

    .line 234
    .line 235
    .line 236
    invoke-direct {v0, v5}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    .line 237
    move-result-object v4

    .line 238
    .line 239
    .line 240
    invoke-static {v10, v3, v4}, Lcom/google/protobuf/o0;->computeSizeMessage(ILjava/lang/Object;Lcom/google/protobuf/m0;)I

    .line 241
    move-result v3

    .line 242
    goto :goto_3

    .line 243
    .line 244
    .line 245
    :pswitch_9
    invoke-direct {v0, v1, v10, v5}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 246
    move-result v3

    .line 247
    .line 248
    if-eqz v3, :cond_3

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 252
    move-result-object v3

    .line 253
    .line 254
    instance-of v4, v3, Lcom/google/protobuf/ByteString;

    .line 255
    .line 256
    if-eqz v4, :cond_4

    .line 257
    .line 258
    check-cast v3, Lcom/google/protobuf/ByteString;

    .line 259
    .line 260
    .line 261
    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    .line 262
    move-result v3

    .line 263
    .line 264
    goto/16 :goto_3

    .line 265
    .line 266
    :cond_4
    check-cast v3, Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    .line 270
    move-result v3

    .line 271
    .line 272
    goto/16 :goto_3

    .line 273
    .line 274
    .line 275
    :pswitch_a
    invoke-direct {v0, v1, v10, v5}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 276
    move-result v3

    .line 277
    .line 278
    if-eqz v3, :cond_3

    .line 279
    const/4 v3, 0x1

    .line 280
    .line 281
    .line 282
    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 283
    move-result v3

    .line 284
    .line 285
    goto/16 :goto_3

    .line 286
    .line 287
    .line 288
    :pswitch_b
    invoke-direct {v0, v1, v10, v5}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 289
    move-result v3

    .line 290
    .line 291
    if-eqz v3, :cond_3

    .line 292
    const/4 v3, 0x0

    .line 293
    .line 294
    .line 295
    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    .line 296
    move-result v4

    .line 297
    goto :goto_5

    .line 298
    .line 299
    .line 300
    :pswitch_c
    invoke-direct {v0, v1, v10, v5}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 301
    move-result v9

    .line 302
    .line 303
    if-eqz v9, :cond_3

    .line 304
    .line 305
    .line 306
    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    .line 307
    move-result v3

    .line 308
    .line 309
    goto/16 :goto_3

    .line 310
    .line 311
    .line 312
    :pswitch_d
    invoke-direct {v0, v1, v10, v5}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 313
    move-result v3

    .line 314
    .line 315
    if-eqz v3, :cond_3

    .line 316
    .line 317
    .line 318
    invoke-static {v1, v13, v14}, Lcom/google/protobuf/z;->oneofIntAt(Ljava/lang/Object;J)I

    .line 319
    move-result v3

    .line 320
    .line 321
    .line 322
    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 323
    move-result v3

    .line 324
    .line 325
    goto/16 :goto_3

    .line 326
    .line 327
    .line 328
    :pswitch_e
    invoke-direct {v0, v1, v10, v5}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 329
    move-result v3

    .line 330
    .line 331
    if-eqz v3, :cond_3

    .line 332
    .line 333
    .line 334
    invoke-static {v1, v13, v14}, Lcom/google/protobuf/z;->oneofLongAt(Ljava/lang/Object;J)J

    .line 335
    move-result-wide v3

    .line 336
    .line 337
    .line 338
    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    .line 339
    move-result v3

    .line 340
    .line 341
    goto/16 :goto_3

    .line 342
    .line 343
    .line 344
    :pswitch_f
    invoke-direct {v0, v1, v10, v5}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 345
    move-result v3

    .line 346
    .line 347
    if-eqz v3, :cond_3

    .line 348
    .line 349
    .line 350
    invoke-static {v1, v13, v14}, Lcom/google/protobuf/z;->oneofLongAt(Ljava/lang/Object;J)J

    .line 351
    move-result-wide v3

    .line 352
    .line 353
    .line 354
    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    .line 355
    move-result v3

    .line 356
    .line 357
    goto/16 :goto_3

    .line 358
    .line 359
    .line 360
    :pswitch_10
    invoke-direct {v0, v1, v10, v5}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 361
    move-result v3

    .line 362
    .line 363
    if-eqz v3, :cond_3

    .line 364
    .line 365
    .line 366
    invoke-static {v10, v9}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    .line 367
    move-result v3

    .line 368
    .line 369
    goto/16 :goto_3

    .line 370
    .line 371
    .line 372
    :pswitch_11
    invoke-direct {v0, v1, v10, v5}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 373
    move-result v3

    .line 374
    .line 375
    if-eqz v3, :cond_3

    .line 376
    .line 377
    const-wide/16 v3, 0x0

    .line 378
    .line 379
    .line 380
    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    .line 381
    move-result v3

    .line 382
    .line 383
    goto/16 :goto_3

    .line 384
    .line 385
    :pswitch_12
    iget-object v3, v0, Lcom/google/protobuf/z;->mapFieldSchema:Lcom/google/protobuf/t;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 389
    move-result-object v4

    .line 390
    .line 391
    .line 392
    invoke-direct {v0, v5}, Lcom/google/protobuf/z;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    .line 393
    move-result-object v9

    .line 394
    .line 395
    .line 396
    invoke-interface {v3, v10, v4, v9}, Lcom/google/protobuf/t;->getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 397
    move-result v3

    .line 398
    .line 399
    goto/16 :goto_3

    .line 400
    .line 401
    .line 402
    :pswitch_13
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 403
    move-result-object v3

    .line 404
    .line 405
    check-cast v3, Ljava/util/List;

    .line 406
    .line 407
    .line 408
    invoke-direct {v0, v5}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    .line 409
    move-result-object v4

    .line 410
    .line 411
    .line 412
    invoke-static {v10, v3, v4}, Lcom/google/protobuf/o0;->computeSizeGroupList(ILjava/util/List;Lcom/google/protobuf/m0;)I

    .line 413
    move-result v3

    .line 414
    .line 415
    goto/16 :goto_3

    .line 416
    .line 417
    .line 418
    :pswitch_14
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 419
    move-result-object v3

    .line 420
    .line 421
    check-cast v3, Ljava/util/List;

    .line 422
    .line 423
    .line 424
    invoke-static {v3}, Lcom/google/protobuf/o0;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    .line 425
    move-result v3

    .line 426
    .line 427
    if-lez v3, :cond_3

    .line 428
    .line 429
    iget-boolean v4, v0, Lcom/google/protobuf/z;->useCachedSizeField:Z

    .line 430
    .line 431
    if-eqz v4, :cond_5

    .line 432
    int-to-long v12, v12

    .line 433
    .line 434
    .line 435
    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 436
    .line 437
    .line 438
    :cond_5
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 439
    move-result v4

    .line 440
    .line 441
    .line 442
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 443
    move-result v9

    .line 444
    :goto_6
    add-int/2addr v4, v9

    .line 445
    add-int/2addr v4, v3

    .line 446
    .line 447
    goto/16 :goto_5

    .line 448
    .line 449
    .line 450
    :pswitch_15
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 451
    move-result-object v3

    .line 452
    .line 453
    check-cast v3, Ljava/util/List;

    .line 454
    .line 455
    .line 456
    invoke-static {v3}, Lcom/google/protobuf/o0;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    .line 457
    move-result v3

    .line 458
    .line 459
    if-lez v3, :cond_3

    .line 460
    .line 461
    iget-boolean v4, v0, Lcom/google/protobuf/z;->useCachedSizeField:Z

    .line 462
    .line 463
    if-eqz v4, :cond_6

    .line 464
    int-to-long v12, v12

    .line 465
    .line 466
    .line 467
    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 468
    .line 469
    .line 470
    :cond_6
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 471
    move-result v4

    .line 472
    .line 473
    .line 474
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 475
    move-result v9

    .line 476
    goto :goto_6

    .line 477
    .line 478
    .line 479
    :pswitch_16
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 480
    move-result-object v3

    .line 481
    .line 482
    check-cast v3, Ljava/util/List;

    .line 483
    .line 484
    .line 485
    invoke-static {v3}, Lcom/google/protobuf/o0;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    .line 486
    move-result v3

    .line 487
    .line 488
    if-lez v3, :cond_3

    .line 489
    .line 490
    iget-boolean v4, v0, Lcom/google/protobuf/z;->useCachedSizeField:Z

    .line 491
    .line 492
    if-eqz v4, :cond_7

    .line 493
    int-to-long v12, v12

    .line 494
    .line 495
    .line 496
    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 497
    .line 498
    .line 499
    :cond_7
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 500
    move-result v4

    .line 501
    .line 502
    .line 503
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 504
    move-result v9

    .line 505
    goto :goto_6

    .line 506
    .line 507
    .line 508
    :pswitch_17
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 509
    move-result-object v3

    .line 510
    .line 511
    check-cast v3, Ljava/util/List;

    .line 512
    .line 513
    .line 514
    invoke-static {v3}, Lcom/google/protobuf/o0;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    .line 515
    move-result v3

    .line 516
    .line 517
    if-lez v3, :cond_3

    .line 518
    .line 519
    iget-boolean v4, v0, Lcom/google/protobuf/z;->useCachedSizeField:Z

    .line 520
    .line 521
    if-eqz v4, :cond_8

    .line 522
    int-to-long v12, v12

    .line 523
    .line 524
    .line 525
    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 526
    .line 527
    .line 528
    :cond_8
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 529
    move-result v4

    .line 530
    .line 531
    .line 532
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 533
    move-result v9

    .line 534
    goto :goto_6

    .line 535
    .line 536
    .line 537
    :pswitch_18
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 538
    move-result-object v3

    .line 539
    .line 540
    check-cast v3, Ljava/util/List;

    .line 541
    .line 542
    .line 543
    invoke-static {v3}, Lcom/google/protobuf/o0;->computeSizeEnumListNoTag(Ljava/util/List;)I

    .line 544
    move-result v3

    .line 545
    .line 546
    if-lez v3, :cond_3

    .line 547
    .line 548
    iget-boolean v4, v0, Lcom/google/protobuf/z;->useCachedSizeField:Z

    .line 549
    .line 550
    if-eqz v4, :cond_9

    .line 551
    int-to-long v12, v12

    .line 552
    .line 553
    .line 554
    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 555
    .line 556
    .line 557
    :cond_9
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 558
    move-result v4

    .line 559
    .line 560
    .line 561
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 562
    move-result v9

    .line 563
    goto :goto_6

    .line 564
    .line 565
    .line 566
    :pswitch_19
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 567
    move-result-object v3

    .line 568
    .line 569
    check-cast v3, Ljava/util/List;

    .line 570
    .line 571
    .line 572
    invoke-static {v3}, Lcom/google/protobuf/o0;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    .line 573
    move-result v3

    .line 574
    .line 575
    if-lez v3, :cond_3

    .line 576
    .line 577
    iget-boolean v4, v0, Lcom/google/protobuf/z;->useCachedSizeField:Z

    .line 578
    .line 579
    if-eqz v4, :cond_a

    .line 580
    int-to-long v12, v12

    .line 581
    .line 582
    .line 583
    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 584
    .line 585
    .line 586
    :cond_a
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 587
    move-result v4

    .line 588
    .line 589
    .line 590
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 591
    move-result v9

    .line 592
    .line 593
    goto/16 :goto_6

    .line 594
    .line 595
    .line 596
    :pswitch_1a
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 597
    move-result-object v3

    .line 598
    .line 599
    check-cast v3, Ljava/util/List;

    .line 600
    .line 601
    .line 602
    invoke-static {v3}, Lcom/google/protobuf/o0;->computeSizeBoolListNoTag(Ljava/util/List;)I

    .line 603
    move-result v3

    .line 604
    .line 605
    if-lez v3, :cond_3

    .line 606
    .line 607
    iget-boolean v4, v0, Lcom/google/protobuf/z;->useCachedSizeField:Z

    .line 608
    .line 609
    if-eqz v4, :cond_b

    .line 610
    int-to-long v12, v12

    .line 611
    .line 612
    .line 613
    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 614
    .line 615
    .line 616
    :cond_b
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 617
    move-result v4

    .line 618
    .line 619
    .line 620
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 621
    move-result v9

    .line 622
    .line 623
    goto/16 :goto_6

    .line 624
    .line 625
    .line 626
    :pswitch_1b
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 627
    move-result-object v3

    .line 628
    .line 629
    check-cast v3, Ljava/util/List;

    .line 630
    .line 631
    .line 632
    invoke-static {v3}, Lcom/google/protobuf/o0;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    .line 633
    move-result v3

    .line 634
    .line 635
    if-lez v3, :cond_3

    .line 636
    .line 637
    iget-boolean v4, v0, Lcom/google/protobuf/z;->useCachedSizeField:Z

    .line 638
    .line 639
    if-eqz v4, :cond_c

    .line 640
    int-to-long v12, v12

    .line 641
    .line 642
    .line 643
    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 644
    .line 645
    .line 646
    :cond_c
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 647
    move-result v4

    .line 648
    .line 649
    .line 650
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 651
    move-result v9

    .line 652
    .line 653
    goto/16 :goto_6

    .line 654
    .line 655
    .line 656
    :pswitch_1c
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 657
    move-result-object v3

    .line 658
    .line 659
    check-cast v3, Ljava/util/List;

    .line 660
    .line 661
    .line 662
    invoke-static {v3}, Lcom/google/protobuf/o0;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    .line 663
    move-result v3

    .line 664
    .line 665
    if-lez v3, :cond_3

    .line 666
    .line 667
    iget-boolean v4, v0, Lcom/google/protobuf/z;->useCachedSizeField:Z

    .line 668
    .line 669
    if-eqz v4, :cond_d

    .line 670
    int-to-long v12, v12

    .line 671
    .line 672
    .line 673
    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 674
    .line 675
    .line 676
    :cond_d
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 677
    move-result v4

    .line 678
    .line 679
    .line 680
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 681
    move-result v9

    .line 682
    .line 683
    goto/16 :goto_6

    .line 684
    .line 685
    .line 686
    :pswitch_1d
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 687
    move-result-object v3

    .line 688
    .line 689
    check-cast v3, Ljava/util/List;

    .line 690
    .line 691
    .line 692
    invoke-static {v3}, Lcom/google/protobuf/o0;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    .line 693
    move-result v3

    .line 694
    .line 695
    if-lez v3, :cond_3

    .line 696
    .line 697
    iget-boolean v4, v0, Lcom/google/protobuf/z;->useCachedSizeField:Z

    .line 698
    .line 699
    if-eqz v4, :cond_e

    .line 700
    int-to-long v12, v12

    .line 701
    .line 702
    .line 703
    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 704
    .line 705
    .line 706
    :cond_e
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 707
    move-result v4

    .line 708
    .line 709
    .line 710
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 711
    move-result v9

    .line 712
    .line 713
    goto/16 :goto_6

    .line 714
    .line 715
    .line 716
    :pswitch_1e
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 717
    move-result-object v3

    .line 718
    .line 719
    check-cast v3, Ljava/util/List;

    .line 720
    .line 721
    .line 722
    invoke-static {v3}, Lcom/google/protobuf/o0;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    .line 723
    move-result v3

    .line 724
    .line 725
    if-lez v3, :cond_3

    .line 726
    .line 727
    iget-boolean v4, v0, Lcom/google/protobuf/z;->useCachedSizeField:Z

    .line 728
    .line 729
    if-eqz v4, :cond_f

    .line 730
    int-to-long v12, v12

    .line 731
    .line 732
    .line 733
    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 734
    .line 735
    .line 736
    :cond_f
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 737
    move-result v4

    .line 738
    .line 739
    .line 740
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 741
    move-result v9

    .line 742
    .line 743
    goto/16 :goto_6

    .line 744
    .line 745
    .line 746
    :pswitch_1f
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 747
    move-result-object v3

    .line 748
    .line 749
    check-cast v3, Ljava/util/List;

    .line 750
    .line 751
    .line 752
    invoke-static {v3}, Lcom/google/protobuf/o0;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    .line 753
    move-result v3

    .line 754
    .line 755
    if-lez v3, :cond_3

    .line 756
    .line 757
    iget-boolean v4, v0, Lcom/google/protobuf/z;->useCachedSizeField:Z

    .line 758
    .line 759
    if-eqz v4, :cond_10

    .line 760
    int-to-long v12, v12

    .line 761
    .line 762
    .line 763
    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 764
    .line 765
    .line 766
    :cond_10
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 767
    move-result v4

    .line 768
    .line 769
    .line 770
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 771
    move-result v9

    .line 772
    .line 773
    goto/16 :goto_6

    .line 774
    .line 775
    .line 776
    :pswitch_20
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 777
    move-result-object v3

    .line 778
    .line 779
    check-cast v3, Ljava/util/List;

    .line 780
    .line 781
    .line 782
    invoke-static {v3}, Lcom/google/protobuf/o0;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    .line 783
    move-result v3

    .line 784
    .line 785
    if-lez v3, :cond_3

    .line 786
    .line 787
    iget-boolean v4, v0, Lcom/google/protobuf/z;->useCachedSizeField:Z

    .line 788
    .line 789
    if-eqz v4, :cond_11

    .line 790
    int-to-long v12, v12

    .line 791
    .line 792
    .line 793
    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 794
    .line 795
    .line 796
    :cond_11
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 797
    move-result v4

    .line 798
    .line 799
    .line 800
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 801
    move-result v9

    .line 802
    .line 803
    goto/16 :goto_6

    .line 804
    .line 805
    .line 806
    :pswitch_21
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 807
    move-result-object v3

    .line 808
    .line 809
    check-cast v3, Ljava/util/List;

    .line 810
    .line 811
    .line 812
    invoke-static {v3}, Lcom/google/protobuf/o0;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    .line 813
    move-result v3

    .line 814
    .line 815
    if-lez v3, :cond_3

    .line 816
    .line 817
    iget-boolean v4, v0, Lcom/google/protobuf/z;->useCachedSizeField:Z

    .line 818
    .line 819
    if-eqz v4, :cond_12

    .line 820
    int-to-long v12, v12

    .line 821
    .line 822
    .line 823
    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 824
    .line 825
    .line 826
    :cond_12
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 827
    move-result v4

    .line 828
    .line 829
    .line 830
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 831
    move-result v9

    .line 832
    .line 833
    goto/16 :goto_6

    .line 834
    .line 835
    .line 836
    :pswitch_22
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 837
    move-result-object v3

    .line 838
    .line 839
    check-cast v3, Ljava/util/List;

    .line 840
    const/4 v4, 0x0

    .line 841
    .line 842
    .line 843
    invoke-static {v10, v3, v4}, Lcom/google/protobuf/o0;->computeSizeSInt64List(ILjava/util/List;Z)I

    .line 844
    move-result v3

    .line 845
    :goto_7
    add-int/2addr v6, v3

    .line 846
    move v11, v4

    .line 847
    .line 848
    goto/16 :goto_9

    .line 849
    :pswitch_23
    const/4 v4, 0x0

    .line 850
    .line 851
    .line 852
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 853
    move-result-object v3

    .line 854
    .line 855
    check-cast v3, Ljava/util/List;

    .line 856
    .line 857
    .line 858
    invoke-static {v10, v3, v4}, Lcom/google/protobuf/o0;->computeSizeSInt32List(ILjava/util/List;Z)I

    .line 859
    move-result v3

    .line 860
    goto :goto_7

    .line 861
    :pswitch_24
    const/4 v4, 0x0

    .line 862
    .line 863
    .line 864
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 865
    move-result-object v3

    .line 866
    .line 867
    check-cast v3, Ljava/util/List;

    .line 868
    .line 869
    .line 870
    invoke-static {v10, v3, v4}, Lcom/google/protobuf/o0;->computeSizeFixed64List(ILjava/util/List;Z)I

    .line 871
    move-result v3

    .line 872
    goto :goto_7

    .line 873
    :pswitch_25
    const/4 v4, 0x0

    .line 874
    .line 875
    .line 876
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 877
    move-result-object v3

    .line 878
    .line 879
    check-cast v3, Ljava/util/List;

    .line 880
    .line 881
    .line 882
    invoke-static {v10, v3, v4}, Lcom/google/protobuf/o0;->computeSizeFixed32List(ILjava/util/List;Z)I

    .line 883
    move-result v3

    .line 884
    goto :goto_7

    .line 885
    :pswitch_26
    const/4 v4, 0x0

    .line 886
    .line 887
    .line 888
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 889
    move-result-object v3

    .line 890
    .line 891
    check-cast v3, Ljava/util/List;

    .line 892
    .line 893
    .line 894
    invoke-static {v10, v3, v4}, Lcom/google/protobuf/o0;->computeSizeEnumList(ILjava/util/List;Z)I

    .line 895
    move-result v3

    .line 896
    goto :goto_7

    .line 897
    :pswitch_27
    const/4 v4, 0x0

    .line 898
    .line 899
    .line 900
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 901
    move-result-object v3

    .line 902
    .line 903
    check-cast v3, Ljava/util/List;

    .line 904
    .line 905
    .line 906
    invoke-static {v10, v3, v4}, Lcom/google/protobuf/o0;->computeSizeUInt32List(ILjava/util/List;Z)I

    .line 907
    move-result v3

    .line 908
    .line 909
    goto/16 :goto_3

    .line 910
    .line 911
    .line 912
    :pswitch_28
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 913
    move-result-object v3

    .line 914
    .line 915
    check-cast v3, Ljava/util/List;

    .line 916
    .line 917
    .line 918
    invoke-static {v10, v3}, Lcom/google/protobuf/o0;->computeSizeByteStringList(ILjava/util/List;)I

    .line 919
    move-result v3

    .line 920
    .line 921
    goto/16 :goto_3

    .line 922
    .line 923
    .line 924
    :pswitch_29
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 925
    move-result-object v3

    .line 926
    .line 927
    check-cast v3, Ljava/util/List;

    .line 928
    .line 929
    .line 930
    invoke-direct {v0, v5}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    .line 931
    move-result-object v4

    .line 932
    .line 933
    .line 934
    invoke-static {v10, v3, v4}, Lcom/google/protobuf/o0;->computeSizeMessageList(ILjava/util/List;Lcom/google/protobuf/m0;)I

    .line 935
    move-result v3

    .line 936
    .line 937
    goto/16 :goto_3

    .line 938
    .line 939
    .line 940
    :pswitch_2a
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 941
    move-result-object v3

    .line 942
    .line 943
    check-cast v3, Ljava/util/List;

    .line 944
    .line 945
    .line 946
    invoke-static {v10, v3}, Lcom/google/protobuf/o0;->computeSizeStringList(ILjava/util/List;)I

    .line 947
    move-result v3

    .line 948
    .line 949
    goto/16 :goto_3

    .line 950
    .line 951
    .line 952
    :pswitch_2b
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 953
    move-result-object v3

    .line 954
    .line 955
    check-cast v3, Ljava/util/List;

    .line 956
    const/4 v4, 0x0

    .line 957
    .line 958
    .line 959
    invoke-static {v10, v3, v4}, Lcom/google/protobuf/o0;->computeSizeBoolList(ILjava/util/List;Z)I

    .line 960
    move-result v3

    .line 961
    goto :goto_7

    .line 962
    :pswitch_2c
    const/4 v4, 0x0

    .line 963
    .line 964
    .line 965
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 966
    move-result-object v3

    .line 967
    .line 968
    check-cast v3, Ljava/util/List;

    .line 969
    .line 970
    .line 971
    invoke-static {v10, v3, v4}, Lcom/google/protobuf/o0;->computeSizeFixed32List(ILjava/util/List;Z)I

    .line 972
    move-result v3

    .line 973
    .line 974
    goto/16 :goto_7

    .line 975
    :pswitch_2d
    const/4 v4, 0x0

    .line 976
    .line 977
    .line 978
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 979
    move-result-object v3

    .line 980
    .line 981
    check-cast v3, Ljava/util/List;

    .line 982
    .line 983
    .line 984
    invoke-static {v10, v3, v4}, Lcom/google/protobuf/o0;->computeSizeFixed64List(ILjava/util/List;Z)I

    .line 985
    move-result v3

    .line 986
    .line 987
    goto/16 :goto_7

    .line 988
    :pswitch_2e
    const/4 v4, 0x0

    .line 989
    .line 990
    .line 991
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 992
    move-result-object v3

    .line 993
    .line 994
    check-cast v3, Ljava/util/List;

    .line 995
    .line 996
    .line 997
    invoke-static {v10, v3, v4}, Lcom/google/protobuf/o0;->computeSizeInt32List(ILjava/util/List;Z)I

    .line 998
    move-result v3

    .line 999
    .line 1000
    goto/16 :goto_7

    .line 1001
    :pswitch_2f
    const/4 v4, 0x0

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1005
    move-result-object v3

    .line 1006
    .line 1007
    check-cast v3, Ljava/util/List;

    .line 1008
    .line 1009
    .line 1010
    invoke-static {v10, v3, v4}, Lcom/google/protobuf/o0;->computeSizeUInt64List(ILjava/util/List;Z)I

    .line 1011
    move-result v3

    .line 1012
    .line 1013
    goto/16 :goto_7

    .line 1014
    :pswitch_30
    const/4 v4, 0x0

    .line 1015
    .line 1016
    .line 1017
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1018
    move-result-object v3

    .line 1019
    .line 1020
    check-cast v3, Ljava/util/List;

    .line 1021
    .line 1022
    .line 1023
    invoke-static {v10, v3, v4}, Lcom/google/protobuf/o0;->computeSizeInt64List(ILjava/util/List;Z)I

    .line 1024
    move-result v3

    .line 1025
    .line 1026
    goto/16 :goto_7

    .line 1027
    :pswitch_31
    const/4 v4, 0x0

    .line 1028
    .line 1029
    .line 1030
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1031
    move-result-object v3

    .line 1032
    .line 1033
    check-cast v3, Ljava/util/List;

    .line 1034
    .line 1035
    .line 1036
    invoke-static {v10, v3, v4}, Lcom/google/protobuf/o0;->computeSizeFixed32List(ILjava/util/List;Z)I

    .line 1037
    move-result v3

    .line 1038
    .line 1039
    goto/16 :goto_7

    .line 1040
    :pswitch_32
    const/4 v4, 0x0

    .line 1041
    .line 1042
    .line 1043
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1044
    move-result-object v3

    .line 1045
    .line 1046
    check-cast v3, Ljava/util/List;

    .line 1047
    .line 1048
    .line 1049
    invoke-static {v10, v3, v4}, Lcom/google/protobuf/o0;->computeSizeFixed64List(ILjava/util/List;Z)I

    .line 1050
    move-result v3

    .line 1051
    .line 1052
    goto/16 :goto_3

    .line 1053
    .line 1054
    :pswitch_33
    and-int v3, v8, v15

    .line 1055
    .line 1056
    if-eqz v3, :cond_3

    .line 1057
    .line 1058
    .line 1059
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1060
    move-result-object v3

    .line 1061
    .line 1062
    check-cast v3, Lcom/google/protobuf/MessageLite;

    .line 1063
    .line 1064
    .line 1065
    invoke-direct {v0, v5}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    .line 1066
    move-result-object v4

    .line 1067
    .line 1068
    .line 1069
    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/m0;)I

    .line 1070
    move-result v3

    .line 1071
    .line 1072
    goto/16 :goto_3

    .line 1073
    .line 1074
    :pswitch_34
    and-int v3, v8, v15

    .line 1075
    .line 1076
    if-eqz v3, :cond_3

    .line 1077
    .line 1078
    .line 1079
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1080
    move-result-wide v3

    .line 1081
    .line 1082
    .line 1083
    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    .line 1084
    move-result v3

    .line 1085
    .line 1086
    goto/16 :goto_3

    .line 1087
    .line 1088
    :pswitch_35
    and-int v3, v8, v15

    .line 1089
    .line 1090
    if-eqz v3, :cond_3

    .line 1091
    .line 1092
    .line 1093
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1094
    move-result v3

    .line 1095
    .line 1096
    .line 1097
    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    .line 1098
    move-result v3

    .line 1099
    .line 1100
    goto/16 :goto_3

    .line 1101
    .line 1102
    :pswitch_36
    and-int v11, v8, v15

    .line 1103
    .line 1104
    if-eqz v11, :cond_3

    .line 1105
    .line 1106
    .line 1107
    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    .line 1108
    move-result v3

    .line 1109
    .line 1110
    goto/16 :goto_3

    .line 1111
    .line 1112
    :pswitch_37
    and-int v3, v8, v15

    .line 1113
    .line 1114
    if-eqz v3, :cond_3

    .line 1115
    const/4 v3, 0x0

    .line 1116
    .line 1117
    .line 1118
    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    .line 1119
    move-result v4

    .line 1120
    .line 1121
    goto/16 :goto_5

    .line 1122
    .line 1123
    :pswitch_38
    and-int v3, v8, v15

    .line 1124
    .line 1125
    if-eqz v3, :cond_3

    .line 1126
    .line 1127
    .line 1128
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1129
    move-result v3

    .line 1130
    .line 1131
    .line 1132
    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 1133
    move-result v3

    .line 1134
    .line 1135
    goto/16 :goto_3

    .line 1136
    .line 1137
    :pswitch_39
    and-int v3, v8, v15

    .line 1138
    .line 1139
    if-eqz v3, :cond_3

    .line 1140
    .line 1141
    .line 1142
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1143
    move-result v3

    .line 1144
    .line 1145
    .line 1146
    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    .line 1147
    move-result v3

    .line 1148
    .line 1149
    goto/16 :goto_3

    .line 1150
    .line 1151
    :pswitch_3a
    and-int v3, v8, v15

    .line 1152
    .line 1153
    if-eqz v3, :cond_3

    .line 1154
    .line 1155
    .line 1156
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1157
    move-result-object v3

    .line 1158
    .line 1159
    check-cast v3, Lcom/google/protobuf/ByteString;

    .line 1160
    .line 1161
    .line 1162
    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    .line 1163
    move-result v3

    .line 1164
    .line 1165
    goto/16 :goto_3

    .line 1166
    .line 1167
    :pswitch_3b
    and-int v3, v8, v15

    .line 1168
    .line 1169
    if-eqz v3, :cond_3

    .line 1170
    .line 1171
    .line 1172
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1173
    move-result-object v3

    .line 1174
    .line 1175
    .line 1176
    invoke-direct {v0, v5}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    .line 1177
    move-result-object v4

    .line 1178
    .line 1179
    .line 1180
    invoke-static {v10, v3, v4}, Lcom/google/protobuf/o0;->computeSizeMessage(ILjava/lang/Object;Lcom/google/protobuf/m0;)I

    .line 1181
    move-result v3

    .line 1182
    .line 1183
    goto/16 :goto_3

    .line 1184
    .line 1185
    :pswitch_3c
    and-int v3, v8, v15

    .line 1186
    .line 1187
    if-eqz v3, :cond_3

    .line 1188
    .line 1189
    .line 1190
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1191
    move-result-object v3

    .line 1192
    .line 1193
    instance-of v4, v3, Lcom/google/protobuf/ByteString;

    .line 1194
    .line 1195
    if-eqz v4, :cond_13

    .line 1196
    .line 1197
    check-cast v3, Lcom/google/protobuf/ByteString;

    .line 1198
    .line 1199
    .line 1200
    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    .line 1201
    move-result v3

    .line 1202
    .line 1203
    goto/16 :goto_3

    .line 1204
    .line 1205
    :cond_13
    check-cast v3, Ljava/lang/String;

    .line 1206
    .line 1207
    .line 1208
    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    .line 1209
    move-result v3

    .line 1210
    .line 1211
    goto/16 :goto_3

    .line 1212
    .line 1213
    :pswitch_3d
    and-int v3, v8, v15

    .line 1214
    .line 1215
    if-eqz v3, :cond_3

    .line 1216
    const/4 v3, 0x1

    .line 1217
    .line 1218
    .line 1219
    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 1220
    move-result v3

    .line 1221
    .line 1222
    goto/16 :goto_3

    .line 1223
    .line 1224
    :pswitch_3e
    and-int v3, v8, v15

    .line 1225
    .line 1226
    if-eqz v3, :cond_3

    .line 1227
    const/4 v11, 0x0

    .line 1228
    .line 1229
    .line 1230
    invoke-static {v10, v11}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    .line 1231
    move-result v3

    .line 1232
    :goto_8
    add-int/2addr v6, v3

    .line 1233
    goto :goto_9

    .line 1234
    :pswitch_3f
    const/4 v11, 0x0

    .line 1235
    .line 1236
    and-int v9, v8, v15

    .line 1237
    .line 1238
    if-eqz v9, :cond_14

    .line 1239
    .line 1240
    .line 1241
    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    .line 1242
    move-result v3

    .line 1243
    goto :goto_8

    .line 1244
    :pswitch_40
    const/4 v11, 0x0

    .line 1245
    .line 1246
    and-int v3, v8, v15

    .line 1247
    .line 1248
    if-eqz v3, :cond_14

    .line 1249
    .line 1250
    .line 1251
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1252
    move-result v3

    .line 1253
    .line 1254
    .line 1255
    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 1256
    move-result v3

    .line 1257
    goto :goto_8

    .line 1258
    :pswitch_41
    const/4 v11, 0x0

    .line 1259
    .line 1260
    and-int v3, v8, v15

    .line 1261
    .line 1262
    if-eqz v3, :cond_14

    .line 1263
    .line 1264
    .line 1265
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1266
    move-result-wide v3

    .line 1267
    .line 1268
    .line 1269
    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    .line 1270
    move-result v3

    .line 1271
    goto :goto_8

    .line 1272
    :pswitch_42
    const/4 v11, 0x0

    .line 1273
    .line 1274
    and-int v3, v8, v15

    .line 1275
    .line 1276
    if-eqz v3, :cond_14

    .line 1277
    .line 1278
    .line 1279
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1280
    move-result-wide v3

    .line 1281
    .line 1282
    .line 1283
    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    .line 1284
    move-result v3

    .line 1285
    goto :goto_8

    .line 1286
    :pswitch_43
    const/4 v11, 0x0

    .line 1287
    .line 1288
    and-int v3, v8, v15

    .line 1289
    .line 1290
    if-eqz v3, :cond_14

    .line 1291
    .line 1292
    .line 1293
    invoke-static {v10, v9}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    .line 1294
    move-result v3

    .line 1295
    goto :goto_8

    .line 1296
    :pswitch_44
    const/4 v11, 0x0

    .line 1297
    .line 1298
    and-int v3, v8, v15

    .line 1299
    .line 1300
    if-eqz v3, :cond_14

    .line 1301
    .line 1302
    const-wide/16 v3, 0x0

    .line 1303
    .line 1304
    .line 1305
    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    .line 1306
    move-result v3

    .line 1307
    goto :goto_8

    .line 1308
    .line 1309
    :cond_14
    :goto_9
    add-int/lit8 v5, v5, 0x3

    .line 1310
    .line 1311
    .line 1312
    const v4, 0xfffff

    .line 1313
    .line 1314
    goto/16 :goto_0

    .line 1315
    .line 1316
    :cond_15
    iget-object v2, v0, Lcom/google/protobuf/z;->unknownFieldSchema:Lcom/google/protobuf/r0;

    .line 1317
    .line 1318
    .line 1319
    invoke-direct {v0, v2, v1}, Lcom/google/protobuf/z;->getUnknownFieldsSerializedSize(Lcom/google/protobuf/r0;Ljava/lang/Object;)I

    .line 1320
    move-result v2

    .line 1321
    add-int/2addr v6, v2

    .line 1322
    .line 1323
    iget-boolean v2, v0, Lcom/google/protobuf/z;->hasExtensions:Z

    .line 1324
    .line 1325
    if-eqz v2, :cond_16

    .line 1326
    .line 1327
    iget-object v2, v0, Lcom/google/protobuf/z;->extensionSchema:Lcom/google/protobuf/j;

    .line 1328
    .line 1329
    .line 1330
    invoke-virtual {v2, v1}, Lcom/google/protobuf/j;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    .line 1331
    move-result-object v1

    .line 1332
    .line 1333
    .line 1334
    invoke-virtual {v1}, Lcom/google/protobuf/FieldSet;->getSerializedSize()I

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
    .line 1413
    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    .line 1421
    .line 1422
    .line 1423
    .line 1424
    .line 1425
    .line 1426
    .line 1427
    .line 1428
    .line 1429
    .line 1430
    .line 1431
    .line 1432
    .line 1433
    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    .line 1440
    .line 1441
    .line 1442
    .line 1443
    .line 1444
    .line 1445
    .line 1446
    .line 1447
    .line 1448
    .line 1449
    .line 1450
    .line 1451
    .line 1452
    .line 1453
    .line 1454
    .line 1455
    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    .line 1462
    .line 1463
    .line 1464
    .line 1465
    .line 1466
    .line 1467
    .line 1468
    .line 1469
    .line 1470
    .line 1471
    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    .line 1479
    .line 1480
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

.method private getSerializedSizeProto3(Ljava/lang/Object;)I
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
    sget-object v2, Lcom/google/protobuf/z;->UNSAFE:Lsun/misc/Unsafe;

    .line 6
    const/4 v3, 0x0

    .line 7
    move v4, v3

    .line 8
    move v5, v4

    .line 9
    .line 10
    :goto_0
    iget-object v6, v0, Lcom/google/protobuf/z;->buffer:[I

    .line 11
    array-length v6, v6

    .line 12
    .line 13
    if-ge v4, v6, :cond_12

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v4}, Lcom/google/protobuf/z;->typeAndOffsetAt(I)I

    .line 17
    move-result v6

    .line 18
    .line 19
    .line 20
    invoke-static {v6}, Lcom/google/protobuf/z;->type(I)I

    .line 21
    move-result v7

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v4}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 25
    move-result v8

    .line 26
    .line 27
    .line 28
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 29
    move-result-wide v9

    .line 30
    .line 31
    sget-object v6, Lcom/google/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6}, Lcom/google/protobuf/FieldType;->id()I

    .line 35
    move-result v6

    .line 36
    .line 37
    if-lt v7, v6, :cond_0

    .line 38
    .line 39
    sget-object v6, Lcom/google/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v6}, Lcom/google/protobuf/FieldType;->id()I

    .line 43
    move-result v6

    .line 44
    .line 45
    if-gt v7, v6, :cond_0

    .line 46
    .line 47
    iget-object v6, v0, Lcom/google/protobuf/z;->buffer:[I

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
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 70
    move-result v6

    .line 71
    .line 72
    if-eqz v6, :cond_11

    .line 73
    .line 74
    .line 75
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 76
    move-result-object v6

    .line 77
    .line 78
    check-cast v6, Lcom/google/protobuf/MessageLite;

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, v4}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    .line 82
    move-result-object v7

    .line 83
    .line 84
    .line 85
    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/m0;)I

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
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 93
    move-result v6

    .line 94
    .line 95
    if-eqz v6, :cond_11

    .line 96
    .line 97
    .line 98
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/z;->oneofLongAt(Ljava/lang/Object;J)J

    .line 99
    move-result-wide v6

    .line 100
    .line 101
    .line 102
    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    .line 103
    move-result v6

    .line 104
    goto :goto_2

    .line 105
    .line 106
    .line 107
    :pswitch_2
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 108
    move-result v6

    .line 109
    .line 110
    if-eqz v6, :cond_11

    .line 111
    .line 112
    .line 113
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/z;->oneofIntAt(Ljava/lang/Object;J)I

    .line 114
    move-result v6

    .line 115
    .line 116
    .line 117
    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    .line 118
    move-result v6

    .line 119
    goto :goto_2

    .line 120
    .line 121
    .line 122
    :pswitch_3
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 123
    move-result v6

    .line 124
    .line 125
    if-eqz v6, :cond_11

    .line 126
    .line 127
    .line 128
    invoke-static {v8, v11, v12}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    .line 129
    move-result v6

    .line 130
    goto :goto_2

    .line 131
    .line 132
    .line 133
    :pswitch_4
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 134
    move-result v6

    .line 135
    .line 136
    if-eqz v6, :cond_11

    .line 137
    .line 138
    .line 139
    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    .line 140
    move-result v6

    .line 141
    goto :goto_2

    .line 142
    .line 143
    .line 144
    :pswitch_5
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 145
    move-result v6

    .line 146
    .line 147
    if-eqz v6, :cond_11

    .line 148
    .line 149
    .line 150
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/z;->oneofIntAt(Ljava/lang/Object;J)I

    .line 151
    move-result v6

    .line 152
    .line 153
    .line 154
    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 155
    move-result v6

    .line 156
    goto :goto_2

    .line 157
    .line 158
    .line 159
    :pswitch_6
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 160
    move-result v6

    .line 161
    .line 162
    if-eqz v6, :cond_11

    .line 163
    .line 164
    .line 165
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/z;->oneofIntAt(Ljava/lang/Object;J)I

    .line 166
    move-result v6

    .line 167
    .line 168
    .line 169
    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    .line 170
    move-result v6

    .line 171
    goto :goto_2

    .line 172
    .line 173
    .line 174
    :pswitch_7
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 175
    move-result v6

    .line 176
    .line 177
    if-eqz v6, :cond_11

    .line 178
    .line 179
    .line 180
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 181
    move-result-object v6

    .line 182
    .line 183
    check-cast v6, Lcom/google/protobuf/ByteString;

    .line 184
    .line 185
    .line 186
    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    .line 187
    move-result v6

    .line 188
    goto :goto_2

    .line 189
    .line 190
    .line 191
    :pswitch_8
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 192
    move-result v6

    .line 193
    .line 194
    if-eqz v6, :cond_11

    .line 195
    .line 196
    .line 197
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 198
    move-result-object v6

    .line 199
    .line 200
    .line 201
    invoke-direct {p0, v4}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    .line 202
    move-result-object v7

    .line 203
    .line 204
    .line 205
    invoke-static {v8, v6, v7}, Lcom/google/protobuf/o0;->computeSizeMessage(ILjava/lang/Object;Lcom/google/protobuf/m0;)I

    .line 206
    move-result v6

    .line 207
    goto :goto_2

    .line 208
    .line 209
    .line 210
    :pswitch_9
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 211
    move-result v6

    .line 212
    .line 213
    if-eqz v6, :cond_11

    .line 214
    .line 215
    .line 216
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 217
    move-result-object v6

    .line 218
    .line 219
    instance-of v7, v6, Lcom/google/protobuf/ByteString;

    .line 220
    .line 221
    if-eqz v7, :cond_1

    .line 222
    .line 223
    check-cast v6, Lcom/google/protobuf/ByteString;

    .line 224
    .line 225
    .line 226
    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

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
    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    .line 235
    move-result v6

    .line 236
    .line 237
    goto/16 :goto_2

    .line 238
    .line 239
    .line 240
    :pswitch_a
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 241
    move-result v6

    .line 242
    .line 243
    if-eqz v6, :cond_11

    .line 244
    .line 245
    .line 246
    invoke-static {v8, v14}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 247
    move-result v6

    .line 248
    .line 249
    goto/16 :goto_2

    .line 250
    .line 251
    .line 252
    :pswitch_b
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 253
    move-result v6

    .line 254
    .line 255
    if-eqz v6, :cond_11

    .line 256
    .line 257
    .line 258
    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    .line 259
    move-result v6

    .line 260
    .line 261
    goto/16 :goto_2

    .line 262
    .line 263
    .line 264
    :pswitch_c
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 265
    move-result v6

    .line 266
    .line 267
    if-eqz v6, :cond_11

    .line 268
    .line 269
    .line 270
    invoke-static {v8, v11, v12}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    .line 271
    move-result v6

    .line 272
    .line 273
    goto/16 :goto_2

    .line 274
    .line 275
    .line 276
    :pswitch_d
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 277
    move-result v6

    .line 278
    .line 279
    if-eqz v6, :cond_11

    .line 280
    .line 281
    .line 282
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/z;->oneofIntAt(Ljava/lang/Object;J)I

    .line 283
    move-result v6

    .line 284
    .line 285
    .line 286
    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 287
    move-result v6

    .line 288
    .line 289
    goto/16 :goto_2

    .line 290
    .line 291
    .line 292
    :pswitch_e
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 293
    move-result v6

    .line 294
    .line 295
    if-eqz v6, :cond_11

    .line 296
    .line 297
    .line 298
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/z;->oneofLongAt(Ljava/lang/Object;J)J

    .line 299
    move-result-wide v6

    .line 300
    .line 301
    .line 302
    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    .line 303
    move-result v6

    .line 304
    .line 305
    goto/16 :goto_2

    .line 306
    .line 307
    .line 308
    :pswitch_f
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 309
    move-result v6

    .line 310
    .line 311
    if-eqz v6, :cond_11

    .line 312
    .line 313
    .line 314
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/z;->oneofLongAt(Ljava/lang/Object;J)J

    .line 315
    move-result-wide v6

    .line 316
    .line 317
    .line 318
    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    .line 319
    move-result v6

    .line 320
    .line 321
    goto/16 :goto_2

    .line 322
    .line 323
    .line 324
    :pswitch_10
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 325
    move-result v6

    .line 326
    .line 327
    if-eqz v6, :cond_11

    .line 328
    .line 329
    .line 330
    invoke-static {v8, v13}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    .line 331
    move-result v6

    .line 332
    .line 333
    goto/16 :goto_2

    .line 334
    .line 335
    .line 336
    :pswitch_11
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

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
    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    .line 345
    move-result v6

    .line 346
    .line 347
    goto/16 :goto_2

    .line 348
    .line 349
    :pswitch_12
    iget-object v6, v0, Lcom/google/protobuf/z;->mapFieldSchema:Lcom/google/protobuf/t;

    .line 350
    .line 351
    .line 352
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 353
    move-result-object v7

    .line 354
    .line 355
    .line 356
    invoke-direct {p0, v4}, Lcom/google/protobuf/z;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    .line 357
    move-result-object v9

    .line 358
    .line 359
    .line 360
    invoke-interface {v6, v8, v7, v9}, Lcom/google/protobuf/t;->getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 361
    move-result v6

    .line 362
    .line 363
    goto/16 :goto_2

    .line 364
    .line 365
    .line 366
    :pswitch_13
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/z;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    .line 367
    move-result-object v6

    .line 368
    .line 369
    .line 370
    invoke-direct {p0, v4}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    .line 371
    move-result-object v7

    .line 372
    .line 373
    .line 374
    invoke-static {v8, v6, v7}, Lcom/google/protobuf/o0;->computeSizeGroupList(ILjava/util/List;Lcom/google/protobuf/m0;)I

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
    invoke-static {v7}, Lcom/google/protobuf/o0;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    .line 387
    move-result v7

    .line 388
    .line 389
    if-lez v7, :cond_11

    .line 390
    .line 391
    iget-boolean v9, v0, Lcom/google/protobuf/z;->useCachedSizeField:Z

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
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 401
    move-result v6

    .line 402
    .line 403
    .line 404
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

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
    invoke-static {v7}, Lcom/google/protobuf/o0;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    .line 419
    move-result v7

    .line 420
    .line 421
    if-lez v7, :cond_11

    .line 422
    .line 423
    iget-boolean v9, v0, Lcom/google/protobuf/z;->useCachedSizeField:Z

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
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 433
    move-result v6

    .line 434
    .line 435
    .line 436
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

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
    invoke-static {v7}, Lcom/google/protobuf/o0;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    .line 448
    move-result v7

    .line 449
    .line 450
    if-lez v7, :cond_11

    .line 451
    .line 452
    iget-boolean v9, v0, Lcom/google/protobuf/z;->useCachedSizeField:Z

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
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 462
    move-result v6

    .line 463
    .line 464
    .line 465
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

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
    invoke-static {v7}, Lcom/google/protobuf/o0;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    .line 477
    move-result v7

    .line 478
    .line 479
    if-lez v7, :cond_11

    .line 480
    .line 481
    iget-boolean v9, v0, Lcom/google/protobuf/z;->useCachedSizeField:Z

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
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 491
    move-result v6

    .line 492
    .line 493
    .line 494
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

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
    invoke-static {v7}, Lcom/google/protobuf/o0;->computeSizeEnumListNoTag(Ljava/util/List;)I

    .line 506
    move-result v7

    .line 507
    .line 508
    if-lez v7, :cond_11

    .line 509
    .line 510
    iget-boolean v9, v0, Lcom/google/protobuf/z;->useCachedSizeField:Z

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
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 520
    move-result v6

    .line 521
    .line 522
    .line 523
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

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
    invoke-static {v7}, Lcom/google/protobuf/o0;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    .line 535
    move-result v7

    .line 536
    .line 537
    if-lez v7, :cond_11

    .line 538
    .line 539
    iget-boolean v9, v0, Lcom/google/protobuf/z;->useCachedSizeField:Z

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
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 549
    move-result v6

    .line 550
    .line 551
    .line 552
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

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
    invoke-static {v7}, Lcom/google/protobuf/o0;->computeSizeBoolListNoTag(Ljava/util/List;)I

    .line 565
    move-result v7

    .line 566
    .line 567
    if-lez v7, :cond_11

    .line 568
    .line 569
    iget-boolean v9, v0, Lcom/google/protobuf/z;->useCachedSizeField:Z

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
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 579
    move-result v6

    .line 580
    .line 581
    .line 582
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

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
    invoke-static {v7}, Lcom/google/protobuf/o0;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    .line 595
    move-result v7

    .line 596
    .line 597
    if-lez v7, :cond_11

    .line 598
    .line 599
    iget-boolean v9, v0, Lcom/google/protobuf/z;->useCachedSizeField:Z

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
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 609
    move-result v6

    .line 610
    .line 611
    .line 612
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

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
    invoke-static {v7}, Lcom/google/protobuf/o0;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    .line 625
    move-result v7

    .line 626
    .line 627
    if-lez v7, :cond_11

    .line 628
    .line 629
    iget-boolean v9, v0, Lcom/google/protobuf/z;->useCachedSizeField:Z

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
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 639
    move-result v6

    .line 640
    .line 641
    .line 642
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

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
    invoke-static {v7}, Lcom/google/protobuf/o0;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    .line 655
    move-result v7

    .line 656
    .line 657
    if-lez v7, :cond_11

    .line 658
    .line 659
    iget-boolean v9, v0, Lcom/google/protobuf/z;->useCachedSizeField:Z

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
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 669
    move-result v6

    .line 670
    .line 671
    .line 672
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

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
    invoke-static {v7}, Lcom/google/protobuf/o0;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    .line 685
    move-result v7

    .line 686
    .line 687
    if-lez v7, :cond_11

    .line 688
    .line 689
    iget-boolean v9, v0, Lcom/google/protobuf/z;->useCachedSizeField:Z

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
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 699
    move-result v6

    .line 700
    .line 701
    .line 702
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

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
    invoke-static {v7}, Lcom/google/protobuf/o0;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    .line 715
    move-result v7

    .line 716
    .line 717
    if-lez v7, :cond_11

    .line 718
    .line 719
    iget-boolean v9, v0, Lcom/google/protobuf/z;->useCachedSizeField:Z

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
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 729
    move-result v6

    .line 730
    .line 731
    .line 732
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

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
    invoke-static {v7}, Lcom/google/protobuf/o0;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    .line 745
    move-result v7

    .line 746
    .line 747
    if-lez v7, :cond_11

    .line 748
    .line 749
    iget-boolean v9, v0, Lcom/google/protobuf/z;->useCachedSizeField:Z

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
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 759
    move-result v6

    .line 760
    .line 761
    .line 762
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

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
    invoke-static {v7}, Lcom/google/protobuf/o0;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    .line 775
    move-result v7

    .line 776
    .line 777
    if-lez v7, :cond_11

    .line 778
    .line 779
    iget-boolean v9, v0, Lcom/google/protobuf/z;->useCachedSizeField:Z

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
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 789
    move-result v6

    .line 790
    .line 791
    .line 792
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 793
    move-result v8

    .line 794
    .line 795
    goto/16 :goto_3

    .line 796
    .line 797
    .line 798
    :pswitch_22
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/z;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    .line 799
    move-result-object v6

    .line 800
    .line 801
    .line 802
    invoke-static {v8, v6, v3}, Lcom/google/protobuf/o0;->computeSizeSInt64List(ILjava/util/List;Z)I

    .line 803
    move-result v6

    .line 804
    .line 805
    goto/16 :goto_2

    .line 806
    .line 807
    .line 808
    :pswitch_23
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/z;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    .line 809
    move-result-object v6

    .line 810
    .line 811
    .line 812
    invoke-static {v8, v6, v3}, Lcom/google/protobuf/o0;->computeSizeSInt32List(ILjava/util/List;Z)I

    .line 813
    move-result v6

    .line 814
    .line 815
    goto/16 :goto_2

    .line 816
    .line 817
    .line 818
    :pswitch_24
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/z;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    .line 819
    move-result-object v6

    .line 820
    .line 821
    .line 822
    invoke-static {v8, v6, v3}, Lcom/google/protobuf/o0;->computeSizeFixed64List(ILjava/util/List;Z)I

    .line 823
    move-result v6

    .line 824
    .line 825
    goto/16 :goto_2

    .line 826
    .line 827
    .line 828
    :pswitch_25
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/z;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    .line 829
    move-result-object v6

    .line 830
    .line 831
    .line 832
    invoke-static {v8, v6, v3}, Lcom/google/protobuf/o0;->computeSizeFixed32List(ILjava/util/List;Z)I

    .line 833
    move-result v6

    .line 834
    .line 835
    goto/16 :goto_2

    .line 836
    .line 837
    .line 838
    :pswitch_26
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/z;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    .line 839
    move-result-object v6

    .line 840
    .line 841
    .line 842
    invoke-static {v8, v6, v3}, Lcom/google/protobuf/o0;->computeSizeEnumList(ILjava/util/List;Z)I

    .line 843
    move-result v6

    .line 844
    .line 845
    goto/16 :goto_2

    .line 846
    .line 847
    .line 848
    :pswitch_27
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/z;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    .line 849
    move-result-object v6

    .line 850
    .line 851
    .line 852
    invoke-static {v8, v6, v3}, Lcom/google/protobuf/o0;->computeSizeUInt32List(ILjava/util/List;Z)I

    .line 853
    move-result v6

    .line 854
    .line 855
    goto/16 :goto_2

    .line 856
    .line 857
    .line 858
    :pswitch_28
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/z;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    .line 859
    move-result-object v6

    .line 860
    .line 861
    .line 862
    invoke-static {v8, v6}, Lcom/google/protobuf/o0;->computeSizeByteStringList(ILjava/util/List;)I

    .line 863
    move-result v6

    .line 864
    .line 865
    goto/16 :goto_2

    .line 866
    .line 867
    .line 868
    :pswitch_29
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/z;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    .line 869
    move-result-object v6

    .line 870
    .line 871
    .line 872
    invoke-direct {p0, v4}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    .line 873
    move-result-object v7

    .line 874
    .line 875
    .line 876
    invoke-static {v8, v6, v7}, Lcom/google/protobuf/o0;->computeSizeMessageList(ILjava/util/List;Lcom/google/protobuf/m0;)I

    .line 877
    move-result v6

    .line 878
    .line 879
    goto/16 :goto_2

    .line 880
    .line 881
    .line 882
    :pswitch_2a
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/z;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    .line 883
    move-result-object v6

    .line 884
    .line 885
    .line 886
    invoke-static {v8, v6}, Lcom/google/protobuf/o0;->computeSizeStringList(ILjava/util/List;)I

    .line 887
    move-result v6

    .line 888
    .line 889
    goto/16 :goto_2

    .line 890
    .line 891
    .line 892
    :pswitch_2b
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/z;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    .line 893
    move-result-object v6

    .line 894
    .line 895
    .line 896
    invoke-static {v8, v6, v3}, Lcom/google/protobuf/o0;->computeSizeBoolList(ILjava/util/List;Z)I

    .line 897
    move-result v6

    .line 898
    .line 899
    goto/16 :goto_2

    .line 900
    .line 901
    .line 902
    :pswitch_2c
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/z;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    .line 903
    move-result-object v6

    .line 904
    .line 905
    .line 906
    invoke-static {v8, v6, v3}, Lcom/google/protobuf/o0;->computeSizeFixed32List(ILjava/util/List;Z)I

    .line 907
    move-result v6

    .line 908
    .line 909
    goto/16 :goto_2

    .line 910
    .line 911
    .line 912
    :pswitch_2d
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/z;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    .line 913
    move-result-object v6

    .line 914
    .line 915
    .line 916
    invoke-static {v8, v6, v3}, Lcom/google/protobuf/o0;->computeSizeFixed64List(ILjava/util/List;Z)I

    .line 917
    move-result v6

    .line 918
    .line 919
    goto/16 :goto_2

    .line 920
    .line 921
    .line 922
    :pswitch_2e
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/z;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    .line 923
    move-result-object v6

    .line 924
    .line 925
    .line 926
    invoke-static {v8, v6, v3}, Lcom/google/protobuf/o0;->computeSizeInt32List(ILjava/util/List;Z)I

    .line 927
    move-result v6

    .line 928
    .line 929
    goto/16 :goto_2

    .line 930
    .line 931
    .line 932
    :pswitch_2f
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/z;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    .line 933
    move-result-object v6

    .line 934
    .line 935
    .line 936
    invoke-static {v8, v6, v3}, Lcom/google/protobuf/o0;->computeSizeUInt64List(ILjava/util/List;Z)I

    .line 937
    move-result v6

    .line 938
    .line 939
    goto/16 :goto_2

    .line 940
    .line 941
    .line 942
    :pswitch_30
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/z;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    .line 943
    move-result-object v6

    .line 944
    .line 945
    .line 946
    invoke-static {v8, v6, v3}, Lcom/google/protobuf/o0;->computeSizeInt64List(ILjava/util/List;Z)I

    .line 947
    move-result v6

    .line 948
    .line 949
    goto/16 :goto_2

    .line 950
    .line 951
    .line 952
    :pswitch_31
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/z;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    .line 953
    move-result-object v6

    .line 954
    .line 955
    .line 956
    invoke-static {v8, v6, v3}, Lcom/google/protobuf/o0;->computeSizeFixed32List(ILjava/util/List;Z)I

    .line 957
    move-result v6

    .line 958
    .line 959
    goto/16 :goto_2

    .line 960
    .line 961
    .line 962
    :pswitch_32
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/z;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    .line 963
    move-result-object v6

    .line 964
    .line 965
    .line 966
    invoke-static {v8, v6, v3}, Lcom/google/protobuf/o0;->computeSizeFixed64List(ILjava/util/List;Z)I

    .line 967
    move-result v6

    .line 968
    .line 969
    goto/16 :goto_2

    .line 970
    .line 971
    .line 972
    :pswitch_33
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 973
    move-result v6

    .line 974
    .line 975
    if-eqz v6, :cond_11

    .line 976
    .line 977
    .line 978
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 979
    move-result-object v6

    .line 980
    .line 981
    check-cast v6, Lcom/google/protobuf/MessageLite;

    .line 982
    .line 983
    .line 984
    invoke-direct {p0, v4}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    .line 985
    move-result-object v7

    .line 986
    .line 987
    .line 988
    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/m0;)I

    .line 989
    move-result v6

    .line 990
    .line 991
    goto/16 :goto_2

    .line 992
    .line 993
    .line 994
    :pswitch_34
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 995
    move-result v6

    .line 996
    .line 997
    if-eqz v6, :cond_11

    .line 998
    .line 999
    .line 1000
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->getLong(Ljava/lang/Object;J)J

    .line 1001
    move-result-wide v6

    .line 1002
    .line 1003
    .line 1004
    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    .line 1005
    move-result v6

    .line 1006
    .line 1007
    goto/16 :goto_2

    .line 1008
    .line 1009
    .line 1010
    :pswitch_35
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1011
    move-result v6

    .line 1012
    .line 1013
    if-eqz v6, :cond_11

    .line 1014
    .line 1015
    .line 1016
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

    .line 1017
    move-result v6

    .line 1018
    .line 1019
    .line 1020
    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    .line 1021
    move-result v6

    .line 1022
    .line 1023
    goto/16 :goto_2

    .line 1024
    .line 1025
    .line 1026
    :pswitch_36
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1027
    move-result v6

    .line 1028
    .line 1029
    if-eqz v6, :cond_11

    .line 1030
    .line 1031
    .line 1032
    invoke-static {v8, v11, v12}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    .line 1033
    move-result v6

    .line 1034
    .line 1035
    goto/16 :goto_2

    .line 1036
    .line 1037
    .line 1038
    :pswitch_37
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1039
    move-result v6

    .line 1040
    .line 1041
    if-eqz v6, :cond_11

    .line 1042
    .line 1043
    .line 1044
    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    .line 1045
    move-result v6

    .line 1046
    .line 1047
    goto/16 :goto_2

    .line 1048
    .line 1049
    .line 1050
    :pswitch_38
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1051
    move-result v6

    .line 1052
    .line 1053
    if-eqz v6, :cond_11

    .line 1054
    .line 1055
    .line 1056
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

    .line 1057
    move-result v6

    .line 1058
    .line 1059
    .line 1060
    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 1061
    move-result v6

    .line 1062
    .line 1063
    goto/16 :goto_2

    .line 1064
    .line 1065
    .line 1066
    :pswitch_39
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1067
    move-result v6

    .line 1068
    .line 1069
    if-eqz v6, :cond_11

    .line 1070
    .line 1071
    .line 1072
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

    .line 1073
    move-result v6

    .line 1074
    .line 1075
    .line 1076
    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    .line 1077
    move-result v6

    .line 1078
    .line 1079
    goto/16 :goto_2

    .line 1080
    .line 1081
    .line 1082
    :pswitch_3a
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1083
    move-result v6

    .line 1084
    .line 1085
    if-eqz v6, :cond_11

    .line 1086
    .line 1087
    .line 1088
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1089
    move-result-object v6

    .line 1090
    .line 1091
    check-cast v6, Lcom/google/protobuf/ByteString;

    .line 1092
    .line 1093
    .line 1094
    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    .line 1095
    move-result v6

    .line 1096
    .line 1097
    goto/16 :goto_2

    .line 1098
    .line 1099
    .line 1100
    :pswitch_3b
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1101
    move-result v6

    .line 1102
    .line 1103
    if-eqz v6, :cond_11

    .line 1104
    .line 1105
    .line 1106
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1107
    move-result-object v6

    .line 1108
    .line 1109
    .line 1110
    invoke-direct {p0, v4}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    .line 1111
    move-result-object v7

    .line 1112
    .line 1113
    .line 1114
    invoke-static {v8, v6, v7}, Lcom/google/protobuf/o0;->computeSizeMessage(ILjava/lang/Object;Lcom/google/protobuf/m0;)I

    .line 1115
    move-result v6

    .line 1116
    .line 1117
    goto/16 :goto_2

    .line 1118
    .line 1119
    .line 1120
    :pswitch_3c
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1121
    move-result v6

    .line 1122
    .line 1123
    if-eqz v6, :cond_11

    .line 1124
    .line 1125
    .line 1126
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1127
    move-result-object v6

    .line 1128
    .line 1129
    instance-of v7, v6, Lcom/google/protobuf/ByteString;

    .line 1130
    .line 1131
    if-eqz v7, :cond_10

    .line 1132
    .line 1133
    check-cast v6, Lcom/google/protobuf/ByteString;

    .line 1134
    .line 1135
    .line 1136
    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

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
    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    .line 1145
    move-result v6

    .line 1146
    .line 1147
    goto/16 :goto_2

    .line 1148
    .line 1149
    .line 1150
    :pswitch_3d
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1151
    move-result v6

    .line 1152
    .line 1153
    if-eqz v6, :cond_11

    .line 1154
    .line 1155
    .line 1156
    invoke-static {v8, v14}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 1157
    move-result v6

    .line 1158
    .line 1159
    goto/16 :goto_2

    .line 1160
    .line 1161
    .line 1162
    :pswitch_3e
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1163
    move-result v6

    .line 1164
    .line 1165
    if-eqz v6, :cond_11

    .line 1166
    .line 1167
    .line 1168
    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    .line 1169
    move-result v6

    .line 1170
    .line 1171
    goto/16 :goto_2

    .line 1172
    .line 1173
    .line 1174
    :pswitch_3f
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1175
    move-result v6

    .line 1176
    .line 1177
    if-eqz v6, :cond_11

    .line 1178
    .line 1179
    .line 1180
    invoke-static {v8, v11, v12}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    .line 1181
    move-result v6

    .line 1182
    .line 1183
    goto/16 :goto_2

    .line 1184
    .line 1185
    .line 1186
    :pswitch_40
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1187
    move-result v6

    .line 1188
    .line 1189
    if-eqz v6, :cond_11

    .line 1190
    .line 1191
    .line 1192
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

    .line 1193
    move-result v6

    .line 1194
    .line 1195
    .line 1196
    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 1197
    move-result v6

    .line 1198
    .line 1199
    goto/16 :goto_2

    .line 1200
    .line 1201
    .line 1202
    :pswitch_41
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1203
    move-result v6

    .line 1204
    .line 1205
    if-eqz v6, :cond_11

    .line 1206
    .line 1207
    .line 1208
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->getLong(Ljava/lang/Object;J)J

    .line 1209
    move-result-wide v6

    .line 1210
    .line 1211
    .line 1212
    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    .line 1213
    move-result v6

    .line 1214
    .line 1215
    goto/16 :goto_2

    .line 1216
    .line 1217
    .line 1218
    :pswitch_42
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1219
    move-result v6

    .line 1220
    .line 1221
    if-eqz v6, :cond_11

    .line 1222
    .line 1223
    .line 1224
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->getLong(Ljava/lang/Object;J)J

    .line 1225
    move-result-wide v6

    .line 1226
    .line 1227
    .line 1228
    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    .line 1229
    move-result v6

    .line 1230
    .line 1231
    goto/16 :goto_2

    .line 1232
    .line 1233
    .line 1234
    :pswitch_43
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1235
    move-result v6

    .line 1236
    .line 1237
    if-eqz v6, :cond_11

    .line 1238
    .line 1239
    .line 1240
    invoke-static {v8, v13}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    .line 1241
    move-result v6

    .line 1242
    .line 1243
    goto/16 :goto_2

    .line 1244
    .line 1245
    .line 1246
    :pswitch_44
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

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
    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

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
    iget-object v2, v0, Lcom/google/protobuf/z;->unknownFieldSchema:Lcom/google/protobuf/r0;

    .line 1264
    .line 1265
    .line 1266
    invoke-direct {p0, v2, v1}, Lcom/google/protobuf/z;->getUnknownFieldsSerializedSize(Lcom/google/protobuf/r0;Ljava/lang/Object;)I

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

.method private getUnknownFieldsSerializedSize(Lcom/google/protobuf/r0;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/r0<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/google/protobuf/r0;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lcom/google/protobuf/r0;->getSerializedSize(Ljava/lang/Object;)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method private static intAt(Ljava/lang/Object;J)I
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
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static isEnforceUtf8(I)Z
    .locals 1

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

.method private isFieldPresent(Ljava/lang/Object;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p2}, Lcom/google/protobuf/z;->presenceMaskAndOffsetAt(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v1, v0

    int-to-long v1, v1

    const-wide/32 v3, 0xfffff

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_11

    .line 3
    invoke-direct {p0, p2}, Lcom/google/protobuf/z;->typeAndOffsetAt(I)I

    move-result p2

    .line 4
    invoke-static {p2}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v0

    .line 5
    invoke-static {p2}, Lcom/google/protobuf/z;->type(I)I

    move-result p2

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 7
    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    move v4, v5

    :cond_0
    return v4

    .line 8
    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/t0;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_1

    move v4, v5

    :cond_1
    return v4

    .line 9
    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    move v4, v5

    :cond_2
    return v4

    .line 10
    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/t0;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    move v4, v5

    :cond_3
    return v4

    .line 11
    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    move v4, v5

    :cond_4
    return v4

    .line 12
    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    move v4, v5

    :cond_5
    return v4

    .line 13
    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    move v4, v5

    :cond_6
    return v4

    .line 14
    :pswitch_7
    sget-object p2, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    return p1

    .line 15
    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    move v4, v5

    :cond_7
    return v4

    .line 16
    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 17
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_8

    .line 18
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v5

    return p1

    .line 19
    :cond_8
    instance-of p2, p1, Lcom/google/protobuf/ByteString;

    if-eqz p2, :cond_9

    .line 20
    sget-object p2, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    invoke-virtual {p2, p1}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    return p1

    .line 21
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 22
    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/t0;->getBoolean(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 23
    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_a

    move v4, v5

    :cond_a
    return v4

    .line 24
    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/t0;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_b

    move v4, v5

    :cond_b
    return v4

    .line 25
    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_c

    move v4, v5

    :cond_c
    return v4

    .line 26
    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/t0;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_d

    move v4, v5

    :cond_d
    return v4

    .line 27
    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/t0;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_e

    move v4, v5

    :cond_e
    return v4

    .line 28
    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/t0;->getFloat(Ljava/lang/Object;J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-eqz p1, :cond_f

    move v4, v5

    :cond_f
    return v4

    .line 29
    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/t0;->getDouble(Ljava/lang/Object;J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_10

    move v4, v5

    :cond_10
    return v4

    :cond_11
    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v5, p2

    .line 30
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_12

    move v4, v5

    :cond_12
    return v4

    nop

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

.method private isFieldPresent(Ljava/lang/Object;IIII)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIII)Z"
        }
    .end annotation

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p4, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static isInitialized(Ljava/lang/Object;ILcom/google/protobuf/m0;)Z
    .locals 2

    .line 16
    invoke-static {p1}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 17
    invoke-interface {p2, p0}, Lcom/google/protobuf/m0;->isInitialized(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isListInitialized(Ljava/lang/Object;II)Z
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
    invoke-static {p2}, Lcom/google/protobuf/z;->offset(I)J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

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
    invoke-direct {p0, p3}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

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
    invoke-interface {p2, v2}, Lcom/google/protobuf/m0;->isInitialized(Ljava/lang/Object;)Z

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

.method private isMapInitialized(Ljava/lang/Object;II)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/protobuf/z;->mapFieldSchema:Lcom/google/protobuf/t;

    .line 3
    .line 4
    .line 5
    invoke-static {p2}, Lcom/google/protobuf/z;->offset(I)J

    .line 6
    move-result-wide v1

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1}, Lcom/google/protobuf/t;->forMapData(Ljava/lang/Object;)Ljava/util/Map;

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
    invoke-direct {p0, p3}, Lcom/google/protobuf/z;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    iget-object p3, p0, Lcom/google/protobuf/z;->mapFieldSchema:Lcom/google/protobuf/t;

    .line 29
    .line 30
    .line 31
    invoke-interface {p3, p2}, Lcom/google/protobuf/t;->forMapMetadata(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$b;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    iget-object p2, p2, Lcom/google/protobuf/MapEntryLite$b;->valueType:Lcom/google/protobuf/WireFormat$FieldType;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/google/protobuf/WireFormat$FieldType;->getJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    sget-object p3, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

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
    invoke-static {}, Lcom/google/protobuf/h0;->getInstance()Lcom/google/protobuf/h0;

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
    invoke-virtual {p2, v1}, Lcom/google/protobuf/h0;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/m0;

    .line 76
    move-result-object p2

    .line 77
    .line 78
    .line 79
    :cond_3
    invoke-interface {p2, p3}, Lcom/google/protobuf/m0;->isInitialized(Ljava/lang/Object;)Z

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

.method private static isMutable(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    .line 6
    :cond_0
    instance-of v0, p0, Lcom/google/protobuf/GeneratedMessageLite;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    check-cast p0, Lcom/google/protobuf/GeneratedMessageLite;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->isMutable()Z

    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_1
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method private isOneofCaseEqual(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p3}, Lcom/google/protobuf/z;->presenceMaskAndOffsetAt(I)I

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
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

    .line 13
    move-result p1

    .line 14
    .line 15
    .line 16
    invoke-static {p2, v0, v1}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

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

.method private isOneofPresent(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p3}, Lcom/google/protobuf/z;->presenceMaskAndOffsetAt(I)I

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
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

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

.method private static isRequired(I)Z
    .locals 1

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

.method private static listAt(Ljava/lang/Object;J)Ljava/util/List;
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
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    check-cast p0, Ljava/util/List;

    .line 7
    return-object p0
.end method

.method private static longAt(Ljava/lang/Object;J)J
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
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/t0;->getLong(Ljava/lang/Object;J)J

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method private mergeFromHelper(Lcom/google/protobuf/r0;Lcom/google/protobuf/j;Ljava/lang/Object;Lcom/google/protobuf/k0;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/google/protobuf/FieldSet$FieldDescriptorLite<",
            "TET;>;>(",
            "Lcom/google/protobuf/r0<",
            "TUT;TUB;>;",
            "Lcom/google/protobuf/j<",
            "TET;>;TT;",
            "Lcom/google/protobuf/k0;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v7, p1

    move-object/from16 v15, p3

    move-object/from16 v0, p4

    move-object/from16 v6, p5

    const/16 v17, 0x0

    move-object/from16 v5, v17

    move-object v9, v5

    .line 1
    :goto_0
    :try_start_0
    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/k0;->getFieldNumber()I

    move-result v2

    .line 2
    invoke-direct {v8, v2}, Lcom/google/protobuf/z;->positionForFieldNumber(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    if-gez v3, :cond_b

    const v1, 0x7fffffff

    if-ne v2, v1, :cond_2

    iget v0, v8, Lcom/google/protobuf/z;->checkInitializedCount:I

    move-object v4, v5

    :goto_1
    iget v1, v8, Lcom/google/protobuf/z;->repeatedFieldOffsetStart:I

    if-ge v0, v1, :cond_0

    iget-object v1, v8, Lcom/google/protobuf/z;->intArray:[I

    .line 3
    aget v3, v1, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    .line 4
    invoke-direct/range {v1 .. v6}, Lcom/google/protobuf/z;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/r0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {v7, v15, v4}, Lcom/google/protobuf/r0;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    iget-boolean v1, v8, Lcom/google/protobuf/z;->hasExtensions:Z

    if-nez v1, :cond_3

    move-object/from16 v4, p2

    move-object/from16 v12, v17

    goto :goto_2

    :cond_3
    iget-object v1, v8, Lcom/google/protobuf/z;->defaultInstance:Lcom/google/protobuf/MessageLite;

    move-object/from16 v4, p2

    .line 6
    invoke-virtual {v4, v6, v1, v2}, Lcom/google/protobuf/j;->findExtensionByNumber(Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v12, v1

    :goto_2
    if-eqz v12, :cond_5

    if-nez v9, :cond_4

    .line 7
    :try_start_2
    invoke-virtual/range {p2 .. p3}, Lcom/google/protobuf/j;->getMutableExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    :goto_3
    move-object v14, v7

    move-object v10, v15

    goto/16 :goto_17

    :cond_4
    move-object v1, v9

    :goto_4
    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v13, p5

    move-object v14, v1

    move-object v3, v15

    move-object v15, v5

    move-object/from16 v16, p1

    .line 8
    :try_start_3
    invoke-virtual/range {v9 .. v16}, Lcom/google/protobuf/j;->parseExtension(Ljava/lang/Object;Lcom/google/protobuf/k0;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/FieldSet;Ljava/lang/Object;Lcom/google/protobuf/r0;)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v1

    :goto_5
    move-object v15, v3

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v10, v3

    :goto_6
    move-object v14, v7

    goto/16 :goto_17

    :cond_5
    move-object v3, v15

    .line 9
    invoke-virtual {v7, v0}, Lcom/google/protobuf/r0;->shouldDiscardUnknownFields(Lcom/google/protobuf/k0;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 10
    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/k0;->skipField()Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_7
    goto :goto_5

    :cond_6
    if-nez v5, :cond_7

    .line 11
    invoke-virtual {v7, v3}, Lcom/google/protobuf/r0;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    .line 12
    :cond_7
    invoke-virtual {v7, v5, v0}, Lcom/google/protobuf/r0;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/google/protobuf/k0;)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_8

    goto :goto_7

    :cond_8
    iget v0, v8, Lcom/google/protobuf/z;->checkInitializedCount:I

    move-object v4, v5

    :goto_8
    iget v1, v8, Lcom/google/protobuf/z;->repeatedFieldOffsetStart:I

    if-ge v0, v1, :cond_9

    iget-object v1, v8, Lcom/google/protobuf/z;->intArray:[I

    .line 13
    aget v5, v1, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object v10, v3

    move v3, v5

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    .line 14
    invoke-direct/range {v1 .. v6}, Lcom/google/protobuf/z;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/r0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    move-object v3, v10

    goto :goto_8

    :cond_9
    move-object v10, v3

    if-eqz v4, :cond_a

    .line 15
    invoke-virtual {v7, v10, v4}, Lcom/google/protobuf/r0;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    return-void

    :catchall_2
    move-exception v0

    move-object v10, v15

    goto :goto_6

    :cond_b
    move-object/from16 v4, p2

    move-object v10, v15

    .line 16
    :try_start_4
    invoke-direct {v8, v3}, Lcom/google/protobuf/z;->typeAndOffsetAt(I)I

    move-result v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 17
    :try_start_5
    invoke-static {v11}, Lcom/google/protobuf/z;->type(I)I

    move-result v1
    :try_end_5
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    packed-switch v1, :pswitch_data_0

    if-nez v5, :cond_c

    .line 18
    :try_start_6
    invoke-virtual {v7, v10}, Lcom/google/protobuf/r0;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_a

    :catchall_3
    move-exception v0

    goto :goto_6

    :catch_0
    :goto_9
    move-object v13, v6

    move-object v14, v7

    goto/16 :goto_13

    .line 19
    :cond_c
    :goto_a
    invoke-virtual {v7, v5, v0}, Lcom/google/protobuf/r0;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/google/protobuf/k0;)Z

    move-result v1
    :try_end_6
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-nez v1, :cond_f

    iget v0, v8, Lcom/google/protobuf/z;->checkInitializedCount:I

    move-object v4, v5

    :goto_b
    iget v1, v8, Lcom/google/protobuf/z;->repeatedFieldOffsetStart:I

    if-ge v0, v1, :cond_d

    iget-object v1, v8, Lcom/google/protobuf/z;->intArray:[I

    .line 20
    aget v3, v1, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    .line 21
    invoke-direct/range {v1 .. v6}, Lcom/google/protobuf/z;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/r0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_d
    if-eqz v4, :cond_e

    .line 22
    invoke-virtual {v7, v10, v4}, Lcom/google/protobuf/r0;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    return-void

    :cond_f
    :goto_c
    move-object v13, v6

    move-object v14, v7

    goto/16 :goto_16

    .line 23
    :pswitch_0
    :try_start_7
    invoke-direct {v8, v10, v2, v3}, Lcom/google/protobuf/z;->mutableOneofMessageFieldForMerge(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    .line 24
    invoke-direct {v8, v3}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    move-result-object v11

    .line 25
    invoke-interface {v0, v1, v11, v6}, Lcom/google/protobuf/k0;->mergeGroupField(Ljava/lang/Object;Lcom/google/protobuf/m0;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 26
    invoke-direct {v8, v10, v2, v3, v1}, Lcom/google/protobuf/z;->storeOneofMessageField(Ljava/lang/Object;IILjava/lang/Object;)V

    :goto_d
    move-object v12, v5

    move-object v13, v6

    :goto_e
    move-object v14, v7

    goto/16 :goto_12

    .line 27
    :pswitch_1
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/k0;->readSInt64()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 28
    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/t0;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 29
    invoke-direct {v8, v10, v2, v3}, Lcom/google/protobuf/z;->setOneofPresent(Ljava/lang/Object;II)V

    goto :goto_d

    .line 30
    :pswitch_2
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/k0;->readSInt32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 31
    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/t0;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 32
    invoke-direct {v8, v10, v2, v3}, Lcom/google/protobuf/z;->setOneofPresent(Ljava/lang/Object;II)V

    goto :goto_d

    .line 33
    :pswitch_3
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/k0;->readSFixed64()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 34
    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/t0;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 35
    invoke-direct {v8, v10, v2, v3}, Lcom/google/protobuf/z;->setOneofPresent(Ljava/lang/Object;II)V

    goto :goto_d

    .line 36
    :pswitch_4
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/k0;->readSFixed32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 37
    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/t0;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 38
    invoke-direct {v8, v10, v2, v3}, Lcom/google/protobuf/z;->setOneofPresent(Ljava/lang/Object;II)V

    goto :goto_d

    .line 39
    :pswitch_5
    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/k0;->readEnum()I

    move-result v1

    .line 40
    invoke-direct {v8, v3}, Lcom/google/protobuf/z;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v12

    if-eqz v12, :cond_11

    .line 41
    invoke-interface {v12, v1}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v12

    if-eqz v12, :cond_10

    goto :goto_f

    .line 42
    :cond_10
    invoke-static {v10, v2, v1, v5, v7}, Lcom/google/protobuf/o0;->storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/protobuf/r0;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_c

    .line 43
    :cond_11
    :goto_f
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/t0;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 44
    invoke-direct {v8, v10, v2, v3}, Lcom/google/protobuf/z;->setOneofPresent(Ljava/lang/Object;II)V

    goto :goto_d

    .line 45
    :pswitch_6
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/k0;->readUInt32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 46
    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/t0;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 47
    invoke-direct {v8, v10, v2, v3}, Lcom/google/protobuf/z;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_d

    .line 48
    :pswitch_7
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/k0;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/t0;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 49
    invoke-direct {v8, v10, v2, v3}, Lcom/google/protobuf/z;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_d

    .line 50
    :pswitch_8
    invoke-direct {v8, v10, v2, v3}, Lcom/google/protobuf/z;->mutableOneofMessageFieldForMerge(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    .line 51
    invoke-direct {v8, v3}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    move-result-object v11

    .line 52
    invoke-interface {v0, v1, v11, v6}, Lcom/google/protobuf/k0;->mergeMessageField(Ljava/lang/Object;Lcom/google/protobuf/m0;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53
    invoke-direct {v8, v10, v2, v3, v1}, Lcom/google/protobuf/z;->storeOneofMessageField(Ljava/lang/Object;IILjava/lang/Object;)V

    goto/16 :goto_d

    .line 54
    :pswitch_9
    invoke-direct {v8, v10, v11, v0}, Lcom/google/protobuf/z;->readString(Ljava/lang/Object;ILcom/google/protobuf/k0;)V

    .line 55
    invoke-direct {v8, v10, v2, v3}, Lcom/google/protobuf/z;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_d

    .line 56
    :pswitch_a
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/k0;->readBool()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 57
    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/t0;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 58
    invoke-direct {v8, v10, v2, v3}, Lcom/google/protobuf/z;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_d

    .line 59
    :pswitch_b
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/k0;->readFixed32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 60
    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/t0;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 61
    invoke-direct {v8, v10, v2, v3}, Lcom/google/protobuf/z;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_d

    .line 62
    :pswitch_c
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/k0;->readFixed64()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 63
    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/t0;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 64
    invoke-direct {v8, v10, v2, v3}, Lcom/google/protobuf/z;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_d

    .line 65
    :pswitch_d
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/k0;->readInt32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 66
    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/t0;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 67
    invoke-direct {v8, v10, v2, v3}, Lcom/google/protobuf/z;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_d

    .line 68
    :pswitch_e
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/k0;->readUInt64()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 69
    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/t0;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 70
    invoke-direct {v8, v10, v2, v3}, Lcom/google/protobuf/z;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_d

    .line 71
    :pswitch_f
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/k0;->readInt64()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 72
    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/t0;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 73
    invoke-direct {v8, v10, v2, v3}, Lcom/google/protobuf/z;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_d

    .line 74
    :pswitch_10
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/k0;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 75
    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/t0;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 76
    invoke-direct {v8, v10, v2, v3}, Lcom/google/protobuf/z;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_d

    .line 77
    :pswitch_11
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/k0;->readDouble()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 78
    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/t0;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 79
    invoke-direct {v8, v10, v2, v3}, Lcom/google/protobuf/z;->setOneofPresent(Ljava/lang/Object;II)V
    :try_end_7
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto/16 :goto_d

    .line 80
    :pswitch_12
    :try_start_8
    invoke-direct {v8, v3}, Lcom/google/protobuf/z;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v11
    :try_end_8
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object v4, v11

    move-object v12, v5

    move-object/from16 v5, p5

    move-object v13, v6

    move-object/from16 v6, p4

    :try_start_9
    invoke-direct/range {v1 .. v6}, Lcom/google/protobuf/z;->mergeMap(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/k0;)V

    goto/16 :goto_e

    :catchall_4
    move-exception v0

    move-object v14, v7

    :goto_10
    move-object v5, v12

    goto/16 :goto_17

    :catch_1
    move-object v14, v7

    :catch_2
    move-object v5, v12

    goto/16 :goto_13

    :catchall_5
    move-exception v0

    move-object v12, v5

    goto/16 :goto_6

    :catch_3
    move-object v12, v5

    goto/16 :goto_9

    :pswitch_13
    move-object v12, v5

    move-object v13, v6

    .line 81
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v4

    .line 82
    invoke-direct {v8, v3}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    move-result-object v6
    :try_end_9
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-wide v3, v4

    move-object/from16 v5, p4

    move-object v14, v7

    move-object/from16 v7, p5

    .line 83
    :try_start_a
    invoke-direct/range {v1 .. v7}, Lcom/google/protobuf/z;->readGroupList(Ljava/lang/Object;JLcom/google/protobuf/k0;Lcom/google/protobuf/m0;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_12

    :catchall_6
    move-exception v0

    goto :goto_10

    :pswitch_14
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/z;->listFieldSchema:Lcom/google/protobuf/q;

    .line 84
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/q;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 85
    invoke-interface {v0, v1}, Lcom/google/protobuf/k0;->readSInt64List(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_15
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/z;->listFieldSchema:Lcom/google/protobuf/q;

    .line 86
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/q;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 87
    invoke-interface {v0, v1}, Lcom/google/protobuf/k0;->readSInt32List(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_16
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/z;->listFieldSchema:Lcom/google/protobuf/q;

    .line 88
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/q;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 89
    invoke-interface {v0, v1}, Lcom/google/protobuf/k0;->readSFixed64List(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_17
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/z;->listFieldSchema:Lcom/google/protobuf/q;

    .line 90
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/q;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 91
    invoke-interface {v0, v1}, Lcom/google/protobuf/k0;->readSFixed32List(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_18
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/z;->listFieldSchema:Lcom/google/protobuf/q;

    .line 92
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v4

    invoke-virtual {v1, v10, v4, v5}, Lcom/google/protobuf/q;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 93
    invoke-interface {v0, v4}, Lcom/google/protobuf/k0;->readEnumList(Ljava/util/List;)V

    .line 94
    invoke-direct {v8, v3}, Lcom/google/protobuf/z;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v5

    move-object/from16 v1, p3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v12

    move-object/from16 v6, p1

    .line 95
    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/o0;->filterUnknownEnumList(Ljava/lang/Object;ILjava/util/List;Lcom/google/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/google/protobuf/r0;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_16

    :pswitch_19
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/z;->listFieldSchema:Lcom/google/protobuf/q;

    .line 96
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/q;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 97
    invoke-interface {v0, v1}, Lcom/google/protobuf/k0;->readUInt32List(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_1a
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/z;->listFieldSchema:Lcom/google/protobuf/q;

    .line 98
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/q;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 99
    invoke-interface {v0, v1}, Lcom/google/protobuf/k0;->readBoolList(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_1b
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/z;->listFieldSchema:Lcom/google/protobuf/q;

    .line 100
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/q;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 101
    invoke-interface {v0, v1}, Lcom/google/protobuf/k0;->readFixed32List(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_1c
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/z;->listFieldSchema:Lcom/google/protobuf/q;

    .line 102
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/q;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 103
    invoke-interface {v0, v1}, Lcom/google/protobuf/k0;->readFixed64List(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_1d
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/z;->listFieldSchema:Lcom/google/protobuf/q;

    .line 104
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/q;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 105
    invoke-interface {v0, v1}, Lcom/google/protobuf/k0;->readInt32List(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_1e
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/z;->listFieldSchema:Lcom/google/protobuf/q;

    .line 106
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/q;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 107
    invoke-interface {v0, v1}, Lcom/google/protobuf/k0;->readUInt64List(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_1f
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/z;->listFieldSchema:Lcom/google/protobuf/q;

    .line 108
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/q;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 109
    invoke-interface {v0, v1}, Lcom/google/protobuf/k0;->readInt64List(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_20
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/z;->listFieldSchema:Lcom/google/protobuf/q;

    .line 110
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/q;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 111
    invoke-interface {v0, v1}, Lcom/google/protobuf/k0;->readFloatList(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_21
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/z;->listFieldSchema:Lcom/google/protobuf/q;

    .line 112
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/q;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 113
    invoke-interface {v0, v1}, Lcom/google/protobuf/k0;->readDoubleList(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_22
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/z;->listFieldSchema:Lcom/google/protobuf/q;

    .line 114
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/q;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 115
    invoke-interface {v0, v1}, Lcom/google/protobuf/k0;->readSInt64List(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_23
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/z;->listFieldSchema:Lcom/google/protobuf/q;

    .line 116
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/q;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 117
    invoke-interface {v0, v1}, Lcom/google/protobuf/k0;->readSInt32List(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_24
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/z;->listFieldSchema:Lcom/google/protobuf/q;

    .line 118
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/q;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 119
    invoke-interface {v0, v1}, Lcom/google/protobuf/k0;->readSFixed64List(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_25
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/z;->listFieldSchema:Lcom/google/protobuf/q;

    .line 120
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/q;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 121
    invoke-interface {v0, v1}, Lcom/google/protobuf/k0;->readSFixed32List(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_26
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/z;->listFieldSchema:Lcom/google/protobuf/q;

    .line 122
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v4

    invoke-virtual {v1, v10, v4, v5}, Lcom/google/protobuf/q;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 123
    invoke-interface {v0, v4}, Lcom/google/protobuf/k0;->readEnumList(Ljava/util/List;)V

    .line 124
    invoke-direct {v8, v3}, Lcom/google/protobuf/z;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v5

    move-object/from16 v1, p3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v12

    move-object/from16 v6, p1

    .line 125
    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/o0;->filterUnknownEnumList(Ljava/lang/Object;ILjava/util/List;Lcom/google/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/google/protobuf/r0;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_16

    :pswitch_27
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/z;->listFieldSchema:Lcom/google/protobuf/q;

    .line 126
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/q;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 127
    invoke-interface {v0, v1}, Lcom/google/protobuf/k0;->readUInt32List(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_28
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/z;->listFieldSchema:Lcom/google/protobuf/q;

    .line 128
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/q;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 129
    invoke-interface {v0, v1}, Lcom/google/protobuf/k0;->readBytesList(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_29
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    .line 130
    invoke-direct {v8, v3}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move v3, v11

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    .line 131
    invoke-direct/range {v1 .. v6}, Lcom/google/protobuf/z;->readMessageList(Ljava/lang/Object;ILcom/google/protobuf/k0;Lcom/google/protobuf/m0;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_12

    :pswitch_2a
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    .line 132
    invoke-direct {v8, v10, v11, v0}, Lcom/google/protobuf/z;->readStringList(Ljava/lang/Object;ILcom/google/protobuf/k0;)V

    goto/16 :goto_12

    :pswitch_2b
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/z;->listFieldSchema:Lcom/google/protobuf/q;

    .line 133
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/q;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 134
    invoke-interface {v0, v1}, Lcom/google/protobuf/k0;->readBoolList(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_2c
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/z;->listFieldSchema:Lcom/google/protobuf/q;

    .line 135
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/q;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 136
    invoke-interface {v0, v1}, Lcom/google/protobuf/k0;->readFixed32List(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_2d
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/z;->listFieldSchema:Lcom/google/protobuf/q;

    .line 137
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/q;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 138
    invoke-interface {v0, v1}, Lcom/google/protobuf/k0;->readFixed64List(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_2e
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/z;->listFieldSchema:Lcom/google/protobuf/q;

    .line 139
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/q;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 140
    invoke-interface {v0, v1}, Lcom/google/protobuf/k0;->readInt32List(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_2f
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/z;->listFieldSchema:Lcom/google/protobuf/q;

    .line 141
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/q;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 142
    invoke-interface {v0, v1}, Lcom/google/protobuf/k0;->readUInt64List(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_30
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/z;->listFieldSchema:Lcom/google/protobuf/q;

    .line 143
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/q;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 144
    invoke-interface {v0, v1}, Lcom/google/protobuf/k0;->readInt64List(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_31
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/z;->listFieldSchema:Lcom/google/protobuf/q;

    .line 145
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/q;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 146
    invoke-interface {v0, v1}, Lcom/google/protobuf/k0;->readFloatList(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_32
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/z;->listFieldSchema:Lcom/google/protobuf/q;

    .line 147
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/q;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 148
    invoke-interface {v0, v1}, Lcom/google/protobuf/k0;->readDoubleList(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_33
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    .line 149
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/z;->mutableMessageFieldForMerge(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    .line 150
    invoke-direct {v8, v3}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    move-result-object v2

    .line 151
    invoke-interface {v0, v1, v2, v13}, Lcom/google/protobuf/k0;->mergeGroupField(Ljava/lang/Object;Lcom/google/protobuf/m0;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 152
    invoke-direct {v8, v10, v3, v1}, Lcom/google/protobuf/z;->storeMessageField(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_34
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    .line 153
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/k0;->readSInt64()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcom/google/protobuf/t0;->putLong(Ljava/lang/Object;JJ)V

    .line 154
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/z;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_12

    :pswitch_35
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    .line 155
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/k0;->readSInt32()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/t0;->putInt(Ljava/lang/Object;JI)V

    .line 156
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/z;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_12

    :pswitch_36
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    .line 157
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/k0;->readSFixed64()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcom/google/protobuf/t0;->putLong(Ljava/lang/Object;JJ)V

    .line 158
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/z;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_12

    :pswitch_37
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    .line 159
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/k0;->readSFixed32()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/t0;->putInt(Ljava/lang/Object;JI)V

    .line 160
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/z;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_12

    :pswitch_38
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    .line 161
    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/k0;->readEnum()I

    move-result v1

    .line 162
    invoke-direct {v8, v3}, Lcom/google/protobuf/z;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 163
    invoke-interface {v4, v1}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_11

    .line 164
    :cond_12
    invoke-static {v10, v2, v1, v12, v14}, Lcom/google/protobuf/o0;->storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/protobuf/r0;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_16

    .line 165
    :cond_13
    :goto_11
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v4

    invoke-static {v10, v4, v5, v1}, Lcom/google/protobuf/t0;->putInt(Ljava/lang/Object;JI)V

    .line 166
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/z;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_12

    :pswitch_39
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    .line 167
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/k0;->readUInt32()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/t0;->putInt(Ljava/lang/Object;JI)V

    .line 168
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/z;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_12

    :pswitch_3a
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    .line 169
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/k0;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/t0;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 170
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/z;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_12

    :pswitch_3b
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    .line 171
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/z;->mutableMessageFieldForMerge(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    .line 172
    invoke-direct {v8, v3}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    move-result-object v2

    .line 173
    invoke-interface {v0, v1, v2, v13}, Lcom/google/protobuf/k0;->mergeMessageField(Ljava/lang/Object;Lcom/google/protobuf/m0;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 174
    invoke-direct {v8, v10, v3, v1}, Lcom/google/protobuf/z;->storeMessageField(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_3c
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    .line 175
    invoke-direct {v8, v10, v11, v0}, Lcom/google/protobuf/z;->readString(Ljava/lang/Object;ILcom/google/protobuf/k0;)V

    .line 176
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/z;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_12

    :pswitch_3d
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    .line 177
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/k0;->readBool()Z

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/t0;->putBoolean(Ljava/lang/Object;JZ)V

    .line 178
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/z;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_12

    :pswitch_3e
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    .line 179
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/k0;->readFixed32()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/t0;->putInt(Ljava/lang/Object;JI)V

    .line 180
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/z;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_12

    :pswitch_3f
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    .line 181
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/k0;->readFixed64()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcom/google/protobuf/t0;->putLong(Ljava/lang/Object;JJ)V

    .line 182
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/z;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_12

    :pswitch_40
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    .line 183
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/k0;->readInt32()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/t0;->putInt(Ljava/lang/Object;JI)V

    .line 184
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/z;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_12

    :pswitch_41
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    .line 185
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/k0;->readUInt64()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcom/google/protobuf/t0;->putLong(Ljava/lang/Object;JJ)V

    .line 186
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/z;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_12

    :pswitch_42
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    .line 187
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/k0;->readInt64()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcom/google/protobuf/t0;->putLong(Ljava/lang/Object;JJ)V

    .line 188
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/z;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_12

    :pswitch_43
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    .line 189
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/k0;->readFloat()F

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/t0;->putFloat(Ljava/lang/Object;JF)V

    .line 190
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/z;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_12

    :pswitch_44
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    .line 191
    invoke-static {v11}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/k0;->readDouble()D

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcom/google/protobuf/t0;->putDouble(Ljava/lang/Object;JD)V

    .line 192
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/z;->setFieldPresent(Ljava/lang/Object;I)V
    :try_end_a
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :goto_12
    move-object v5, v12

    goto :goto_16

    .line 193
    :goto_13
    :try_start_b
    invoke-virtual {v14, v0}, Lcom/google/protobuf/r0;->shouldDiscardUnknownFields(Lcom/google/protobuf/k0;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 194
    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/k0;->skipField()Z

    move-result v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    if-nez v1, :cond_1a

    iget v0, v8, Lcom/google/protobuf/z;->checkInitializedCount:I

    move-object v4, v5

    :goto_14
    iget v1, v8, Lcom/google/protobuf/z;->repeatedFieldOffsetStart:I

    if-ge v0, v1, :cond_14

    iget-object v1, v8, Lcom/google/protobuf/z;->intArray:[I

    .line 195
    aget v3, v1, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    .line 196
    invoke-direct/range {v1 .. v6}, Lcom/google/protobuf/z;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/r0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_14
    if-eqz v4, :cond_15

    .line 197
    invoke-virtual {v14, v10, v4}, Lcom/google/protobuf/r0;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    return-void

    :catchall_7
    move-exception v0

    goto :goto_17

    :cond_16
    if-nez v5, :cond_17

    .line 198
    :try_start_c
    invoke-virtual {v14, v10}, Lcom/google/protobuf/r0;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    .line 199
    :cond_17
    invoke-virtual {v14, v5, v0}, Lcom/google/protobuf/r0;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/google/protobuf/k0;)Z

    move-result v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    if-nez v1, :cond_1a

    iget v0, v8, Lcom/google/protobuf/z;->checkInitializedCount:I

    move-object v4, v5

    :goto_15
    iget v1, v8, Lcom/google/protobuf/z;->repeatedFieldOffsetStart:I

    if-ge v0, v1, :cond_18

    iget-object v1, v8, Lcom/google/protobuf/z;->intArray:[I

    .line 200
    aget v3, v1, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    .line 201
    invoke-direct/range {v1 .. v6}, Lcom/google/protobuf/z;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/r0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_18
    if-eqz v4, :cond_19

    .line 202
    invoke-virtual {v14, v10, v4}, Lcom/google/protobuf/r0;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    return-void

    :cond_1a
    :goto_16
    move-object v15, v10

    move-object v6, v13

    move-object v7, v14

    goto/16 :goto_0

    :catchall_8
    move-exception v0

    move-object v12, v5

    goto/16 :goto_3

    :goto_17
    iget v1, v8, Lcom/google/protobuf/z;->checkInitializedCount:I

    move v7, v1

    move-object v4, v5

    :goto_18
    iget v1, v8, Lcom/google/protobuf/z;->repeatedFieldOffsetStart:I

    if-ge v7, v1, :cond_1b

    iget-object v1, v8, Lcom/google/protobuf/z;->intArray:[I

    .line 203
    aget v3, v1, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    .line 204
    invoke-direct/range {v1 .. v6}, Lcom/google/protobuf/z;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/r0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    :cond_1b
    if-eqz v4, :cond_1c

    .line 205
    invoke-virtual {v14, v10, v4}, Lcom/google/protobuf/r0;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 206
    :cond_1c
    throw v0

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

.method private final mergeMap(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/k0;)V
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
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            "Lcom/google/protobuf/k0;",
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
    invoke-direct {p0, p2}, Lcom/google/protobuf/z;->typeAndOffsetAt(I)I

    .line 4
    move-result p2

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Lcom/google/protobuf/z;->offset(I)J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    iget-object p2, p0, Lcom/google/protobuf/z;->mapFieldSchema:Lcom/google/protobuf/t;

    .line 17
    .line 18
    .line 19
    invoke-interface {p2, p3}, Lcom/google/protobuf/t;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v0, v1, p2}, Lcom/google/protobuf/t0;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/z;->mapFieldSchema:Lcom/google/protobuf/t;

    .line 27
    .line 28
    .line 29
    invoke-interface {v2, p2}, Lcom/google/protobuf/t;->isImmutable(Ljava/lang/Object;)Z

    .line 30
    move-result v2

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    iget-object v2, p0, Lcom/google/protobuf/z;->mapFieldSchema:Lcom/google/protobuf/t;

    .line 35
    .line 36
    .line 37
    invoke-interface {v2, p3}, Lcom/google/protobuf/t;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    iget-object v3, p0, Lcom/google/protobuf/z;->mapFieldSchema:Lcom/google/protobuf/t;

    .line 41
    .line 42
    .line 43
    invoke-interface {v3, v2, p2}, Lcom/google/protobuf/t;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v0, v1, v2}, Lcom/google/protobuf/t0;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 47
    move-object p2, v2

    .line 48
    .line 49
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/protobuf/z;->mapFieldSchema:Lcom/google/protobuf/t;

    .line 50
    .line 51
    .line 52
    invoke-interface {p1, p2}, Lcom/google/protobuf/t;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    iget-object p2, p0, Lcom/google/protobuf/z;->mapFieldSchema:Lcom/google/protobuf/t;

    .line 56
    .line 57
    .line 58
    invoke-interface {p2, p3}, Lcom/google/protobuf/t;->forMapMetadata(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$b;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    .line 62
    invoke-interface {p5, p1, p2, p4}, Lcom/google/protobuf/k0;->readMap(Ljava/util/Map;Lcom/google/protobuf/MapEntryLite$b;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 63
    return-void
.end method

.method private mergeMessage(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/protobuf/z;->typeAndOffsetAt(I)I

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/google/protobuf/z;->offset(I)J

    .line 15
    move-result-wide v0

    .line 16
    .line 17
    sget-object v2, Lcom/google/protobuf/z;->UNSAFE:Lsun/misc/Unsafe;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p2, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    if-eqz v3, :cond_4

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p3}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 31
    move-result v4

    .line 32
    .line 33
    if-nez v4, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-static {v3}, Lcom/google/protobuf/z;->isMutable(Ljava/lang/Object;)Z

    .line 37
    move-result v4

    .line 38
    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-interface {p2}, Lcom/google/protobuf/m0;->newInstance()Ljava/lang/Object;

    .line 47
    move-result-object v4

    .line 48
    .line 49
    .line 50
    invoke-interface {p2, v4, v3}, Lcom/google/protobuf/m0;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, p1, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/z;->setFieldPresent(Ljava/lang/Object;I)V

    .line 57
    return-void

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-virtual {v2, p1, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 61
    move-result-object p3

    .line 62
    .line 63
    .line 64
    invoke-static {p3}, Lcom/google/protobuf/z;->isMutable(Ljava/lang/Object;)Z

    .line 65
    move-result v4

    .line 66
    .line 67
    if-nez v4, :cond_3

    .line 68
    .line 69
    .line 70
    invoke-interface {p2}, Lcom/google/protobuf/m0;->newInstance()Ljava/lang/Object;

    .line 71
    move-result-object v4

    .line 72
    .line 73
    .line 74
    invoke-interface {p2, v4, p3}, Lcom/google/protobuf/m0;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, p1, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 78
    move-object p3, v4

    .line 79
    .line 80
    .line 81
    :cond_3
    invoke-interface {p2, p3, v3}, Lcom/google/protobuf/m0;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    return-void

    .line 83
    .line 84
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    const-string v1, "Source subfield "

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-direct {p0, p3}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 98
    move-result p3

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string p3, " is present but null: "

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object p2

    .line 114
    .line 115
    .line 116
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 117
    throw p1
.end method

.method private mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p3}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2, v0, p3}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/protobuf/z;->typeAndOffsetAt(I)I

    .line 15
    move-result v1

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lcom/google/protobuf/z;->offset(I)J

    .line 19
    move-result-wide v1

    .line 20
    .line 21
    sget-object v3, Lcom/google/protobuf/z;->UNSAFE:Lsun/misc/Unsafe;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, p2, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 25
    move-result-object v4

    .line 26
    .line 27
    if-eqz v4, :cond_4

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p3}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1, v0, p3}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 35
    move-result v5

    .line 36
    .line 37
    if-nez v5, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-static {v4}, Lcom/google/protobuf/z;->isMutable(Ljava/lang/Object;)Z

    .line 41
    move-result v5

    .line 42
    .line 43
    if-nez v5, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, p1, v1, v2, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-interface {p2}, Lcom/google/protobuf/m0;->newInstance()Ljava/lang/Object;

    .line 51
    move-result-object v5

    .line 52
    .line 53
    .line 54
    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/m0;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, p1, v1, v2, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lcom/google/protobuf/z;->setOneofPresent(Ljava/lang/Object;II)V

    .line 61
    return-void

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-virtual {v3, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 65
    move-result-object p3

    .line 66
    .line 67
    .line 68
    invoke-static {p3}, Lcom/google/protobuf/z;->isMutable(Ljava/lang/Object;)Z

    .line 69
    move-result v0

    .line 70
    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    .line 74
    invoke-interface {p2}, Lcom/google/protobuf/m0;->newInstance()Ljava/lang/Object;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    .line 78
    invoke-interface {p2, v0, p3}, Lcom/google/protobuf/m0;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, p1, v1, v2, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 82
    move-object p3, v0

    .line 83
    .line 84
    .line 85
    :cond_3
    invoke-interface {p2, p3, v4}, Lcom/google/protobuf/m0;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    return-void

    .line 87
    .line 88
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 89
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    const-string v1, "Source subfield "

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-direct {p0, p3}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 102
    move-result p3

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string p3, " is present but null: "

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object p2

    .line 118
    .line 119
    .line 120
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 121
    throw p1
.end method

.method private mergeSingleField(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p3}, Lcom/google/protobuf/z;->typeAndOffsetAt(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/protobuf/z;->offset(I)J

    .line 8
    move-result-wide v1

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p3}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 12
    move-result v3

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/google/protobuf/z;->type(I)I

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
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/z;->mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    .line 29
    :pswitch_1
    invoke-direct {p0, p2, v3, p3}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/t0;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p1, v3, p3}, Lcom/google/protobuf/z;->setOneofPresent(Ljava/lang/Object;II)V

    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    .line 47
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/z;->mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    .line 52
    :pswitch_3
    invoke-direct {p0, p2, v3, p3}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 53
    move-result v0

    .line 54
    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    .line 58
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    .line 62
    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/t0;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, p1, v3, p3}, Lcom/google/protobuf/z;->setOneofPresent(Ljava/lang/Object;II)V

    .line 66
    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    :pswitch_4
    iget-object p3, p0, Lcom/google/protobuf/z;->mapFieldSchema:Lcom/google/protobuf/t;

    .line 70
    .line 71
    .line 72
    invoke-static {p3, p1, p2, v1, v2}, Lcom/google/protobuf/o0;->mergeMap(Lcom/google/protobuf/t;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 73
    .line 74
    goto/16 :goto_0

    .line 75
    .line 76
    :pswitch_5
    iget-object p3, p0, Lcom/google/protobuf/z;->listFieldSchema:Lcom/google/protobuf/q;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, p1, p2, v1, v2}, Lcom/google/protobuf/q;->mergeListsAt(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 80
    .line 81
    goto/16 :goto_0

    .line 82
    .line 83
    .line 84
    :pswitch_6
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/z;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 85
    .line 86
    goto/16 :goto_0

    .line 87
    .line 88
    .line 89
    :pswitch_7
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 90
    move-result v0

    .line 91
    .line 92
    if-eqz v0, :cond_0

    .line 93
    .line 94
    .line 95
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getLong(Ljava/lang/Object;J)J

    .line 96
    move-result-wide v3

    .line 97
    .line 98
    .line 99
    invoke-static {p1, v1, v2, v3, v4}, Lcom/google/protobuf/t0;->putLong(Ljava/lang/Object;JJ)V

    .line 100
    .line 101
    .line 102
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/z;->setFieldPresent(Ljava/lang/Object;I)V

    .line 103
    .line 104
    goto/16 :goto_0

    .line 105
    .line 106
    .line 107
    :pswitch_8
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 108
    move-result v0

    .line 109
    .line 110
    if-eqz v0, :cond_0

    .line 111
    .line 112
    .line 113
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

    .line 114
    move-result p2

    .line 115
    .line 116
    .line 117
    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/t0;->putInt(Ljava/lang/Object;JI)V

    .line 118
    .line 119
    .line 120
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/z;->setFieldPresent(Ljava/lang/Object;I)V

    .line 121
    .line 122
    goto/16 :goto_0

    .line 123
    .line 124
    .line 125
    :pswitch_9
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 126
    move-result v0

    .line 127
    .line 128
    if-eqz v0, :cond_0

    .line 129
    .line 130
    .line 131
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getLong(Ljava/lang/Object;J)J

    .line 132
    move-result-wide v3

    .line 133
    .line 134
    .line 135
    invoke-static {p1, v1, v2, v3, v4}, Lcom/google/protobuf/t0;->putLong(Ljava/lang/Object;JJ)V

    .line 136
    .line 137
    .line 138
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/z;->setFieldPresent(Ljava/lang/Object;I)V

    .line 139
    .line 140
    goto/16 :goto_0

    .line 141
    .line 142
    .line 143
    :pswitch_a
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 144
    move-result v0

    .line 145
    .line 146
    if-eqz v0, :cond_0

    .line 147
    .line 148
    .line 149
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

    .line 150
    move-result p2

    .line 151
    .line 152
    .line 153
    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/t0;->putInt(Ljava/lang/Object;JI)V

    .line 154
    .line 155
    .line 156
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/z;->setFieldPresent(Ljava/lang/Object;I)V

    .line 157
    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    .line 161
    :pswitch_b
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 162
    move-result v0

    .line 163
    .line 164
    if-eqz v0, :cond_0

    .line 165
    .line 166
    .line 167
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

    .line 168
    move-result p2

    .line 169
    .line 170
    .line 171
    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/t0;->putInt(Ljava/lang/Object;JI)V

    .line 172
    .line 173
    .line 174
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/z;->setFieldPresent(Ljava/lang/Object;I)V

    .line 175
    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    .line 179
    :pswitch_c
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 180
    move-result v0

    .line 181
    .line 182
    if-eqz v0, :cond_0

    .line 183
    .line 184
    .line 185
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

    .line 186
    move-result p2

    .line 187
    .line 188
    .line 189
    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/t0;->putInt(Ljava/lang/Object;JI)V

    .line 190
    .line 191
    .line 192
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/z;->setFieldPresent(Ljava/lang/Object;I)V

    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    .line 197
    :pswitch_d
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 198
    move-result v0

    .line 199
    .line 200
    if-eqz v0, :cond_0

    .line 201
    .line 202
    .line 203
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 204
    move-result-object p2

    .line 205
    .line 206
    .line 207
    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/t0;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/z;->setFieldPresent(Ljava/lang/Object;I)V

    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    .line 215
    :pswitch_e
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/z;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 216
    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    .line 220
    :pswitch_f
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 221
    move-result v0

    .line 222
    .line 223
    if-eqz v0, :cond_0

    .line 224
    .line 225
    .line 226
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 227
    move-result-object p2

    .line 228
    .line 229
    .line 230
    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/t0;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/z;->setFieldPresent(Ljava/lang/Object;I)V

    .line 234
    .line 235
    goto/16 :goto_0

    .line 236
    .line 237
    .line 238
    :pswitch_10
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 239
    move-result v0

    .line 240
    .line 241
    if-eqz v0, :cond_0

    .line 242
    .line 243
    .line 244
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getBoolean(Ljava/lang/Object;J)Z

    .line 245
    move-result p2

    .line 246
    .line 247
    .line 248
    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/t0;->putBoolean(Ljava/lang/Object;JZ)V

    .line 249
    .line 250
    .line 251
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/z;->setFieldPresent(Ljava/lang/Object;I)V

    .line 252
    .line 253
    goto/16 :goto_0

    .line 254
    .line 255
    .line 256
    :pswitch_11
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 257
    move-result v0

    .line 258
    .line 259
    if-eqz v0, :cond_0

    .line 260
    .line 261
    .line 262
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

    .line 263
    move-result p2

    .line 264
    .line 265
    .line 266
    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/t0;->putInt(Ljava/lang/Object;JI)V

    .line 267
    .line 268
    .line 269
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/z;->setFieldPresent(Ljava/lang/Object;I)V

    .line 270
    goto :goto_0

    .line 271
    .line 272
    .line 273
    :pswitch_12
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 274
    move-result v0

    .line 275
    .line 276
    if-eqz v0, :cond_0

    .line 277
    .line 278
    .line 279
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getLong(Ljava/lang/Object;J)J

    .line 280
    move-result-wide v3

    .line 281
    .line 282
    .line 283
    invoke-static {p1, v1, v2, v3, v4}, Lcom/google/protobuf/t0;->putLong(Ljava/lang/Object;JJ)V

    .line 284
    .line 285
    .line 286
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/z;->setFieldPresent(Ljava/lang/Object;I)V

    .line 287
    goto :goto_0

    .line 288
    .line 289
    .line 290
    :pswitch_13
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 291
    move-result v0

    .line 292
    .line 293
    if-eqz v0, :cond_0

    .line 294
    .line 295
    .line 296
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

    .line 297
    move-result p2

    .line 298
    .line 299
    .line 300
    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/t0;->putInt(Ljava/lang/Object;JI)V

    .line 301
    .line 302
    .line 303
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/z;->setFieldPresent(Ljava/lang/Object;I)V

    .line 304
    goto :goto_0

    .line 305
    .line 306
    .line 307
    :pswitch_14
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 308
    move-result v0

    .line 309
    .line 310
    if-eqz v0, :cond_0

    .line 311
    .line 312
    .line 313
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getLong(Ljava/lang/Object;J)J

    .line 314
    move-result-wide v3

    .line 315
    .line 316
    .line 317
    invoke-static {p1, v1, v2, v3, v4}, Lcom/google/protobuf/t0;->putLong(Ljava/lang/Object;JJ)V

    .line 318
    .line 319
    .line 320
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/z;->setFieldPresent(Ljava/lang/Object;I)V

    .line 321
    goto :goto_0

    .line 322
    .line 323
    .line 324
    :pswitch_15
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 325
    move-result v0

    .line 326
    .line 327
    if-eqz v0, :cond_0

    .line 328
    .line 329
    .line 330
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getLong(Ljava/lang/Object;J)J

    .line 331
    move-result-wide v3

    .line 332
    .line 333
    .line 334
    invoke-static {p1, v1, v2, v3, v4}, Lcom/google/protobuf/t0;->putLong(Ljava/lang/Object;JJ)V

    .line 335
    .line 336
    .line 337
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/z;->setFieldPresent(Ljava/lang/Object;I)V

    .line 338
    goto :goto_0

    .line 339
    .line 340
    .line 341
    :pswitch_16
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 342
    move-result v0

    .line 343
    .line 344
    if-eqz v0, :cond_0

    .line 345
    .line 346
    .line 347
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getFloat(Ljava/lang/Object;J)F

    .line 348
    move-result p2

    .line 349
    .line 350
    .line 351
    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/t0;->putFloat(Ljava/lang/Object;JF)V

    .line 352
    .line 353
    .line 354
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/z;->setFieldPresent(Ljava/lang/Object;I)V

    .line 355
    goto :goto_0

    .line 356
    .line 357
    .line 358
    :pswitch_17
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 359
    move-result v0

    .line 360
    .line 361
    if-eqz v0, :cond_0

    .line 362
    .line 363
    .line 364
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/t0;->getDouble(Ljava/lang/Object;J)D

    .line 365
    move-result-wide v3

    .line 366
    .line 367
    .line 368
    invoke-static {p1, v1, v2, v3, v4}, Lcom/google/protobuf/t0;->putDouble(Ljava/lang/Object;JD)V

    .line 369
    .line 370
    .line 371
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/z;->setFieldPresent(Ljava/lang/Object;I)V

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

.method private mutableMessageFieldForMerge(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/google/protobuf/z;->typeAndOffsetAt(I)I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lcom/google/protobuf/z;->offset(I)J

    .line 12
    move-result-wide v1

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 16
    move-result p2

    .line 17
    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Lcom/google/protobuf/m0;->newInstance()Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    .line 25
    :cond_0
    sget-object p2, Lcom/google/protobuf/z;->UNSAFE:Lsun/misc/Unsafe;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/google/protobuf/z;->isMutable(Ljava/lang/Object;)Z

    .line 33
    move-result p2

    .line 34
    .line 35
    if-eqz p2, :cond_1

    .line 36
    return-object p1

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-interface {v0}, Lcom/google/protobuf/m0;->newInstance()Ljava/lang/Object;

    .line 40
    move-result-object p2

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, p2, p1}, Lcom/google/protobuf/m0;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    :cond_2
    return-object p2
.end method

.method private mutableOneofMessageFieldForMerge(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p3}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 8
    move-result p2

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Lcom/google/protobuf/m0;->newInstance()Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    .line 17
    :cond_0
    sget-object p2, Lcom/google/protobuf/z;->UNSAFE:Lsun/misc/Unsafe;

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p3}, Lcom/google/protobuf/z;->typeAndOffsetAt(I)I

    .line 21
    move-result p3

    .line 22
    .line 23
    .line 24
    invoke-static {p3}, Lcom/google/protobuf/z;->offset(I)J

    .line 25
    move-result-wide v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/google/protobuf/z;->isMutable(Ljava/lang/Object;)Z

    .line 33
    move-result p2

    .line 34
    .line 35
    if-eqz p2, :cond_1

    .line 36
    return-object p1

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-interface {v0}, Lcom/google/protobuf/m0;->newInstance()Ljava/lang/Object;

    .line 40
    move-result-object p2

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, p2, p1}, Lcom/google/protobuf/m0;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    :cond_2
    return-object p2
.end method

.method static newSchema(Ljava/lang/Class;Lcom/google/protobuf/w;Lcom/google/protobuf/b0;Lcom/google/protobuf/q;Lcom/google/protobuf/r0;Lcom/google/protobuf/j;Lcom/google/protobuf/t;)Lcom/google/protobuf/z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/protobuf/w;",
            "Lcom/google/protobuf/b0;",
            "Lcom/google/protobuf/q;",
            "Lcom/google/protobuf/r0<",
            "**>;",
            "Lcom/google/protobuf/j<",
            "*>;",
            "Lcom/google/protobuf/t;",
            ")",
            "Lcom/google/protobuf/z<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of p0, p1, Lcom/google/protobuf/j0;

    .line 3
    .line 4
    if-eqz p0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Lcom/google/protobuf/j0;

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
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/z;->newSchemaForRawMessageInfo(Lcom/google/protobuf/j0;Lcom/google/protobuf/b0;Lcom/google/protobuf/q;Lcom/google/protobuf/r0;Lcom/google/protobuf/j;Lcom/google/protobuf/t;)Lcom/google/protobuf/z;

    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    move-object v0, p1

    .line 19
    .line 20
    check-cast v0, Lcom/google/protobuf/StructuralMessageInfo;

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
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/z;->newSchemaForMessageInfo(Lcom/google/protobuf/StructuralMessageInfo;Lcom/google/protobuf/b0;Lcom/google/protobuf/q;Lcom/google/protobuf/r0;Lcom/google/protobuf/j;Lcom/google/protobuf/t;)Lcom/google/protobuf/z;

    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method static newSchemaForMessageInfo(Lcom/google/protobuf/StructuralMessageInfo;Lcom/google/protobuf/b0;Lcom/google/protobuf/q;Lcom/google/protobuf/r0;Lcom/google/protobuf/j;Lcom/google/protobuf/t;)Lcom/google/protobuf/z;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/StructuralMessageInfo;",
            "Lcom/google/protobuf/b0;",
            "Lcom/google/protobuf/q;",
            "Lcom/google/protobuf/r0<",
            "**>;",
            "Lcom/google/protobuf/j<",
            "*>;",
            "Lcom/google/protobuf/t;",
            ")",
            "Lcom/google/protobuf/z<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/StructuralMessageInfo;->getSyntax()Lcom/google/protobuf/ProtoSyntax;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lcom/google/protobuf/ProtoSyntax;->PROTO3:Lcom/google/protobuf/ProtoSyntax;

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
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/StructuralMessageInfo;->getFields()[Lcom/google/protobuf/FieldInfo;

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
    invoke-virtual {v1}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

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
    invoke-virtual {v2}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

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
    invoke-virtual {v13}, Lcom/google/protobuf/FieldInfo;->getType()Lcom/google/protobuf/FieldType;

    .line 64
    move-result-object v14

    .line 65
    .line 66
    sget-object v15, Lcom/google/protobuf/FieldType;->MAP:Lcom/google/protobuf/FieldType;

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
    invoke-virtual {v13}, Lcom/google/protobuf/FieldInfo;->getType()Lcom/google/protobuf/FieldType;

    .line 75
    move-result-object v14

    .line 76
    .line 77
    .line 78
    invoke-virtual {v14}, Lcom/google/protobuf/FieldType;->id()I

    .line 79
    move-result v14

    .line 80
    .line 81
    if-lt v14, v12, :cond_3

    .line 82
    .line 83
    .line 84
    invoke-virtual {v13}, Lcom/google/protobuf/FieldInfo;->getType()Lcom/google/protobuf/FieldType;

    .line 85
    move-result-object v12

    .line 86
    .line 87
    .line 88
    invoke-virtual {v12}, Lcom/google/protobuf/FieldType;->id()I

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
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/StructuralMessageInfo;->getCheckInitialized()[I

    .line 111
    move-result-object v4

    .line 112
    .line 113
    if-nez v4, :cond_7

    .line 114
    .line 115
    sget-object v4, Lcom/google/protobuf/z;->EMPTY_INT_ARRAY:[I

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
    invoke-virtual {v3}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    .line 130
    move-result v11

    .line 131
    .line 132
    .line 133
    invoke-static {v3, v5, v13, v6}, Lcom/google/protobuf/z;->storeFieldData(Lcom/google/protobuf/FieldInfo;[II[Ljava/lang/Object;)V

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
    invoke-virtual {v3}, Lcom/google/protobuf/FieldInfo;->getType()Lcom/google/protobuf/FieldType;

    .line 149
    move-result-object v11

    .line 150
    .line 151
    sget-object v12, Lcom/google/protobuf/FieldType;->MAP:Lcom/google/protobuf/FieldType;

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
    invoke-virtual {v3}, Lcom/google/protobuf/FieldInfo;->getType()Lcom/google/protobuf/FieldType;

    .line 165
    move-result-object v11

    .line 166
    .line 167
    .line 168
    invoke-virtual {v11}, Lcom/google/protobuf/FieldType;->id()I

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
    invoke-virtual {v3}, Lcom/google/protobuf/FieldInfo;->getType()Lcom/google/protobuf/FieldType;

    .line 177
    move-result-object v11

    .line 178
    .line 179
    .line 180
    invoke-virtual {v11}, Lcom/google/protobuf/FieldType;->id()I

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
    invoke-virtual {v3}, Lcom/google/protobuf/FieldInfo;->getField()Ljava/lang/reflect/Field;

    .line 191
    move-result-object v3

    .line 192
    .line 193
    move/from16 v18, v13

    .line 194
    .line 195
    .line 196
    invoke-static {v3}, Lcom/google/protobuf/t0;->objectFieldOffset(Ljava/lang/reflect/Field;)J

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
    sget-object v2, Lcom/google/protobuf/z;->EMPTY_INT_ARRAY:[I

    .line 216
    .line 217
    :cond_c
    if-nez v1, :cond_d

    .line 218
    .line 219
    sget-object v1, Lcom/google/protobuf/z;->EMPTY_INT_ARRAY:[I

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
    new-instance v0, Lcom/google/protobuf/z;

    .line 246
    .line 247
    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/StructuralMessageInfo;->getDefaultInstance()Lcom/google/protobuf/MessageLite;

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
    invoke-direct/range {v4 .. v19}, Lcom/google/protobuf/z;-><init>([I[Ljava/lang/Object;IILcom/google/protobuf/MessageLite;ZZ[IIILcom/google/protobuf/b0;Lcom/google/protobuf/q;Lcom/google/protobuf/r0;Lcom/google/protobuf/j;Lcom/google/protobuf/t;)V

    .line 270
    return-object v0
.end method

.method static newSchemaForRawMessageInfo(Lcom/google/protobuf/j0;Lcom/google/protobuf/b0;Lcom/google/protobuf/q;Lcom/google/protobuf/r0;Lcom/google/protobuf/j;Lcom/google/protobuf/t;)Lcom/google/protobuf/z;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/j0;",
            "Lcom/google/protobuf/b0;",
            "Lcom/google/protobuf/q;",
            "Lcom/google/protobuf/r0<",
            "**>;",
            "Lcom/google/protobuf/j<",
            "*>;",
            "Lcom/google/protobuf/t;",
            ")",
            "Lcom/google/protobuf/z<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/j0;->getSyntax()Lcom/google/protobuf/ProtoSyntax;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lcom/google/protobuf/ProtoSyntax;->PROTO3:Lcom/google/protobuf/ProtoSyntax;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    const/4 v10, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v10, v2

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/j0;->getStringInfo()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 20
    move-result v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 24
    move-result v4

    .line 25
    .line 26
    .line 27
    const v5, 0xd800

    .line 28
    .line 29
    if-lt v4, v5, :cond_1

    .line 30
    const/4 v4, 0x1

    .line 31
    .line 32
    :goto_1
    add-int/lit8 v6, v4, 0x1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 36
    move-result v4

    .line 37
    .line 38
    if-lt v4, v5, :cond_2

    .line 39
    move v4, v6

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 v6, 0x1

    .line 42
    .line 43
    :cond_2
    add-int/lit8 v4, v6, 0x1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 47
    move-result v6

    .line 48
    .line 49
    if-lt v6, v5, :cond_4

    .line 50
    .line 51
    and-int/lit16 v6, v6, 0x1fff

    .line 52
    .line 53
    const/16 v8, 0xd

    .line 54
    .line 55
    :goto_2
    add-int/lit8 v9, v4, 0x1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 59
    move-result v4

    .line 60
    .line 61
    if-lt v4, v5, :cond_3

    .line 62
    .line 63
    and-int/lit16 v4, v4, 0x1fff

    .line 64
    shl-int/2addr v4, v8

    .line 65
    or-int/2addr v6, v4

    .line 66
    .line 67
    add-int/lit8 v8, v8, 0xd

    .line 68
    move v4, v9

    .line 69
    goto :goto_2

    .line 70
    :cond_3
    shl-int/2addr v4, v8

    .line 71
    or-int/2addr v6, v4

    .line 72
    move v4, v9

    .line 73
    .line 74
    :cond_4
    if-nez v6, :cond_5

    .line 75
    .line 76
    sget-object v6, Lcom/google/protobuf/z;->EMPTY_INT_ARRAY:[I

    .line 77
    move v8, v2

    .line 78
    move v9, v8

    .line 79
    move v11, v9

    .line 80
    move v12, v11

    .line 81
    move v14, v12

    .line 82
    .line 83
    move/from16 v16, v14

    .line 84
    move-object v13, v6

    .line 85
    .line 86
    move/from16 v6, v16

    .line 87
    .line 88
    goto/16 :goto_b

    .line 89
    .line 90
    :cond_5
    add-int/lit8 v6, v4, 0x1

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 94
    move-result v4

    .line 95
    .line 96
    if-lt v4, v5, :cond_7

    .line 97
    .line 98
    and-int/lit16 v4, v4, 0x1fff

    .line 99
    .line 100
    const/16 v8, 0xd

    .line 101
    .line 102
    :goto_3
    add-int/lit8 v9, v6, 0x1

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 106
    move-result v6

    .line 107
    .line 108
    if-lt v6, v5, :cond_6

    .line 109
    .line 110
    and-int/lit16 v6, v6, 0x1fff

    .line 111
    shl-int/2addr v6, v8

    .line 112
    or-int/2addr v4, v6

    .line 113
    .line 114
    add-int/lit8 v8, v8, 0xd

    .line 115
    move v6, v9

    .line 116
    goto :goto_3

    .line 117
    :cond_6
    shl-int/2addr v6, v8

    .line 118
    or-int/2addr v4, v6

    .line 119
    move v6, v9

    .line 120
    .line 121
    :cond_7
    add-int/lit8 v8, v6, 0x1

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 125
    move-result v6

    .line 126
    .line 127
    if-lt v6, v5, :cond_9

    .line 128
    .line 129
    and-int/lit16 v6, v6, 0x1fff

    .line 130
    .line 131
    const/16 v9, 0xd

    .line 132
    .line 133
    :goto_4
    add-int/lit8 v11, v8, 0x1

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 137
    move-result v8

    .line 138
    .line 139
    if-lt v8, v5, :cond_8

    .line 140
    .line 141
    and-int/lit16 v8, v8, 0x1fff

    .line 142
    shl-int/2addr v8, v9

    .line 143
    or-int/2addr v6, v8

    .line 144
    .line 145
    add-int/lit8 v9, v9, 0xd

    .line 146
    move v8, v11

    .line 147
    goto :goto_4

    .line 148
    :cond_8
    shl-int/2addr v8, v9

    .line 149
    or-int/2addr v6, v8

    .line 150
    move v8, v11

    .line 151
    .line 152
    :cond_9
    add-int/lit8 v9, v8, 0x1

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 156
    move-result v8

    .line 157
    .line 158
    if-lt v8, v5, :cond_b

    .line 159
    .line 160
    and-int/lit16 v8, v8, 0x1fff

    .line 161
    .line 162
    const/16 v11, 0xd

    .line 163
    .line 164
    :goto_5
    add-int/lit8 v12, v9, 0x1

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 168
    move-result v9

    .line 169
    .line 170
    if-lt v9, v5, :cond_a

    .line 171
    .line 172
    and-int/lit16 v9, v9, 0x1fff

    .line 173
    shl-int/2addr v9, v11

    .line 174
    or-int/2addr v8, v9

    .line 175
    .line 176
    add-int/lit8 v11, v11, 0xd

    .line 177
    move v9, v12

    .line 178
    goto :goto_5

    .line 179
    :cond_a
    shl-int/2addr v9, v11

    .line 180
    or-int/2addr v8, v9

    .line 181
    move v9, v12

    .line 182
    .line 183
    :cond_b
    add-int/lit8 v11, v9, 0x1

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 187
    move-result v9

    .line 188
    .line 189
    if-lt v9, v5, :cond_d

    .line 190
    .line 191
    and-int/lit16 v9, v9, 0x1fff

    .line 192
    .line 193
    const/16 v12, 0xd

    .line 194
    .line 195
    :goto_6
    add-int/lit8 v13, v11, 0x1

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    .line 199
    move-result v11

    .line 200
    .line 201
    if-lt v11, v5, :cond_c

    .line 202
    .line 203
    and-int/lit16 v11, v11, 0x1fff

    .line 204
    shl-int/2addr v11, v12

    .line 205
    or-int/2addr v9, v11

    .line 206
    .line 207
    add-int/lit8 v12, v12, 0xd

    .line 208
    move v11, v13

    .line 209
    goto :goto_6

    .line 210
    :cond_c
    shl-int/2addr v11, v12

    .line 211
    or-int/2addr v9, v11

    .line 212
    move v11, v13

    .line 213
    .line 214
    :cond_d
    add-int/lit8 v12, v11, 0x1

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    .line 218
    move-result v11

    .line 219
    .line 220
    if-lt v11, v5, :cond_f

    .line 221
    .line 222
    and-int/lit16 v11, v11, 0x1fff

    .line 223
    .line 224
    const/16 v13, 0xd

    .line 225
    .line 226
    :goto_7
    add-int/lit8 v14, v12, 0x1

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    .line 230
    move-result v12

    .line 231
    .line 232
    if-lt v12, v5, :cond_e

    .line 233
    .line 234
    and-int/lit16 v12, v12, 0x1fff

    .line 235
    shl-int/2addr v12, v13

    .line 236
    or-int/2addr v11, v12

    .line 237
    .line 238
    add-int/lit8 v13, v13, 0xd

    .line 239
    move v12, v14

    .line 240
    goto :goto_7

    .line 241
    :cond_e
    shl-int/2addr v12, v13

    .line 242
    or-int/2addr v11, v12

    .line 243
    move v12, v14

    .line 244
    .line 245
    :cond_f
    add-int/lit8 v13, v12, 0x1

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    .line 249
    move-result v12

    .line 250
    .line 251
    if-lt v12, v5, :cond_11

    .line 252
    .line 253
    and-int/lit16 v12, v12, 0x1fff

    .line 254
    .line 255
    const/16 v14, 0xd

    .line 256
    .line 257
    :goto_8
    add-int/lit8 v15, v13, 0x1

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    .line 261
    move-result v13

    .line 262
    .line 263
    if-lt v13, v5, :cond_10

    .line 264
    .line 265
    and-int/lit16 v13, v13, 0x1fff

    .line 266
    shl-int/2addr v13, v14

    .line 267
    or-int/2addr v12, v13

    .line 268
    .line 269
    add-int/lit8 v14, v14, 0xd

    .line 270
    move v13, v15

    .line 271
    goto :goto_8

    .line 272
    :cond_10
    shl-int/2addr v13, v14

    .line 273
    or-int/2addr v12, v13

    .line 274
    move v13, v15

    .line 275
    .line 276
    :cond_11
    add-int/lit8 v14, v13, 0x1

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    .line 280
    move-result v13

    .line 281
    .line 282
    if-lt v13, v5, :cond_13

    .line 283
    .line 284
    and-int/lit16 v13, v13, 0x1fff

    .line 285
    .line 286
    const/16 v15, 0xd

    .line 287
    .line 288
    :goto_9
    add-int/lit8 v16, v14, 0x1

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    .line 292
    move-result v14

    .line 293
    .line 294
    if-lt v14, v5, :cond_12

    .line 295
    .line 296
    and-int/lit16 v14, v14, 0x1fff

    .line 297
    shl-int/2addr v14, v15

    .line 298
    or-int/2addr v13, v14

    .line 299
    .line 300
    add-int/lit8 v15, v15, 0xd

    .line 301
    .line 302
    move/from16 v14, v16

    .line 303
    goto :goto_9

    .line 304
    :cond_12
    shl-int/2addr v14, v15

    .line 305
    or-int/2addr v13, v14

    .line 306
    .line 307
    move/from16 v14, v16

    .line 308
    .line 309
    :cond_13
    add-int/lit8 v15, v14, 0x1

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    .line 313
    move-result v14

    .line 314
    .line 315
    if-lt v14, v5, :cond_15

    .line 316
    .line 317
    and-int/lit16 v14, v14, 0x1fff

    .line 318
    .line 319
    const/16 v16, 0xd

    .line 320
    .line 321
    :goto_a
    add-int/lit8 v17, v15, 0x1

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    .line 325
    move-result v15

    .line 326
    .line 327
    if-lt v15, v5, :cond_14

    .line 328
    .line 329
    and-int/lit16 v15, v15, 0x1fff

    .line 330
    .line 331
    shl-int v15, v15, v16

    .line 332
    or-int/2addr v14, v15

    .line 333
    .line 334
    add-int/lit8 v16, v16, 0xd

    .line 335
    .line 336
    move/from16 v15, v17

    .line 337
    goto :goto_a

    .line 338
    .line 339
    :cond_14
    shl-int v15, v15, v16

    .line 340
    or-int/2addr v14, v15

    .line 341
    .line 342
    move/from16 v15, v17

    .line 343
    .line 344
    :cond_15
    add-int v16, v14, v12

    .line 345
    .line 346
    add-int v13, v16, v13

    .line 347
    .line 348
    new-array v13, v13, [I

    .line 349
    .line 350
    mul-int/lit8 v16, v4, 0x2

    .line 351
    .line 352
    add-int v16, v16, v6

    .line 353
    move v6, v4

    .line 354
    move v4, v15

    .line 355
    .line 356
    :goto_b
    sget-object v15, Lcom/google/protobuf/z;->UNSAFE:Lsun/misc/Unsafe;

    .line 357
    .line 358
    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/j0;->getObjects()[Ljava/lang/Object;

    .line 360
    move-result-object v17

    .line 361
    .line 362
    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/j0;->getDefaultInstance()Lcom/google/protobuf/MessageLite;

    .line 364
    move-result-object v18

    .line 365
    .line 366
    .line 367
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 368
    move-result-object v2

    .line 369
    .line 370
    mul-int/lit8 v7, v11, 0x3

    .line 371
    .line 372
    new-array v7, v7, [I

    .line 373
    .line 374
    mul-int/lit8 v11, v11, 0x2

    .line 375
    .line 376
    new-array v11, v11, [Ljava/lang/Object;

    .line 377
    .line 378
    add-int v20, v14, v12

    .line 379
    .line 380
    move/from16 v22, v14

    .line 381
    .line 382
    move/from16 v23, v20

    .line 383
    const/4 v12, 0x0

    .line 384
    .line 385
    const/16 v21, 0x0

    .line 386
    .line 387
    :goto_c
    if-ge v4, v1, :cond_32

    .line 388
    .line 389
    add-int/lit8 v24, v4, 0x1

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 393
    move-result v4

    .line 394
    .line 395
    if-lt v4, v5, :cond_17

    .line 396
    .line 397
    and-int/lit16 v4, v4, 0x1fff

    .line 398
    .line 399
    move/from16 v3, v24

    .line 400
    .line 401
    const/16 v24, 0xd

    .line 402
    .line 403
    :goto_d
    add-int/lit8 v26, v3, 0x1

    .line 404
    .line 405
    .line 406
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 407
    move-result v3

    .line 408
    .line 409
    if-lt v3, v5, :cond_16

    .line 410
    .line 411
    and-int/lit16 v3, v3, 0x1fff

    .line 412
    .line 413
    shl-int v3, v3, v24

    .line 414
    or-int/2addr v4, v3

    .line 415
    .line 416
    add-int/lit8 v24, v24, 0xd

    .line 417
    .line 418
    move/from16 v3, v26

    .line 419
    goto :goto_d

    .line 420
    .line 421
    :cond_16
    shl-int v3, v3, v24

    .line 422
    or-int/2addr v4, v3

    .line 423
    .line 424
    move/from16 v3, v26

    .line 425
    goto :goto_e

    .line 426
    .line 427
    :cond_17
    move/from16 v3, v24

    .line 428
    .line 429
    :goto_e
    add-int/lit8 v24, v3, 0x1

    .line 430
    .line 431
    .line 432
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 433
    move-result v3

    .line 434
    .line 435
    if-lt v3, v5, :cond_19

    .line 436
    .line 437
    and-int/lit16 v3, v3, 0x1fff

    .line 438
    .line 439
    move/from16 v5, v24

    .line 440
    .line 441
    const/16 v24, 0xd

    .line 442
    .line 443
    :goto_f
    add-int/lit8 v27, v5, 0x1

    .line 444
    .line 445
    .line 446
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 447
    move-result v5

    .line 448
    .line 449
    move/from16 v28, v1

    .line 450
    .line 451
    .line 452
    const v1, 0xd800

    .line 453
    .line 454
    if-lt v5, v1, :cond_18

    .line 455
    .line 456
    and-int/lit16 v1, v5, 0x1fff

    .line 457
    .line 458
    shl-int v1, v1, v24

    .line 459
    or-int/2addr v3, v1

    .line 460
    .line 461
    add-int/lit8 v24, v24, 0xd

    .line 462
    .line 463
    move/from16 v5, v27

    .line 464
    .line 465
    move/from16 v1, v28

    .line 466
    goto :goto_f

    .line 467
    .line 468
    :cond_18
    shl-int v1, v5, v24

    .line 469
    or-int/2addr v3, v1

    .line 470
    .line 471
    move/from16 v1, v27

    .line 472
    goto :goto_10

    .line 473
    .line 474
    :cond_19
    move/from16 v28, v1

    .line 475
    .line 476
    move/from16 v1, v24

    .line 477
    .line 478
    :goto_10
    and-int/lit16 v5, v3, 0xff

    .line 479
    .line 480
    move/from16 v24, v14

    .line 481
    .line 482
    and-int/lit16 v14, v3, 0x400

    .line 483
    .line 484
    if-eqz v14, :cond_1a

    .line 485
    .line 486
    add-int/lit8 v14, v12, 0x1

    .line 487
    .line 488
    aput v21, v13, v12

    .line 489
    move v12, v14

    .line 490
    .line 491
    :cond_1a
    const/16 v14, 0x33

    .line 492
    .line 493
    move/from16 v30, v12

    .line 494
    .line 495
    if-lt v5, v14, :cond_22

    .line 496
    .line 497
    add-int/lit8 v14, v1, 0x1

    .line 498
    .line 499
    .line 500
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 501
    move-result v1

    .line 502
    .line 503
    .line 504
    const v12, 0xd800

    .line 505
    .line 506
    if-lt v1, v12, :cond_1c

    .line 507
    .line 508
    and-int/lit16 v1, v1, 0x1fff

    .line 509
    .line 510
    const/16 v31, 0xd

    .line 511
    .line 512
    :goto_11
    add-int/lit8 v32, v14, 0x1

    .line 513
    .line 514
    .line 515
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    .line 516
    move-result v14

    .line 517
    .line 518
    if-lt v14, v12, :cond_1b

    .line 519
    .line 520
    and-int/lit16 v12, v14, 0x1fff

    .line 521
    .line 522
    shl-int v12, v12, v31

    .line 523
    or-int/2addr v1, v12

    .line 524
    .line 525
    add-int/lit8 v31, v31, 0xd

    .line 526
    .line 527
    move/from16 v14, v32

    .line 528
    .line 529
    .line 530
    const v12, 0xd800

    .line 531
    goto :goto_11

    .line 532
    .line 533
    :cond_1b
    shl-int v12, v14, v31

    .line 534
    or-int/2addr v1, v12

    .line 535
    .line 536
    move/from16 v14, v32

    .line 537
    .line 538
    :cond_1c
    add-int/lit8 v12, v5, -0x33

    .line 539
    .line 540
    move/from16 v31, v14

    .line 541
    .line 542
    const/16 v14, 0x9

    .line 543
    .line 544
    if-eq v12, v14, :cond_1e

    .line 545
    .line 546
    const/16 v14, 0x11

    .line 547
    .line 548
    if-ne v12, v14, :cond_1d

    .line 549
    goto :goto_13

    .line 550
    .line 551
    :cond_1d
    const/16 v14, 0xc

    .line 552
    .line 553
    if-ne v12, v14, :cond_1f

    .line 554
    .line 555
    if-nez v10, :cond_1f

    .line 556
    .line 557
    div-int/lit8 v12, v21, 0x3

    .line 558
    .line 559
    mul-int/lit8 v12, v12, 0x2

    .line 560
    const/4 v14, 0x1

    .line 561
    add-int/2addr v12, v14

    .line 562
    .line 563
    add-int/lit8 v14, v16, 0x1

    .line 564
    .line 565
    aget-object v16, v17, v16

    .line 566
    .line 567
    aput-object v16, v11, v12

    .line 568
    .line 569
    :goto_12
    move/from16 v16, v14

    .line 570
    goto :goto_14

    .line 571
    .line 572
    :cond_1e
    :goto_13
    div-int/lit8 v12, v21, 0x3

    .line 573
    .line 574
    mul-int/lit8 v12, v12, 0x2

    .line 575
    const/4 v14, 0x1

    .line 576
    add-int/2addr v12, v14

    .line 577
    .line 578
    add-int/lit8 v14, v16, 0x1

    .line 579
    .line 580
    aget-object v16, v17, v16

    .line 581
    .line 582
    aput-object v16, v11, v12

    .line 583
    goto :goto_12

    .line 584
    .line 585
    :cond_1f
    :goto_14
    mul-int/lit8 v1, v1, 0x2

    .line 586
    .line 587
    aget-object v12, v17, v1

    .line 588
    .line 589
    instance-of v14, v12, Ljava/lang/reflect/Field;

    .line 590
    .line 591
    if-eqz v14, :cond_20

    .line 592
    .line 593
    check-cast v12, Ljava/lang/reflect/Field;

    .line 594
    :goto_15
    move v14, v8

    .line 595
    .line 596
    move/from16 v32, v9

    .line 597
    goto :goto_16

    .line 598
    .line 599
    :cond_20
    check-cast v12, Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    invoke-static {v2, v12}, Lcom/google/protobuf/z;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 603
    move-result-object v12

    .line 604
    .line 605
    aput-object v12, v17, v1

    .line 606
    goto :goto_15

    .line 607
    .line 608
    .line 609
    :goto_16
    invoke-virtual {v15, v12}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 610
    move-result-wide v8

    .line 611
    long-to-int v8, v8

    .line 612
    .line 613
    add-int/lit8 v1, v1, 0x1

    .line 614
    .line 615
    aget-object v9, v17, v1

    .line 616
    .line 617
    instance-of v12, v9, Ljava/lang/reflect/Field;

    .line 618
    .line 619
    if-eqz v12, :cond_21

    .line 620
    .line 621
    check-cast v9, Ljava/lang/reflect/Field;

    .line 622
    :goto_17
    move v1, v8

    .line 623
    goto :goto_18

    .line 624
    .line 625
    :cond_21
    check-cast v9, Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    invoke-static {v2, v9}, Lcom/google/protobuf/z;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 629
    move-result-object v9

    .line 630
    .line 631
    aput-object v9, v17, v1

    .line 632
    goto :goto_17

    .line 633
    .line 634
    .line 635
    :goto_18
    invoke-virtual {v15, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 636
    move-result-wide v8

    .line 637
    long-to-int v8, v8

    .line 638
    .line 639
    move-object/from16 v29, v0

    .line 640
    move v9, v8

    .line 641
    move v0, v10

    .line 642
    .line 643
    move/from16 v27, v31

    .line 644
    .line 645
    const/16 v25, 0x1

    .line 646
    move v8, v1

    .line 647
    const/4 v1, 0x0

    .line 648
    .line 649
    goto/16 :goto_24

    .line 650
    :cond_22
    move v14, v8

    .line 651
    .line 652
    move/from16 v32, v9

    .line 653
    .line 654
    add-int/lit8 v8, v16, 0x1

    .line 655
    .line 656
    aget-object v9, v17, v16

    .line 657
    .line 658
    check-cast v9, Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    invoke-static {v2, v9}, Lcom/google/protobuf/z;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 662
    move-result-object v9

    .line 663
    .line 664
    const/16 v12, 0x9

    .line 665
    .line 666
    if-eq v5, v12, :cond_23

    .line 667
    .line 668
    const/16 v12, 0x11

    .line 669
    .line 670
    if-ne v5, v12, :cond_24

    .line 671
    .line 672
    :cond_23
    const/16 v25, 0x1

    .line 673
    .line 674
    goto/16 :goto_1d

    .line 675
    .line 676
    :cond_24
    const/16 v12, 0x1b

    .line 677
    .line 678
    if-eq v5, v12, :cond_25

    .line 679
    .line 680
    const/16 v12, 0x31

    .line 681
    .line 682
    if-ne v5, v12, :cond_26

    .line 683
    .line 684
    :cond_25
    const/16 v25, 0x1

    .line 685
    goto :goto_1c

    .line 686
    .line 687
    :cond_26
    const/16 v12, 0xc

    .line 688
    .line 689
    if-eq v5, v12, :cond_2a

    .line 690
    .line 691
    const/16 v12, 0x1e

    .line 692
    .line 693
    if-eq v5, v12, :cond_2a

    .line 694
    .line 695
    const/16 v12, 0x2c

    .line 696
    .line 697
    if-ne v5, v12, :cond_27

    .line 698
    goto :goto_1a

    .line 699
    .line 700
    :cond_27
    const/16 v12, 0x32

    .line 701
    .line 702
    if-ne v5, v12, :cond_28

    .line 703
    .line 704
    add-int/lit8 v12, v22, 0x1

    .line 705
    .line 706
    aput v21, v13, v22

    .line 707
    .line 708
    div-int/lit8 v22, v21, 0x3

    .line 709
    .line 710
    mul-int/lit8 v22, v22, 0x2

    .line 711
    .line 712
    add-int/lit8 v27, v16, 0x2

    .line 713
    .line 714
    aget-object v8, v17, v8

    .line 715
    .line 716
    aput-object v8, v11, v22

    .line 717
    .line 718
    and-int/lit16 v8, v3, 0x800

    .line 719
    .line 720
    if-eqz v8, :cond_29

    .line 721
    .line 722
    add-int/lit8 v22, v22, 0x1

    .line 723
    .line 724
    add-int/lit8 v8, v16, 0x3

    .line 725
    .line 726
    aget-object v16, v17, v27

    .line 727
    .line 728
    aput-object v16, v11, v22

    .line 729
    .line 730
    move/from16 v22, v12

    .line 731
    .line 732
    :cond_28
    const/16 v25, 0x1

    .line 733
    :goto_19
    move v12, v8

    .line 734
    goto :goto_1e

    .line 735
    .line 736
    :cond_29
    move/from16 v22, v12

    .line 737
    .line 738
    move/from16 v12, v27

    .line 739
    .line 740
    const/16 v25, 0x1

    .line 741
    goto :goto_1e

    .line 742
    .line 743
    :cond_2a
    :goto_1a
    if-nez v10, :cond_28

    .line 744
    .line 745
    div-int/lit8 v12, v21, 0x3

    .line 746
    .line 747
    mul-int/lit8 v12, v12, 0x2

    .line 748
    .line 749
    const/16 v25, 0x1

    .line 750
    .line 751
    add-int/lit8 v12, v12, 0x1

    .line 752
    .line 753
    add-int/lit8 v16, v16, 0x2

    .line 754
    .line 755
    aget-object v8, v17, v8

    .line 756
    .line 757
    aput-object v8, v11, v12

    .line 758
    .line 759
    :goto_1b
    move/from16 v12, v16

    .line 760
    goto :goto_1e

    .line 761
    .line 762
    :goto_1c
    div-int/lit8 v12, v21, 0x3

    .line 763
    .line 764
    mul-int/lit8 v12, v12, 0x2

    .line 765
    .line 766
    add-int/lit8 v12, v12, 0x1

    .line 767
    .line 768
    add-int/lit8 v16, v16, 0x2

    .line 769
    .line 770
    aget-object v8, v17, v8

    .line 771
    .line 772
    aput-object v8, v11, v12

    .line 773
    goto :goto_1b

    .line 774
    .line 775
    :goto_1d
    div-int/lit8 v12, v21, 0x3

    .line 776
    .line 777
    mul-int/lit8 v12, v12, 0x2

    .line 778
    .line 779
    add-int/lit8 v12, v12, 0x1

    .line 780
    .line 781
    .line 782
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 783
    move-result-object v16

    .line 784
    .line 785
    aput-object v16, v11, v12

    .line 786
    goto :goto_19

    .line 787
    .line 788
    .line 789
    :goto_1e
    invoke-virtual {v15, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 790
    move-result-wide v8

    .line 791
    long-to-int v8, v8

    .line 792
    .line 793
    and-int/lit16 v9, v3, 0x1000

    .line 794
    .line 795
    move/from16 v16, v12

    .line 796
    .line 797
    const/16 v12, 0x1000

    .line 798
    .line 799
    if-ne v9, v12, :cond_2e

    .line 800
    .line 801
    const/16 v9, 0x11

    .line 802
    .line 803
    if-gt v5, v9, :cond_2e

    .line 804
    .line 805
    add-int/lit8 v9, v1, 0x1

    .line 806
    .line 807
    .line 808
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 809
    move-result v1

    .line 810
    .line 811
    .line 812
    const v12, 0xd800

    .line 813
    .line 814
    if-lt v1, v12, :cond_2c

    .line 815
    .line 816
    and-int/lit16 v1, v1, 0x1fff

    .line 817
    .line 818
    const/16 v26, 0xd

    .line 819
    .line 820
    :goto_1f
    add-int/lit8 v27, v9, 0x1

    .line 821
    .line 822
    .line 823
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 824
    move-result v9

    .line 825
    .line 826
    if-lt v9, v12, :cond_2b

    .line 827
    .line 828
    and-int/lit16 v9, v9, 0x1fff

    .line 829
    .line 830
    shl-int v9, v9, v26

    .line 831
    or-int/2addr v1, v9

    .line 832
    .line 833
    add-int/lit8 v26, v26, 0xd

    .line 834
    .line 835
    move/from16 v9, v27

    .line 836
    goto :goto_1f

    .line 837
    .line 838
    :cond_2b
    shl-int v9, v9, v26

    .line 839
    or-int/2addr v1, v9

    .line 840
    goto :goto_20

    .line 841
    .line 842
    :cond_2c
    move/from16 v27, v9

    .line 843
    .line 844
    :goto_20
    mul-int/lit8 v9, v6, 0x2

    .line 845
    .line 846
    div-int/lit8 v26, v1, 0x20

    .line 847
    .line 848
    add-int v9, v9, v26

    .line 849
    .line 850
    aget-object v12, v17, v9

    .line 851
    .line 852
    move-object/from16 v29, v0

    .line 853
    .line 854
    instance-of v0, v12, Ljava/lang/reflect/Field;

    .line 855
    .line 856
    if-eqz v0, :cond_2d

    .line 857
    .line 858
    check-cast v12, Ljava/lang/reflect/Field;

    .line 859
    :goto_21
    move v0, v10

    .line 860
    goto :goto_22

    .line 861
    .line 862
    :cond_2d
    check-cast v12, Ljava/lang/String;

    .line 863
    .line 864
    .line 865
    invoke-static {v2, v12}, Lcom/google/protobuf/z;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 866
    move-result-object v12

    .line 867
    .line 868
    aput-object v12, v17, v9

    .line 869
    goto :goto_21

    .line 870
    .line 871
    .line 872
    :goto_22
    invoke-virtual {v15, v12}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 873
    move-result-wide v9

    .line 874
    long-to-int v9, v9

    .line 875
    .line 876
    rem-int/lit8 v1, v1, 0x20

    .line 877
    goto :goto_23

    .line 878
    .line 879
    :cond_2e
    move-object/from16 v29, v0

    .line 880
    move v0, v10

    .line 881
    .line 882
    .line 883
    const v9, 0xfffff

    .line 884
    .line 885
    move/from16 v27, v1

    .line 886
    const/4 v1, 0x0

    .line 887
    .line 888
    :goto_23
    const/16 v10, 0x12

    .line 889
    .line 890
    if-lt v5, v10, :cond_2f

    .line 891
    .line 892
    const/16 v10, 0x31

    .line 893
    .line 894
    if-gt v5, v10, :cond_2f

    .line 895
    .line 896
    add-int/lit8 v10, v23, 0x1

    .line 897
    .line 898
    aput v8, v13, v23

    .line 899
    .line 900
    move/from16 v23, v10

    .line 901
    .line 902
    :cond_2f
    :goto_24
    add-int/lit8 v10, v21, 0x1

    .line 903
    .line 904
    aput v4, v7, v21

    .line 905
    .line 906
    add-int/lit8 v4, v21, 0x2

    .line 907
    .line 908
    and-int/lit16 v12, v3, 0x200

    .line 909
    .line 910
    if-eqz v12, :cond_30

    .line 911
    .line 912
    const/high16 v12, 0x20000000

    .line 913
    goto :goto_25

    .line 914
    :cond_30
    const/4 v12, 0x0

    .line 915
    .line 916
    :goto_25
    and-int/lit16 v3, v3, 0x100

    .line 917
    .line 918
    if-eqz v3, :cond_31

    .line 919
    .line 920
    const/high16 v3, 0x10000000

    .line 921
    goto :goto_26

    .line 922
    :cond_31
    const/4 v3, 0x0

    .line 923
    :goto_26
    or-int/2addr v3, v12

    .line 924
    .line 925
    shl-int/lit8 v5, v5, 0x14

    .line 926
    or-int/2addr v3, v5

    .line 927
    or-int/2addr v3, v8

    .line 928
    .line 929
    aput v3, v7, v10

    .line 930
    .line 931
    add-int/lit8 v21, v21, 0x3

    .line 932
    .line 933
    shl-int/lit8 v1, v1, 0x14

    .line 934
    or-int/2addr v1, v9

    .line 935
    .line 936
    aput v1, v7, v4

    .line 937
    move v10, v0

    .line 938
    move v8, v14

    .line 939
    .line 940
    move/from16 v14, v24

    .line 941
    .line 942
    move/from16 v4, v27

    .line 943
    .line 944
    move/from16 v1, v28

    .line 945
    .line 946
    move-object/from16 v0, v29

    .line 947
    .line 948
    move/from16 v12, v30

    .line 949
    .line 950
    move/from16 v9, v32

    .line 951
    .line 952
    .line 953
    const v5, 0xd800

    .line 954
    .line 955
    goto/16 :goto_c

    .line 956
    .line 957
    :cond_32
    move/from16 v32, v9

    .line 958
    move v0, v10

    .line 959
    .line 960
    move/from16 v24, v14

    .line 961
    move v14, v8

    .line 962
    .line 963
    new-instance v1, Lcom/google/protobuf/z;

    .line 964
    .line 965
    .line 966
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/j0;->getDefaultInstance()Lcom/google/protobuf/MessageLite;

    .line 967
    move-result-object v9

    .line 968
    const/4 v2, 0x0

    .line 969
    move-object v4, v1

    .line 970
    move-object v5, v7

    .line 971
    move-object v6, v11

    .line 972
    move v7, v14

    .line 973
    .line 974
    move/from16 v8, v32

    .line 975
    move v11, v2

    .line 976
    move-object v12, v13

    .line 977
    .line 978
    move/from16 v13, v24

    .line 979
    .line 980
    move/from16 v14, v20

    .line 981
    .line 982
    move-object/from16 v15, p1

    .line 983
    .line 984
    move-object/from16 v16, p2

    .line 985
    .line 986
    move-object/from16 v17, p3

    .line 987
    .line 988
    move-object/from16 v18, p4

    .line 989
    .line 990
    move-object/from16 v19, p5

    .line 991
    .line 992
    .line 993
    invoke-direct/range {v4 .. v19}, Lcom/google/protobuf/z;-><init>([I[Ljava/lang/Object;IILcom/google/protobuf/MessageLite;ZZ[IIILcom/google/protobuf/b0;Lcom/google/protobuf/q;Lcom/google/protobuf/r0;Lcom/google/protobuf/j;Lcom/google/protobuf/t;)V

    .line 994
    return-object v1
.end method

.method private numberAt(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/protobuf/z;->buffer:[I

    .line 3
    .line 4
    aget p1, v0, p1

    .line 5
    return p1
.end method

.method private static offset(I)J
    .locals 2

    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method private static oneofBooleanAt(Ljava/lang/Object;J)Z
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
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

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

.method private static oneofDoubleAt(Ljava/lang/Object;J)D
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
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

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

.method private static oneofFloatAt(Ljava/lang/Object;J)F
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
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

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

.method private static oneofIntAt(Ljava/lang/Object;J)I
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
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

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

.method private static oneofLongAt(Ljava/lang/Object;J)J
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
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

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

.method private parseMapField(Ljava/lang/Object;[BIIIJLcom/google/protobuf/c$b;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Lcom/google/protobuf/c$b;",
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
    sget-object v3, Lcom/google/protobuf/z;->UNSAFE:Lsun/misc/Unsafe;

    .line 6
    move v4, p5

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p5}, Lcom/google/protobuf/z;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

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
    iget-object v6, v7, Lcom/google/protobuf/z;->mapFieldSchema:Lcom/google/protobuf/t;

    .line 17
    .line 18
    .line 19
    invoke-interface {v6, v5}, Lcom/google/protobuf/t;->isImmutable(Ljava/lang/Object;)Z

    .line 20
    move-result v6

    .line 21
    .line 22
    if-eqz v6, :cond_0

    .line 23
    .line 24
    iget-object v6, v7, Lcom/google/protobuf/z;->mapFieldSchema:Lcom/google/protobuf/t;

    .line 25
    .line 26
    .line 27
    invoke-interface {v6, v4}, Lcom/google/protobuf/t;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v6

    .line 29
    .line 30
    iget-object v8, v7, Lcom/google/protobuf/z;->mapFieldSchema:Lcom/google/protobuf/t;

    .line 31
    .line 32
    .line 33
    invoke-interface {v8, v6, v5}, Lcom/google/protobuf/t;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, p1, v1, v2, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 37
    move-object v5, v6

    .line 38
    .line 39
    :cond_0
    iget-object v0, v7, Lcom/google/protobuf/z;->mapFieldSchema:Lcom/google/protobuf/t;

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v4}, Lcom/google/protobuf/t;->forMapMetadata(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$b;

    .line 43
    move-result-object v4

    .line 44
    .line 45
    iget-object v0, v7, Lcom/google/protobuf/z;->mapFieldSchema:Lcom/google/protobuf/t;

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, v5}, Lcom/google/protobuf/t;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

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
    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/z;->decodeMapEntry([BIILcom/google/protobuf/MapEntryLite$b;Ljava/util/Map;Lcom/google/protobuf/c$b;)I

    .line 59
    move-result v0

    .line 60
    return v0
.end method

.method private parseOneofField(Ljava/lang/Object;[BIIIIIIIJILcom/google/protobuf/c$b;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/google/protobuf/c$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v2, p5

    move/from16 v9, p6

    move/from16 v3, p7

    move-wide/from16 v6, p10

    move/from16 v10, p12

    move-object/from16 v8, p13

    sget-object v11, Lcom/google/protobuf/z;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v12, v0, Lcom/google/protobuf/z;->buffer:[I

    add-int/lit8 v13, v10, 0x2

    .line 1
    aget v12, v12, v13

    const v13, 0xfffff

    and-int/2addr v12, v13

    int-to-long v12, v12

    const/4 v14, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    const/4 v6, 0x3

    if-ne v3, v6, :cond_6

    .line 2
    invoke-direct {v0, v1, v9, v10}, Lcom/google/protobuf/z;->mutableOneofMessageFieldForMerge(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v11

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    .line 3
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    move-result-object v3

    move-object v2, v11

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v8, p13

    .line 4
    invoke-static/range {v2 .. v8}, Lcom/google/protobuf/c;->mergeGroupField(Ljava/lang/Object;Lcom/google/protobuf/m0;[BIIILcom/google/protobuf/c$b;)I

    move-result v2

    .line 5
    invoke-direct {v0, v1, v9, v10, v11}, Lcom/google/protobuf/z;->storeOneofMessageField(Ljava/lang/Object;IILjava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_1
    if-nez v3, :cond_6

    .line 6
    invoke-static {v4, v5, v8}, Lcom/google/protobuf/c;->decodeVarint64([BILcom/google/protobuf/c$b;)I

    move-result v2

    .line 7
    iget-wide v3, v8, Lcom/google/protobuf/c$b;->long1:J

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 8
    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_6

    :pswitch_2
    if-nez v3, :cond_6

    .line 9
    invoke-static {v4, v5, v8}, Lcom/google/protobuf/c;->decodeVarint32([BILcom/google/protobuf/c$b;)I

    move-result v2

    .line 10
    iget v3, v8, Lcom/google/protobuf/c$b;->int1:I

    invoke-static {v3}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 11
    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_6

    :pswitch_3
    if-nez v3, :cond_6

    .line 12
    invoke-static {v4, v5, v8}, Lcom/google/protobuf/c;->decodeVarint32([BILcom/google/protobuf/c$b;)I

    move-result v3

    .line 13
    iget v4, v8, Lcom/google/protobuf/c$b;->int1:I

    .line 14
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 15
    invoke-interface {v5, v4}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/z;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 18
    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_1
    move v2, v3

    goto/16 :goto_6

    :pswitch_4
    if-ne v3, v15, :cond_6

    .line 19
    invoke-static {v4, v5, v8}, Lcom/google/protobuf/c;->decodeBytes([BILcom/google/protobuf/c$b;)I

    move-result v2

    .line 20
    iget-object v3, v8, Lcom/google/protobuf/c$b;->object1:Ljava/lang/Object;

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 21
    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_6

    :pswitch_5
    if-ne v3, v15, :cond_6

    .line 22
    invoke-direct {v0, v1, v9, v10}, Lcom/google/protobuf/z;->mutableOneofMessageFieldForMerge(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v11

    .line 23
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    move-result-object v3

    move-object v2, v11

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p13

    .line 24
    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/c;->mergeMessageField(Ljava/lang/Object;Lcom/google/protobuf/m0;[BIILcom/google/protobuf/c$b;)I

    move-result v2

    .line 25
    invoke-direct {v0, v1, v9, v10, v11}, Lcom/google/protobuf/z;->storeOneofMessageField(Ljava/lang/Object;IILjava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_6
    if-ne v3, v15, :cond_6

    .line 26
    invoke-static {v4, v5, v8}, Lcom/google/protobuf/c;->decodeVarint32([BILcom/google/protobuf/c$b;)I

    move-result v2

    .line 27
    iget v3, v8, Lcom/google/protobuf/c$b;->int1:I

    if-nez v3, :cond_2

    const-string v3, ""

    .line 28
    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    :cond_2
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_4

    add-int v5, v2, v3

    .line 29
    invoke-static {v4, v2, v5}, Lcom/google/protobuf/u0;->isValidUtf8([BII)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 30
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 31
    :cond_4
    :goto_2
    new-instance v5, Ljava/lang/String;

    sget-object v8, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v4, v2, v3, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 32
    invoke-virtual {v11, v1, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v3

    .line 33
    :goto_3
    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_6

    :pswitch_7
    if-nez v3, :cond_6

    .line 34
    invoke-static {v4, v5, v8}, Lcom/google/protobuf/c;->decodeVarint64([BILcom/google/protobuf/c$b;)I

    move-result v2

    .line 35
    iget-wide v3, v8, Lcom/google/protobuf/c$b;->long1:J

    const-wide/16 v14, 0x0

    cmp-long v3, v3, v14

    if-eqz v3, :cond_5

    const/4 v15, 0x1

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    :goto_4
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 36
    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_6

    :pswitch_8
    if-ne v3, v14, :cond_6

    .line 37
    invoke-static/range {p2 .. p3}, Lcom/google/protobuf/c;->decodeFixed32([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v5, 0x4

    .line 38
    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6

    :pswitch_9
    const/4 v2, 0x1

    if-ne v3, v2, :cond_6

    .line 39
    invoke-static/range {p2 .. p3}, Lcom/google/protobuf/c;->decodeFixed64([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v5, 0x8

    .line 40
    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6

    :pswitch_a
    if-nez v3, :cond_6

    .line 41
    invoke-static {v4, v5, v8}, Lcom/google/protobuf/c;->decodeVarint32([BILcom/google/protobuf/c$b;)I

    move-result v2

    .line 42
    iget v3, v8, Lcom/google/protobuf/c$b;->int1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 43
    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6

    :pswitch_b
    if-nez v3, :cond_6

    .line 44
    invoke-static {v4, v5, v8}, Lcom/google/protobuf/c;->decodeVarint64([BILcom/google/protobuf/c$b;)I

    move-result v2

    .line 45
    iget-wide v3, v8, Lcom/google/protobuf/c$b;->long1:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 46
    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6

    :pswitch_c
    if-ne v3, v14, :cond_6

    .line 47
    invoke-static/range {p2 .. p3}, Lcom/google/protobuf/c;->decodeFloat([BI)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v5, 0x4

    .line 48
    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6

    :pswitch_d
    const/4 v2, 0x1

    if-ne v3, v2, :cond_6

    .line 49
    invoke-static/range {p2 .. p3}, Lcom/google/protobuf/c;->decodeDouble([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v5, 0x8

    .line 50
    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6

    :cond_6
    :goto_5
    move v2, v5

    :goto_6
    return v2

    nop

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

.method private parseProto3Message(Ljava/lang/Object;[BIILcom/google/protobuf/c$b;)I
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/protobuf/c$b;",
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

    move-object/from16 v11, p5

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/z;->checkMutable(Ljava/lang/Object;)V

    sget-object v9, Lcom/google/protobuf/z;->UNSAFE:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    const/4 v8, -0x1

    move/from16 v0, p3

    move v1, v8

    move/from16 v2, v16

    move v6, v2

    const v7, 0xfffff

    :goto_0
    if-ge v0, v13, :cond_15

    add-int/lit8 v3, v0, 0x1

    .line 2
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 3
    invoke-static {v0, v12, v3, v11}, Lcom/google/protobuf/c;->decodeVarint32(I[BILcom/google/protobuf/c$b;)I

    move-result v0

    .line 4
    iget v3, v11, Lcom/google/protobuf/c$b;->int1:I

    move v4, v0

    move/from16 v17, v3

    goto :goto_1

    :cond_0
    move/from16 v17, v0

    move v4, v3

    :goto_1
    ushr-int/lit8 v5, v17, 0x3

    and-int/lit8 v3, v17, 0x7

    if-le v5, v1, :cond_1

    .line 5
    div-int/lit8 v2, v2, 0x3

    invoke-direct {v15, v5, v2}, Lcom/google/protobuf/z;->positionForFieldNumber(II)I

    move-result v0

    :goto_2
    move v2, v0

    goto :goto_3

    .line 6
    :cond_1
    invoke-direct {v15, v5}, Lcom/google/protobuf/z;->positionForFieldNumber(I)I

    move-result v0

    goto :goto_2

    :goto_3
    if-ne v2, v8, :cond_2

    move v2, v4

    move/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v28, v9

    move/from16 v27, v16

    goto/16 :goto_12

    :cond_2
    iget-object v0, v15, Lcom/google/protobuf/z;->buffer:[I

    add-int/lit8 v1, v2, 0x1

    .line 7
    aget v1, v0, v1

    .line 8
    invoke-static {v1}, Lcom/google/protobuf/z;->type(I)I

    move-result v0

    .line 9
    invoke-static {v1}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v10

    const/16 v8, 0x11

    move/from16 p3, v5

    if-gt v0, v8, :cond_c

    iget-object v8, v15, Lcom/google/protobuf/z;->buffer:[I

    add-int/lit8 v20, v2, 0x2

    .line 10
    aget v8, v8, v20

    ushr-int/lit8 v20, v8, 0x14

    const/4 v5, 0x1

    shl-int v20, v5, v20

    move-wide/from16 v22, v10

    const v10, 0xfffff

    and-int/2addr v8, v10

    if-eq v8, v7, :cond_5

    if-eq v7, v10, :cond_3

    int-to-long v10, v7

    .line 11
    invoke-virtual {v9, v14, v10, v11, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v10, 0xfffff

    :cond_3
    if-eq v8, v10, :cond_4

    int-to-long v6, v8

    .line 12
    invoke-virtual {v9, v14, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    :cond_4
    move v7, v8

    :cond_5
    const/4 v8, 0x5

    packed-switch v0, :pswitch_data_0

    :cond_6
    move/from16 v18, p3

    move-object/from16 v11, p5

    move v8, v2

    :cond_7
    move v10, v4

    move/from16 p3, v6

    goto/16 :goto_c

    :pswitch_0
    if-nez v3, :cond_6

    move-object/from16 v11, p5

    move-wide/from16 v0, v22

    .line 13
    invoke-static {v12, v4, v11}, Lcom/google/protobuf/c;->decodeVarint64([BILcom/google/protobuf/c$b;)I

    move-result v8

    .line 14
    iget-wide v3, v11, Lcom/google/protobuf/c$b;->long1:J

    .line 15
    invoke-static {v3, v4}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v4

    move-object v0, v9

    move-object/from16 v1, p1

    move/from16 v17, v8

    move v8, v2

    move-wide/from16 v2, v22

    move/from16 v18, p3

    .line 16
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v20

    move v2, v8

    move/from16 v0, v17

    :goto_4
    move/from16 v1, v18

    const/4 v8, -0x1

    goto/16 :goto_0

    :pswitch_1
    move/from16 v18, p3

    move-object/from16 v11, p5

    move v8, v2

    if-nez v3, :cond_7

    .line 17
    invoke-static {v12, v4, v11}, Lcom/google/protobuf/c;->decodeVarint32([BILcom/google/protobuf/c$b;)I

    move-result v0

    .line 18
    iget v1, v11, Lcom/google/protobuf/c$b;->int1:I

    .line 19
    invoke-static {v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v1

    move-wide/from16 v2, v22

    .line 20
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_5
    or-int v6, v6, v20

    :goto_6
    move v2, v8

    goto :goto_4

    :pswitch_2
    move/from16 v18, p3

    move-object/from16 v11, p5

    move v8, v2

    move-wide/from16 v0, v22

    if-nez v3, :cond_7

    .line 21
    invoke-static {v12, v4, v11}, Lcom/google/protobuf/c;->decodeVarint32([BILcom/google/protobuf/c$b;)I

    move-result v2

    .line 22
    iget v3, v11, Lcom/google/protobuf/c$b;->int1:I

    invoke-virtual {v9, v14, v0, v1, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_7
    or-int v6, v6, v20

    move v0, v2

    goto :goto_6

    :pswitch_3
    move/from16 v18, p3

    move-object/from16 v11, p5

    move v8, v2

    move-wide/from16 v0, v22

    const/4 v2, 0x2

    if-ne v3, v2, :cond_7

    .line 23
    invoke-static {v12, v4, v11}, Lcom/google/protobuf/c;->decodeBytes([BILcom/google/protobuf/c$b;)I

    move-result v2

    .line 24
    iget-object v3, v11, Lcom/google/protobuf/c$b;->object1:Ljava/lang/Object;

    invoke-virtual {v9, v14, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_4
    move/from16 v18, p3

    move-object/from16 v11, p5

    move v8, v2

    const/4 v2, 0x2

    if-ne v3, v2, :cond_7

    .line 25
    invoke-direct {v15, v14, v8}, Lcom/google/protobuf/z;->mutableMessageFieldForMerge(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    .line 26
    invoke-direct {v15, v8}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    move-result-object v1

    move-object v0, v5

    move-object/from16 v2, p2

    move v3, v4

    move/from16 v4, p4

    move-object v10, v5

    move-object/from16 v5, p5

    .line 27
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/c;->mergeMessageField(Ljava/lang/Object;Lcom/google/protobuf/m0;[BIILcom/google/protobuf/c$b;)I

    move-result v0

    .line 28
    invoke-direct {v15, v14, v8, v10}, Lcom/google/protobuf/z;->storeMessageField(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_5

    :pswitch_5
    move/from16 v18, p3

    move-object/from16 v11, p5

    move v8, v2

    move/from16 p3, v6

    move-wide/from16 v5, v22

    const/4 v0, 0x2

    if-ne v3, v0, :cond_9

    const/high16 v0, 0x20000000

    and-int/2addr v0, v1

    if-nez v0, :cond_8

    .line 29
    invoke-static {v12, v4, v11}, Lcom/google/protobuf/c;->decodeString([BILcom/google/protobuf/c$b;)I

    move-result v0

    goto :goto_8

    .line 30
    :cond_8
    invoke-static {v12, v4, v11}, Lcom/google/protobuf/c;->decodeStringRequireUtf8([BILcom/google/protobuf/c$b;)I

    move-result v0

    .line 31
    :goto_8
    iget-object v1, v11, Lcom/google/protobuf/c$b;->object1:Ljava/lang/Object;

    invoke-virtual {v9, v14, v5, v6, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_9
    or-int v6, p3, v20

    goto :goto_6

    :cond_9
    move v10, v4

    goto/16 :goto_c

    :pswitch_6
    move/from16 v18, p3

    move-object/from16 v11, p5

    move v8, v2

    move v0, v5

    move/from16 p3, v6

    move-wide/from16 v5, v22

    if-nez v3, :cond_9

    .line 32
    invoke-static {v12, v4, v11}, Lcom/google/protobuf/c;->decodeVarint64([BILcom/google/protobuf/c$b;)I

    move-result v1

    .line 33
    iget-wide v2, v11, Lcom/google/protobuf/c$b;->long1:J

    const-wide/16 v23, 0x0

    cmp-long v2, v2, v23

    if-eqz v2, :cond_a

    goto :goto_a

    :cond_a
    move/from16 v0, v16

    :goto_a
    invoke-static {v14, v5, v6, v0}, Lcom/google/protobuf/t0;->putBoolean(Ljava/lang/Object;JZ)V

    or-int v6, p3, v20

    move v0, v1

    goto/16 :goto_6

    :pswitch_7
    move/from16 v18, p3

    move-object/from16 v11, p5

    move/from16 p3, v6

    move v0, v8

    move-wide/from16 v5, v22

    move v8, v2

    if-ne v3, v0, :cond_9

    .line 34
    invoke-static {v12, v4}, Lcom/google/protobuf/c;->decodeFixed32([BI)I

    move-result v0

    invoke-virtual {v9, v14, v5, v6, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    goto :goto_9

    :pswitch_8
    move/from16 v18, p3

    move-object/from16 v11, p5

    move v8, v2

    move v0, v5

    move/from16 p3, v6

    move-wide/from16 v5, v22

    if-ne v3, v0, :cond_9

    .line 35
    invoke-static {v12, v4}, Lcom/google/protobuf/c;->decodeFixed64([BI)J

    move-result-wide v23

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide v2, v5

    move v10, v4

    move-wide/from16 v4, v23

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_b
    add-int/lit8 v0, v10, 0x8

    goto :goto_9

    :pswitch_9
    move/from16 v18, p3

    move-object/from16 v11, p5

    move v8, v2

    move v10, v4

    move/from16 p3, v6

    move-wide/from16 v5, v22

    if-nez v3, :cond_b

    .line 36
    invoke-static {v12, v10, v11}, Lcom/google/protobuf/c;->decodeVarint32([BILcom/google/protobuf/c$b;)I

    move-result v0

    .line 37
    iget v1, v11, Lcom/google/protobuf/c$b;->int1:I

    invoke-virtual {v9, v14, v5, v6, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_9

    :pswitch_a
    move/from16 v18, p3

    move-object/from16 v11, p5

    move v8, v2

    move v10, v4

    move/from16 p3, v6

    move-wide/from16 v5, v22

    if-nez v3, :cond_b

    .line 38
    invoke-static {v12, v10, v11}, Lcom/google/protobuf/c;->decodeVarint64([BILcom/google/protobuf/c$b;)I

    move-result v10

    .line 39
    iget-wide v2, v11, Lcom/google/protobuf/c$b;->long1:J

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide/from16 v23, v2

    move-wide v2, v5

    move-wide/from16 v4, v23

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, p3, v20

    move v2, v8

    move v0, v10

    goto/16 :goto_4

    :pswitch_b
    move/from16 v18, p3

    move-object/from16 v11, p5

    move v10, v4

    move/from16 p3, v6

    move v0, v8

    move-wide/from16 v5, v22

    move v8, v2

    if-ne v3, v0, :cond_b

    .line 40
    invoke-static {v12, v10}, Lcom/google/protobuf/c;->decodeFloat([BI)F

    move-result v0

    invoke-static {v14, v5, v6, v0}, Lcom/google/protobuf/t0;->putFloat(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v10, 0x4

    goto/16 :goto_9

    :pswitch_c
    move/from16 v18, p3

    move-object/from16 v11, p5

    move v8, v2

    move v10, v4

    move v0, v5

    move/from16 p3, v6

    move-wide/from16 v5, v22

    if-ne v3, v0, :cond_b

    .line 41
    invoke-static {v12, v10}, Lcom/google/protobuf/c;->decodeDouble([BI)D

    move-result-wide v0

    invoke-static {v14, v5, v6, v0, v1}, Lcom/google/protobuf/t0;->putDouble(Ljava/lang/Object;JD)V

    goto :goto_b

    :cond_b
    :goto_c
    move/from16 v6, p3

    move/from16 v27, v8

    move-object/from16 v28, v9

    move v2, v10

    const/16 v19, -0x1

    goto/16 :goto_12

    :cond_c
    move/from16 v18, p3

    move v8, v2

    move/from16 v20, v6

    move-wide v5, v10

    move-object/from16 v11, p5

    move v10, v4

    const/16 v2, 0x1b

    if-ne v0, v2, :cond_10

    const/4 v2, 0x2

    if-ne v3, v2, :cond_f

    .line 42
    invoke-virtual {v9, v14, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Internal$ProtobufList;

    .line 43
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_e

    .line 44
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, 0xa

    goto :goto_d

    :cond_d
    mul-int/lit8 v1, v1, 0x2

    .line 45
    :goto_d
    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 46
    invoke-virtual {v9, v14, v5, v6, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_e
    move-object v5, v0

    .line 47
    invoke-direct {v15, v8}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    move-result-object v0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move v3, v10

    move/from16 v4, p4

    move/from16 v10, v20

    move-object/from16 v6, p5

    .line 48
    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/c;->decodeMessageList(Lcom/google/protobuf/m0;I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$b;)I

    move-result v0

    move v2, v8

    move v6, v10

    goto/16 :goto_4

    :cond_f
    move/from16 v22, v7

    move/from16 v27, v8

    move-object/from16 v28, v9

    move v15, v10

    move/from16 v26, v20

    const/16 v19, -0x1

    goto/16 :goto_11

    :cond_10
    move/from16 v4, v20

    const/16 v2, 0x31

    if-gt v0, v2, :cond_12

    int-to-long v1, v1

    move/from16 p3, v0

    move-object/from16 v0, p0

    move-wide/from16 v20, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v23, v3

    move v3, v10

    move v15, v4

    move/from16 v4, p4

    move-wide/from16 v24, v5

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v26, v15

    move v15, v7

    move/from16 v7, v23

    move/from16 v27, v8

    const/16 v19, -0x1

    move-object/from16 v28, v9

    move/from16 v22, v15

    move v15, v10

    move-wide/from16 v9, v20

    move/from16 v11, p3

    move-wide/from16 v12, v24

    move-object/from16 v14, p5

    .line 49
    invoke-direct/range {v0 .. v14}, Lcom/google/protobuf/z;->parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLcom/google/protobuf/c$b;)I

    move-result v0

    if-eq v0, v15, :cond_11

    :goto_e
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v18

    move/from16 v8, v19

    move/from16 v7, v22

    move/from16 v6, v26

    :goto_f
    move/from16 v2, v27

    move-object/from16 v9, v28

    goto/16 :goto_0

    :cond_11
    move v2, v0

    :goto_10
    move/from16 v7, v22

    move/from16 v6, v26

    goto/16 :goto_12

    :cond_12
    move/from16 p3, v0

    move/from16 v23, v3

    move/from16 v26, v4

    move-wide/from16 v24, v5

    move/from16 v22, v7

    move/from16 v27, v8

    move-object/from16 v28, v9

    move v15, v10

    const/16 v19, -0x1

    const/16 v0, 0x32

    move/from16 v9, p3

    if-ne v9, v0, :cond_14

    move/from16 v7, v23

    const/4 v0, 0x2

    if-ne v7, v0, :cond_13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v27

    move-wide/from16 v6, v24

    move-object/from16 v8, p5

    .line 50
    invoke-direct/range {v0 .. v8}, Lcom/google/protobuf/z;->parseMapField(Ljava/lang/Object;[BIIIJLcom/google/protobuf/c$b;)I

    move-result v0

    if-eq v0, v15, :cond_11

    goto :goto_e

    :cond_13
    :goto_11
    move v2, v15

    goto :goto_10

    :cond_14
    move/from16 v7, v23

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 v6, v18

    move-wide/from16 v10, v24

    move/from16 v12, v27

    move-object/from16 v13, p5

    .line 51
    invoke-direct/range {v0 .. v13}, Lcom/google/protobuf/z;->parseOneofField(Ljava/lang/Object;[BIIIIIIIJILcom/google/protobuf/c$b;)I

    move-result v0

    if-eq v0, v15, :cond_11

    goto :goto_e

    .line 52
    :goto_12
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/z;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v4

    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    .line 53
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/c;->decodeUnknownField(I[BIILcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/c$b;)I

    move-result v0

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v18

    move/from16 v8, v19

    goto :goto_f

    :cond_15
    move/from16 v26, v6

    move-object/from16 v28, v9

    const v1, 0xfffff

    if-eq v7, v1, :cond_16

    int-to-long v1, v7

    move-object/from16 v3, p1

    move/from16 v6, v26

    move-object/from16 v4, v28

    .line 54
    invoke-virtual {v4, v3, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_16
    move/from16 v1, p4

    if-ne v0, v1, :cond_17

    return v0

    .line 55
    :cond_17
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

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

.method private parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLcom/google/protobuf/c$b;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/google/protobuf/c$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v2, p7

    move/from16 v8, p8

    move-wide/from16 v5, p12

    move-object/from16 v7, p14

    sget-object v9, Lcom/google/protobuf/z;->UNSAFE:Lsun/misc/Unsafe;

    .line 1
    invoke-virtual {v9, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    invoke-interface {v10}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v11

    const/4 v12, 0x2

    if-nez v11, :cond_1

    .line 3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_0

    const/16 v11, 0xa

    goto :goto_0

    :cond_0
    mul-int/2addr v11, v12

    .line 4
    :goto_0
    invoke-interface {v10, v11}, Lcom/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v10

    .line 5
    invoke-virtual {v9, p1, v5, v6, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v5, 0x1

    const/4 v6, 0x5

    packed-switch p11, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const/4 v1, 0x3

    if-ne v2, v1, :cond_d

    .line 6
    invoke-direct {p0, v8}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v10

    move-object/from16 p12, p14

    .line 7
    invoke-static/range {p6 .. p12}, Lcom/google/protobuf/c;->decodeGroupList(Lcom/google/protobuf/m0;I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$b;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_1
    if-ne v2, v12, :cond_2

    .line 8
    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/c;->decodePackedSInt64List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$b;)I

    move-result v1

    goto/16 :goto_3

    :cond_2
    if-nez v2, :cond_d

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 9
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/c;->decodeSInt64List(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$b;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_2
    if-ne v2, v12, :cond_3

    .line 10
    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/c;->decodePackedSInt32List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$b;)I

    move-result v1

    goto/16 :goto_3

    :cond_3
    if-nez v2, :cond_d

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 11
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/c;->decodeSInt32List(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$b;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_3
    if-ne v2, v12, :cond_4

    .line 12
    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/c;->decodePackedVarint32List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$b;)I

    move-result v2

    goto :goto_1

    :cond_4
    if-nez v2, :cond_d

    move/from16 v2, p5

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v10

    move-object/from16 v7, p14

    .line 13
    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/c;->decodeVarint32List(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$b;)I

    move-result v2

    .line 14
    :goto_1
    invoke-direct {p0, v8}, Lcom/google/protobuf/z;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/google/protobuf/z;->unknownFieldSchema:Lcom/google/protobuf/r0;

    move-object/from16 p7, p1

    move/from16 p8, p6

    move-object/from16 p9, v10

    move-object/from16 p10, v3

    move-object/from16 p11, v4

    move-object/from16 p12, v5

    .line 15
    invoke-static/range {p7 .. p12}, Lcom/google/protobuf/o0;->filterUnknownEnumList(Ljava/lang/Object;ILjava/util/List;Lcom/google/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/google/protobuf/r0;)Ljava/lang/Object;

    move v1, v2

    goto/16 :goto_3

    :pswitch_4
    if-ne v2, v12, :cond_d

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 16
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/c;->decodeBytesList(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$b;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_5
    if-ne v2, v12, :cond_d

    .line 17
    invoke-direct {p0, v8}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v10

    move-object/from16 p12, p14

    .line 18
    invoke-static/range {p6 .. p12}, Lcom/google/protobuf/c;->decodeMessageList(Lcom/google/protobuf/m0;I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$b;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_6
    if-ne v2, v12, :cond_d

    const-wide/32 v1, 0x20000000

    and-long v1, p9, v1

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-nez v1, :cond_5

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 19
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/c;->decodeStringList(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$b;)I

    move-result v1

    goto/16 :goto_3

    :cond_5
    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 20
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/c;->decodeStringListRequireUtf8(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$b;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_7
    if-ne v2, v12, :cond_6

    .line 21
    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/c;->decodePackedBoolList([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$b;)I

    move-result v1

    goto/16 :goto_3

    :cond_6
    if-nez v2, :cond_d

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 22
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/c;->decodeBoolList(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$b;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_8
    if-ne v2, v12, :cond_7

    .line 23
    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/c;->decodePackedFixed32List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$b;)I

    move-result v1

    goto/16 :goto_3

    :cond_7
    if-ne v2, v6, :cond_d

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 24
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/c;->decodeFixed32List(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$b;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_9
    if-ne v2, v12, :cond_8

    .line 25
    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/c;->decodePackedFixed64List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$b;)I

    move-result v1

    goto/16 :goto_3

    :cond_8
    if-ne v2, v5, :cond_d

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 26
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/c;->decodeFixed64List(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$b;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_a
    if-ne v2, v12, :cond_9

    .line 27
    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/c;->decodePackedVarint32List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$b;)I

    move-result v1

    goto/16 :goto_3

    :cond_9
    if-nez v2, :cond_d

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 28
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/c;->decodeVarint32List(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$b;)I

    move-result v1

    goto :goto_3

    :pswitch_b
    if-ne v2, v12, :cond_a

    .line 29
    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/c;->decodePackedVarint64List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$b;)I

    move-result v1

    goto :goto_3

    :cond_a
    if-nez v2, :cond_d

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 30
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/c;->decodeVarint64List(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$b;)I

    move-result v1

    goto :goto_3

    :pswitch_c
    if-ne v2, v12, :cond_b

    .line 31
    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/c;->decodePackedFloatList([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$b;)I

    move-result v1

    goto :goto_3

    :cond_b
    if-ne v2, v6, :cond_d

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 32
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/c;->decodeFloatList(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$b;)I

    move-result v1

    goto :goto_3

    :pswitch_d
    if-ne v2, v12, :cond_c

    .line 33
    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/c;->decodePackedDoubleList([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$b;)I

    move-result v1

    goto :goto_3

    :cond_c
    if-ne v2, v5, :cond_d

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 34
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/c;->decodeDoubleList(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$b;)I

    move-result v1

    goto :goto_3

    :cond_d
    :goto_2
    move v1, v4

    :goto_3
    return v1

    nop

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

.method private positionForFieldNumber(I)I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/z;->minFieldNumber:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/protobuf/z;->maxFieldNumber:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/z;->slowPositionForFieldNumber(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private positionForFieldNumber(II)I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/z;->minFieldNumber:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/protobuf/z;->maxFieldNumber:I

    if-gt p1, v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/z;->slowPositionForFieldNumber(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private presenceMaskAndOffsetAt(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/protobuf/z;->buffer:[I

    .line 3
    .line 4
    add-int/lit8 p1, p1, 0x2

    .line 5
    .line 6
    aget p1, v0, p1

    .line 7
    return p1
.end method

.method private readGroupList(Ljava/lang/Object;JLcom/google/protobuf/k0;Lcom/google/protobuf/m0;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J",
            "Lcom/google/protobuf/k0;",
            "Lcom/google/protobuf/m0<",
            "TE;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
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
    iget-object v0, p0, Lcom/google/protobuf/z;->listFieldSchema:Lcom/google/protobuf/q;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/q;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-interface {p4, p1, p5, p6}, Lcom/google/protobuf/k0;->readGroupList(Ljava/util/List;Lcom/google/protobuf/m0;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 10
    return-void
.end method

.method private readMessageList(Ljava/lang/Object;ILcom/google/protobuf/k0;Lcom/google/protobuf/m0;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Lcom/google/protobuf/k0;",
            "Lcom/google/protobuf/m0<",
            "TE;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
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
    invoke-static {p2}, Lcom/google/protobuf/z;->offset(I)J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-object p2, p0, Lcom/google/protobuf/z;->listFieldSchema:Lcom/google/protobuf/q;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1, v0, v1}, Lcom/google/protobuf/q;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-interface {p3, p1, p4, p5}, Lcom/google/protobuf/k0;->readMessageList(Ljava/util/List;Lcom/google/protobuf/m0;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 14
    return-void
.end method

.method private readString(Ljava/lang/Object;ILcom/google/protobuf/k0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Lcom/google/protobuf/z;->isEnforceUtf8(I)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Lcom/google/protobuf/z;->offset(I)J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    .line 13
    invoke-interface {p3}, Lcom/google/protobuf/k0;->readStringRequireUtf8()Ljava/lang/String;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0, v1, p2}, Lcom/google/protobuf/t0;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    iget-boolean v0, p0, Lcom/google/protobuf/z;->lite:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-static {p2}, Lcom/google/protobuf/z;->offset(I)J

    .line 26
    move-result-wide v0

    .line 27
    .line 28
    .line 29
    invoke-interface {p3}, Lcom/google/protobuf/k0;->readString()Ljava/lang/String;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v0, v1, p2}, Lcom/google/protobuf/t0;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-static {p2}, Lcom/google/protobuf/z;->offset(I)J

    .line 38
    move-result-wide v0

    .line 39
    .line 40
    .line 41
    invoke-interface {p3}, Lcom/google/protobuf/k0;->readBytes()Lcom/google/protobuf/ByteString;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    .line 45
    invoke-static {p1, v0, v1, p2}, Lcom/google/protobuf/t0;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 46
    :goto_0
    return-void
.end method

.method private readStringList(Ljava/lang/Object;ILcom/google/protobuf/k0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Lcom/google/protobuf/z;->isEnforceUtf8(I)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/protobuf/z;->listFieldSchema:Lcom/google/protobuf/q;

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Lcom/google/protobuf/z;->offset(I)J

    .line 12
    move-result-wide v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/protobuf/q;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-interface {p3, p1}, Lcom/google/protobuf/k0;->readStringListRequireUtf8(Ljava/util/List;)V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/z;->listFieldSchema:Lcom/google/protobuf/q;

    .line 23
    .line 24
    .line 25
    invoke-static {p2}, Lcom/google/protobuf/z;->offset(I)J

    .line 26
    move-result-wide v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/protobuf/q;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-interface {p3, p1}, Lcom/google/protobuf/k0;->readStringList(Ljava/util/List;)V

    .line 34
    :goto_0
    return-void
.end method

.method private static reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
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

.method private setFieldPresent(Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/protobuf/z;->presenceMaskAndOffsetAt(I)I

    .line 4
    move-result p2

    .line 5
    .line 6
    .line 7
    const v0, 0xfffff

    .line 8
    and-int/2addr v0, p2

    .line 9
    int-to-long v0, v0

    .line 10
    .line 11
    .line 12
    const-wide/32 v2, 0xfffff

    .line 13
    .line 14
    cmp-long v2, v0, v2

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    return-void

    .line 18
    .line 19
    :cond_0
    ushr-int/lit8 p2, p2, 0x14

    .line 20
    const/4 v2, 0x1

    .line 21
    .line 22
    shl-int p2, v2, p2

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

    .line 26
    move-result v2

    .line 27
    or-int/2addr p2, v2

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v0, v1, p2}, Lcom/google/protobuf/t0;->putInt(Ljava/lang/Object;JI)V

    .line 31
    return-void
.end method

.method private setOneofPresent(Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p3}, Lcom/google/protobuf/z;->presenceMaskAndOffsetAt(I)I

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
    invoke-static {p1, v0, v1, p2}, Lcom/google/protobuf/t0;->putInt(Ljava/lang/Object;JI)V

    .line 13
    return-void
.end method

.method private slowPositionForFieldNumber(II)I
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/protobuf/z;->buffer:[I

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
    invoke-direct {p0, v2}, Lcom/google/protobuf/z;->numberAt(I)I

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

.method private static storeFieldData(Lcom/google/protobuf/FieldInfo;[II[Ljava/lang/Object;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getOneof()Lcom/google/protobuf/f0;

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
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getType()Lcom/google/protobuf/FieldType;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/google/protobuf/FieldType;->id()I

    .line 15
    move-result v2

    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x33

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/protobuf/f0;->getValueField()Ljava/lang/reflect/Field;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    .line 24
    invoke-static {v3}, Lcom/google/protobuf/t0;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 25
    move-result-wide v3

    .line 26
    long-to-int v3, v3

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/google/protobuf/f0;->getCaseField()Ljava/lang/reflect/Field;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lcom/google/protobuf/t0;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 34
    move-result-wide v4

    .line 35
    :goto_0
    long-to-int v0, v4

    .line 36
    move v4, v1

    .line 37
    goto :goto_2

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getType()Lcom/google/protobuf/FieldType;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getField()Ljava/lang/reflect/Field;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    .line 48
    invoke-static {v2}, Lcom/google/protobuf/t0;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 49
    move-result-wide v2

    .line 50
    long-to-int v3, v2

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/google/protobuf/FieldType;->id()I

    .line 54
    move-result v2

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/google/protobuf/FieldType;->isList()Z

    .line 58
    move-result v4

    .line 59
    .line 60
    if-nez v4, :cond_2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/google/protobuf/FieldType;->isMap()Z

    .line 64
    move-result v0

    .line 65
    .line 66
    if-nez v0, :cond_2

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getPresenceField()Ljava/lang/reflect/Field;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    if-nez v0, :cond_1

    .line 73
    .line 74
    .line 75
    const v0, 0xfffff

    .line 76
    goto :goto_1

    .line 77
    .line 78
    .line 79
    :cond_1
    invoke-static {v0}, Lcom/google/protobuf/t0;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 80
    move-result-wide v4

    .line 81
    long-to-int v0, v4

    .line 82
    .line 83
    .line 84
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getPresenceMask()I

    .line 85
    move-result v4

    .line 86
    .line 87
    .line 88
    invoke-static {v4}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    .line 89
    move-result v4

    .line 90
    goto :goto_2

    .line 91
    .line 92
    .line 93
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getCachedSizeField()Ljava/lang/reflect/Field;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    if-nez v0, :cond_3

    .line 97
    move v0, v1

    .line 98
    move v4, v0

    .line 99
    goto :goto_2

    .line 100
    .line 101
    .line 102
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getCachedSizeField()Ljava/lang/reflect/Field;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    .line 106
    invoke-static {v0}, Lcom/google/protobuf/t0;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 107
    move-result-wide v4

    .line 108
    goto :goto_0

    .line 109
    .line 110
    .line 111
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    .line 112
    move-result v5

    .line 113
    .line 114
    aput v5, p1, p2

    .line 115
    .line 116
    add-int/lit8 v5, p2, 0x1

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->isEnforceUtf8()Z

    .line 120
    move-result v6

    .line 121
    .line 122
    if-eqz v6, :cond_4

    .line 123
    .line 124
    const/high16 v6, 0x20000000

    .line 125
    goto :goto_3

    .line 126
    :cond_4
    move v6, v1

    .line 127
    .line 128
    .line 129
    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->isRequired()Z

    .line 130
    move-result v7

    .line 131
    .line 132
    if-eqz v7, :cond_5

    .line 133
    .line 134
    const/high16 v1, 0x10000000

    .line 135
    :cond_5
    or-int/2addr v1, v6

    .line 136
    .line 137
    shl-int/lit8 v2, v2, 0x14

    .line 138
    or-int/2addr v1, v2

    .line 139
    or-int/2addr v1, v3

    .line 140
    .line 141
    aput v1, p1, v5

    .line 142
    .line 143
    add-int/lit8 v1, p2, 0x2

    .line 144
    .line 145
    shl-int/lit8 v2, v4, 0x14

    .line 146
    or-int/2addr v0, v2

    .line 147
    .line 148
    aput v0, p1, v1

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getMessageFieldClass()Ljava/lang/Class;

    .line 152
    move-result-object p1

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getMapDefaultEntry()Ljava/lang/Object;

    .line 156
    move-result-object v0

    .line 157
    .line 158
    if-eqz v0, :cond_7

    .line 159
    .line 160
    div-int/lit8 p2, p2, 0x3

    .line 161
    .line 162
    mul-int/lit8 p2, p2, 0x2

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getMapDefaultEntry()Ljava/lang/Object;

    .line 166
    move-result-object v0

    .line 167
    .line 168
    aput-object v0, p3, p2

    .line 169
    .line 170
    if-eqz p1, :cond_6

    .line 171
    .line 172
    add-int/lit8 p2, p2, 0x1

    .line 173
    .line 174
    aput-object p1, p3, p2

    .line 175
    goto :goto_4

    .line 176
    .line 177
    .line 178
    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getEnumVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    .line 179
    move-result-object p1

    .line 180
    .line 181
    if-eqz p1, :cond_9

    .line 182
    .line 183
    add-int/lit8 p2, p2, 0x1

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getEnumVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    .line 187
    move-result-object p0

    .line 188
    .line 189
    aput-object p0, p3, p2

    .line 190
    goto :goto_4

    .line 191
    .line 192
    :cond_7
    if-eqz p1, :cond_8

    .line 193
    .line 194
    div-int/lit8 p2, p2, 0x3

    .line 195
    .line 196
    mul-int/lit8 p2, p2, 0x2

    .line 197
    .line 198
    add-int/lit8 p2, p2, 0x1

    .line 199
    .line 200
    aput-object p1, p3, p2

    .line 201
    goto :goto_4

    .line 202
    .line 203
    .line 204
    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getEnumVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    .line 205
    move-result-object p1

    .line 206
    .line 207
    if-eqz p1, :cond_9

    .line 208
    .line 209
    div-int/lit8 p2, p2, 0x3

    .line 210
    .line 211
    mul-int/lit8 p2, p2, 0x2

    .line 212
    .line 213
    add-int/lit8 p2, p2, 0x1

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getEnumVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    .line 217
    move-result-object p0

    .line 218
    .line 219
    aput-object p0, p3, p2

    .line 220
    :cond_9
    :goto_4
    return-void
.end method

.method private storeMessageField(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/google/protobuf/z;->UNSAFE:Lsun/misc/Unsafe;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/google/protobuf/z;->typeAndOffsetAt(I)I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lcom/google/protobuf/z;->offset(I)J

    .line 10
    move-result-wide v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/z;->setFieldPresent(Ljava/lang/Object;I)V

    .line 17
    return-void
.end method

.method private storeOneofMessageField(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/google/protobuf/z;->UNSAFE:Lsun/misc/Unsafe;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p3}, Lcom/google/protobuf/z;->typeAndOffsetAt(I)I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lcom/google/protobuf/z;->offset(I)J

    .line 10
    move-result-wide v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/z;->setOneofPresent(Ljava/lang/Object;II)V

    .line 17
    return-void
.end method

.method private static type(I)I
    .locals 1

    const/high16 v0, 0xff00000

    and-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x14

    return p0
.end method

.method private typeAndOffsetAt(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/protobuf/z;->buffer:[I

    .line 3
    .line 4
    add-int/lit8 p1, p1, 0x1

    .line 5
    .line 6
    aget p1, v0, p1

    .line 7
    return p1
.end method

.method private writeFieldsInAscendingOrderProto2(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/Writer;",
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
    iget-boolean v3, v0, Lcom/google/protobuf/z;->hasExtensions:Z

    .line 9
    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    iget-object v3, v0, Lcom/google/protobuf/z;->extensionSchema:Lcom/google/protobuf/j;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, v1}, Lcom/google/protobuf/j;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/google/protobuf/FieldSet;->isEmpty()Z

    .line 20
    move-result v5

    .line 21
    .line 22
    if-nez v5, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/google/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

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
    iget-object v6, v0, Lcom/google/protobuf/z;->buffer:[I

    .line 38
    array-length v6, v6

    .line 39
    .line 40
    sget-object v7, Lcom/google/protobuf/z;->UNSAFE:Lsun/misc/Unsafe;

    .line 41
    .line 42
    .line 43
    const v8, 0xfffff

    .line 44
    move v11, v8

    .line 45
    const/4 v10, 0x0

    .line 46
    const/4 v12, 0x0

    .line 47
    .line 48
    :goto_1
    if-ge v10, v6, :cond_7

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->typeAndOffsetAt(I)I

    .line 52
    move-result v13

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 56
    move-result v14

    .line 57
    .line 58
    .line 59
    invoke-static {v13}, Lcom/google/protobuf/z;->type(I)I

    .line 60
    move-result v15

    .line 61
    .line 62
    const/16 v4, 0x11

    .line 63
    .line 64
    if-gt v15, v4, :cond_2

    .line 65
    .line 66
    iget-object v4, v0, Lcom/google/protobuf/z;->buffer:[I

    .line 67
    .line 68
    add-int/lit8 v16, v10, 0x2

    .line 69
    .line 70
    aget v4, v4, v16

    .line 71
    .line 72
    and-int v9, v4, v8

    .line 73
    .line 74
    if-eq v9, v11, :cond_1

    .line 75
    int-to-long v11, v9

    .line 76
    .line 77
    .line 78
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 79
    move-result v12

    .line 80
    move v11, v9

    .line 81
    .line 82
    :cond_1
    ushr-int/lit8 v4, v4, 0x14

    .line 83
    const/4 v9, 0x1

    .line 84
    .line 85
    shl-int v4, v9, v4

    .line 86
    goto :goto_2

    .line 87
    :cond_2
    const/4 v4, 0x0

    .line 88
    .line 89
    :goto_2
    if-eqz v5, :cond_4

    .line 90
    .line 91
    iget-object v9, v0, Lcom/google/protobuf/z;->extensionSchema:Lcom/google/protobuf/j;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v9, v5}, Lcom/google/protobuf/j;->extensionNumber(Ljava/util/Map$Entry;)I

    .line 95
    move-result v9

    .line 96
    .line 97
    if-gt v9, v14, :cond_4

    .line 98
    .line 99
    iget-object v9, v0, Lcom/google/protobuf/z;->extensionSchema:Lcom/google/protobuf/j;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v9, v2, v5}, Lcom/google/protobuf/j;->serializeExtension(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 103
    .line 104
    .line 105
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    move-result v5

    .line 107
    .line 108
    if-eqz v5, :cond_3

    .line 109
    .line 110
    .line 111
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    move-result-object v5

    .line 113
    .line 114
    check-cast v5, Ljava/util/Map$Entry;

    .line 115
    goto :goto_2

    .line 116
    :cond_3
    const/4 v5, 0x0

    .line 117
    goto :goto_2

    .line 118
    .line 119
    .line 120
    :cond_4
    invoke-static {v13}, Lcom/google/protobuf/z;->offset(I)J

    .line 121
    move-result-wide v8

    .line 122
    .line 123
    .line 124
    packed-switch v15, :pswitch_data_0

    .line 125
    :cond_5
    :goto_3
    const/4 v13, 0x0

    .line 126
    .line 127
    goto/16 :goto_4

    .line 128
    .line 129
    .line 130
    :pswitch_0
    invoke-direct {v0, v1, v14, v10}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 131
    move-result v4

    .line 132
    .line 133
    if-eqz v4, :cond_5

    .line 134
    .line 135
    .line 136
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 137
    move-result-object v4

    .line 138
    .line 139
    .line 140
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    .line 141
    move-result-object v8

    .line 142
    .line 143
    .line 144
    invoke-interface {v2, v14, v4, v8}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/google/protobuf/m0;)V

    .line 145
    goto :goto_3

    .line 146
    .line 147
    .line 148
    :pswitch_1
    invoke-direct {v0, v1, v14, v10}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 149
    move-result v4

    .line 150
    .line 151
    if-eqz v4, :cond_5

    .line 152
    .line 153
    .line 154
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/z;->oneofLongAt(Ljava/lang/Object;J)J

    .line 155
    move-result-wide v8

    .line 156
    .line 157
    .line 158
    invoke-interface {v2, v14, v8, v9}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    .line 159
    goto :goto_3

    .line 160
    .line 161
    .line 162
    :pswitch_2
    invoke-direct {v0, v1, v14, v10}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 163
    move-result v4

    .line 164
    .line 165
    if-eqz v4, :cond_5

    .line 166
    .line 167
    .line 168
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/z;->oneofIntAt(Ljava/lang/Object;J)I

    .line 169
    move-result v4

    .line 170
    .line 171
    .line 172
    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    .line 173
    goto :goto_3

    .line 174
    .line 175
    .line 176
    :pswitch_3
    invoke-direct {v0, v1, v14, v10}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 177
    move-result v4

    .line 178
    .line 179
    if-eqz v4, :cond_5

    .line 180
    .line 181
    .line 182
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/z;->oneofLongAt(Ljava/lang/Object;J)J

    .line 183
    move-result-wide v8

    .line 184
    .line 185
    .line 186
    invoke-interface {v2, v14, v8, v9}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    .line 187
    goto :goto_3

    .line 188
    .line 189
    .line 190
    :pswitch_4
    invoke-direct {v0, v1, v14, v10}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 191
    move-result v4

    .line 192
    .line 193
    if-eqz v4, :cond_5

    .line 194
    .line 195
    .line 196
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/z;->oneofIntAt(Ljava/lang/Object;J)I

    .line 197
    move-result v4

    .line 198
    .line 199
    .line 200
    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    .line 201
    goto :goto_3

    .line 202
    .line 203
    .line 204
    :pswitch_5
    invoke-direct {v0, v1, v14, v10}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 205
    move-result v4

    .line 206
    .line 207
    if-eqz v4, :cond_5

    .line 208
    .line 209
    .line 210
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/z;->oneofIntAt(Ljava/lang/Object;J)I

    .line 211
    move-result v4

    .line 212
    .line 213
    .line 214
    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    .line 215
    goto :goto_3

    .line 216
    .line 217
    .line 218
    :pswitch_6
    invoke-direct {v0, v1, v14, v10}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 219
    move-result v4

    .line 220
    .line 221
    if-eqz v4, :cond_5

    .line 222
    .line 223
    .line 224
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/z;->oneofIntAt(Ljava/lang/Object;J)I

    .line 225
    move-result v4

    .line 226
    .line 227
    .line 228
    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    .line 229
    goto :goto_3

    .line 230
    .line 231
    .line 232
    :pswitch_7
    invoke-direct {v0, v1, v14, v10}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 233
    move-result v4

    .line 234
    .line 235
    if-eqz v4, :cond_5

    .line 236
    .line 237
    .line 238
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 239
    move-result-object v4

    .line 240
    .line 241
    check-cast v4, Lcom/google/protobuf/ByteString;

    .line 242
    .line 243
    .line 244
    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 245
    goto :goto_3

    .line 246
    .line 247
    .line 248
    :pswitch_8
    invoke-direct {v0, v1, v14, v10}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 249
    move-result v4

    .line 250
    .line 251
    if-eqz v4, :cond_5

    .line 252
    .line 253
    .line 254
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 255
    move-result-object v4

    .line 256
    .line 257
    .line 258
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    .line 259
    move-result-object v8

    .line 260
    .line 261
    .line 262
    invoke-interface {v2, v14, v4, v8}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/m0;)V

    .line 263
    .line 264
    goto/16 :goto_3

    .line 265
    .line 266
    .line 267
    :pswitch_9
    invoke-direct {v0, v1, v14, v10}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 268
    move-result v4

    .line 269
    .line 270
    if-eqz v4, :cond_5

    .line 271
    .line 272
    .line 273
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 274
    move-result-object v4

    .line 275
    .line 276
    .line 277
    invoke-direct {v0, v14, v4, v2}, Lcom/google/protobuf/z;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 278
    .line 279
    goto/16 :goto_3

    .line 280
    .line 281
    .line 282
    :pswitch_a
    invoke-direct {v0, v1, v14, v10}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 283
    move-result v4

    .line 284
    .line 285
    if-eqz v4, :cond_5

    .line 286
    .line 287
    .line 288
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/z;->oneofBooleanAt(Ljava/lang/Object;J)Z

    .line 289
    move-result v4

    .line 290
    .line 291
    .line 292
    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    .line 293
    .line 294
    goto/16 :goto_3

    .line 295
    .line 296
    .line 297
    :pswitch_b
    invoke-direct {v0, v1, v14, v10}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 298
    move-result v4

    .line 299
    .line 300
    if-eqz v4, :cond_5

    .line 301
    .line 302
    .line 303
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/z;->oneofIntAt(Ljava/lang/Object;J)I

    .line 304
    move-result v4

    .line 305
    .line 306
    .line 307
    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    .line 308
    .line 309
    goto/16 :goto_3

    .line 310
    .line 311
    .line 312
    :pswitch_c
    invoke-direct {v0, v1, v14, v10}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 313
    move-result v4

    .line 314
    .line 315
    if-eqz v4, :cond_5

    .line 316
    .line 317
    .line 318
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/z;->oneofLongAt(Ljava/lang/Object;J)J

    .line 319
    move-result-wide v8

    .line 320
    .line 321
    .line 322
    invoke-interface {v2, v14, v8, v9}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    .line 323
    .line 324
    goto/16 :goto_3

    .line 325
    .line 326
    .line 327
    :pswitch_d
    invoke-direct {v0, v1, v14, v10}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 328
    move-result v4

    .line 329
    .line 330
    if-eqz v4, :cond_5

    .line 331
    .line 332
    .line 333
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/z;->oneofIntAt(Ljava/lang/Object;J)I

    .line 334
    move-result v4

    .line 335
    .line 336
    .line 337
    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    .line 338
    .line 339
    goto/16 :goto_3

    .line 340
    .line 341
    .line 342
    :pswitch_e
    invoke-direct {v0, v1, v14, v10}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 343
    move-result v4

    .line 344
    .line 345
    if-eqz v4, :cond_5

    .line 346
    .line 347
    .line 348
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/z;->oneofLongAt(Ljava/lang/Object;J)J

    .line 349
    move-result-wide v8

    .line 350
    .line 351
    .line 352
    invoke-interface {v2, v14, v8, v9}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    .line 353
    .line 354
    goto/16 :goto_3

    .line 355
    .line 356
    .line 357
    :pswitch_f
    invoke-direct {v0, v1, v14, v10}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 358
    move-result v4

    .line 359
    .line 360
    if-eqz v4, :cond_5

    .line 361
    .line 362
    .line 363
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/z;->oneofLongAt(Ljava/lang/Object;J)J

    .line 364
    move-result-wide v8

    .line 365
    .line 366
    .line 367
    invoke-interface {v2, v14, v8, v9}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    .line 368
    .line 369
    goto/16 :goto_3

    .line 370
    .line 371
    .line 372
    :pswitch_10
    invoke-direct {v0, v1, v14, v10}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 373
    move-result v4

    .line 374
    .line 375
    if-eqz v4, :cond_5

    .line 376
    .line 377
    .line 378
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/z;->oneofFloatAt(Ljava/lang/Object;J)F

    .line 379
    move-result v4

    .line 380
    .line 381
    .line 382
    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    .line 383
    .line 384
    goto/16 :goto_3

    .line 385
    .line 386
    .line 387
    :pswitch_11
    invoke-direct {v0, v1, v14, v10}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 388
    move-result v4

    .line 389
    .line 390
    if-eqz v4, :cond_5

    .line 391
    .line 392
    .line 393
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/z;->oneofDoubleAt(Ljava/lang/Object;J)D

    .line 394
    move-result-wide v8

    .line 395
    .line 396
    .line 397
    invoke-interface {v2, v14, v8, v9}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    .line 398
    .line 399
    goto/16 :goto_3

    .line 400
    .line 401
    .line 402
    :pswitch_12
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 403
    move-result-object v4

    .line 404
    .line 405
    .line 406
    invoke-direct {v0, v2, v14, v4, v10}, Lcom/google/protobuf/z;->writeMapHelper(Lcom/google/protobuf/Writer;ILjava/lang/Object;I)V

    .line 407
    .line 408
    goto/16 :goto_3

    .line 409
    .line 410
    .line 411
    :pswitch_13
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 412
    move-result v4

    .line 413
    .line 414
    .line 415
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 416
    move-result-object v8

    .line 417
    .line 418
    check-cast v8, Ljava/util/List;

    .line 419
    .line 420
    .line 421
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    .line 422
    move-result-object v9

    .line 423
    .line 424
    .line 425
    invoke-static {v4, v8, v2, v9}, Lcom/google/protobuf/o0;->writeGroupList(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/m0;)V

    .line 426
    .line 427
    goto/16 :goto_3

    .line 428
    .line 429
    .line 430
    :pswitch_14
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 431
    move-result v4

    .line 432
    .line 433
    .line 434
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 435
    move-result-object v8

    .line 436
    .line 437
    check-cast v8, Ljava/util/List;

    .line 438
    const/4 v13, 0x1

    .line 439
    .line 440
    .line 441
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/o0;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 442
    .line 443
    goto/16 :goto_3

    .line 444
    :pswitch_15
    const/4 v13, 0x1

    .line 445
    .line 446
    .line 447
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 448
    move-result v4

    .line 449
    .line 450
    .line 451
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 452
    move-result-object v8

    .line 453
    .line 454
    check-cast v8, Ljava/util/List;

    .line 455
    .line 456
    .line 457
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/o0;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 458
    .line 459
    goto/16 :goto_3

    .line 460
    :pswitch_16
    const/4 v13, 0x1

    .line 461
    .line 462
    .line 463
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 464
    move-result v4

    .line 465
    .line 466
    .line 467
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 468
    move-result-object v8

    .line 469
    .line 470
    check-cast v8, Ljava/util/List;

    .line 471
    .line 472
    .line 473
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/o0;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 474
    .line 475
    goto/16 :goto_3

    .line 476
    :pswitch_17
    const/4 v13, 0x1

    .line 477
    .line 478
    .line 479
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 480
    move-result v4

    .line 481
    .line 482
    .line 483
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 484
    move-result-object v8

    .line 485
    .line 486
    check-cast v8, Ljava/util/List;

    .line 487
    .line 488
    .line 489
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/o0;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 490
    .line 491
    goto/16 :goto_3

    .line 492
    :pswitch_18
    const/4 v13, 0x1

    .line 493
    .line 494
    .line 495
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 496
    move-result v4

    .line 497
    .line 498
    .line 499
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 500
    move-result-object v8

    .line 501
    .line 502
    check-cast v8, Ljava/util/List;

    .line 503
    .line 504
    .line 505
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/o0;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 506
    .line 507
    goto/16 :goto_3

    .line 508
    :pswitch_19
    const/4 v13, 0x1

    .line 509
    .line 510
    .line 511
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 512
    move-result v4

    .line 513
    .line 514
    .line 515
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 516
    move-result-object v8

    .line 517
    .line 518
    check-cast v8, Ljava/util/List;

    .line 519
    .line 520
    .line 521
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/o0;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 522
    .line 523
    goto/16 :goto_3

    .line 524
    :pswitch_1a
    const/4 v13, 0x1

    .line 525
    .line 526
    .line 527
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 528
    move-result v4

    .line 529
    .line 530
    .line 531
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 532
    move-result-object v8

    .line 533
    .line 534
    check-cast v8, Ljava/util/List;

    .line 535
    .line 536
    .line 537
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/o0;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 538
    .line 539
    goto/16 :goto_3

    .line 540
    :pswitch_1b
    const/4 v13, 0x1

    .line 541
    .line 542
    .line 543
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 544
    move-result v4

    .line 545
    .line 546
    .line 547
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 548
    move-result-object v8

    .line 549
    .line 550
    check-cast v8, Ljava/util/List;

    .line 551
    .line 552
    .line 553
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/o0;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 554
    .line 555
    goto/16 :goto_3

    .line 556
    :pswitch_1c
    const/4 v13, 0x1

    .line 557
    .line 558
    .line 559
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 560
    move-result v4

    .line 561
    .line 562
    .line 563
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 564
    move-result-object v8

    .line 565
    .line 566
    check-cast v8, Ljava/util/List;

    .line 567
    .line 568
    .line 569
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/o0;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 570
    .line 571
    goto/16 :goto_3

    .line 572
    :pswitch_1d
    const/4 v13, 0x1

    .line 573
    .line 574
    .line 575
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 576
    move-result v4

    .line 577
    .line 578
    .line 579
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 580
    move-result-object v8

    .line 581
    .line 582
    check-cast v8, Ljava/util/List;

    .line 583
    .line 584
    .line 585
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/o0;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 586
    .line 587
    goto/16 :goto_3

    .line 588
    :pswitch_1e
    const/4 v13, 0x1

    .line 589
    .line 590
    .line 591
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 592
    move-result v4

    .line 593
    .line 594
    .line 595
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 596
    move-result-object v8

    .line 597
    .line 598
    check-cast v8, Ljava/util/List;

    .line 599
    .line 600
    .line 601
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/o0;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 602
    .line 603
    goto/16 :goto_3

    .line 604
    :pswitch_1f
    const/4 v13, 0x1

    .line 605
    .line 606
    .line 607
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 608
    move-result v4

    .line 609
    .line 610
    .line 611
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 612
    move-result-object v8

    .line 613
    .line 614
    check-cast v8, Ljava/util/List;

    .line 615
    .line 616
    .line 617
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/o0;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 618
    .line 619
    goto/16 :goto_3

    .line 620
    :pswitch_20
    const/4 v13, 0x1

    .line 621
    .line 622
    .line 623
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 624
    move-result v4

    .line 625
    .line 626
    .line 627
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 628
    move-result-object v8

    .line 629
    .line 630
    check-cast v8, Ljava/util/List;

    .line 631
    .line 632
    .line 633
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/o0;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 634
    .line 635
    goto/16 :goto_3

    .line 636
    :pswitch_21
    const/4 v13, 0x1

    .line 637
    .line 638
    .line 639
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 640
    move-result v4

    .line 641
    .line 642
    .line 643
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 644
    move-result-object v8

    .line 645
    .line 646
    check-cast v8, Ljava/util/List;

    .line 647
    .line 648
    .line 649
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/o0;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 650
    .line 651
    goto/16 :goto_3

    .line 652
    .line 653
    .line 654
    :pswitch_22
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 655
    move-result v4

    .line 656
    .line 657
    .line 658
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 659
    move-result-object v8

    .line 660
    .line 661
    check-cast v8, Ljava/util/List;

    .line 662
    const/4 v13, 0x0

    .line 663
    .line 664
    .line 665
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/o0;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 666
    .line 667
    goto/16 :goto_4

    .line 668
    :pswitch_23
    const/4 v13, 0x0

    .line 669
    .line 670
    .line 671
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 672
    move-result v4

    .line 673
    .line 674
    .line 675
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 676
    move-result-object v8

    .line 677
    .line 678
    check-cast v8, Ljava/util/List;

    .line 679
    .line 680
    .line 681
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/o0;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 682
    .line 683
    goto/16 :goto_4

    .line 684
    :pswitch_24
    const/4 v13, 0x0

    .line 685
    .line 686
    .line 687
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 688
    move-result v4

    .line 689
    .line 690
    .line 691
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 692
    move-result-object v8

    .line 693
    .line 694
    check-cast v8, Ljava/util/List;

    .line 695
    .line 696
    .line 697
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/o0;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 698
    .line 699
    goto/16 :goto_4

    .line 700
    :pswitch_25
    const/4 v13, 0x0

    .line 701
    .line 702
    .line 703
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 704
    move-result v4

    .line 705
    .line 706
    .line 707
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 708
    move-result-object v8

    .line 709
    .line 710
    check-cast v8, Ljava/util/List;

    .line 711
    .line 712
    .line 713
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/o0;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 714
    .line 715
    goto/16 :goto_4

    .line 716
    :pswitch_26
    const/4 v13, 0x0

    .line 717
    .line 718
    .line 719
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 720
    move-result v4

    .line 721
    .line 722
    .line 723
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 724
    move-result-object v8

    .line 725
    .line 726
    check-cast v8, Ljava/util/List;

    .line 727
    .line 728
    .line 729
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/o0;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 730
    .line 731
    goto/16 :goto_4

    .line 732
    :pswitch_27
    const/4 v13, 0x0

    .line 733
    .line 734
    .line 735
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 736
    move-result v4

    .line 737
    .line 738
    .line 739
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 740
    move-result-object v8

    .line 741
    .line 742
    check-cast v8, Ljava/util/List;

    .line 743
    .line 744
    .line 745
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/o0;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 746
    .line 747
    goto/16 :goto_4

    .line 748
    .line 749
    .line 750
    :pswitch_28
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 751
    move-result v4

    .line 752
    .line 753
    .line 754
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 755
    move-result-object v8

    .line 756
    .line 757
    check-cast v8, Ljava/util/List;

    .line 758
    .line 759
    .line 760
    invoke-static {v4, v8, v2}, Lcom/google/protobuf/o0;->writeBytesList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    .line 761
    .line 762
    goto/16 :goto_3

    .line 763
    .line 764
    .line 765
    :pswitch_29
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 766
    move-result v4

    .line 767
    .line 768
    .line 769
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 770
    move-result-object v8

    .line 771
    .line 772
    check-cast v8, Ljava/util/List;

    .line 773
    .line 774
    .line 775
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    .line 776
    move-result-object v9

    .line 777
    .line 778
    .line 779
    invoke-static {v4, v8, v2, v9}, Lcom/google/protobuf/o0;->writeMessageList(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/m0;)V

    .line 780
    .line 781
    goto/16 :goto_3

    .line 782
    .line 783
    .line 784
    :pswitch_2a
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 785
    move-result v4

    .line 786
    .line 787
    .line 788
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 789
    move-result-object v8

    .line 790
    .line 791
    check-cast v8, Ljava/util/List;

    .line 792
    .line 793
    .line 794
    invoke-static {v4, v8, v2}, Lcom/google/protobuf/o0;->writeStringList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    .line 795
    .line 796
    goto/16 :goto_3

    .line 797
    .line 798
    .line 799
    :pswitch_2b
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 800
    move-result v4

    .line 801
    .line 802
    .line 803
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 804
    move-result-object v8

    .line 805
    .line 806
    check-cast v8, Ljava/util/List;

    .line 807
    const/4 v13, 0x0

    .line 808
    .line 809
    .line 810
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/o0;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 811
    .line 812
    goto/16 :goto_4

    .line 813
    :pswitch_2c
    const/4 v13, 0x0

    .line 814
    .line 815
    .line 816
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 817
    move-result v4

    .line 818
    .line 819
    .line 820
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 821
    move-result-object v8

    .line 822
    .line 823
    check-cast v8, Ljava/util/List;

    .line 824
    .line 825
    .line 826
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/o0;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 827
    .line 828
    goto/16 :goto_4

    .line 829
    :pswitch_2d
    const/4 v13, 0x0

    .line 830
    .line 831
    .line 832
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 833
    move-result v4

    .line 834
    .line 835
    .line 836
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 837
    move-result-object v8

    .line 838
    .line 839
    check-cast v8, Ljava/util/List;

    .line 840
    .line 841
    .line 842
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/o0;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 843
    .line 844
    goto/16 :goto_4

    .line 845
    :pswitch_2e
    const/4 v13, 0x0

    .line 846
    .line 847
    .line 848
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 849
    move-result v4

    .line 850
    .line 851
    .line 852
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 853
    move-result-object v8

    .line 854
    .line 855
    check-cast v8, Ljava/util/List;

    .line 856
    .line 857
    .line 858
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/o0;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 859
    .line 860
    goto/16 :goto_4

    .line 861
    :pswitch_2f
    const/4 v13, 0x0

    .line 862
    .line 863
    .line 864
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 865
    move-result v4

    .line 866
    .line 867
    .line 868
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 869
    move-result-object v8

    .line 870
    .line 871
    check-cast v8, Ljava/util/List;

    .line 872
    .line 873
    .line 874
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/o0;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 875
    .line 876
    goto/16 :goto_4

    .line 877
    :pswitch_30
    const/4 v13, 0x0

    .line 878
    .line 879
    .line 880
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 881
    move-result v4

    .line 882
    .line 883
    .line 884
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 885
    move-result-object v8

    .line 886
    .line 887
    check-cast v8, Ljava/util/List;

    .line 888
    .line 889
    .line 890
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/o0;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 891
    .line 892
    goto/16 :goto_4

    .line 893
    :pswitch_31
    const/4 v13, 0x0

    .line 894
    .line 895
    .line 896
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 897
    move-result v4

    .line 898
    .line 899
    .line 900
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 901
    move-result-object v8

    .line 902
    .line 903
    check-cast v8, Ljava/util/List;

    .line 904
    .line 905
    .line 906
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/o0;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 907
    .line 908
    goto/16 :goto_4

    .line 909
    :pswitch_32
    const/4 v13, 0x0

    .line 910
    .line 911
    .line 912
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 913
    move-result v4

    .line 914
    .line 915
    .line 916
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 917
    move-result-object v8

    .line 918
    .line 919
    check-cast v8, Ljava/util/List;

    .line 920
    .line 921
    .line 922
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/o0;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 923
    .line 924
    goto/16 :goto_4

    .line 925
    :pswitch_33
    const/4 v13, 0x0

    .line 926
    and-int/2addr v4, v12

    .line 927
    .line 928
    if-eqz v4, :cond_6

    .line 929
    .line 930
    .line 931
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 932
    move-result-object v4

    .line 933
    .line 934
    .line 935
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    .line 936
    move-result-object v8

    .line 937
    .line 938
    .line 939
    invoke-interface {v2, v14, v4, v8}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/google/protobuf/m0;)V

    .line 940
    .line 941
    goto/16 :goto_4

    .line 942
    :pswitch_34
    const/4 v13, 0x0

    .line 943
    and-int/2addr v4, v12

    .line 944
    .line 945
    if-eqz v4, :cond_6

    .line 946
    .line 947
    .line 948
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 949
    move-result-wide v8

    .line 950
    .line 951
    .line 952
    invoke-interface {v2, v14, v8, v9}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    .line 953
    .line 954
    goto/16 :goto_4

    .line 955
    :pswitch_35
    const/4 v13, 0x0

    .line 956
    and-int/2addr v4, v12

    .line 957
    .line 958
    if-eqz v4, :cond_6

    .line 959
    .line 960
    .line 961
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 962
    move-result v4

    .line 963
    .line 964
    .line 965
    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    .line 966
    .line 967
    goto/16 :goto_4

    .line 968
    :pswitch_36
    const/4 v13, 0x0

    .line 969
    and-int/2addr v4, v12

    .line 970
    .line 971
    if-eqz v4, :cond_6

    .line 972
    .line 973
    .line 974
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 975
    move-result-wide v8

    .line 976
    .line 977
    .line 978
    invoke-interface {v2, v14, v8, v9}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    .line 979
    .line 980
    goto/16 :goto_4

    .line 981
    :pswitch_37
    const/4 v13, 0x0

    .line 982
    and-int/2addr v4, v12

    .line 983
    .line 984
    if-eqz v4, :cond_6

    .line 985
    .line 986
    .line 987
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 988
    move-result v4

    .line 989
    .line 990
    .line 991
    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    .line 992
    .line 993
    goto/16 :goto_4

    .line 994
    :pswitch_38
    const/4 v13, 0x0

    .line 995
    and-int/2addr v4, v12

    .line 996
    .line 997
    if-eqz v4, :cond_6

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1001
    move-result v4

    .line 1002
    .line 1003
    .line 1004
    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    .line 1005
    .line 1006
    goto/16 :goto_4

    .line 1007
    :pswitch_39
    const/4 v13, 0x0

    .line 1008
    and-int/2addr v4, v12

    .line 1009
    .line 1010
    if-eqz v4, :cond_6

    .line 1011
    .line 1012
    .line 1013
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1014
    move-result v4

    .line 1015
    .line 1016
    .line 1017
    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    .line 1018
    .line 1019
    goto/16 :goto_4

    .line 1020
    :pswitch_3a
    const/4 v13, 0x0

    .line 1021
    and-int/2addr v4, v12

    .line 1022
    .line 1023
    if-eqz v4, :cond_6

    .line 1024
    .line 1025
    .line 1026
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1027
    move-result-object v4

    .line 1028
    .line 1029
    check-cast v4, Lcom/google/protobuf/ByteString;

    .line 1030
    .line 1031
    .line 1032
    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1033
    .line 1034
    goto/16 :goto_4

    .line 1035
    :pswitch_3b
    const/4 v13, 0x0

    .line 1036
    and-int/2addr v4, v12

    .line 1037
    .line 1038
    if-eqz v4, :cond_6

    .line 1039
    .line 1040
    .line 1041
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1042
    move-result-object v4

    .line 1043
    .line 1044
    .line 1045
    invoke-direct {v0, v10}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    .line 1046
    move-result-object v8

    .line 1047
    .line 1048
    .line 1049
    invoke-interface {v2, v14, v4, v8}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/m0;)V

    .line 1050
    .line 1051
    goto/16 :goto_4

    .line 1052
    :pswitch_3c
    const/4 v13, 0x0

    .line 1053
    and-int/2addr v4, v12

    .line 1054
    .line 1055
    if-eqz v4, :cond_6

    .line 1056
    .line 1057
    .line 1058
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1059
    move-result-object v4

    .line 1060
    .line 1061
    .line 1062
    invoke-direct {v0, v14, v4, v2}, Lcom/google/protobuf/z;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 1063
    goto :goto_4

    .line 1064
    :pswitch_3d
    const/4 v13, 0x0

    .line 1065
    and-int/2addr v4, v12

    .line 1066
    .line 1067
    if-eqz v4, :cond_6

    .line 1068
    .line 1069
    .line 1070
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/z;->booleanAt(Ljava/lang/Object;J)Z

    .line 1071
    move-result v4

    .line 1072
    .line 1073
    .line 1074
    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    .line 1075
    goto :goto_4

    .line 1076
    :pswitch_3e
    const/4 v13, 0x0

    .line 1077
    and-int/2addr v4, v12

    .line 1078
    .line 1079
    if-eqz v4, :cond_6

    .line 1080
    .line 1081
    .line 1082
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1083
    move-result v4

    .line 1084
    .line 1085
    .line 1086
    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    .line 1087
    goto :goto_4

    .line 1088
    :pswitch_3f
    const/4 v13, 0x0

    .line 1089
    and-int/2addr v4, v12

    .line 1090
    .line 1091
    if-eqz v4, :cond_6

    .line 1092
    .line 1093
    .line 1094
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1095
    move-result-wide v8

    .line 1096
    .line 1097
    .line 1098
    invoke-interface {v2, v14, v8, v9}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    .line 1099
    goto :goto_4

    .line 1100
    :pswitch_40
    const/4 v13, 0x0

    .line 1101
    and-int/2addr v4, v12

    .line 1102
    .line 1103
    if-eqz v4, :cond_6

    .line 1104
    .line 1105
    .line 1106
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1107
    move-result v4

    .line 1108
    .line 1109
    .line 1110
    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    .line 1111
    goto :goto_4

    .line 1112
    :pswitch_41
    const/4 v13, 0x0

    .line 1113
    and-int/2addr v4, v12

    .line 1114
    .line 1115
    if-eqz v4, :cond_6

    .line 1116
    .line 1117
    .line 1118
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1119
    move-result-wide v8

    .line 1120
    .line 1121
    .line 1122
    invoke-interface {v2, v14, v8, v9}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    .line 1123
    goto :goto_4

    .line 1124
    :pswitch_42
    const/4 v13, 0x0

    .line 1125
    and-int/2addr v4, v12

    .line 1126
    .line 1127
    if-eqz v4, :cond_6

    .line 1128
    .line 1129
    .line 1130
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1131
    move-result-wide v8

    .line 1132
    .line 1133
    .line 1134
    invoke-interface {v2, v14, v8, v9}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    .line 1135
    goto :goto_4

    .line 1136
    :pswitch_43
    const/4 v13, 0x0

    .line 1137
    and-int/2addr v4, v12

    .line 1138
    .line 1139
    if-eqz v4, :cond_6

    .line 1140
    .line 1141
    .line 1142
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/z;->floatAt(Ljava/lang/Object;J)F

    .line 1143
    move-result v4

    .line 1144
    .line 1145
    .line 1146
    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    .line 1147
    goto :goto_4

    .line 1148
    :pswitch_44
    const/4 v13, 0x0

    .line 1149
    and-int/2addr v4, v12

    .line 1150
    .line 1151
    if-eqz v4, :cond_6

    .line 1152
    .line 1153
    .line 1154
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/z;->doubleAt(Ljava/lang/Object;J)D

    .line 1155
    move-result-wide v8

    .line 1156
    .line 1157
    .line 1158
    invoke-interface {v2, v14, v8, v9}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    .line 1159
    .line 1160
    :cond_6
    :goto_4
    add-int/lit8 v10, v10, 0x3

    .line 1161
    .line 1162
    .line 1163
    const v8, 0xfffff

    .line 1164
    .line 1165
    goto/16 :goto_1

    .line 1166
    .line 1167
    :cond_7
    :goto_5
    if-eqz v5, :cond_9

    .line 1168
    .line 1169
    iget-object v4, v0, Lcom/google/protobuf/z;->extensionSchema:Lcom/google/protobuf/j;

    .line 1170
    .line 1171
    .line 1172
    invoke-virtual {v4, v2, v5}, Lcom/google/protobuf/j;->serializeExtension(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 1173
    .line 1174
    .line 1175
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1176
    move-result v4

    .line 1177
    .line 1178
    if-eqz v4, :cond_8

    .line 1179
    .line 1180
    .line 1181
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1182
    move-result-object v4

    .line 1183
    .line 1184
    check-cast v4, Ljava/util/Map$Entry;

    .line 1185
    move-object v5, v4

    .line 1186
    goto :goto_5

    .line 1187
    :cond_8
    const/4 v5, 0x0

    .line 1188
    goto :goto_5

    .line 1189
    .line 1190
    :cond_9
    iget-object v3, v0, Lcom/google/protobuf/z;->unknownFieldSchema:Lcom/google/protobuf/r0;

    .line 1191
    .line 1192
    .line 1193
    invoke-direct {v0, v3, v1, v2}, Lcom/google/protobuf/z;->writeUnknownInMessageTo(Lcom/google/protobuf/r0;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 1194
    return-void

    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
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

.method private writeFieldsInAscendingOrderProto3(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/Writer;",
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
    iget-boolean v0, p0, Lcom/google/protobuf/z;->hasExtensions:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/protobuf/z;->extensionSchema:Lcom/google/protobuf/j;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/google/protobuf/j;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->isEmpty()Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

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
    iget-object v3, p0, Lcom/google/protobuf/z;->buffer:[I

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
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->typeAndOffsetAt(I)I

    .line 41
    move-result v6

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 45
    move-result v7

    .line 46
    .line 47
    :goto_2
    if-eqz v2, :cond_2

    .line 48
    .line 49
    iget-object v8, p0, Lcom/google/protobuf/z;->extensionSchema:Lcom/google/protobuf/j;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v8, v2}, Lcom/google/protobuf/j;->extensionNumber(Ljava/util/Map$Entry;)I

    .line 53
    move-result v8

    .line 54
    .line 55
    if-gt v8, v7, :cond_2

    .line 56
    .line 57
    iget-object v8, p0, Lcom/google/protobuf/z;->extensionSchema:Lcom/google/protobuf/j;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v8, p2, v2}, Lcom/google/protobuf/j;->serializeExtension(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

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
    invoke-static {v6}, Lcom/google/protobuf/z;->type(I)I

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
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 89
    move-result v8

    .line 90
    .line 91
    if-eqz v8, :cond_3

    .line 92
    .line 93
    .line 94
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 95
    move-result-wide v8

    .line 96
    .line 97
    .line 98
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 99
    move-result-object v6

    .line 100
    .line 101
    .line 102
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    .line 103
    move-result-object v8

    .line 104
    .line 105
    .line 106
    invoke-interface {p2, v7, v6, v8}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/google/protobuf/m0;)V

    .line 107
    .line 108
    goto/16 :goto_3

    .line 109
    .line 110
    .line 111
    :pswitch_1
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 112
    move-result v8

    .line 113
    .line 114
    if-eqz v8, :cond_3

    .line 115
    .line 116
    .line 117
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 118
    move-result-wide v8

    .line 119
    .line 120
    .line 121
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/z;->oneofLongAt(Ljava/lang/Object;J)J

    .line 122
    move-result-wide v8

    .line 123
    .line 124
    .line 125
    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    .line 126
    .line 127
    goto/16 :goto_3

    .line 128
    .line 129
    .line 130
    :pswitch_2
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 131
    move-result v8

    .line 132
    .line 133
    if-eqz v8, :cond_3

    .line 134
    .line 135
    .line 136
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 137
    move-result-wide v8

    .line 138
    .line 139
    .line 140
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/z;->oneofIntAt(Ljava/lang/Object;J)I

    .line 141
    move-result v6

    .line 142
    .line 143
    .line 144
    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    .line 145
    .line 146
    goto/16 :goto_3

    .line 147
    .line 148
    .line 149
    :pswitch_3
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 150
    move-result v8

    .line 151
    .line 152
    if-eqz v8, :cond_3

    .line 153
    .line 154
    .line 155
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 156
    move-result-wide v8

    .line 157
    .line 158
    .line 159
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/z;->oneofLongAt(Ljava/lang/Object;J)J

    .line 160
    move-result-wide v8

    .line 161
    .line 162
    .line 163
    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    .line 164
    .line 165
    goto/16 :goto_3

    .line 166
    .line 167
    .line 168
    :pswitch_4
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 169
    move-result v8

    .line 170
    .line 171
    if-eqz v8, :cond_3

    .line 172
    .line 173
    .line 174
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 175
    move-result-wide v8

    .line 176
    .line 177
    .line 178
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/z;->oneofIntAt(Ljava/lang/Object;J)I

    .line 179
    move-result v6

    .line 180
    .line 181
    .line 182
    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    .line 183
    .line 184
    goto/16 :goto_3

    .line 185
    .line 186
    .line 187
    :pswitch_5
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 188
    move-result v8

    .line 189
    .line 190
    if-eqz v8, :cond_3

    .line 191
    .line 192
    .line 193
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 194
    move-result-wide v8

    .line 195
    .line 196
    .line 197
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/z;->oneofIntAt(Ljava/lang/Object;J)I

    .line 198
    move-result v6

    .line 199
    .line 200
    .line 201
    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    .line 202
    .line 203
    goto/16 :goto_3

    .line 204
    .line 205
    .line 206
    :pswitch_6
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 207
    move-result v8

    .line 208
    .line 209
    if-eqz v8, :cond_3

    .line 210
    .line 211
    .line 212
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 213
    move-result-wide v8

    .line 214
    .line 215
    .line 216
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/z;->oneofIntAt(Ljava/lang/Object;J)I

    .line 217
    move-result v6

    .line 218
    .line 219
    .line 220
    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    .line 221
    .line 222
    goto/16 :goto_3

    .line 223
    .line 224
    .line 225
    :pswitch_7
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 226
    move-result v8

    .line 227
    .line 228
    if-eqz v8, :cond_3

    .line 229
    .line 230
    .line 231
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 232
    move-result-wide v8

    .line 233
    .line 234
    .line 235
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 236
    move-result-object v6

    .line 237
    .line 238
    check-cast v6, Lcom/google/protobuf/ByteString;

    .line 239
    .line 240
    .line 241
    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 242
    .line 243
    goto/16 :goto_3

    .line 244
    .line 245
    .line 246
    :pswitch_8
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 247
    move-result v8

    .line 248
    .line 249
    if-eqz v8, :cond_3

    .line 250
    .line 251
    .line 252
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 253
    move-result-wide v8

    .line 254
    .line 255
    .line 256
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 257
    move-result-object v6

    .line 258
    .line 259
    .line 260
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    .line 261
    move-result-object v8

    .line 262
    .line 263
    .line 264
    invoke-interface {p2, v7, v6, v8}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/m0;)V

    .line 265
    .line 266
    goto/16 :goto_3

    .line 267
    .line 268
    .line 269
    :pswitch_9
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 270
    move-result v8

    .line 271
    .line 272
    if-eqz v8, :cond_3

    .line 273
    .line 274
    .line 275
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 276
    move-result-wide v8

    .line 277
    .line 278
    .line 279
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 280
    move-result-object v6

    .line 281
    .line 282
    .line 283
    invoke-direct {p0, v7, v6, p2}, Lcom/google/protobuf/z;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 284
    .line 285
    goto/16 :goto_3

    .line 286
    .line 287
    .line 288
    :pswitch_a
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 289
    move-result v8

    .line 290
    .line 291
    if-eqz v8, :cond_3

    .line 292
    .line 293
    .line 294
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 295
    move-result-wide v8

    .line 296
    .line 297
    .line 298
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/z;->oneofBooleanAt(Ljava/lang/Object;J)Z

    .line 299
    move-result v6

    .line 300
    .line 301
    .line 302
    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    .line 303
    .line 304
    goto/16 :goto_3

    .line 305
    .line 306
    .line 307
    :pswitch_b
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 308
    move-result v8

    .line 309
    .line 310
    if-eqz v8, :cond_3

    .line 311
    .line 312
    .line 313
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 314
    move-result-wide v8

    .line 315
    .line 316
    .line 317
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/z;->oneofIntAt(Ljava/lang/Object;J)I

    .line 318
    move-result v6

    .line 319
    .line 320
    .line 321
    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    .line 322
    .line 323
    goto/16 :goto_3

    .line 324
    .line 325
    .line 326
    :pswitch_c
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 327
    move-result v8

    .line 328
    .line 329
    if-eqz v8, :cond_3

    .line 330
    .line 331
    .line 332
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 333
    move-result-wide v8

    .line 334
    .line 335
    .line 336
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/z;->oneofLongAt(Ljava/lang/Object;J)J

    .line 337
    move-result-wide v8

    .line 338
    .line 339
    .line 340
    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    .line 341
    .line 342
    goto/16 :goto_3

    .line 343
    .line 344
    .line 345
    :pswitch_d
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 346
    move-result v8

    .line 347
    .line 348
    if-eqz v8, :cond_3

    .line 349
    .line 350
    .line 351
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 352
    move-result-wide v8

    .line 353
    .line 354
    .line 355
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/z;->oneofIntAt(Ljava/lang/Object;J)I

    .line 356
    move-result v6

    .line 357
    .line 358
    .line 359
    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    .line 360
    .line 361
    goto/16 :goto_3

    .line 362
    .line 363
    .line 364
    :pswitch_e
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 365
    move-result v8

    .line 366
    .line 367
    if-eqz v8, :cond_3

    .line 368
    .line 369
    .line 370
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 371
    move-result-wide v8

    .line 372
    .line 373
    .line 374
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/z;->oneofLongAt(Ljava/lang/Object;J)J

    .line 375
    move-result-wide v8

    .line 376
    .line 377
    .line 378
    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    .line 379
    .line 380
    goto/16 :goto_3

    .line 381
    .line 382
    .line 383
    :pswitch_f
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 384
    move-result v8

    .line 385
    .line 386
    if-eqz v8, :cond_3

    .line 387
    .line 388
    .line 389
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 390
    move-result-wide v8

    .line 391
    .line 392
    .line 393
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/z;->oneofLongAt(Ljava/lang/Object;J)J

    .line 394
    move-result-wide v8

    .line 395
    .line 396
    .line 397
    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    .line 398
    .line 399
    goto/16 :goto_3

    .line 400
    .line 401
    .line 402
    :pswitch_10
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 403
    move-result v8

    .line 404
    .line 405
    if-eqz v8, :cond_3

    .line 406
    .line 407
    .line 408
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 409
    move-result-wide v8

    .line 410
    .line 411
    .line 412
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/z;->oneofFloatAt(Ljava/lang/Object;J)F

    .line 413
    move-result v6

    .line 414
    .line 415
    .line 416
    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    .line 417
    .line 418
    goto/16 :goto_3

    .line 419
    .line 420
    .line 421
    :pswitch_11
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 422
    move-result v8

    .line 423
    .line 424
    if-eqz v8, :cond_3

    .line 425
    .line 426
    .line 427
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 428
    move-result-wide v8

    .line 429
    .line 430
    .line 431
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/z;->oneofDoubleAt(Ljava/lang/Object;J)D

    .line 432
    move-result-wide v8

    .line 433
    .line 434
    .line 435
    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    .line 436
    .line 437
    goto/16 :goto_3

    .line 438
    .line 439
    .line 440
    :pswitch_12
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 441
    move-result-wide v8

    .line 442
    .line 443
    .line 444
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 445
    move-result-object v6

    .line 446
    .line 447
    .line 448
    invoke-direct {p0, p2, v7, v6, v5}, Lcom/google/protobuf/z;->writeMapHelper(Lcom/google/protobuf/Writer;ILjava/lang/Object;I)V

    .line 449
    .line 450
    goto/16 :goto_3

    .line 451
    .line 452
    .line 453
    :pswitch_13
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 454
    move-result v7

    .line 455
    .line 456
    .line 457
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 458
    move-result-wide v8

    .line 459
    .line 460
    .line 461
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 462
    move-result-object v6

    .line 463
    .line 464
    check-cast v6, Ljava/util/List;

    .line 465
    .line 466
    .line 467
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    .line 468
    move-result-object v8

    .line 469
    .line 470
    .line 471
    invoke-static {v7, v6, p2, v8}, Lcom/google/protobuf/o0;->writeGroupList(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/m0;)V

    .line 472
    .line 473
    goto/16 :goto_3

    .line 474
    .line 475
    .line 476
    :pswitch_14
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 477
    move-result v7

    .line 478
    .line 479
    .line 480
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 481
    move-result-wide v10

    .line 482
    .line 483
    .line 484
    invoke-static {p1, v10, v11}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 485
    move-result-object v6

    .line 486
    .line 487
    check-cast v6, Ljava/util/List;

    .line 488
    .line 489
    .line 490
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/o0;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 491
    .line 492
    goto/16 :goto_3

    .line 493
    .line 494
    .line 495
    :pswitch_15
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 496
    move-result v7

    .line 497
    .line 498
    .line 499
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 500
    move-result-wide v10

    .line 501
    .line 502
    .line 503
    invoke-static {p1, v10, v11}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 504
    move-result-object v6

    .line 505
    .line 506
    check-cast v6, Ljava/util/List;

    .line 507
    .line 508
    .line 509
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/o0;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 510
    .line 511
    goto/16 :goto_3

    .line 512
    .line 513
    .line 514
    :pswitch_16
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 515
    move-result v7

    .line 516
    .line 517
    .line 518
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 519
    move-result-wide v10

    .line 520
    .line 521
    .line 522
    invoke-static {p1, v10, v11}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 523
    move-result-object v6

    .line 524
    .line 525
    check-cast v6, Ljava/util/List;

    .line 526
    .line 527
    .line 528
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/o0;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 529
    .line 530
    goto/16 :goto_3

    .line 531
    .line 532
    .line 533
    :pswitch_17
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 534
    move-result v7

    .line 535
    .line 536
    .line 537
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 538
    move-result-wide v10

    .line 539
    .line 540
    .line 541
    invoke-static {p1, v10, v11}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 542
    move-result-object v6

    .line 543
    .line 544
    check-cast v6, Ljava/util/List;

    .line 545
    .line 546
    .line 547
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/o0;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 548
    .line 549
    goto/16 :goto_3

    .line 550
    .line 551
    .line 552
    :pswitch_18
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 553
    move-result v7

    .line 554
    .line 555
    .line 556
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 557
    move-result-wide v10

    .line 558
    .line 559
    .line 560
    invoke-static {p1, v10, v11}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 561
    move-result-object v6

    .line 562
    .line 563
    check-cast v6, Ljava/util/List;

    .line 564
    .line 565
    .line 566
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/o0;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 567
    .line 568
    goto/16 :goto_3

    .line 569
    .line 570
    .line 571
    :pswitch_19
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 572
    move-result v7

    .line 573
    .line 574
    .line 575
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 576
    move-result-wide v10

    .line 577
    .line 578
    .line 579
    invoke-static {p1, v10, v11}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 580
    move-result-object v6

    .line 581
    .line 582
    check-cast v6, Ljava/util/List;

    .line 583
    .line 584
    .line 585
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/o0;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 586
    .line 587
    goto/16 :goto_3

    .line 588
    .line 589
    .line 590
    :pswitch_1a
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 591
    move-result v7

    .line 592
    .line 593
    .line 594
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 595
    move-result-wide v10

    .line 596
    .line 597
    .line 598
    invoke-static {p1, v10, v11}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 599
    move-result-object v6

    .line 600
    .line 601
    check-cast v6, Ljava/util/List;

    .line 602
    .line 603
    .line 604
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/o0;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 605
    .line 606
    goto/16 :goto_3

    .line 607
    .line 608
    .line 609
    :pswitch_1b
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 610
    move-result v7

    .line 611
    .line 612
    .line 613
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 614
    move-result-wide v10

    .line 615
    .line 616
    .line 617
    invoke-static {p1, v10, v11}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 618
    move-result-object v6

    .line 619
    .line 620
    check-cast v6, Ljava/util/List;

    .line 621
    .line 622
    .line 623
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/o0;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 624
    .line 625
    goto/16 :goto_3

    .line 626
    .line 627
    .line 628
    :pswitch_1c
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 629
    move-result v7

    .line 630
    .line 631
    .line 632
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 633
    move-result-wide v10

    .line 634
    .line 635
    .line 636
    invoke-static {p1, v10, v11}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 637
    move-result-object v6

    .line 638
    .line 639
    check-cast v6, Ljava/util/List;

    .line 640
    .line 641
    .line 642
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/o0;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 643
    .line 644
    goto/16 :goto_3

    .line 645
    .line 646
    .line 647
    :pswitch_1d
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 648
    move-result v7

    .line 649
    .line 650
    .line 651
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 652
    move-result-wide v10

    .line 653
    .line 654
    .line 655
    invoke-static {p1, v10, v11}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 656
    move-result-object v6

    .line 657
    .line 658
    check-cast v6, Ljava/util/List;

    .line 659
    .line 660
    .line 661
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/o0;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 662
    .line 663
    goto/16 :goto_3

    .line 664
    .line 665
    .line 666
    :pswitch_1e
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 667
    move-result v7

    .line 668
    .line 669
    .line 670
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 671
    move-result-wide v10

    .line 672
    .line 673
    .line 674
    invoke-static {p1, v10, v11}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 675
    move-result-object v6

    .line 676
    .line 677
    check-cast v6, Ljava/util/List;

    .line 678
    .line 679
    .line 680
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/o0;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 681
    .line 682
    goto/16 :goto_3

    .line 683
    .line 684
    .line 685
    :pswitch_1f
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 686
    move-result v7

    .line 687
    .line 688
    .line 689
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 690
    move-result-wide v10

    .line 691
    .line 692
    .line 693
    invoke-static {p1, v10, v11}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 694
    move-result-object v6

    .line 695
    .line 696
    check-cast v6, Ljava/util/List;

    .line 697
    .line 698
    .line 699
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/o0;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 700
    .line 701
    goto/16 :goto_3

    .line 702
    .line 703
    .line 704
    :pswitch_20
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 705
    move-result v7

    .line 706
    .line 707
    .line 708
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 709
    move-result-wide v10

    .line 710
    .line 711
    .line 712
    invoke-static {p1, v10, v11}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 713
    move-result-object v6

    .line 714
    .line 715
    check-cast v6, Ljava/util/List;

    .line 716
    .line 717
    .line 718
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/o0;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 719
    .line 720
    goto/16 :goto_3

    .line 721
    .line 722
    .line 723
    :pswitch_21
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 724
    move-result v7

    .line 725
    .line 726
    .line 727
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 728
    move-result-wide v10

    .line 729
    .line 730
    .line 731
    invoke-static {p1, v10, v11}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 732
    move-result-object v6

    .line 733
    .line 734
    check-cast v6, Ljava/util/List;

    .line 735
    .line 736
    .line 737
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/o0;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 738
    .line 739
    goto/16 :goto_3

    .line 740
    .line 741
    .line 742
    :pswitch_22
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 743
    move-result v7

    .line 744
    .line 745
    .line 746
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 747
    move-result-wide v8

    .line 748
    .line 749
    .line 750
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 751
    move-result-object v6

    .line 752
    .line 753
    check-cast v6, Ljava/util/List;

    .line 754
    .line 755
    .line 756
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/o0;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 757
    .line 758
    goto/16 :goto_3

    .line 759
    .line 760
    .line 761
    :pswitch_23
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 762
    move-result v7

    .line 763
    .line 764
    .line 765
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 766
    move-result-wide v8

    .line 767
    .line 768
    .line 769
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 770
    move-result-object v6

    .line 771
    .line 772
    check-cast v6, Ljava/util/List;

    .line 773
    .line 774
    .line 775
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/o0;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 776
    .line 777
    goto/16 :goto_3

    .line 778
    .line 779
    .line 780
    :pswitch_24
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 781
    move-result v7

    .line 782
    .line 783
    .line 784
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 785
    move-result-wide v8

    .line 786
    .line 787
    .line 788
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 789
    move-result-object v6

    .line 790
    .line 791
    check-cast v6, Ljava/util/List;

    .line 792
    .line 793
    .line 794
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/o0;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 795
    .line 796
    goto/16 :goto_3

    .line 797
    .line 798
    .line 799
    :pswitch_25
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 800
    move-result v7

    .line 801
    .line 802
    .line 803
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 804
    move-result-wide v8

    .line 805
    .line 806
    .line 807
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 808
    move-result-object v6

    .line 809
    .line 810
    check-cast v6, Ljava/util/List;

    .line 811
    .line 812
    .line 813
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/o0;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 814
    .line 815
    goto/16 :goto_3

    .line 816
    .line 817
    .line 818
    :pswitch_26
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 819
    move-result v7

    .line 820
    .line 821
    .line 822
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 823
    move-result-wide v8

    .line 824
    .line 825
    .line 826
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 827
    move-result-object v6

    .line 828
    .line 829
    check-cast v6, Ljava/util/List;

    .line 830
    .line 831
    .line 832
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/o0;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 833
    .line 834
    goto/16 :goto_3

    .line 835
    .line 836
    .line 837
    :pswitch_27
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 838
    move-result v7

    .line 839
    .line 840
    .line 841
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 842
    move-result-wide v8

    .line 843
    .line 844
    .line 845
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 846
    move-result-object v6

    .line 847
    .line 848
    check-cast v6, Ljava/util/List;

    .line 849
    .line 850
    .line 851
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/o0;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 852
    .line 853
    goto/16 :goto_3

    .line 854
    .line 855
    .line 856
    :pswitch_28
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 857
    move-result v7

    .line 858
    .line 859
    .line 860
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 861
    move-result-wide v8

    .line 862
    .line 863
    .line 864
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 865
    move-result-object v6

    .line 866
    .line 867
    check-cast v6, Ljava/util/List;

    .line 868
    .line 869
    .line 870
    invoke-static {v7, v6, p2}, Lcom/google/protobuf/o0;->writeBytesList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    .line 871
    .line 872
    goto/16 :goto_3

    .line 873
    .line 874
    .line 875
    :pswitch_29
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 876
    move-result v7

    .line 877
    .line 878
    .line 879
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 880
    move-result-wide v8

    .line 881
    .line 882
    .line 883
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 884
    move-result-object v6

    .line 885
    .line 886
    check-cast v6, Ljava/util/List;

    .line 887
    .line 888
    .line 889
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    .line 890
    move-result-object v8

    .line 891
    .line 892
    .line 893
    invoke-static {v7, v6, p2, v8}, Lcom/google/protobuf/o0;->writeMessageList(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/m0;)V

    .line 894
    .line 895
    goto/16 :goto_3

    .line 896
    .line 897
    .line 898
    :pswitch_2a
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 899
    move-result v7

    .line 900
    .line 901
    .line 902
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 903
    move-result-wide v8

    .line 904
    .line 905
    .line 906
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 907
    move-result-object v6

    .line 908
    .line 909
    check-cast v6, Ljava/util/List;

    .line 910
    .line 911
    .line 912
    invoke-static {v7, v6, p2}, Lcom/google/protobuf/o0;->writeStringList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    .line 913
    .line 914
    goto/16 :goto_3

    .line 915
    .line 916
    .line 917
    :pswitch_2b
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 918
    move-result v7

    .line 919
    .line 920
    .line 921
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 922
    move-result-wide v8

    .line 923
    .line 924
    .line 925
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 926
    move-result-object v6

    .line 927
    .line 928
    check-cast v6, Ljava/util/List;

    .line 929
    .line 930
    .line 931
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/o0;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 932
    .line 933
    goto/16 :goto_3

    .line 934
    .line 935
    .line 936
    :pswitch_2c
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 937
    move-result v7

    .line 938
    .line 939
    .line 940
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 941
    move-result-wide v8

    .line 942
    .line 943
    .line 944
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 945
    move-result-object v6

    .line 946
    .line 947
    check-cast v6, Ljava/util/List;

    .line 948
    .line 949
    .line 950
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/o0;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 951
    .line 952
    goto/16 :goto_3

    .line 953
    .line 954
    .line 955
    :pswitch_2d
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 956
    move-result v7

    .line 957
    .line 958
    .line 959
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 960
    move-result-wide v8

    .line 961
    .line 962
    .line 963
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 964
    move-result-object v6

    .line 965
    .line 966
    check-cast v6, Ljava/util/List;

    .line 967
    .line 968
    .line 969
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/o0;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 970
    .line 971
    goto/16 :goto_3

    .line 972
    .line 973
    .line 974
    :pswitch_2e
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 975
    move-result v7

    .line 976
    .line 977
    .line 978
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 979
    move-result-wide v8

    .line 980
    .line 981
    .line 982
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 983
    move-result-object v6

    .line 984
    .line 985
    check-cast v6, Ljava/util/List;

    .line 986
    .line 987
    .line 988
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/o0;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 989
    .line 990
    goto/16 :goto_3

    .line 991
    .line 992
    .line 993
    :pswitch_2f
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 994
    move-result v7

    .line 995
    .line 996
    .line 997
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 998
    move-result-wide v8

    .line 999
    .line 1000
    .line 1001
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1002
    move-result-object v6

    .line 1003
    .line 1004
    check-cast v6, Ljava/util/List;

    .line 1005
    .line 1006
    .line 1007
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/o0;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 1008
    .line 1009
    goto/16 :goto_3

    .line 1010
    .line 1011
    .line 1012
    :pswitch_30
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 1013
    move-result v7

    .line 1014
    .line 1015
    .line 1016
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 1017
    move-result-wide v8

    .line 1018
    .line 1019
    .line 1020
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1021
    move-result-object v6

    .line 1022
    .line 1023
    check-cast v6, Ljava/util/List;

    .line 1024
    .line 1025
    .line 1026
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/o0;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 1027
    .line 1028
    goto/16 :goto_3

    .line 1029
    .line 1030
    .line 1031
    :pswitch_31
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 1032
    move-result v7

    .line 1033
    .line 1034
    .line 1035
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 1036
    move-result-wide v8

    .line 1037
    .line 1038
    .line 1039
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1040
    move-result-object v6

    .line 1041
    .line 1042
    check-cast v6, Ljava/util/List;

    .line 1043
    .line 1044
    .line 1045
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/o0;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 1046
    .line 1047
    goto/16 :goto_3

    .line 1048
    .line 1049
    .line 1050
    :pswitch_32
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 1051
    move-result v7

    .line 1052
    .line 1053
    .line 1054
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 1055
    move-result-wide v8

    .line 1056
    .line 1057
    .line 1058
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1059
    move-result-object v6

    .line 1060
    .line 1061
    check-cast v6, Ljava/util/List;

    .line 1062
    .line 1063
    .line 1064
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/o0;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 1065
    .line 1066
    goto/16 :goto_3

    .line 1067
    .line 1068
    .line 1069
    :pswitch_33
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1070
    move-result v8

    .line 1071
    .line 1072
    if-eqz v8, :cond_3

    .line 1073
    .line 1074
    .line 1075
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 1076
    move-result-wide v8

    .line 1077
    .line 1078
    .line 1079
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1080
    move-result-object v6

    .line 1081
    .line 1082
    .line 1083
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    .line 1084
    move-result-object v8

    .line 1085
    .line 1086
    .line 1087
    invoke-interface {p2, v7, v6, v8}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/google/protobuf/m0;)V

    .line 1088
    .line 1089
    goto/16 :goto_3

    .line 1090
    .line 1091
    .line 1092
    :pswitch_34
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1093
    move-result v8

    .line 1094
    .line 1095
    if-eqz v8, :cond_3

    .line 1096
    .line 1097
    .line 1098
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 1099
    move-result-wide v8

    .line 1100
    .line 1101
    .line 1102
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/z;->longAt(Ljava/lang/Object;J)J

    .line 1103
    move-result-wide v8

    .line 1104
    .line 1105
    .line 1106
    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    .line 1107
    .line 1108
    goto/16 :goto_3

    .line 1109
    .line 1110
    .line 1111
    :pswitch_35
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1112
    move-result v8

    .line 1113
    .line 1114
    if-eqz v8, :cond_3

    .line 1115
    .line 1116
    .line 1117
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 1118
    move-result-wide v8

    .line 1119
    .line 1120
    .line 1121
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/z;->intAt(Ljava/lang/Object;J)I

    .line 1122
    move-result v6

    .line 1123
    .line 1124
    .line 1125
    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    .line 1126
    .line 1127
    goto/16 :goto_3

    .line 1128
    .line 1129
    .line 1130
    :pswitch_36
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1131
    move-result v8

    .line 1132
    .line 1133
    if-eqz v8, :cond_3

    .line 1134
    .line 1135
    .line 1136
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 1137
    move-result-wide v8

    .line 1138
    .line 1139
    .line 1140
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/z;->longAt(Ljava/lang/Object;J)J

    .line 1141
    move-result-wide v8

    .line 1142
    .line 1143
    .line 1144
    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    .line 1145
    .line 1146
    goto/16 :goto_3

    .line 1147
    .line 1148
    .line 1149
    :pswitch_37
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1150
    move-result v8

    .line 1151
    .line 1152
    if-eqz v8, :cond_3

    .line 1153
    .line 1154
    .line 1155
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 1156
    move-result-wide v8

    .line 1157
    .line 1158
    .line 1159
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/z;->intAt(Ljava/lang/Object;J)I

    .line 1160
    move-result v6

    .line 1161
    .line 1162
    .line 1163
    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    .line 1164
    .line 1165
    goto/16 :goto_3

    .line 1166
    .line 1167
    .line 1168
    :pswitch_38
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1169
    move-result v8

    .line 1170
    .line 1171
    if-eqz v8, :cond_3

    .line 1172
    .line 1173
    .line 1174
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 1175
    move-result-wide v8

    .line 1176
    .line 1177
    .line 1178
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/z;->intAt(Ljava/lang/Object;J)I

    .line 1179
    move-result v6

    .line 1180
    .line 1181
    .line 1182
    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    .line 1183
    .line 1184
    goto/16 :goto_3

    .line 1185
    .line 1186
    .line 1187
    :pswitch_39
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1188
    move-result v8

    .line 1189
    .line 1190
    if-eqz v8, :cond_3

    .line 1191
    .line 1192
    .line 1193
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 1194
    move-result-wide v8

    .line 1195
    .line 1196
    .line 1197
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/z;->intAt(Ljava/lang/Object;J)I

    .line 1198
    move-result v6

    .line 1199
    .line 1200
    .line 1201
    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    .line 1202
    .line 1203
    goto/16 :goto_3

    .line 1204
    .line 1205
    .line 1206
    :pswitch_3a
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1207
    move-result v8

    .line 1208
    .line 1209
    if-eqz v8, :cond_3

    .line 1210
    .line 1211
    .line 1212
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 1213
    move-result-wide v8

    .line 1214
    .line 1215
    .line 1216
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1217
    move-result-object v6

    .line 1218
    .line 1219
    check-cast v6, Lcom/google/protobuf/ByteString;

    .line 1220
    .line 1221
    .line 1222
    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1223
    .line 1224
    goto/16 :goto_3

    .line 1225
    .line 1226
    .line 1227
    :pswitch_3b
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1228
    move-result v8

    .line 1229
    .line 1230
    if-eqz v8, :cond_3

    .line 1231
    .line 1232
    .line 1233
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 1234
    move-result-wide v8

    .line 1235
    .line 1236
    .line 1237
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1238
    move-result-object v6

    .line 1239
    .line 1240
    .line 1241
    invoke-direct {p0, v5}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    .line 1242
    move-result-object v8

    .line 1243
    .line 1244
    .line 1245
    invoke-interface {p2, v7, v6, v8}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/m0;)V

    .line 1246
    .line 1247
    goto/16 :goto_3

    .line 1248
    .line 1249
    .line 1250
    :pswitch_3c
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1251
    move-result v8

    .line 1252
    .line 1253
    if-eqz v8, :cond_3

    .line 1254
    .line 1255
    .line 1256
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 1257
    move-result-wide v8

    .line 1258
    .line 1259
    .line 1260
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1261
    move-result-object v6

    .line 1262
    .line 1263
    .line 1264
    invoke-direct {p0, v7, v6, p2}, Lcom/google/protobuf/z;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 1265
    .line 1266
    goto/16 :goto_3

    .line 1267
    .line 1268
    .line 1269
    :pswitch_3d
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1270
    move-result v8

    .line 1271
    .line 1272
    if-eqz v8, :cond_3

    .line 1273
    .line 1274
    .line 1275
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 1276
    move-result-wide v8

    .line 1277
    .line 1278
    .line 1279
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/z;->booleanAt(Ljava/lang/Object;J)Z

    .line 1280
    move-result v6

    .line 1281
    .line 1282
    .line 1283
    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    .line 1284
    .line 1285
    goto/16 :goto_3

    .line 1286
    .line 1287
    .line 1288
    :pswitch_3e
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1289
    move-result v8

    .line 1290
    .line 1291
    if-eqz v8, :cond_3

    .line 1292
    .line 1293
    .line 1294
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 1295
    move-result-wide v8

    .line 1296
    .line 1297
    .line 1298
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/z;->intAt(Ljava/lang/Object;J)I

    .line 1299
    move-result v6

    .line 1300
    .line 1301
    .line 1302
    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    .line 1303
    goto :goto_3

    .line 1304
    .line 1305
    .line 1306
    :pswitch_3f
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1307
    move-result v8

    .line 1308
    .line 1309
    if-eqz v8, :cond_3

    .line 1310
    .line 1311
    .line 1312
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 1313
    move-result-wide v8

    .line 1314
    .line 1315
    .line 1316
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/z;->longAt(Ljava/lang/Object;J)J

    .line 1317
    move-result-wide v8

    .line 1318
    .line 1319
    .line 1320
    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    .line 1321
    goto :goto_3

    .line 1322
    .line 1323
    .line 1324
    :pswitch_40
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1325
    move-result v8

    .line 1326
    .line 1327
    if-eqz v8, :cond_3

    .line 1328
    .line 1329
    .line 1330
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 1331
    move-result-wide v8

    .line 1332
    .line 1333
    .line 1334
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/z;->intAt(Ljava/lang/Object;J)I

    .line 1335
    move-result v6

    .line 1336
    .line 1337
    .line 1338
    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    .line 1339
    goto :goto_3

    .line 1340
    .line 1341
    .line 1342
    :pswitch_41
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1343
    move-result v8

    .line 1344
    .line 1345
    if-eqz v8, :cond_3

    .line 1346
    .line 1347
    .line 1348
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 1349
    move-result-wide v8

    .line 1350
    .line 1351
    .line 1352
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/z;->longAt(Ljava/lang/Object;J)J

    .line 1353
    move-result-wide v8

    .line 1354
    .line 1355
    .line 1356
    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    .line 1357
    goto :goto_3

    .line 1358
    .line 1359
    .line 1360
    :pswitch_42
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1361
    move-result v8

    .line 1362
    .line 1363
    if-eqz v8, :cond_3

    .line 1364
    .line 1365
    .line 1366
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 1367
    move-result-wide v8

    .line 1368
    .line 1369
    .line 1370
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/z;->longAt(Ljava/lang/Object;J)J

    .line 1371
    move-result-wide v8

    .line 1372
    .line 1373
    .line 1374
    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    .line 1375
    goto :goto_3

    .line 1376
    .line 1377
    .line 1378
    :pswitch_43
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1379
    move-result v8

    .line 1380
    .line 1381
    if-eqz v8, :cond_3

    .line 1382
    .line 1383
    .line 1384
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 1385
    move-result-wide v8

    .line 1386
    .line 1387
    .line 1388
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/z;->floatAt(Ljava/lang/Object;J)F

    .line 1389
    move-result v6

    .line 1390
    .line 1391
    .line 1392
    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    .line 1393
    goto :goto_3

    .line 1394
    .line 1395
    .line 1396
    :pswitch_44
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1397
    move-result v8

    .line 1398
    .line 1399
    if-eqz v8, :cond_3

    .line 1400
    .line 1401
    .line 1402
    invoke-static {v6}, Lcom/google/protobuf/z;->offset(I)J

    .line 1403
    move-result-wide v8

    .line 1404
    .line 1405
    .line 1406
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/z;->doubleAt(Ljava/lang/Object;J)D

    .line 1407
    move-result-wide v8

    .line 1408
    .line 1409
    .line 1410
    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

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
    iget-object v3, p0, Lcom/google/protobuf/z;->extensionSchema:Lcom/google/protobuf/j;

    .line 1419
    .line 1420
    .line 1421
    invoke-virtual {v3, p2, v2}, Lcom/google/protobuf/j;->serializeExtension(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

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
    iget-object v0, p0, Lcom/google/protobuf/z;->unknownFieldSchema:Lcom/google/protobuf/r0;

    .line 1439
    .line 1440
    .line 1441
    invoke-direct {p0, v0, p1, p2}, Lcom/google/protobuf/z;->writeUnknownInMessageTo(Lcom/google/protobuf/r0;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 1442
    return-void

    .line 1443
    .line 1444
    .line 1445
    .line 1446
    .line 1447
    .line 1448
    .line 1449
    .line 1450
    .line 1451
    .line 1452
    .line 1453
    .line 1454
    .line 1455
    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    .line 1462
    .line 1463
    .line 1464
    .line 1465
    .line 1466
    .line 1467
    .line 1468
    .line 1469
    .line 1470
    .line 1471
    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    .line 1479
    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    .line 1490
    .line 1491
    .line 1492
    .line 1493
    .line 1494
    .line 1495
    .line 1496
    .line 1497
    .line 1498
    .line 1499
    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    .line 1510
    .line 1511
    .line 1512
    .line 1513
    .line 1514
    .line 1515
    .line 1516
    .line 1517
    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    .line 1523
    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    .line 1530
    .line 1531
    .line 1532
    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    .line 1540
    .line 1541
    .line 1542
    .line 1543
    .line 1544
    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    .line 1551
    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    .line 1559
    .line 1560
    .line 1561
    .line 1562
    .line 1563
    .line 1564
    .line 1565
    .line 1566
    .line 1567
    .line 1568
    .line 1569
    .line 1570
    .line 1571
    .line 1572
    .line 1573
    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    .line 1579
    .line 1580
    .line 1581
    .line 1582
    .line 1583
    .line 1584
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

.method private writeFieldsInDescendingOrder(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/Writer;",
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
    iget-object v0, p0, Lcom/google/protobuf/z;->unknownFieldSchema:Lcom/google/protobuf/r0;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0, p1, p2}, Lcom/google/protobuf/z;->writeUnknownInMessageTo(Lcom/google/protobuf/r0;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/google/protobuf/z;->hasExtensions:Z

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/protobuf/z;->extensionSchema:Lcom/google/protobuf/j;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/google/protobuf/j;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->isEmpty()Z

    .line 20
    move-result v2

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->descendingIterator()Ljava/util/Iterator;

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
    iget-object v3, p0, Lcom/google/protobuf/z;->buffer:[I

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
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->typeAndOffsetAt(I)I

    .line 46
    move-result v4

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 50
    move-result v5

    .line 51
    .line 52
    :goto_2
    if-eqz v2, :cond_2

    .line 53
    .line 54
    iget-object v6, p0, Lcom/google/protobuf/z;->extensionSchema:Lcom/google/protobuf/j;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6, v2}, Lcom/google/protobuf/j;->extensionNumber(Ljava/util/Map$Entry;)I

    .line 58
    move-result v6

    .line 59
    .line 60
    if-le v6, v5, :cond_2

    .line 61
    .line 62
    iget-object v6, p0, Lcom/google/protobuf/z;->extensionSchema:Lcom/google/protobuf/j;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6, p2, v2}, Lcom/google/protobuf/j;->serializeExtension(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

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
    invoke-static {v4}, Lcom/google/protobuf/z;->type(I)I

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
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 95
    move-result v6

    .line 96
    .line 97
    if-eqz v6, :cond_3

    .line 98
    .line 99
    .line 100
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 101
    move-result-wide v6

    .line 102
    .line 103
    .line 104
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 105
    move-result-object v4

    .line 106
    .line 107
    .line 108
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    .line 109
    move-result-object v6

    .line 110
    .line 111
    .line 112
    invoke-interface {p2, v5, v4, v6}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/google/protobuf/m0;)V

    .line 113
    .line 114
    goto/16 :goto_3

    .line 115
    .line 116
    .line 117
    :pswitch_1
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 118
    move-result v6

    .line 119
    .line 120
    if-eqz v6, :cond_3

    .line 121
    .line 122
    .line 123
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 124
    move-result-wide v6

    .line 125
    .line 126
    .line 127
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/z;->oneofLongAt(Ljava/lang/Object;J)J

    .line 128
    move-result-wide v6

    .line 129
    .line 130
    .line 131
    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    .line 132
    .line 133
    goto/16 :goto_3

    .line 134
    .line 135
    .line 136
    :pswitch_2
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 137
    move-result v6

    .line 138
    .line 139
    if-eqz v6, :cond_3

    .line 140
    .line 141
    .line 142
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 143
    move-result-wide v6

    .line 144
    .line 145
    .line 146
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/z;->oneofIntAt(Ljava/lang/Object;J)I

    .line 147
    move-result v4

    .line 148
    .line 149
    .line 150
    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    .line 151
    .line 152
    goto/16 :goto_3

    .line 153
    .line 154
    .line 155
    :pswitch_3
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 156
    move-result v6

    .line 157
    .line 158
    if-eqz v6, :cond_3

    .line 159
    .line 160
    .line 161
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 162
    move-result-wide v6

    .line 163
    .line 164
    .line 165
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/z;->oneofLongAt(Ljava/lang/Object;J)J

    .line 166
    move-result-wide v6

    .line 167
    .line 168
    .line 169
    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    .line 170
    .line 171
    goto/16 :goto_3

    .line 172
    .line 173
    .line 174
    :pswitch_4
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 175
    move-result v6

    .line 176
    .line 177
    if-eqz v6, :cond_3

    .line 178
    .line 179
    .line 180
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 181
    move-result-wide v6

    .line 182
    .line 183
    .line 184
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/z;->oneofIntAt(Ljava/lang/Object;J)I

    .line 185
    move-result v4

    .line 186
    .line 187
    .line 188
    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    .line 189
    .line 190
    goto/16 :goto_3

    .line 191
    .line 192
    .line 193
    :pswitch_5
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 194
    move-result v6

    .line 195
    .line 196
    if-eqz v6, :cond_3

    .line 197
    .line 198
    .line 199
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 200
    move-result-wide v6

    .line 201
    .line 202
    .line 203
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/z;->oneofIntAt(Ljava/lang/Object;J)I

    .line 204
    move-result v4

    .line 205
    .line 206
    .line 207
    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    .line 208
    .line 209
    goto/16 :goto_3

    .line 210
    .line 211
    .line 212
    :pswitch_6
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 213
    move-result v6

    .line 214
    .line 215
    if-eqz v6, :cond_3

    .line 216
    .line 217
    .line 218
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 219
    move-result-wide v6

    .line 220
    .line 221
    .line 222
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/z;->oneofIntAt(Ljava/lang/Object;J)I

    .line 223
    move-result v4

    .line 224
    .line 225
    .line 226
    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    .line 227
    .line 228
    goto/16 :goto_3

    .line 229
    .line 230
    .line 231
    :pswitch_7
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 232
    move-result v6

    .line 233
    .line 234
    if-eqz v6, :cond_3

    .line 235
    .line 236
    .line 237
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 238
    move-result-wide v6

    .line 239
    .line 240
    .line 241
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 242
    move-result-object v4

    .line 243
    .line 244
    check-cast v4, Lcom/google/protobuf/ByteString;

    .line 245
    .line 246
    .line 247
    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 248
    .line 249
    goto/16 :goto_3

    .line 250
    .line 251
    .line 252
    :pswitch_8
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 253
    move-result v6

    .line 254
    .line 255
    if-eqz v6, :cond_3

    .line 256
    .line 257
    .line 258
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 259
    move-result-wide v6

    .line 260
    .line 261
    .line 262
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 263
    move-result-object v4

    .line 264
    .line 265
    .line 266
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    .line 267
    move-result-object v6

    .line 268
    .line 269
    .line 270
    invoke-interface {p2, v5, v4, v6}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/m0;)V

    .line 271
    .line 272
    goto/16 :goto_3

    .line 273
    .line 274
    .line 275
    :pswitch_9
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 276
    move-result v6

    .line 277
    .line 278
    if-eqz v6, :cond_3

    .line 279
    .line 280
    .line 281
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 282
    move-result-wide v6

    .line 283
    .line 284
    .line 285
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 286
    move-result-object v4

    .line 287
    .line 288
    .line 289
    invoke-direct {p0, v5, v4, p2}, Lcom/google/protobuf/z;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 290
    .line 291
    goto/16 :goto_3

    .line 292
    .line 293
    .line 294
    :pswitch_a
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 295
    move-result v6

    .line 296
    .line 297
    if-eqz v6, :cond_3

    .line 298
    .line 299
    .line 300
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 301
    move-result-wide v6

    .line 302
    .line 303
    .line 304
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/z;->oneofBooleanAt(Ljava/lang/Object;J)Z

    .line 305
    move-result v4

    .line 306
    .line 307
    .line 308
    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    .line 309
    .line 310
    goto/16 :goto_3

    .line 311
    .line 312
    .line 313
    :pswitch_b
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 314
    move-result v6

    .line 315
    .line 316
    if-eqz v6, :cond_3

    .line 317
    .line 318
    .line 319
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 320
    move-result-wide v6

    .line 321
    .line 322
    .line 323
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/z;->oneofIntAt(Ljava/lang/Object;J)I

    .line 324
    move-result v4

    .line 325
    .line 326
    .line 327
    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    .line 328
    .line 329
    goto/16 :goto_3

    .line 330
    .line 331
    .line 332
    :pswitch_c
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 333
    move-result v6

    .line 334
    .line 335
    if-eqz v6, :cond_3

    .line 336
    .line 337
    .line 338
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 339
    move-result-wide v6

    .line 340
    .line 341
    .line 342
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/z;->oneofLongAt(Ljava/lang/Object;J)J

    .line 343
    move-result-wide v6

    .line 344
    .line 345
    .line 346
    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    .line 347
    .line 348
    goto/16 :goto_3

    .line 349
    .line 350
    .line 351
    :pswitch_d
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 352
    move-result v6

    .line 353
    .line 354
    if-eqz v6, :cond_3

    .line 355
    .line 356
    .line 357
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 358
    move-result-wide v6

    .line 359
    .line 360
    .line 361
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/z;->oneofIntAt(Ljava/lang/Object;J)I

    .line 362
    move-result v4

    .line 363
    .line 364
    .line 365
    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    .line 366
    .line 367
    goto/16 :goto_3

    .line 368
    .line 369
    .line 370
    :pswitch_e
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 371
    move-result v6

    .line 372
    .line 373
    if-eqz v6, :cond_3

    .line 374
    .line 375
    .line 376
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 377
    move-result-wide v6

    .line 378
    .line 379
    .line 380
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/z;->oneofLongAt(Ljava/lang/Object;J)J

    .line 381
    move-result-wide v6

    .line 382
    .line 383
    .line 384
    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    .line 385
    .line 386
    goto/16 :goto_3

    .line 387
    .line 388
    .line 389
    :pswitch_f
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 390
    move-result v6

    .line 391
    .line 392
    if-eqz v6, :cond_3

    .line 393
    .line 394
    .line 395
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 396
    move-result-wide v6

    .line 397
    .line 398
    .line 399
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/z;->oneofLongAt(Ljava/lang/Object;J)J

    .line 400
    move-result-wide v6

    .line 401
    .line 402
    .line 403
    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    .line 404
    .line 405
    goto/16 :goto_3

    .line 406
    .line 407
    .line 408
    :pswitch_10
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 409
    move-result v6

    .line 410
    .line 411
    if-eqz v6, :cond_3

    .line 412
    .line 413
    .line 414
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 415
    move-result-wide v6

    .line 416
    .line 417
    .line 418
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/z;->oneofFloatAt(Ljava/lang/Object;J)F

    .line 419
    move-result v4

    .line 420
    .line 421
    .line 422
    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    .line 423
    .line 424
    goto/16 :goto_3

    .line 425
    .line 426
    .line 427
    :pswitch_11
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 428
    move-result v6

    .line 429
    .line 430
    if-eqz v6, :cond_3

    .line 431
    .line 432
    .line 433
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 434
    move-result-wide v6

    .line 435
    .line 436
    .line 437
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/z;->oneofDoubleAt(Ljava/lang/Object;J)D

    .line 438
    move-result-wide v6

    .line 439
    .line 440
    .line 441
    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    .line 442
    .line 443
    goto/16 :goto_3

    .line 444
    .line 445
    .line 446
    :pswitch_12
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 447
    move-result-wide v6

    .line 448
    .line 449
    .line 450
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 451
    move-result-object v4

    .line 452
    .line 453
    .line 454
    invoke-direct {p0, p2, v5, v4, v3}, Lcom/google/protobuf/z;->writeMapHelper(Lcom/google/protobuf/Writer;ILjava/lang/Object;I)V

    .line 455
    .line 456
    goto/16 :goto_3

    .line 457
    .line 458
    .line 459
    :pswitch_13
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 460
    move-result v5

    .line 461
    .line 462
    .line 463
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 464
    move-result-wide v6

    .line 465
    .line 466
    .line 467
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 468
    move-result-object v4

    .line 469
    .line 470
    check-cast v4, Ljava/util/List;

    .line 471
    .line 472
    .line 473
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    .line 474
    move-result-object v6

    .line 475
    .line 476
    .line 477
    invoke-static {v5, v4, p2, v6}, Lcom/google/protobuf/o0;->writeGroupList(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/m0;)V

    .line 478
    .line 479
    goto/16 :goto_3

    .line 480
    .line 481
    .line 482
    :pswitch_14
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 483
    move-result v5

    .line 484
    .line 485
    .line 486
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 487
    move-result-wide v6

    .line 488
    .line 489
    .line 490
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 491
    move-result-object v4

    .line 492
    .line 493
    check-cast v4, Ljava/util/List;

    .line 494
    .line 495
    .line 496
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/o0;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 497
    .line 498
    goto/16 :goto_3

    .line 499
    .line 500
    .line 501
    :pswitch_15
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 502
    move-result v5

    .line 503
    .line 504
    .line 505
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 506
    move-result-wide v6

    .line 507
    .line 508
    .line 509
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 510
    move-result-object v4

    .line 511
    .line 512
    check-cast v4, Ljava/util/List;

    .line 513
    .line 514
    .line 515
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/o0;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 516
    .line 517
    goto/16 :goto_3

    .line 518
    .line 519
    .line 520
    :pswitch_16
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 521
    move-result v5

    .line 522
    .line 523
    .line 524
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 525
    move-result-wide v6

    .line 526
    .line 527
    .line 528
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 529
    move-result-object v4

    .line 530
    .line 531
    check-cast v4, Ljava/util/List;

    .line 532
    .line 533
    .line 534
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/o0;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 535
    .line 536
    goto/16 :goto_3

    .line 537
    .line 538
    .line 539
    :pswitch_17
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 540
    move-result v5

    .line 541
    .line 542
    .line 543
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 544
    move-result-wide v6

    .line 545
    .line 546
    .line 547
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 548
    move-result-object v4

    .line 549
    .line 550
    check-cast v4, Ljava/util/List;

    .line 551
    .line 552
    .line 553
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/o0;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 554
    .line 555
    goto/16 :goto_3

    .line 556
    .line 557
    .line 558
    :pswitch_18
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 559
    move-result v5

    .line 560
    .line 561
    .line 562
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 563
    move-result-wide v6

    .line 564
    .line 565
    .line 566
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 567
    move-result-object v4

    .line 568
    .line 569
    check-cast v4, Ljava/util/List;

    .line 570
    .line 571
    .line 572
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/o0;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 573
    .line 574
    goto/16 :goto_3

    .line 575
    .line 576
    .line 577
    :pswitch_19
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 578
    move-result v5

    .line 579
    .line 580
    .line 581
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 582
    move-result-wide v6

    .line 583
    .line 584
    .line 585
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 586
    move-result-object v4

    .line 587
    .line 588
    check-cast v4, Ljava/util/List;

    .line 589
    .line 590
    .line 591
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/o0;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 592
    .line 593
    goto/16 :goto_3

    .line 594
    .line 595
    .line 596
    :pswitch_1a
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 597
    move-result v5

    .line 598
    .line 599
    .line 600
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 601
    move-result-wide v6

    .line 602
    .line 603
    .line 604
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 605
    move-result-object v4

    .line 606
    .line 607
    check-cast v4, Ljava/util/List;

    .line 608
    .line 609
    .line 610
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/o0;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 611
    .line 612
    goto/16 :goto_3

    .line 613
    .line 614
    .line 615
    :pswitch_1b
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 616
    move-result v5

    .line 617
    .line 618
    .line 619
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 620
    move-result-wide v6

    .line 621
    .line 622
    .line 623
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 624
    move-result-object v4

    .line 625
    .line 626
    check-cast v4, Ljava/util/List;

    .line 627
    .line 628
    .line 629
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/o0;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 630
    .line 631
    goto/16 :goto_3

    .line 632
    .line 633
    .line 634
    :pswitch_1c
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 635
    move-result v5

    .line 636
    .line 637
    .line 638
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 639
    move-result-wide v6

    .line 640
    .line 641
    .line 642
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 643
    move-result-object v4

    .line 644
    .line 645
    check-cast v4, Ljava/util/List;

    .line 646
    .line 647
    .line 648
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/o0;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 649
    .line 650
    goto/16 :goto_3

    .line 651
    .line 652
    .line 653
    :pswitch_1d
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 654
    move-result v5

    .line 655
    .line 656
    .line 657
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 658
    move-result-wide v6

    .line 659
    .line 660
    .line 661
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 662
    move-result-object v4

    .line 663
    .line 664
    check-cast v4, Ljava/util/List;

    .line 665
    .line 666
    .line 667
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/o0;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 668
    .line 669
    goto/16 :goto_3

    .line 670
    .line 671
    .line 672
    :pswitch_1e
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 673
    move-result v5

    .line 674
    .line 675
    .line 676
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 677
    move-result-wide v6

    .line 678
    .line 679
    .line 680
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 681
    move-result-object v4

    .line 682
    .line 683
    check-cast v4, Ljava/util/List;

    .line 684
    .line 685
    .line 686
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/o0;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 687
    .line 688
    goto/16 :goto_3

    .line 689
    .line 690
    .line 691
    :pswitch_1f
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 692
    move-result v5

    .line 693
    .line 694
    .line 695
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 696
    move-result-wide v6

    .line 697
    .line 698
    .line 699
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 700
    move-result-object v4

    .line 701
    .line 702
    check-cast v4, Ljava/util/List;

    .line 703
    .line 704
    .line 705
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/o0;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 706
    .line 707
    goto/16 :goto_3

    .line 708
    .line 709
    .line 710
    :pswitch_20
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 711
    move-result v5

    .line 712
    .line 713
    .line 714
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 715
    move-result-wide v6

    .line 716
    .line 717
    .line 718
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 719
    move-result-object v4

    .line 720
    .line 721
    check-cast v4, Ljava/util/List;

    .line 722
    .line 723
    .line 724
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/o0;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 725
    .line 726
    goto/16 :goto_3

    .line 727
    .line 728
    .line 729
    :pswitch_21
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 730
    move-result v5

    .line 731
    .line 732
    .line 733
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 734
    move-result-wide v6

    .line 735
    .line 736
    .line 737
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 738
    move-result-object v4

    .line 739
    .line 740
    check-cast v4, Ljava/util/List;

    .line 741
    .line 742
    .line 743
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/o0;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 744
    .line 745
    goto/16 :goto_3

    .line 746
    .line 747
    .line 748
    :pswitch_22
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 749
    move-result v5

    .line 750
    .line 751
    .line 752
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 753
    move-result-wide v8

    .line 754
    .line 755
    .line 756
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 757
    move-result-object v4

    .line 758
    .line 759
    check-cast v4, Ljava/util/List;

    .line 760
    .line 761
    .line 762
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/o0;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 763
    .line 764
    goto/16 :goto_3

    .line 765
    .line 766
    .line 767
    :pswitch_23
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 768
    move-result v5

    .line 769
    .line 770
    .line 771
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 772
    move-result-wide v8

    .line 773
    .line 774
    .line 775
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 776
    move-result-object v4

    .line 777
    .line 778
    check-cast v4, Ljava/util/List;

    .line 779
    .line 780
    .line 781
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/o0;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 782
    .line 783
    goto/16 :goto_3

    .line 784
    .line 785
    .line 786
    :pswitch_24
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 787
    move-result v5

    .line 788
    .line 789
    .line 790
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 791
    move-result-wide v8

    .line 792
    .line 793
    .line 794
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 795
    move-result-object v4

    .line 796
    .line 797
    check-cast v4, Ljava/util/List;

    .line 798
    .line 799
    .line 800
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/o0;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 801
    .line 802
    goto/16 :goto_3

    .line 803
    .line 804
    .line 805
    :pswitch_25
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 806
    move-result v5

    .line 807
    .line 808
    .line 809
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 810
    move-result-wide v8

    .line 811
    .line 812
    .line 813
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 814
    move-result-object v4

    .line 815
    .line 816
    check-cast v4, Ljava/util/List;

    .line 817
    .line 818
    .line 819
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/o0;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 820
    .line 821
    goto/16 :goto_3

    .line 822
    .line 823
    .line 824
    :pswitch_26
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 825
    move-result v5

    .line 826
    .line 827
    .line 828
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 829
    move-result-wide v8

    .line 830
    .line 831
    .line 832
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 833
    move-result-object v4

    .line 834
    .line 835
    check-cast v4, Ljava/util/List;

    .line 836
    .line 837
    .line 838
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/o0;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 839
    .line 840
    goto/16 :goto_3

    .line 841
    .line 842
    .line 843
    :pswitch_27
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 844
    move-result v5

    .line 845
    .line 846
    .line 847
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 848
    move-result-wide v8

    .line 849
    .line 850
    .line 851
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 852
    move-result-object v4

    .line 853
    .line 854
    check-cast v4, Ljava/util/List;

    .line 855
    .line 856
    .line 857
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/o0;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 858
    .line 859
    goto/16 :goto_3

    .line 860
    .line 861
    .line 862
    :pswitch_28
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 863
    move-result v5

    .line 864
    .line 865
    .line 866
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 867
    move-result-wide v6

    .line 868
    .line 869
    .line 870
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 871
    move-result-object v4

    .line 872
    .line 873
    check-cast v4, Ljava/util/List;

    .line 874
    .line 875
    .line 876
    invoke-static {v5, v4, p2}, Lcom/google/protobuf/o0;->writeBytesList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    .line 877
    .line 878
    goto/16 :goto_3

    .line 879
    .line 880
    .line 881
    :pswitch_29
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 882
    move-result v5

    .line 883
    .line 884
    .line 885
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 886
    move-result-wide v6

    .line 887
    .line 888
    .line 889
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 890
    move-result-object v4

    .line 891
    .line 892
    check-cast v4, Ljava/util/List;

    .line 893
    .line 894
    .line 895
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    .line 896
    move-result-object v6

    .line 897
    .line 898
    .line 899
    invoke-static {v5, v4, p2, v6}, Lcom/google/protobuf/o0;->writeMessageList(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/m0;)V

    .line 900
    .line 901
    goto/16 :goto_3

    .line 902
    .line 903
    .line 904
    :pswitch_2a
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 905
    move-result v5

    .line 906
    .line 907
    .line 908
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 909
    move-result-wide v6

    .line 910
    .line 911
    .line 912
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 913
    move-result-object v4

    .line 914
    .line 915
    check-cast v4, Ljava/util/List;

    .line 916
    .line 917
    .line 918
    invoke-static {v5, v4, p2}, Lcom/google/protobuf/o0;->writeStringList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    .line 919
    .line 920
    goto/16 :goto_3

    .line 921
    .line 922
    .line 923
    :pswitch_2b
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 924
    move-result v5

    .line 925
    .line 926
    .line 927
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 928
    move-result-wide v8

    .line 929
    .line 930
    .line 931
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 932
    move-result-object v4

    .line 933
    .line 934
    check-cast v4, Ljava/util/List;

    .line 935
    .line 936
    .line 937
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/o0;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 938
    .line 939
    goto/16 :goto_3

    .line 940
    .line 941
    .line 942
    :pswitch_2c
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 943
    move-result v5

    .line 944
    .line 945
    .line 946
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 947
    move-result-wide v8

    .line 948
    .line 949
    .line 950
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 951
    move-result-object v4

    .line 952
    .line 953
    check-cast v4, Ljava/util/List;

    .line 954
    .line 955
    .line 956
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/o0;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 957
    .line 958
    goto/16 :goto_3

    .line 959
    .line 960
    .line 961
    :pswitch_2d
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 962
    move-result v5

    .line 963
    .line 964
    .line 965
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 966
    move-result-wide v8

    .line 967
    .line 968
    .line 969
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 970
    move-result-object v4

    .line 971
    .line 972
    check-cast v4, Ljava/util/List;

    .line 973
    .line 974
    .line 975
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/o0;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 976
    .line 977
    goto/16 :goto_3

    .line 978
    .line 979
    .line 980
    :pswitch_2e
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 981
    move-result v5

    .line 982
    .line 983
    .line 984
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 985
    move-result-wide v8

    .line 986
    .line 987
    .line 988
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 989
    move-result-object v4

    .line 990
    .line 991
    check-cast v4, Ljava/util/List;

    .line 992
    .line 993
    .line 994
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/o0;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 995
    .line 996
    goto/16 :goto_3

    .line 997
    .line 998
    .line 999
    :pswitch_2f
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 1000
    move-result v5

    .line 1001
    .line 1002
    .line 1003
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 1004
    move-result-wide v8

    .line 1005
    .line 1006
    .line 1007
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1008
    move-result-object v4

    .line 1009
    .line 1010
    check-cast v4, Ljava/util/List;

    .line 1011
    .line 1012
    .line 1013
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/o0;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 1014
    .line 1015
    goto/16 :goto_3

    .line 1016
    .line 1017
    .line 1018
    :pswitch_30
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 1019
    move-result v5

    .line 1020
    .line 1021
    .line 1022
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 1023
    move-result-wide v8

    .line 1024
    .line 1025
    .line 1026
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1027
    move-result-object v4

    .line 1028
    .line 1029
    check-cast v4, Ljava/util/List;

    .line 1030
    .line 1031
    .line 1032
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/o0;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 1033
    .line 1034
    goto/16 :goto_3

    .line 1035
    .line 1036
    .line 1037
    :pswitch_31
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 1038
    move-result v5

    .line 1039
    .line 1040
    .line 1041
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 1042
    move-result-wide v8

    .line 1043
    .line 1044
    .line 1045
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1046
    move-result-object v4

    .line 1047
    .line 1048
    check-cast v4, Ljava/util/List;

    .line 1049
    .line 1050
    .line 1051
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/o0;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 1052
    .line 1053
    goto/16 :goto_3

    .line 1054
    .line 1055
    .line 1056
    :pswitch_32
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 1057
    move-result v5

    .line 1058
    .line 1059
    .line 1060
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 1061
    move-result-wide v8

    .line 1062
    .line 1063
    .line 1064
    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1065
    move-result-object v4

    .line 1066
    .line 1067
    check-cast v4, Ljava/util/List;

    .line 1068
    .line 1069
    .line 1070
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/o0;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 1071
    .line 1072
    goto/16 :goto_3

    .line 1073
    .line 1074
    .line 1075
    :pswitch_33
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1076
    move-result v6

    .line 1077
    .line 1078
    if-eqz v6, :cond_3

    .line 1079
    .line 1080
    .line 1081
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 1082
    move-result-wide v6

    .line 1083
    .line 1084
    .line 1085
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1086
    move-result-object v4

    .line 1087
    .line 1088
    .line 1089
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    .line 1090
    move-result-object v6

    .line 1091
    .line 1092
    .line 1093
    invoke-interface {p2, v5, v4, v6}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/google/protobuf/m0;)V

    .line 1094
    .line 1095
    goto/16 :goto_3

    .line 1096
    .line 1097
    .line 1098
    :pswitch_34
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1099
    move-result v6

    .line 1100
    .line 1101
    if-eqz v6, :cond_3

    .line 1102
    .line 1103
    .line 1104
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 1105
    move-result-wide v6

    .line 1106
    .line 1107
    .line 1108
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/z;->longAt(Ljava/lang/Object;J)J

    .line 1109
    move-result-wide v6

    .line 1110
    .line 1111
    .line 1112
    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    .line 1113
    .line 1114
    goto/16 :goto_3

    .line 1115
    .line 1116
    .line 1117
    :pswitch_35
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1118
    move-result v6

    .line 1119
    .line 1120
    if-eqz v6, :cond_3

    .line 1121
    .line 1122
    .line 1123
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 1124
    move-result-wide v6

    .line 1125
    .line 1126
    .line 1127
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/z;->intAt(Ljava/lang/Object;J)I

    .line 1128
    move-result v4

    .line 1129
    .line 1130
    .line 1131
    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    .line 1132
    .line 1133
    goto/16 :goto_3

    .line 1134
    .line 1135
    .line 1136
    :pswitch_36
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1137
    move-result v6

    .line 1138
    .line 1139
    if-eqz v6, :cond_3

    .line 1140
    .line 1141
    .line 1142
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 1143
    move-result-wide v6

    .line 1144
    .line 1145
    .line 1146
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/z;->longAt(Ljava/lang/Object;J)J

    .line 1147
    move-result-wide v6

    .line 1148
    .line 1149
    .line 1150
    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    .line 1151
    .line 1152
    goto/16 :goto_3

    .line 1153
    .line 1154
    .line 1155
    :pswitch_37
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1156
    move-result v6

    .line 1157
    .line 1158
    if-eqz v6, :cond_3

    .line 1159
    .line 1160
    .line 1161
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 1162
    move-result-wide v6

    .line 1163
    .line 1164
    .line 1165
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/z;->intAt(Ljava/lang/Object;J)I

    .line 1166
    move-result v4

    .line 1167
    .line 1168
    .line 1169
    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    .line 1170
    .line 1171
    goto/16 :goto_3

    .line 1172
    .line 1173
    .line 1174
    :pswitch_38
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1175
    move-result v6

    .line 1176
    .line 1177
    if-eqz v6, :cond_3

    .line 1178
    .line 1179
    .line 1180
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 1181
    move-result-wide v6

    .line 1182
    .line 1183
    .line 1184
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/z;->intAt(Ljava/lang/Object;J)I

    .line 1185
    move-result v4

    .line 1186
    .line 1187
    .line 1188
    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    .line 1189
    .line 1190
    goto/16 :goto_3

    .line 1191
    .line 1192
    .line 1193
    :pswitch_39
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1194
    move-result v6

    .line 1195
    .line 1196
    if-eqz v6, :cond_3

    .line 1197
    .line 1198
    .line 1199
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 1200
    move-result-wide v6

    .line 1201
    .line 1202
    .line 1203
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/z;->intAt(Ljava/lang/Object;J)I

    .line 1204
    move-result v4

    .line 1205
    .line 1206
    .line 1207
    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    .line 1208
    .line 1209
    goto/16 :goto_3

    .line 1210
    .line 1211
    .line 1212
    :pswitch_3a
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1213
    move-result v6

    .line 1214
    .line 1215
    if-eqz v6, :cond_3

    .line 1216
    .line 1217
    .line 1218
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 1219
    move-result-wide v6

    .line 1220
    .line 1221
    .line 1222
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1223
    move-result-object v4

    .line 1224
    .line 1225
    check-cast v4, Lcom/google/protobuf/ByteString;

    .line 1226
    .line 1227
    .line 1228
    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1229
    .line 1230
    goto/16 :goto_3

    .line 1231
    .line 1232
    .line 1233
    :pswitch_3b
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1234
    move-result v6

    .line 1235
    .line 1236
    if-eqz v6, :cond_3

    .line 1237
    .line 1238
    .line 1239
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 1240
    move-result-wide v6

    .line 1241
    .line 1242
    .line 1243
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1244
    move-result-object v4

    .line 1245
    .line 1246
    .line 1247
    invoke-direct {p0, v3}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    .line 1248
    move-result-object v6

    .line 1249
    .line 1250
    .line 1251
    invoke-interface {p2, v5, v4, v6}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/m0;)V

    .line 1252
    .line 1253
    goto/16 :goto_3

    .line 1254
    .line 1255
    .line 1256
    :pswitch_3c
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1257
    move-result v6

    .line 1258
    .line 1259
    if-eqz v6, :cond_3

    .line 1260
    .line 1261
    .line 1262
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 1263
    move-result-wide v6

    .line 1264
    .line 1265
    .line 1266
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1267
    move-result-object v4

    .line 1268
    .line 1269
    .line 1270
    invoke-direct {p0, v5, v4, p2}, Lcom/google/protobuf/z;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 1271
    .line 1272
    goto/16 :goto_3

    .line 1273
    .line 1274
    .line 1275
    :pswitch_3d
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1276
    move-result v6

    .line 1277
    .line 1278
    if-eqz v6, :cond_3

    .line 1279
    .line 1280
    .line 1281
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 1282
    move-result-wide v6

    .line 1283
    .line 1284
    .line 1285
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/z;->booleanAt(Ljava/lang/Object;J)Z

    .line 1286
    move-result v4

    .line 1287
    .line 1288
    .line 1289
    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    .line 1290
    .line 1291
    goto/16 :goto_3

    .line 1292
    .line 1293
    .line 1294
    :pswitch_3e
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1295
    move-result v6

    .line 1296
    .line 1297
    if-eqz v6, :cond_3

    .line 1298
    .line 1299
    .line 1300
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 1301
    move-result-wide v6

    .line 1302
    .line 1303
    .line 1304
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/z;->intAt(Ljava/lang/Object;J)I

    .line 1305
    move-result v4

    .line 1306
    .line 1307
    .line 1308
    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    .line 1309
    goto :goto_3

    .line 1310
    .line 1311
    .line 1312
    :pswitch_3f
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1313
    move-result v6

    .line 1314
    .line 1315
    if-eqz v6, :cond_3

    .line 1316
    .line 1317
    .line 1318
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 1319
    move-result-wide v6

    .line 1320
    .line 1321
    .line 1322
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/z;->longAt(Ljava/lang/Object;J)J

    .line 1323
    move-result-wide v6

    .line 1324
    .line 1325
    .line 1326
    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    .line 1327
    goto :goto_3

    .line 1328
    .line 1329
    .line 1330
    :pswitch_40
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1331
    move-result v6

    .line 1332
    .line 1333
    if-eqz v6, :cond_3

    .line 1334
    .line 1335
    .line 1336
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 1337
    move-result-wide v6

    .line 1338
    .line 1339
    .line 1340
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/z;->intAt(Ljava/lang/Object;J)I

    .line 1341
    move-result v4

    .line 1342
    .line 1343
    .line 1344
    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    .line 1345
    goto :goto_3

    .line 1346
    .line 1347
    .line 1348
    :pswitch_41
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1349
    move-result v6

    .line 1350
    .line 1351
    if-eqz v6, :cond_3

    .line 1352
    .line 1353
    .line 1354
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 1355
    move-result-wide v6

    .line 1356
    .line 1357
    .line 1358
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/z;->longAt(Ljava/lang/Object;J)J

    .line 1359
    move-result-wide v6

    .line 1360
    .line 1361
    .line 1362
    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    .line 1363
    goto :goto_3

    .line 1364
    .line 1365
    .line 1366
    :pswitch_42
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1367
    move-result v6

    .line 1368
    .line 1369
    if-eqz v6, :cond_3

    .line 1370
    .line 1371
    .line 1372
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 1373
    move-result-wide v6

    .line 1374
    .line 1375
    .line 1376
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/z;->longAt(Ljava/lang/Object;J)J

    .line 1377
    move-result-wide v6

    .line 1378
    .line 1379
    .line 1380
    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    .line 1381
    goto :goto_3

    .line 1382
    .line 1383
    .line 1384
    :pswitch_43
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1385
    move-result v6

    .line 1386
    .line 1387
    if-eqz v6, :cond_3

    .line 1388
    .line 1389
    .line 1390
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 1391
    move-result-wide v6

    .line 1392
    .line 1393
    .line 1394
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/z;->floatAt(Ljava/lang/Object;J)F

    .line 1395
    move-result v4

    .line 1396
    .line 1397
    .line 1398
    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    .line 1399
    goto :goto_3

    .line 1400
    .line 1401
    .line 1402
    :pswitch_44
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 1403
    move-result v6

    .line 1404
    .line 1405
    if-eqz v6, :cond_3

    .line 1406
    .line 1407
    .line 1408
    invoke-static {v4}, Lcom/google/protobuf/z;->offset(I)J

    .line 1409
    move-result-wide v6

    .line 1410
    .line 1411
    .line 1412
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/z;->doubleAt(Ljava/lang/Object;J)D

    .line 1413
    move-result-wide v6

    .line 1414
    .line 1415
    .line 1416
    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

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
    iget-object p1, p0, Lcom/google/protobuf/z;->extensionSchema:Lcom/google/protobuf/j;

    .line 1425
    .line 1426
    .line 1427
    invoke-virtual {p1, p2, v2}, Lcom/google/protobuf/j;->serializeExtension(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

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

    .line 1445
    .line 1446
    .line 1447
    .line 1448
    .line 1449
    .line 1450
    .line 1451
    .line 1452
    .line 1453
    .line 1454
    .line 1455
    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    .line 1462
    .line 1463
    .line 1464
    .line 1465
    .line 1466
    .line 1467
    .line 1468
    .line 1469
    .line 1470
    .line 1471
    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    .line 1479
    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    .line 1490
    .line 1491
    .line 1492
    .line 1493
    .line 1494
    .line 1495
    .line 1496
    .line 1497
    .line 1498
    .line 1499
    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    .line 1510
    .line 1511
    .line 1512
    .line 1513
    .line 1514
    .line 1515
    .line 1516
    .line 1517
    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    .line 1523
    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    .line 1530
    .line 1531
    .line 1532
    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    .line 1540
    .line 1541
    .line 1542
    .line 1543
    .line 1544
    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    .line 1551
    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    .line 1559
    .line 1560
    .line 1561
    .line 1562
    .line 1563
    .line 1564
    .line 1565
    .line 1566
    .line 1567
    .line 1568
    .line 1569
    .line 1570
    .line 1571
    .line 1572
    .line 1573
    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    .line 1579
    .line 1580
    .line 1581
    .line 1582
    .line 1583
    .line 1584
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

.method private writeMapHelper(Lcom/google/protobuf/Writer;ILjava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Writer;",
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
    iget-object v0, p0, Lcom/google/protobuf/z;->mapFieldSchema:Lcom/google/protobuf/t;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p4}, Lcom/google/protobuf/z;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    .line 8
    move-result-object p4

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p4}, Lcom/google/protobuf/t;->forMapMetadata(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$b;

    .line 12
    move-result-object p4

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/protobuf/z;->mapFieldSchema:Lcom/google/protobuf/t;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p3}, Lcom/google/protobuf/t;->forMapData(Ljava/lang/Object;)Ljava/util/Map;

    .line 18
    move-result-object p3

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, p2, p4, p3}, Lcom/google/protobuf/Writer;->writeMap(ILcom/google/protobuf/MapEntryLite$b;Ljava/util/Map;)V

    .line 22
    :cond_0
    return-void
.end method

.method private writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V
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
    invoke-interface {p3, p1, p2}, Lcom/google/protobuf/Writer;->writeString(ILjava/lang/String;)V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    check-cast p2, Lcom/google/protobuf/ByteString;

    .line 13
    .line 14
    .line 15
    invoke-interface {p3, p1, p2}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 16
    :goto_0
    return-void
.end method

.method private writeUnknownInMessageTo(Lcom/google/protobuf/r0;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/r0<",
            "TUT;TUB;>;TT;",
            "Lcom/google/protobuf/Writer;",
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
    invoke-virtual {p1, p2}, Lcom/google/protobuf/r0;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/r0;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 8
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/z;->buffer:[I

    .line 1
    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-direct {p0, p1, p2, v2}, Lcom/google/protobuf/z;->equals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/z;->unknownFieldSchema:Lcom/google/protobuf/r0;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/protobuf/r0;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/protobuf/z;->unknownFieldSchema:Lcom/google/protobuf/r0;

    .line 4
    invoke-virtual {v2, p2}, Lcom/google/protobuf/r0;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p0, Lcom/google/protobuf/z;->hasExtensions:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/protobuf/z;->extensionSchema:Lcom/google/protobuf/j;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/protobuf/j;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object p1

    iget-object v0, p0, Lcom/google/protobuf/z;->extensionSchema:Lcom/google/protobuf/j;

    .line 7
    invoke-virtual {v0, p2}, Lcom/google/protobuf/j;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object p2

    .line 8
    invoke-virtual {p1, p2}, Lcom/google/protobuf/FieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method getSchemaSize()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/protobuf/z;->buffer:[I

    .line 3
    array-length v0, v0

    .line 4
    .line 5
    mul-int/lit8 v0, v0, 0x3

    .line 6
    return v0
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
    iget-boolean v0, p0, Lcom/google/protobuf/z;->proto3:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/google/protobuf/z;->getSerializedSizeProto3(Ljava/lang/Object;)I

    .line 8
    move-result p1

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/protobuf/z;->getSerializedSizeProto2(Ljava/lang/Object;)I

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
    iget-object v0, p0, Lcom/google/protobuf/z;->buffer:[I

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
    invoke-direct {p0, v1}, Lcom/google/protobuf/z;->typeAndOffsetAt(I)I

    .line 11
    move-result v3

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v1}, Lcom/google/protobuf/z;->numberAt(I)I

    .line 15
    move-result v4

    .line 16
    .line 17
    .line 18
    invoke-static {v3}, Lcom/google/protobuf/z;->offset(I)J

    .line 19
    move-result-wide v5

    .line 20
    .line 21
    .line 22
    invoke-static {v3}, Lcom/google/protobuf/z;->type(I)I

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
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 34
    move-result v3

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

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
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

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
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/z;->oneofLongAt(Ljava/lang/Object;J)J

    .line 61
    move-result-wide v3

    .line 62
    .line 63
    .line 64
    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 65
    move-result v3

    .line 66
    goto :goto_1

    .line 67
    .line 68
    .line 69
    :pswitch_2
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

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
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/z;->oneofIntAt(Ljava/lang/Object;J)I

    .line 78
    move-result v3

    .line 79
    goto :goto_1

    .line 80
    .line 81
    .line 82
    :pswitch_3
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

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
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/z;->oneofLongAt(Ljava/lang/Object;J)J

    .line 91
    move-result-wide v3

    .line 92
    .line 93
    .line 94
    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 95
    move-result v3

    .line 96
    goto :goto_1

    .line 97
    .line 98
    .line 99
    :pswitch_4
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

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
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/z;->oneofIntAt(Ljava/lang/Object;J)I

    .line 108
    move-result v3

    .line 109
    goto :goto_1

    .line 110
    .line 111
    .line 112
    :pswitch_5
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

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
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/z;->oneofIntAt(Ljava/lang/Object;J)I

    .line 121
    move-result v3

    .line 122
    goto :goto_1

    .line 123
    .line 124
    .line 125
    :pswitch_6
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

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
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/z;->oneofIntAt(Ljava/lang/Object;J)I

    .line 134
    move-result v3

    .line 135
    goto :goto_1

    .line 136
    .line 137
    .line 138
    :pswitch_7
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

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
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

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
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    .line 156
    move-result v3

    .line 157
    .line 158
    if-eqz v3, :cond_1

    .line 159
    .line 160
    .line 161
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

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
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

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
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

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
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

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
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/z;->oneofBooleanAt(Ljava/lang/Object;J)Z

    .line 201
    move-result v3

    .line 202
    .line 203
    .line 204
    invoke-static {v3}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 205
    move-result v3

    .line 206
    .line 207
    goto/16 :goto_1

    .line 208
    .line 209
    .line 210
    :pswitch_b
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

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
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/z;->oneofIntAt(Ljava/lang/Object;J)I

    .line 219
    move-result v3

    .line 220
    .line 221
    goto/16 :goto_1

    .line 222
    .line 223
    .line 224
    :pswitch_c
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

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
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/z;->oneofLongAt(Ljava/lang/Object;J)J

    .line 233
    move-result-wide v3

    .line 234
    .line 235
    .line 236
    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 237
    move-result v3

    .line 238
    .line 239
    goto/16 :goto_1

    .line 240
    .line 241
    .line 242
    :pswitch_d
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

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
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/z;->oneofIntAt(Ljava/lang/Object;J)I

    .line 251
    move-result v3

    .line 252
    .line 253
    goto/16 :goto_1

    .line 254
    .line 255
    .line 256
    :pswitch_e
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

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
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/z;->oneofLongAt(Ljava/lang/Object;J)J

    .line 265
    move-result-wide v3

    .line 266
    .line 267
    .line 268
    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 269
    move-result v3

    .line 270
    .line 271
    goto/16 :goto_1

    .line 272
    .line 273
    .line 274
    :pswitch_f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

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
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/z;->oneofLongAt(Ljava/lang/Object;J)J

    .line 283
    move-result-wide v3

    .line 284
    .line 285
    .line 286
    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 287
    move-result v3

    .line 288
    .line 289
    goto/16 :goto_1

    .line 290
    .line 291
    .line 292
    :pswitch_10
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

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
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/z;->oneofFloatAt(Ljava/lang/Object;J)F

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
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

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
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/z;->oneofDoubleAt(Ljava/lang/Object;J)D

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
    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

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
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

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
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

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
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

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
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->getLong(Ljava/lang/Object;J)J

    .line 374
    move-result-wide v3

    .line 375
    .line 376
    .line 377
    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

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
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

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
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->getLong(Ljava/lang/Object;J)J

    .line 394
    move-result-wide v3

    .line 395
    .line 396
    .line 397
    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

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
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

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
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

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
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

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
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

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
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

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
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

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
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->getBoolean(Ljava/lang/Object;J)Z

    .line 467
    move-result v3

    .line 468
    .line 469
    .line 470
    invoke-static {v3}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

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
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

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
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->getLong(Ljava/lang/Object;J)J

    .line 487
    move-result-wide v3

    .line 488
    .line 489
    .line 490
    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

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
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->getInt(Ljava/lang/Object;J)I

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
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->getLong(Ljava/lang/Object;J)J

    .line 507
    move-result-wide v3

    .line 508
    .line 509
    .line 510
    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

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
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->getLong(Ljava/lang/Object;J)J

    .line 519
    move-result-wide v3

    .line 520
    .line 521
    .line 522
    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

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
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->getFloat(Ljava/lang/Object;J)F

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
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->getDouble(Ljava/lang/Object;J)D

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
    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

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
    iget-object v0, p0, Lcom/google/protobuf/z;->unknownFieldSchema:Lcom/google/protobuf/r0;

    .line 562
    .line 563
    .line 564
    invoke-virtual {v0, p1}, Lcom/google/protobuf/r0;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget-boolean v0, p0, Lcom/google/protobuf/z;->hasExtensions:Z

    .line 573
    .line 574
    if-eqz v0, :cond_3

    .line 575
    .line 576
    mul-int/lit8 v2, v2, 0x35

    .line 577
    .line 578
    iget-object v0, p0, Lcom/google/protobuf/z;->extensionSchema:Lcom/google/protobuf/j;

    .line 579
    .line 580
    .line 581
    invoke-virtual {v0, p1}, Lcom/google/protobuf/j;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    .line 582
    move-result-object p1

    .line 583
    .line 584
    .line 585
    invoke-virtual {p1}, Lcom/google/protobuf/FieldSet;->hashCode()I

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
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const v8, 0xfffff

    const/4 v9, 0x0

    move v0, v8

    move v1, v9

    move v10, v1

    :goto_0
    iget v2, v6, Lcom/google/protobuf/z;->checkInitializedCount:I

    const/4 v3, 0x1

    if-ge v10, v2, :cond_8

    iget-object v2, v6, Lcom/google/protobuf/z;->intArray:[I

    .line 1
    aget v11, v2, v10

    .line 2
    invoke-direct {v6, v11}, Lcom/google/protobuf/z;->numberAt(I)I

    move-result v12

    .line 3
    invoke-direct {v6, v11}, Lcom/google/protobuf/z;->typeAndOffsetAt(I)I

    move-result v13

    iget-object v2, v6, Lcom/google/protobuf/z;->buffer:[I

    add-int/lit8 v4, v11, 0x2

    .line 4
    aget v2, v2, v4

    and-int v4, v2, v8

    ushr-int/lit8 v2, v2, 0x14

    shl-int v14, v3, v2

    if-eq v4, v0, :cond_1

    if-eq v4, v8, :cond_0

    sget-object v0, Lcom/google/protobuf/z;->UNSAFE:Lsun/misc/Unsafe;

    int-to-long v1, v4

    .line 5
    invoke-virtual {v0, v7, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    :cond_0
    move/from16 v16, v1

    move v15, v4

    goto :goto_1

    :cond_1
    move v15, v0

    move/from16 v16, v1

    .line 6
    :goto_1
    invoke-static {v13}, Lcom/google/protobuf/z;->isRequired(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v0

    if-nez v0, :cond_2

    return v9

    .line 8
    :cond_2
    invoke-static {v13}, Lcom/google/protobuf/z;->type(I)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_6

    const/16 v1, 0x11

    if-eq v0, v1, :cond_6

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_5

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_4

    const/16 v1, 0x44

    if-eq v0, v1, :cond_4

    const/16 v1, 0x31

    if-eq v0, v1, :cond_5

    const/16 v1, 0x32

    if-eq v0, v1, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    invoke-direct {v6, v7, v13, v11}, Lcom/google/protobuf/z;->isMapInitialized(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_7

    return v9

    .line 10
    :cond_4
    invoke-direct {v6, v7, v12, v11}, Lcom/google/protobuf/z;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11
    invoke-direct {v6, v11}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lcom/google/protobuf/z;->isInitialized(Ljava/lang/Object;ILcom/google/protobuf/m0;)Z

    move-result v0

    if-nez v0, :cond_7

    return v9

    .line 12
    :cond_5
    invoke-direct {v6, v7, v13, v11}, Lcom/google/protobuf/z;->isListInitialized(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_7

    return v9

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 14
    invoke-direct {v6, v11}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lcom/google/protobuf/z;->isInitialized(Ljava/lang/Object;ILcom/google/protobuf/m0;)Z

    move-result v0

    if-nez v0, :cond_7

    return v9

    :cond_7
    :goto_2
    add-int/lit8 v10, v10, 0x1

    move v0, v15

    move/from16 v1, v16

    goto/16 :goto_0

    :cond_8
    iget-boolean v0, v6, Lcom/google/protobuf/z;->hasExtensions:Z

    if-eqz v0, :cond_9

    iget-object v0, v6, Lcom/google/protobuf/z;->extensionSchema:Lcom/google/protobuf/j;

    .line 15
    invoke-virtual {v0, v7}, Lcom/google/protobuf/j;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    return v9

    :cond_9
    return v3
.end method

.method public makeImmutable(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/protobuf/z;->isMutable(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/GeneratedMessageLite;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    move-object v0, p1

    .line 13
    .line 14
    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->clearMemoizedSerializedSize()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->clearMemoizedHashCode()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->markImmutable()V

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/z;->buffer:[I

    .line 26
    array-length v0, v0

    .line 27
    const/4 v1, 0x0

    .line 28
    .line 29
    :goto_0
    if-ge v1, v0, :cond_4

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v1}, Lcom/google/protobuf/z;->typeAndOffsetAt(I)I

    .line 33
    move-result v2

    .line 34
    .line 35
    .line 36
    invoke-static {v2}, Lcom/google/protobuf/z;->offset(I)J

    .line 37
    move-result-wide v3

    .line 38
    .line 39
    .line 40
    invoke-static {v2}, Lcom/google/protobuf/z;->type(I)I

    .line 41
    move-result v2

    .line 42
    .line 43
    const/16 v5, 0x9

    .line 44
    .line 45
    if-eq v2, v5, :cond_2

    .line 46
    .line 47
    .line 48
    packed-switch v2, :pswitch_data_0

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :pswitch_0
    sget-object v2, Lcom/google/protobuf/z;->UNSAFE:Lsun/misc/Unsafe;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 55
    move-result-object v5

    .line 56
    .line 57
    if-eqz v5, :cond_3

    .line 58
    .line 59
    iget-object v6, p0, Lcom/google/protobuf/z;->mapFieldSchema:Lcom/google/protobuf/t;

    .line 60
    .line 61
    .line 62
    invoke-interface {v6, v5}, Lcom/google/protobuf/t;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    move-result-object v5

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 67
    goto :goto_1

    .line 68
    .line 69
    :pswitch_1
    iget-object v2, p0, Lcom/google/protobuf/z;->listFieldSchema:Lcom/google/protobuf/q;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/protobuf/q;->makeImmutableListAt(Ljava/lang/Object;J)V

    .line 73
    goto :goto_1

    .line 74
    .line 75
    .line 76
    :cond_2
    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/google/protobuf/z;->isFieldPresent(Ljava/lang/Object;I)Z

    .line 77
    move-result v2

    .line 78
    .line 79
    if-eqz v2, :cond_3

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, v1}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    .line 83
    move-result-object v2

    .line 84
    .line 85
    sget-object v5, Lcom/google/protobuf/z;->UNSAFE:Lsun/misc/Unsafe;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 89
    move-result-object v3

    .line 90
    .line 91
    .line 92
    invoke-interface {v2, v3}, Lcom/google/protobuf/m0;->makeImmutable(Ljava/lang/Object;)V

    .line 93
    .line 94
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x3

    .line 95
    goto :goto_0

    .line 96
    .line 97
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/z;->unknownFieldSchema:Lcom/google/protobuf/r0;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, p1}, Lcom/google/protobuf/r0;->makeImmutable(Ljava/lang/Object;)V

    .line 101
    .line 102
    iget-boolean v0, p0, Lcom/google/protobuf/z;->hasExtensions:Z

    .line 103
    .line 104
    if-eqz v0, :cond_5

    .line 105
    .line 106
    iget-object v0, p0, Lcom/google/protobuf/z;->extensionSchema:Lcom/google/protobuf/j;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p1}, Lcom/google/protobuf/j;->makeImmutable(Ljava/lang/Object;)V

    .line 110
    :cond_5
    return-void

    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
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

.method public mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/k0;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/k0;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {p1}, Lcom/google/protobuf/z;->checkMutable(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/protobuf/z;->unknownFieldSchema:Lcom/google/protobuf/r0;

    iget-object v2, p0, Lcom/google/protobuf/z;->extensionSchema:Lcom/google/protobuf/j;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/z;->mergeFromHelper(Lcom/google/protobuf/r0;Lcom/google/protobuf/j;Ljava/lang/Object;Lcom/google/protobuf/k0;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    invoke-static {p1}, Lcom/google/protobuf/z;->checkMutable(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/z;->buffer:[I

    .line 3
    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/google/protobuf/z;->mergeSingleField(Ljava/lang/Object;Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/z;->unknownFieldSchema:Lcom/google/protobuf/r0;

    .line 5
    invoke-static {v0, p1, p2}, Lcom/google/protobuf/o0;->mergeUnknownFields(Lcom/google/protobuf/r0;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/protobuf/z;->hasExtensions:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/z;->extensionSchema:Lcom/google/protobuf/j;

    .line 6
    invoke-static {v0, p1, p2}, Lcom/google/protobuf/o0;->mergeExtensions(Lcom/google/protobuf/j;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;[BIILcom/google/protobuf/c$b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/protobuf/c$b;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/protobuf/z;->proto3:Z

    if-eqz v0, :cond_0

    .line 10
    invoke-direct/range {p0 .. p5}, Lcom/google/protobuf/z;->parseProto3Message(Ljava/lang/Object;[BIILcom/google/protobuf/c$b;)I

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    .line 11
    invoke-virtual/range {v1 .. v7}, Lcom/google/protobuf/z;->parseProto2Message(Ljava/lang/Object;[BIIILcom/google/protobuf/c$b;)I

    :goto_0
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
    iget-object v0, p0, Lcom/google/protobuf/z;->newInstanceSchema:Lcom/google/protobuf/b0;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/protobuf/z;->defaultInstance:Lcom/google/protobuf/MessageLite;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/google/protobuf/b0;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method parseProto2Message(Ljava/lang/Object;[BIIILcom/google/protobuf/c$b;)I
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/google/protobuf/c$b;",
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

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/z;->checkMutable(Ljava/lang/Object;)V

    sget-object v10, Lcom/google/protobuf/z;->UNSAFE:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    move/from16 v0, p3

    move/from16 v2, v16

    move v3, v2

    move v5, v3

    const/4 v1, -0x1

    const v6, 0xfffff

    :goto_0
    if-ge v0, v13, :cond_16

    add-int/lit8 v3, v0, 0x1

    .line 2
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 3
    invoke-static {v0, v12, v3, v9}, Lcom/google/protobuf/c;->decodeVarint32(I[BILcom/google/protobuf/c$b;)I

    move-result v0

    .line 4
    iget v3, v9, Lcom/google/protobuf/c$b;->int1:I

    move v4, v3

    move v3, v0

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    ushr-int/lit8 v0, v4, 0x3

    and-int/lit8 v8, v4, 0x7

    const/4 v7, 0x3

    if-le v0, v1, :cond_1

    .line 5
    div-int/2addr v2, v7

    invoke-direct {v15, v0, v2}, Lcom/google/protobuf/z;->positionForFieldNumber(II)I

    move-result v1

    :goto_2
    move v2, v1

    const/4 v1, -0x1

    goto :goto_3

    .line 6
    :cond_1
    invoke-direct {v15, v0}, Lcom/google/protobuf/z;->positionForFieldNumber(I)I

    move-result v1

    goto :goto_2

    :goto_3
    if-ne v2, v1, :cond_2

    move/from16 v22, v0

    move/from16 v18, v1

    move v2, v3

    move v9, v4

    move/from16 v19, v5

    move/from16 v17, v6

    move-object/from16 v25, v10

    move v8, v11

    move/from16 v20, v16

    goto/16 :goto_12

    :cond_2
    iget-object v1, v15, Lcom/google/protobuf/z;->buffer:[I

    add-int/lit8 v19, v2, 0x1

    .line 7
    aget v1, v1, v19

    .line 8
    invoke-static {v1}, Lcom/google/protobuf/z;->type(I)I

    move-result v7

    .line 9
    invoke-static {v1}, Lcom/google/protobuf/z;->offset(I)J

    move-result-wide v11

    move/from16 v19, v4

    const/16 v4, 0x11

    move-wide/from16 v20, v11

    if-gt v7, v4, :cond_b

    iget-object v4, v15, Lcom/google/protobuf/z;->buffer:[I

    add-int/lit8 v12, v2, 0x2

    .line 10
    aget v4, v4, v12

    ushr-int/lit8 v12, v4, 0x14

    const/4 v11, 0x1

    shl-int v12, v11, v12

    const v11, 0xfffff

    and-int/2addr v4, v11

    move/from16 v17, v12

    if-eq v4, v6, :cond_4

    if-eq v6, v11, :cond_3

    int-to-long v11, v6

    .line 11
    invoke-virtual {v10, v14, v11, v12, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_3
    int-to-long v5, v4

    .line 12
    invoke-virtual {v10, v14, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move v12, v4

    move v11, v5

    goto :goto_4

    :cond_4
    move v11, v5

    move v12, v6

    :goto_4
    const/4 v4, 0x5

    packed-switch v7, :pswitch_data_0

    move-object/from16 v7, p2

    move/from16 v22, v0

    move v6, v2

    move/from16 p3, v12

    move/from16 v12, v19

    const/16 v18, -0x1

    goto/16 :goto_d

    :pswitch_0
    const/4 v1, 0x3

    if-ne v8, v1, :cond_5

    .line 13
    invoke-direct {v15, v14, v2}, Lcom/google/protobuf/z;->mutableMessageFieldForMerge(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    shl-int/lit8 v1, v0, 0x3

    or-int/lit8 v5, v1, 0x4

    .line 14
    invoke-direct {v15, v2}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    move-result-object v1

    move/from16 v22, v0

    move-object v0, v7

    const/16 v18, -0x1

    move v8, v2

    move-object/from16 v2, p2

    move/from16 v6, v19

    move/from16 v4, p4

    move/from16 p3, v12

    move v12, v6

    move-object/from16 v6, p6

    .line 15
    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/c;->mergeGroupField(Ljava/lang/Object;Lcom/google/protobuf/m0;[BIIILcom/google/protobuf/c$b;)I

    move-result v0

    .line 16
    invoke-direct {v15, v14, v8, v7}, Lcom/google/protobuf/z;->storeMessageField(Ljava/lang/Object;ILjava/lang/Object;)V

    or-int v5, v11, v17

    move/from16 v6, p3

    move/from16 v11, p5

    move v2, v8

    move v3, v12

    move/from16 v1, v22

    move-object/from16 v12, p2

    goto/16 :goto_0

    :cond_5
    move/from16 v22, v0

    move/from16 p3, v12

    move/from16 v12, v19

    const/16 v18, -0x1

    move-object/from16 v7, p2

    move v6, v2

    goto/16 :goto_d

    :pswitch_1
    move/from16 v22, v0

    move v6, v2

    move/from16 p3, v12

    move/from16 v12, v19

    const/16 v18, -0x1

    move-object/from16 v7, p2

    if-nez v8, :cond_a

    move-wide/from16 v4, v20

    .line 17
    invoke-static {v7, v3, v9}, Lcom/google/protobuf/c;->decodeVarint64([BILcom/google/protobuf/c$b;)I

    move-result v8

    .line 18
    iget-wide v0, v9, Lcom/google/protobuf/c$b;->long1:J

    .line 19
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v19

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v4

    move-wide/from16 v4, v19

    .line 20
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_5
    or-int v5, v11, v17

    move/from16 v11, p5

    move v2, v6

    move v0, v8

    :goto_6
    move v3, v12

    move/from16 v1, v22

    move/from16 v6, p3

    :goto_7
    move-object v12, v7

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v7, p2

    move/from16 v22, v0

    move v6, v2

    move/from16 p3, v12

    move/from16 v12, v19

    move-wide/from16 v4, v20

    const/16 v18, -0x1

    if-nez v8, :cond_a

    .line 21
    invoke-static {v7, v3, v9}, Lcom/google/protobuf/c;->decodeVarint32([BILcom/google/protobuf/c$b;)I

    move-result v0

    .line 22
    iget v1, v9, Lcom/google/protobuf/c$b;->int1:I

    .line 23
    invoke-static {v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v1

    .line 24
    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_8
    or-int v5, v11, v17

    move/from16 v11, p5

    move v2, v6

    goto :goto_6

    :pswitch_3
    move-object/from16 v7, p2

    move/from16 v22, v0

    move v6, v2

    move/from16 p3, v12

    move/from16 v12, v19

    move-wide/from16 v4, v20

    const/16 v18, -0x1

    if-nez v8, :cond_a

    .line 25
    invoke-static {v7, v3, v9}, Lcom/google/protobuf/c;->decodeVarint32([BILcom/google/protobuf/c$b;)I

    move-result v0

    .line 26
    iget v1, v9, Lcom/google/protobuf/c$b;->int1:I

    .line 27
    invoke-direct {v15, v6}, Lcom/google/protobuf/z;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 28
    invoke-interface {v2, v1}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_9

    .line 29
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/z;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v12, v1}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    move v2, v6

    move v5, v11

    move v3, v12

    move/from16 v1, v22

    move/from16 v6, p3

    move/from16 v11, p5

    goto :goto_7

    .line 30
    :cond_7
    :goto_9
    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_8

    :pswitch_4
    move-object/from16 v7, p2

    move/from16 v22, v0

    move v6, v2

    move/from16 p3, v12

    move/from16 v12, v19

    move-wide/from16 v4, v20

    const/4 v0, 0x2

    const/16 v18, -0x1

    if-ne v8, v0, :cond_a

    .line 31
    invoke-static {v7, v3, v9}, Lcom/google/protobuf/c;->decodeBytes([BILcom/google/protobuf/c$b;)I

    move-result v0

    .line 32
    iget-object v1, v9, Lcom/google/protobuf/c$b;->object1:Ljava/lang/Object;

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :pswitch_5
    move-object/from16 v7, p2

    move/from16 v22, v0

    move v6, v2

    move/from16 p3, v12

    move/from16 v12, v19

    const/4 v0, 0x2

    const/16 v18, -0x1

    if-ne v8, v0, :cond_a

    .line 33
    invoke-direct {v15, v14, v6}, Lcom/google/protobuf/z;->mutableMessageFieldForMerge(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    .line 34
    invoke-direct {v15, v6}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    move-result-object v1

    move-object v0, v8

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p6

    .line 35
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/c;->mergeMessageField(Ljava/lang/Object;Lcom/google/protobuf/m0;[BIILcom/google/protobuf/c$b;)I

    move-result v0

    .line 36
    invoke-direct {v15, v14, v6, v8}, Lcom/google/protobuf/z;->storeMessageField(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_6
    move-object/from16 v7, p2

    move/from16 v22, v0

    move v6, v2

    move/from16 p3, v12

    move/from16 v12, v19

    move-wide/from16 v4, v20

    const/4 v0, 0x2

    const/16 v18, -0x1

    if-ne v8, v0, :cond_a

    const/high16 v0, 0x20000000

    and-int/2addr v0, v1

    if-nez v0, :cond_8

    .line 37
    invoke-static {v7, v3, v9}, Lcom/google/protobuf/c;->decodeString([BILcom/google/protobuf/c$b;)I

    move-result v0

    goto :goto_a

    .line 38
    :cond_8
    invoke-static {v7, v3, v9}, Lcom/google/protobuf/c;->decodeStringRequireUtf8([BILcom/google/protobuf/c$b;)I

    move-result v0

    .line 39
    :goto_a
    iget-object v1, v9, Lcom/google/protobuf/c$b;->object1:Ljava/lang/Object;

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_7
    move-object/from16 v7, p2

    move/from16 v22, v0

    move v6, v2

    move/from16 p3, v12

    move/from16 v12, v19

    move-wide/from16 v4, v20

    const/16 v18, -0x1

    if-nez v8, :cond_a

    .line 40
    invoke-static {v7, v3, v9}, Lcom/google/protobuf/c;->decodeVarint64([BILcom/google/protobuf/c$b;)I

    move-result v0

    .line 41
    iget-wide v1, v9, Lcom/google/protobuf/c$b;->long1:J

    const-wide/16 v19, 0x0

    cmp-long v1, v1, v19

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_b

    :cond_9
    move/from16 v1, v16

    :goto_b
    invoke-static {v14, v4, v5, v1}, Lcom/google/protobuf/t0;->putBoolean(Ljava/lang/Object;JZ)V

    goto/16 :goto_8

    :pswitch_8
    move-object/from16 v7, p2

    move/from16 v22, v0

    move v6, v2

    move/from16 p3, v12

    move/from16 v12, v19

    move-wide/from16 v1, v20

    const/16 v18, -0x1

    if-ne v8, v4, :cond_a

    .line 42
    invoke-static {v7, v3}, Lcom/google/protobuf/c;->decodeFixed32([BI)I

    move-result v0

    invoke-virtual {v10, v14, v1, v2, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_c
    add-int/lit8 v0, v3, 0x4

    goto/16 :goto_8

    :pswitch_9
    move-object/from16 v7, p2

    move/from16 v22, v0

    move v6, v2

    move/from16 p3, v12

    move/from16 v12, v19

    move-wide/from16 v1, v20

    const/4 v0, 0x1

    const/16 v18, -0x1

    if-ne v8, v0, :cond_a

    .line 43
    invoke-static {v7, v3}, Lcom/google/protobuf/c;->decodeFixed64([BI)J

    move-result-wide v4

    move-object v0, v10

    move-wide/from16 v20, v1

    move-object/from16 v1, p1

    move v8, v3

    move-wide/from16 v2, v20

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v8, 0x8

    goto/16 :goto_8

    :pswitch_a
    move-object/from16 v7, p2

    move/from16 v22, v0

    move v6, v2

    move/from16 p3, v12

    move/from16 v12, v19

    const/16 v18, -0x1

    if-nez v8, :cond_a

    .line 44
    invoke-static {v7, v3, v9}, Lcom/google/protobuf/c;->decodeVarint32([BILcom/google/protobuf/c$b;)I

    move-result v0

    .line 45
    iget v1, v9, Lcom/google/protobuf/c$b;->int1:I

    move-wide/from16 v4, v20

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_b
    move-object/from16 v7, p2

    move/from16 v22, v0

    move v6, v2

    move/from16 p3, v12

    move/from16 v12, v19

    move-wide/from16 v4, v20

    const/16 v18, -0x1

    if-nez v8, :cond_a

    .line 46
    invoke-static {v7, v3, v9}, Lcom/google/protobuf/c;->decodeVarint64([BILcom/google/protobuf/c$b;)I

    move-result v8

    .line 47
    iget-wide v2, v9, Lcom/google/protobuf/c$b;->long1:J

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide/from16 v19, v2

    move-wide v2, v4

    move-wide/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_5

    :pswitch_c
    move-object/from16 v7, p2

    move/from16 v22, v0

    move v6, v2

    move/from16 p3, v12

    move/from16 v12, v19

    move-wide/from16 v0, v20

    const/16 v18, -0x1

    if-ne v8, v4, :cond_a

    .line 48
    invoke-static {v7, v3}, Lcom/google/protobuf/c;->decodeFloat([BI)F

    move-result v2

    invoke-static {v14, v0, v1, v2}, Lcom/google/protobuf/t0;->putFloat(Ljava/lang/Object;JF)V

    goto :goto_c

    :pswitch_d
    move-object/from16 v7, p2

    move/from16 v22, v0

    move v6, v2

    move/from16 p3, v12

    move/from16 v12, v19

    move-wide/from16 v0, v20

    const/4 v2, 0x1

    const/16 v18, -0x1

    if-ne v8, v2, :cond_a

    .line 49
    invoke-static {v7, v3}, Lcom/google/protobuf/c;->decodeDouble([BI)D

    move-result-wide v4

    invoke-static {v14, v0, v1, v4, v5}, Lcom/google/protobuf/t0;->putDouble(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v3, 0x8

    goto/16 :goto_8

    :cond_a
    :goto_d
    move/from16 v17, p3

    move/from16 v8, p5

    move v2, v3

    move/from16 v20, v6

    move-object/from16 v25, v10

    move/from16 v19, v11

    move v9, v12

    goto/16 :goto_12

    :cond_b
    move/from16 v22, v0

    move v11, v2

    move/from16 v17, v6

    move/from16 v12, v19

    const/16 v18, -0x1

    move/from16 v19, v5

    move-wide/from16 v5, v20

    const/16 v0, 0x1b

    if-ne v7, v0, :cond_f

    const/4 v0, 0x2

    if-ne v8, v0, :cond_e

    .line 50
    invoke-virtual {v10, v14, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Internal$ProtobufList;

    .line 51
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_d

    .line 52
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    const/16 v1, 0xa

    goto :goto_e

    :cond_c
    mul-int/lit8 v1, v1, 0x2

    .line 53
    :goto_e
    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 54
    invoke-virtual {v10, v14, v5, v6, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_d
    move-object v5, v0

    .line 55
    invoke-direct {v15, v11}, Lcom/google/protobuf/z;->getMessageFieldSchema(I)Lcom/google/protobuf/m0;

    move-result-object v0

    move v1, v12

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    .line 56
    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/c;->decodeMessageList(Lcom/google/protobuf/m0;I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$b;)I

    move-result v0

    move v2, v11

    move v3, v12

    move/from16 v6, v17

    move/from16 v5, v19

    move/from16 v1, v22

    move-object/from16 v12, p2

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_e
    move v15, v3

    move-object/from16 v25, v10

    move/from16 v20, v11

    move/from16 v21, v12

    goto/16 :goto_11

    :cond_f
    const/16 v0, 0x31

    if-gt v7, v0, :cond_11

    int-to-long v1, v1

    move-object/from16 v0, p0

    move-wide/from16 v20, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v4, v3

    move v15, v4

    move/from16 v4, p4

    move-wide/from16 v23, v5

    move v5, v12

    move/from16 v6, v22

    move/from16 p3, v7

    move v7, v8

    move v8, v11

    move-object/from16 v25, v10

    move-wide/from16 v9, v20

    move/from16 v20, v11

    move/from16 v11, p3

    move/from16 v21, v12

    move-wide/from16 v12, v23

    move-object/from16 v14, p6

    .line 57
    invoke-direct/range {v0 .. v14}, Lcom/google/protobuf/z;->parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLcom/google/protobuf/c$b;)I

    move-result v0

    if-eq v0, v15, :cond_10

    :goto_f
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v6, v17

    move/from16 v5, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v1, v22

    move-object/from16 v10, v25

    goto/16 :goto_0

    :cond_10
    move/from16 v8, p5

    move v2, v0

    :goto_10
    move/from16 v9, v21

    goto :goto_12

    :cond_11
    move v15, v3

    move-wide/from16 v23, v5

    move/from16 p3, v7

    move-object/from16 v25, v10

    move/from16 v20, v11

    move/from16 v21, v12

    const/16 v0, 0x32

    move/from16 v9, p3

    if-ne v9, v0, :cond_13

    const/4 v0, 0x2

    if-ne v8, v0, :cond_12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v20

    move-wide/from16 v6, v23

    move-object/from16 v8, p6

    .line 58
    invoke-direct/range {v0 .. v8}, Lcom/google/protobuf/z;->parseMapField(Ljava/lang/Object;[BIIIJLcom/google/protobuf/c$b;)I

    move-result v0

    if-eq v0, v15, :cond_10

    goto :goto_f

    :cond_12
    :goto_11
    move/from16 v8, p5

    move v2, v15

    goto :goto_10

    :cond_13
    move-object/from16 v0, p0

    move v10, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v21

    move/from16 v6, v22

    move v7, v8

    move v8, v10

    move-wide/from16 v10, v23

    move/from16 v12, v20

    move-object/from16 v13, p6

    .line 59
    invoke-direct/range {v0 .. v13}, Lcom/google/protobuf/z;->parseOneofField(Ljava/lang/Object;[BIIIIIIIJILcom/google/protobuf/c$b;)I

    move-result v0

    if-eq v0, v15, :cond_10

    goto :goto_f

    :goto_12
    if-ne v9, v8, :cond_14

    if-eqz v8, :cond_14

    const v1, 0xfffff

    move-object/from16 v10, p0

    move v6, v2

    move/from16 v0, v17

    move/from16 v5, v19

    goto/16 :goto_14

    :cond_14
    move-object/from16 v10, p0

    iget-boolean v0, v10, Lcom/google/protobuf/z;->hasExtensions:Z

    move-object/from16 v11, p6

    if-eqz v0, :cond_15

    .line 60
    iget-object v0, v11, Lcom/google/protobuf/c$b;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 61
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v1

    if-eq v0, v1, :cond_15

    iget-object v5, v10, Lcom/google/protobuf/z;->defaultInstance:Lcom/google/protobuf/MessageLite;

    iget-object v6, v10, Lcom/google/protobuf/z;->unknownFieldSchema:Lcom/google/protobuf/r0;

    move v0, v9

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v7, p6

    .line 62
    invoke-static/range {v0 .. v7}, Lcom/google/protobuf/c;->decodeExtensionOrUnknownField(I[BIILjava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/r0;Lcom/google/protobuf/c$b;)I

    move-result v0

    goto :goto_13

    .line 63
    :cond_15
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/z;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v4

    move v0, v9

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 64
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/c;->decodeUnknownField(I[BIILcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/c$b;)I

    move-result v0

    :goto_13
    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v3, v9

    move-object v15, v10

    move-object v9, v11

    move/from16 v6, v17

    move/from16 v5, v19

    move/from16 v2, v20

    move/from16 v1, v22

    move-object/from16 v10, v25

    move v11, v8

    goto/16 :goto_0

    :cond_16
    move/from16 v19, v5

    move/from16 v17, v6

    move-object/from16 v25, v10

    move v8, v11

    move-object v10, v15

    move v6, v0

    move v9, v3

    move/from16 v0, v17

    const v1, 0xfffff

    :goto_14
    if-eq v0, v1, :cond_17

    int-to-long v0, v0

    move-object/from16 v7, p1

    move-object/from16 v2, v25

    .line 65
    invoke-virtual {v2, v7, v0, v1, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_15

    :cond_17
    move-object/from16 v7, p1

    :goto_15
    iget v0, v10, Lcom/google/protobuf/z;->checkInitializedCount:I

    const/4 v1, 0x0

    move v11, v0

    move-object v3, v1

    :goto_16
    iget v0, v10, Lcom/google/protobuf/z;->repeatedFieldOffsetStart:I

    if-ge v11, v0, :cond_18

    iget-object v0, v10, Lcom/google/protobuf/z;->intArray:[I

    .line 66
    aget v2, v0, v11

    iget-object v4, v10, Lcom/google/protobuf/z;->unknownFieldSchema:Lcom/google/protobuf/r0;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p1

    .line 67
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/z;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/r0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/protobuf/UnknownFieldSetLite;

    add-int/lit8 v11, v11, 0x1

    goto :goto_16

    :cond_18
    if-eqz v3, :cond_19

    iget-object v0, v10, Lcom/google/protobuf/z;->unknownFieldSchema:Lcom/google/protobuf/r0;

    .line 68
    invoke-virtual {v0, v7, v3}, Lcom/google/protobuf/r0;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    if-nez v8, :cond_1b

    move/from16 v0, p4

    if-ne v6, v0, :cond_1a

    goto :goto_17

    .line 69
    :cond_1a
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_1b
    move/from16 v0, p4

    if-gt v6, v0, :cond_1c

    if-ne v9, v8, :cond_1c

    :goto_17
    return v6

    .line 70
    :cond_1c
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

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

.method public writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/Writer;",
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
    invoke-interface {p2}, Lcom/google/protobuf/Writer;->fieldOrder()Lcom/google/protobuf/Writer$FieldOrder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lcom/google/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/google/protobuf/Writer$FieldOrder;

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/z;->writeFieldsInDescendingOrder(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/google/protobuf/z;->proto3:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/z;->writeFieldsInAscendingOrderProto3(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/z;->writeFieldsInAscendingOrderProto2(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 24
    :goto_0
    return-void
.end method
