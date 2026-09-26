.class final Lorg/apache/commons/compress/archivers/sevenz/Coders$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/sevenz/Coders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;",
        "Lorg/apache/commons/compress/archivers/sevenz/CoderBase;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x171aa946550cb623L


# direct methods
.method constructor <init>()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->COPY:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 6
    .line 7
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$CopyDecoder;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/sevenz/Coders$CopyDecoder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->LZMA:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 16
    .line 17
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/LZMADecoder;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/sevenz/LZMADecoder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->LZMA2:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 26
    .line 27
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/LZMA2Decoder;

    .line 28
    .line 29
    .line 30
    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/sevenz/LZMA2Decoder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->DEFLATE:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 36
    .line 37
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder;

    .line 38
    .line 39
    .line 40
    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->DEFLATE64:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 46
    .line 47
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$Deflate64Decoder;

    .line 48
    .line 49
    .line 50
    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/sevenz/Coders$Deflate64Decoder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BZIP2:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 56
    .line 57
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$BZIP2Decoder;

    .line 58
    .line 59
    .line 60
    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/sevenz/Coders$BZIP2Decoder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->AES256SHA256:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 66
    .line 67
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;

    .line 68
    .line 69
    .line 70
    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_X86_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 76
    .line 77
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;

    .line 78
    .line 79
    new-instance v2, Lorg/tukaani/xz/X86Options;

    .line 80
    .line 81
    .line 82
    invoke-direct {v2}, Lorg/tukaani/xz/X86Options;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;-><init>(Lorg/tukaani/xz/FilterOptions;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_PPC_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 91
    .line 92
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;

    .line 93
    .line 94
    new-instance v2, Lorg/tukaani/xz/PowerPCOptions;

    .line 95
    .line 96
    .line 97
    invoke-direct {v2}, Lorg/tukaani/xz/PowerPCOptions;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;-><init>(Lorg/tukaani/xz/FilterOptions;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_IA64_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 106
    .line 107
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;

    .line 108
    .line 109
    new-instance v2, Lorg/tukaani/xz/IA64Options;

    .line 110
    .line 111
    .line 112
    invoke-direct {v2}, Lorg/tukaani/xz/IA64Options;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;-><init>(Lorg/tukaani/xz/FilterOptions;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_ARM_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 121
    .line 122
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;

    .line 123
    .line 124
    new-instance v2, Lorg/tukaani/xz/ARMOptions;

    .line 125
    .line 126
    .line 127
    invoke-direct {v2}, Lorg/tukaani/xz/ARMOptions;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;-><init>(Lorg/tukaani/xz/FilterOptions;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_ARM_THUMB_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 136
    .line 137
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;

    .line 138
    .line 139
    new-instance v2, Lorg/tukaani/xz/ARMThumbOptions;

    .line 140
    .line 141
    .line 142
    invoke-direct {v2}, Lorg/tukaani/xz/ARMThumbOptions;-><init>()V

    .line 143
    .line 144
    .line 145
    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;-><init>(Lorg/tukaani/xz/FilterOptions;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_SPARC_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 151
    .line 152
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;

    .line 153
    .line 154
    new-instance v2, Lorg/tukaani/xz/SPARCOptions;

    .line 155
    .line 156
    .line 157
    invoke-direct {v2}, Lorg/tukaani/xz/SPARCOptions;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;-><init>(Lorg/tukaani/xz/FilterOptions;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->DELTA_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 166
    .line 167
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/DeltaDecoder;

    .line 168
    .line 169
    .line 170
    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/sevenz/DeltaDecoder;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    return-void
.end method
