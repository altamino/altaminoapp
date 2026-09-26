.class Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder;
.super Lorg/apache/commons/compress/archivers/sevenz/CoderBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/sevenz/Coders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DeflateDecoder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderOutputStream;,
        Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderInputStream;
    }
.end annotation


# static fields
.field private static final ONE_ZERO_BYTE:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder;->ONE_ZERO_BYTE:[B

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/Class;

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    const-class v2, Ljava/lang/Number;

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/CoderBase;-><init>([Ljava/lang/Class;)V

    .line 12
    return-void
.end method


# virtual methods
.method decode(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[B)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Ljava/util/zip/Inflater;

    .line 3
    const/4 p3, 0x1

    .line 4
    .line 5
    .line 6
    invoke-direct {p1, p3}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 7
    .line 8
    new-instance p3, Ljava/util/zip/InflaterInputStream;

    .line 9
    .line 10
    new-instance p4, Ljava/io/SequenceInputStream;

    .line 11
    .line 12
    new-instance p5, Ljava/io/ByteArrayInputStream;

    .line 13
    .line 14
    sget-object p6, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder;->ONE_ZERO_BYTE:[B

    .line 15
    .line 16
    .line 17
    invoke-direct {p5, p6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p4, p2, p5}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p3, p4, p1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    .line 24
    .line 25
    new-instance p2, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderInputStream;

    .line 26
    .line 27
    .line 28
    invoke-direct {p2, p3, p1}, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderInputStream;-><init>(Ljava/util/zip/InflaterInputStream;Ljava/util/zip/Inflater;)V

    .line 29
    return-object p2
.end method

.method encode(Ljava/io/OutputStream;Ljava/lang/Object;)Ljava/io/OutputStream;
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x9

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lorg/apache/commons/compress/archivers/sevenz/CoderBase;->numberOptionOrDefault(Ljava/lang/Object;I)I

    .line 6
    move-result p2

    .line 7
    .line 8
    new-instance v0, Ljava/util/zip/Deflater;

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p2, v1}, Ljava/util/zip/Deflater;-><init>(IZ)V

    .line 13
    .line 14
    new-instance p2, Ljava/util/zip/DeflaterOutputStream;

    .line 15
    .line 16
    .line 17
    invoke-direct {p2, p1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    .line 18
    .line 19
    new-instance p1, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderOutputStream;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p2, v0}, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderOutputStream;-><init>(Ljava/util/zip/DeflaterOutputStream;Ljava/util/zip/Deflater;)V

    .line 23
    return-object p1
.end method
