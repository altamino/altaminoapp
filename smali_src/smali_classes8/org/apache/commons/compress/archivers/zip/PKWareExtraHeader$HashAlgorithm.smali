.class public final enum Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HashAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

.field public static final enum CRC32:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

.field public static final enum MD5:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

.field public static final enum NONE:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

.field public static final enum RIPEND160:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

.field public static final enum SHA1:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

.field public static final enum SHA256:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

.field public static final enum SHA384:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

.field public static final enum SHA512:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

.field private static final codeToEnum:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    .line 2
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 3
    .line 4
    const-string v1, "NONE"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v2}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->NONE:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 11
    .line 12
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 13
    .line 14
    const-string v3, "CRC32"

    .line 15
    const/4 v4, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v3, v4, v4}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    sput-object v1, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->CRC32:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 21
    .line 22
    new-instance v3, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 23
    .line 24
    .line 25
    const v5, 0x8003

    .line 26
    .line 27
    const-string v6, "MD5"

    .line 28
    const/4 v7, 0x2

    .line 29
    .line 30
    .line 31
    invoke-direct {v3, v6, v7, v5}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 32
    .line 33
    sput-object v3, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->MD5:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 34
    .line 35
    new-instance v5, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 36
    .line 37
    .line 38
    const v6, 0x8004

    .line 39
    .line 40
    const-string v8, "SHA1"

    .line 41
    const/4 v9, 0x3

    .line 42
    .line 43
    .line 44
    invoke-direct {v5, v8, v9, v6}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 45
    .line 46
    sput-object v5, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->SHA1:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 47
    .line 48
    new-instance v6, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 49
    .line 50
    .line 51
    const v8, 0x8007

    .line 52
    .line 53
    const-string v10, "RIPEND160"

    .line 54
    const/4 v11, 0x4

    .line 55
    .line 56
    .line 57
    invoke-direct {v6, v10, v11, v8}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 58
    .line 59
    sput-object v6, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->RIPEND160:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 60
    .line 61
    new-instance v8, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 62
    .line 63
    .line 64
    const v10, 0x800c

    .line 65
    .line 66
    const-string v12, "SHA256"

    .line 67
    const/4 v13, 0x5

    .line 68
    .line 69
    .line 70
    invoke-direct {v8, v12, v13, v10}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 71
    .line 72
    sput-object v8, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->SHA256:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 73
    .line 74
    new-instance v10, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 75
    .line 76
    .line 77
    const v12, 0x800d

    .line 78
    .line 79
    const-string v14, "SHA384"

    .line 80
    const/4 v15, 0x6

    .line 81
    .line 82
    .line 83
    invoke-direct {v10, v14, v15, v12}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 84
    .line 85
    sput-object v10, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->SHA384:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 86
    .line 87
    new-instance v12, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 88
    .line 89
    .line 90
    const v14, 0x800e

    .line 91
    .line 92
    const-string v15, "SHA512"

    .line 93
    const/4 v13, 0x7

    .line 94
    .line 95
    .line 96
    invoke-direct {v12, v15, v13, v14}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 97
    .line 98
    sput-object v12, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->SHA512:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 99
    .line 100
    const/16 v14, 0x8

    .line 101
    .line 102
    new-array v14, v14, [Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 103
    .line 104
    aput-object v0, v14, v2

    .line 105
    .line 106
    aput-object v1, v14, v4

    .line 107
    .line 108
    aput-object v3, v14, v7

    .line 109
    .line 110
    aput-object v5, v14, v9

    .line 111
    .line 112
    aput-object v6, v14, v11

    .line 113
    const/4 v0, 0x5

    .line 114
    .line 115
    aput-object v8, v14, v0

    .line 116
    const/4 v0, 0x6

    .line 117
    .line 118
    aput-object v10, v14, v0

    .line 119
    .line 120
    aput-object v12, v14, v13

    .line 121
    .line 122
    sput-object v14, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->$VALUES:[Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 123
    .line 124
    new-instance v0, Ljava/util/HashMap;

    .line 125
    .line 126
    .line 127
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-static {}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->values()[Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 131
    move-result-object v1

    .line 132
    array-length v3, v1

    .line 133
    .line 134
    :goto_0
    if-ge v2, v3, :cond_0

    .line 135
    .line 136
    aget-object v4, v1, v2

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->getCode()I

    .line 140
    move-result v5

    .line 141
    .line 142
    .line 143
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    move-result-object v5

    .line 145
    .line 146
    .line 147
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    add-int/lit8 v2, v2, 0x1

    .line 150
    goto :goto_0

    .line 151
    .line 152
    .line 153
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 154
    move-result-object v0

    .line 155
    .line 156
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->codeToEnum:Ljava/util/Map;

    .line 157
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    iput p3, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->code:I

    .line 6
    return-void
.end method

.method public static getAlgorithmByCode(I)Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->codeToEnum:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    check-cast p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 13
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 9
    return-object p0
.end method

.method public static values()[Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->$VALUES:[Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->code:I

    return v0
.end method
