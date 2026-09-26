.class public abstract Landroidx/datastore/preferences/protobuf/CodedOutputStream;
.super Landroidx/datastore/preferences/protobuf/ByteOutput;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;,
        Landroidx/datastore/preferences/protobuf/CodedOutputStream$ByteOutputEncoder;,
        Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;,
        Landroidx/datastore/preferences/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;,
        Landroidx/datastore/preferences/protobuf/CodedOutputStream$SafeDirectNioEncoder;,
        Landroidx/datastore/preferences/protobuf/CodedOutputStream$HeapNioEncoder;,
        Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;,
        Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutOfSpaceException;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field private static final HAS_UNSAFE_ARRAY_OPERATIONS:Z

.field public static final LITTLE_ENDIAN_32_SIZE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private serializationDeterministic:Z

.field wrapper:Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-class v0, Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    sput-object v0, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->logger:Ljava/util/logging/Logger;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->H()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    sput-boolean v0, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/ByteOutput;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/CodedOutputStream$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;-><init>()V

    return-void
.end method

.method static A(ILandroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 4
    move-result p0

    .line 5
    .line 6
    mul-int/lit8 p0, p0, 0x2

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->C(Landroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 10
    move-result p1

    .line 11
    add-int/2addr p0, p1

    .line 12
    return p0
.end method

.method public static B(Landroidx/datastore/preferences/protobuf/MessageLite;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/MessageLite;->getSerializedSize()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static C(Landroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    check-cast p0, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->e(Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static D(II)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->E(I)I

    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static E(I)I
    .locals 0

    .line 1
    .line 2
    if-ltz p0, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f0(I)I

    .line 6
    move-result p0

    .line 7
    return p0

    .line 8
    .line 9
    :cond_0
    const/16 p0, 0xa

    .line 10
    return p0
.end method

.method public static F(IJ)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->G(J)I

    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static G(J)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->h0(J)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static H(ILandroidx/datastore/preferences/protobuf/LazyFieldLite;)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x2

    .line 7
    mul-int/2addr v0, v1

    .line 8
    .line 9
    .line 10
    invoke-static {v1, p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e0(II)I

    .line 11
    move-result p0

    .line 12
    add-int/2addr v0, p0

    .line 13
    const/4 p0, 0x3

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->I(ILandroidx/datastore/preferences/protobuf/LazyFieldLite;)I

    .line 17
    move-result p0

    .line 18
    add-int/2addr v0, p0

    .line 19
    return v0
.end method

.method public static I(ILandroidx/datastore/preferences/protobuf/LazyFieldLite;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->J(Landroidx/datastore/preferences/protobuf/LazyFieldLite;)I

    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static J(Landroidx/datastore/preferences/protobuf/LazyFieldLite;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->c()I

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->K(I)I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method static K(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f0(I)I

    .line 4
    move-result v0

    .line 5
    add-int/2addr v0, p0

    .line 6
    return v0
.end method

.method public static L(ILandroidx/datastore/preferences/protobuf/MessageLite;)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x2

    .line 7
    mul-int/2addr v0, v1

    .line 8
    .line 9
    .line 10
    invoke-static {v1, p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e0(II)I

    .line 11
    move-result p0

    .line 12
    add-int/2addr v0, p0

    .line 13
    const/4 p0, 0x3

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->M(ILandroidx/datastore/preferences/protobuf/MessageLite;)I

    .line 17
    move-result p0

    .line 18
    add-int/2addr v0, p0

    .line 19
    return v0
.end method

.method public static M(ILandroidx/datastore/preferences/protobuf/MessageLite;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->O(Landroidx/datastore/preferences/protobuf/MessageLite;)I

    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method static N(ILandroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->P(Landroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static O(Landroidx/datastore/preferences/protobuf/MessageLite;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/MessageLite;->getSerializedSize()I

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->K(I)I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method static P(Landroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;)I
    .locals 0

    .line 1
    .line 2
    check-cast p0, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->e(Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 6
    move-result p0

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->K(I)I

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method static Q(I)I
    .locals 1

    .line 1
    const/16 v0, 0x1000

    if-le p0, v0, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static R(ILandroidx/datastore/preferences/protobuf/ByteString;)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x2

    .line 7
    mul-int/2addr v0, v1

    .line 8
    .line 9
    .line 10
    invoke-static {v1, p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e0(II)I

    .line 11
    move-result p0

    .line 12
    add-int/2addr v0, p0

    .line 13
    const/4 p0, 0x3

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->o(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    .line 17
    move-result p0

    .line 18
    add-int/2addr v0, p0

    .line 19
    return v0
.end method

.method public static S(I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f0(I)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static T(II)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->U(I)I

    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static U(I)I
    .locals 0

    .line 1
    const/4 p0, 0x4

    return p0
.end method

.method public static V(IJ)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->W(J)I

    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static W(J)I
    .locals 0

    .line 1
    const/16 p0, 0x8

    return p0
.end method

.method public static X(II)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->Y(I)I

    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static Y(I)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->i0(I)I

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f0(I)I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static Z(IJ)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->a0(J)I

    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static a0(J)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->j0(J)J

    .line 4
    move-result-wide p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->h0(J)I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static b0(ILjava/lang/String;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->c0(Ljava/lang/String;)I

    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static c0(Ljava/lang/String;)I
    .locals 1

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/Utf8;->k(Ljava/lang/CharSequence;)I

    .line 4
    move-result p0
    :try_end_0
    .catch Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :catch_0
    sget-object v0, Landroidx/datastore/preferences/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 11
    move-result-object p0

    .line 12
    array-length p0, p0

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->K(I)I

    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static d0(I)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->c(II)I

    .line 5
    move-result p0

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f0(I)I

    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static e0(II)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f0(I)I

    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static f0(I)I
    .locals 1

    .line 1
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static g0(IJ)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->h0(J)I

    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static h0(J)I
    .locals 6

    .line 1
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/16 v0, 0x1c

    ushr-long/2addr p0, v0

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long p0, p0, v2

    if-eqz p0, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    return v0
.end method

.method public static i0(I)I
    .locals 1

    .line 1
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method static synthetic j()Z
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    return v0
.end method

.method public static j0(J)J
    .locals 3

    .line 1
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static l(IZ)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->m(Z)I

    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static m(Z)I
    .locals 0

    .line 1
    const/4 p0, 0x1

    return p0
.end method

.method public static n([B)I
    .locals 0

    .line 1
    array-length p0, p0

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->K(I)I

    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public static n0(Ljava/io/OutputStream;I)Landroidx/datastore/preferences/protobuf/CodedOutputStream;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;-><init>(Ljava/io/OutputStream;I)V

    .line 6
    return-object v0
.end method

.method public static o(ILandroidx/datastore/preferences/protobuf/ByteString;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->p(Landroidx/datastore/preferences/protobuf/ByteString;)I

    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static o0([B)Landroidx/datastore/preferences/protobuf/CodedOutputStream;
    .locals 2

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v1, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->p0([BII)Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static p(Landroidx/datastore/preferences/protobuf/ByteString;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->K(I)I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static p0([BII)Landroidx/datastore/preferences/protobuf/CodedOutputStream;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;-><init>([BII)V

    .line 6
    return-object v0
.end method

.method public static q(ID)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->r(D)I

    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static r(D)I
    .locals 0

    .line 1
    const/16 p0, 0x8

    return p0
.end method

.method public static s(II)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->t(I)I

    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static t(I)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->E(I)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static u(II)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->v(I)I

    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static v(I)I
    .locals 0

    .line 1
    const/4 p0, 0x4

    return p0
.end method

.method public static w(IJ)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->x(J)I

    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static x(J)I
    .locals 0

    .line 1
    const/16 p0, 0x8

    return p0
.end method

.method public static y(IF)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0(I)I

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->z(F)I

    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static z(F)I
    .locals 0

    .line 1
    const/4 p0, 0x4

    return p0
.end method


# virtual methods
.method public final A0(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->y0(I)V

    .line 8
    return-void
.end method

.method public final B0(ILandroidx/datastore/preferences/protobuf/MessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->R0(II)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->D0(Landroidx/datastore/preferences/protobuf/MessageLite;)V

    .line 8
    const/4 p2, 0x4

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->R0(II)V

    .line 12
    return-void
.end method

.method final C0(ILandroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->R0(II)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->E0(Landroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 8
    const/4 p2, 0x4

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->R0(II)V

    .line 12
    return-void
.end method

.method public final D0(Landroidx/datastore/preferences/protobuf/MessageLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Landroidx/datastore/preferences/protobuf/MessageLite;->b(Landroidx/datastore/preferences/protobuf/CodedOutputStream;)V

    .line 4
    return-void
.end method

.method final E0(Landroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->wrapper:Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 3
    .line 4
    .line 5
    invoke-interface {p2, p1, v0}, Landroidx/datastore/preferences/protobuf/Schema;->a(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 6
    return-void
.end method

.method public abstract F0(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final G0(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(J)V

    .line 4
    return-void
.end method

.method public abstract H0(ILandroidx/datastore/preferences/protobuf/MessageLite;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract I0(ILandroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract J0(Landroidx/datastore/preferences/protobuf/MessageLite;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract K0(ILandroidx/datastore/preferences/protobuf/MessageLite;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract L0(ILandroidx/datastore/preferences/protobuf/ByteString;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final M0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->y0(I)V

    .line 4
    return-void
.end method

.method public final N0(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->z0(J)V

    .line 4
    return-void
.end method

.method public final O0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->i0(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->S0(I)V

    .line 8
    return-void
.end method

.method public final P0(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->j0(J)J

    .line 4
    move-result-wide p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(J)V

    .line 8
    return-void
.end method

.method public abstract Q0(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract R0(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract S0(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract T0(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(ILandroidx/datastore/preferences/protobuf/ByteString;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract i([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final k()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->q0()I

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
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string v1, "Did not write as much data as expected."

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    throw v0
.end method

.method public abstract k0()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final l0(Ljava/lang/String;Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->logger:Ljava/util/logging/Logger;

    .line 3
    .line 4
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 5
    .line 6
    const-string v2, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    .line 11
    sget-object p2, Landroidx/datastore/preferences/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 15
    move-result-object p1

    .line 16
    :try_start_0
    array-length p2, p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->S0(I)V

    .line 20
    array-length p2, p1

    .line 21
    const/4 v0, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1, v0, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->i([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutOfSpaceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    return-void

    .line 26
    :catch_0
    move-exception p1

    .line 27
    goto :goto_0

    .line 28
    :catch_1
    move-exception p1

    .line 29
    goto :goto_1

    .line 30
    :goto_0
    throw p1

    .line 31
    .line 32
    :goto_1
    new-instance p2, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutOfSpaceException;

    .line 33
    .line 34
    .line 35
    invoke-direct {p2, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    .line 36
    throw p2
.end method

.method m0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->serializationDeterministic:Z

    return v0
.end method

.method public abstract q0()I
.end method

.method public abstract r0(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final s0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    int-to-byte p1, p1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->r0(B)V

    .line 5
    return-void
.end method

.method public final t0([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, v1, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->u0([BII)V

    .line 6
    return-void
.end method

.method abstract u0([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract v0(Landroidx/datastore/preferences/protobuf/ByteString;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final w0(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 4
    move-result-wide p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->z0(J)V

    .line 8
    return-void
.end method

.method public abstract writeBool(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final writeDouble(ID)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 4
    move-result-wide p2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    .line 8
    return-void
.end method

.method public final writeEnum(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4
    return-void
.end method

.method public abstract writeFixed32(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeFixed64(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final writeFloat(IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 4
    move-result p2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeFixed32(II)V

    .line 8
    return-void
.end method

.method public abstract writeInt32(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final writeInt64(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 4
    return-void
.end method

.method public final writeSFixed32(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeFixed32(II)V

    .line 4
    return-void
.end method

.method public final writeSFixed64(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    .line 4
    return-void
.end method

.method public final writeSInt32(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->i0(I)I

    .line 4
    move-result p2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 8
    return-void
.end method

.method public final writeSInt64(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p2, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->j0(J)J

    .line 4
    move-result-wide p2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 8
    return-void
.end method

.method public abstract writeString(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeUInt32(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeUInt64(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final x0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->F0(I)V

    .line 4
    return-void
.end method

.method public abstract y0(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract z0(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
