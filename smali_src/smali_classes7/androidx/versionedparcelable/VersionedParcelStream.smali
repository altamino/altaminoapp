.class Landroidx/versionedparcelable/VersionedParcelStream;
.super Landroidx/versionedparcelable/VersionedParcel;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;
    }
.end annotation


# static fields
.field private static final TYPE_BOOLEAN:I = 0x5

.field private static final TYPE_BOOLEAN_ARRAY:I = 0x6

.field private static final TYPE_DOUBLE:I = 0x7

.field private static final TYPE_DOUBLE_ARRAY:I = 0x8

.field private static final TYPE_FLOAT:I = 0xd

.field private static final TYPE_FLOAT_ARRAY:I = 0xe

.field private static final TYPE_INT:I = 0x9

.field private static final TYPE_INT_ARRAY:I = 0xa

.field private static final TYPE_LONG:I = 0xb

.field private static final TYPE_LONG_ARRAY:I = 0xc

.field private static final TYPE_NULL:I = 0x0

.field private static final TYPE_STRING:I = 0x3

.field private static final TYPE_STRING_ARRAY:I = 0x4

.field private static final TYPE_SUB_BUNDLE:I = 0x1

.field private static final TYPE_SUB_PERSISTABLE_BUNDLE:I = 0x2

.field private static final UTF_16:Ljava/nio/charset/Charset;


# instance fields
.field mCount:I

.field private mCurrentInput:Ljava/io/DataInputStream;

.field private mCurrentOutput:Ljava/io/DataOutputStream;

.field private mFieldBuffer:Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;

.field private mFieldId:I

.field mFieldSize:I

.field private mIgnoreParcelables:Z

.field private final mMasterInput:Ljava/io/DataInputStream;

.field private final mMasterOutput:Ljava/io/DataOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "UTF-16"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Landroidx/versionedparcelable/VersionedParcelStream;->UTF_16:Ljava/nio/charset/Charset;

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 6

    .line 1
    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    new-instance v4, Landroidx/collection/ArrayMap;

    invoke-direct {v4}, Landroidx/collection/ArrayMap;-><init>()V

    new-instance v5, Landroidx/collection/ArrayMap;

    invoke-direct {v5}, Landroidx/collection/ArrayMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/versionedparcelable/VersionedParcelStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/io/OutputStream;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p3, p4, p5}, Landroidx/versionedparcelable/VersionedParcel;-><init>(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    const/4 p3, 0x0

    iput p3, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    const/4 p3, -0x1

    iput p3, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldId:I

    iput p3, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldSize:I

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 3
    new-instance p4, Ljava/io/DataInputStream;

    new-instance p5, Landroidx/versionedparcelable/VersionedParcelStream$1;

    invoke-direct {p5, p0, p1}, Landroidx/versionedparcelable/VersionedParcelStream$1;-><init>(Landroidx/versionedparcelable/VersionedParcelStream;Ljava/io/InputStream;)V

    invoke-direct {p4, p5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    move-object p4, p3

    :goto_0
    iput-object p4, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mMasterInput:Ljava/io/DataInputStream;

    if-eqz p2, :cond_1

    .line 4
    new-instance p3, Ljava/io/DataOutputStream;

    invoke-direct {p3, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :cond_1
    iput-object p3, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mMasterOutput:Ljava/io/DataOutputStream;

    iput-object p4, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    iput-object p3, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    return-void
.end method


# virtual methods
.method public A([B)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    .line 5
    array-length v1, p1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p1

    .line 16
    goto :goto_1

    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    .line 19
    const/4 v0, -0x1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    return-void

    .line 24
    .line 25
    :goto_1
    new-instance v0, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, p1}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    .line 29
    throw v0
.end method

.method protected C(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    .line 2
    iget-boolean p1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mIgnoreParcelables:Z

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 8
    .line 9
    const-string v0, "CharSequence cannot be written to an OutputStream"

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 13
    throw p1
.end method

.method public E(I)V
    .locals 1

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    .line 9
    new-instance v0, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p1}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    .line 13
    throw v0
.end method

.method public G(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    .line 2
    iget-boolean p1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mIgnoreParcelables:Z

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 8
    .line 9
    const-string v0, "Parcelables cannot be written to an OutputStream"

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 13
    throw p1
.end method

.method public I(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    sget-object v0, Landroidx/versionedparcelable/VersionedParcelStream;->UTF_16:Ljava/nio/charset/Charset;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    .line 11
    array-length v1, p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    .line 25
    const/4 v0, -0x1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-void

    .line 30
    .line 31
    :goto_1
    new-instance v0, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, p1}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    .line 35
    throw v0
.end method

.method public a()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldBuffer:Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    :try_start_0
    iget-object v0, v0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mOutput:Ljava/io/ByteArrayOutputStream;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldBuffer:Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 22
    .line 23
    iput-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldBuffer:Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;

    .line 24
    goto :goto_2

    .line 25
    .line 26
    :goto_1
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    .line 30
    throw v1

    .line 31
    :cond_1
    :goto_2
    return-void
.end method

.method protected b()Landroidx/versionedparcelable/VersionedParcel;
    .locals 7

    .line 1
    .line 2
    new-instance v6, Landroidx/versionedparcelable/VersionedParcelStream;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    .line 7
    .line 8
    iget-object v3, p0, Landroidx/versionedparcelable/VersionedParcel;->mReadCache:Landroidx/collection/ArrayMap;

    .line 9
    .line 10
    iget-object v4, p0, Landroidx/versionedparcelable/VersionedParcel;->mWriteCache:Landroidx/collection/ArrayMap;

    .line 11
    .line 12
    iget-object v5, p0, Landroidx/versionedparcelable/VersionedParcel;->mParcelizerCache:Landroidx/collection/ArrayMap;

    .line 13
    move-object v0, v6

    .line 14
    .line 15
    .line 16
    invoke-direct/range {v0 .. v5}, Landroidx/versionedparcelable/VersionedParcelStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    .line 17
    return-object v6
.end method

.method public f()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public g()Z
    .locals 2

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    .line 6
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    .line 10
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    .line 14
    throw v1
.end method

.method public i()[B
    .locals 2

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-object v0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return-object v0

    .line 21
    .line 22
    :goto_0
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    .line 26
    throw v1
.end method

.method protected k()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public m(I)Z
    .locals 4

    .line 1
    :goto_0
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    iget v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldId:I

    .line 4
    .line 5
    if-ne v1, p1, :cond_0

    .line 6
    const/4 p1, 0x1

    .line 7
    return p1

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 19
    move-result v1

    .line 20
    .line 21
    if-lez v1, :cond_1

    .line 22
    return v0

    .line 23
    .line 24
    :cond_1
    iget v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    .line 25
    .line 26
    iget v2, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldSize:I

    .line 27
    .line 28
    if-ge v1, v2, :cond_2

    .line 29
    .line 30
    iget-object v3, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mMasterInput:Ljava/io/DataInputStream;

    .line 31
    sub-int/2addr v2, v1

    .line 32
    int-to-long v1, v2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v1, v2}, Ljava/io/InputStream;->skip(J)J

    .line 36
    :cond_2
    const/4 v1, -0x1

    .line 37
    .line 38
    iput v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldSize:I

    .line 39
    .line 40
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mMasterInput:Ljava/io/DataInputStream;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    .line 44
    move-result v1

    .line 45
    .line 46
    iput v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    .line 47
    .line 48
    .line 49
    const v2, 0xffff

    .line 50
    .line 51
    and-int v3, v1, v2

    .line 52
    .line 53
    if-ne v3, v2, :cond_3

    .line 54
    .line 55
    iget-object v3, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mMasterInput:Ljava/io/DataInputStream;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    .line 59
    move-result v3

    .line 60
    .line 61
    :cond_3
    shr-int/lit8 v1, v1, 0x10

    .line 62
    and-int/2addr v1, v2

    .line 63
    .line 64
    iput v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldId:I

    .line 65
    .line 66
    iput v3, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldSize:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_0

    .line 68
    :catch_0
    return v0
.end method

.method public o()I
    .locals 2

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 6
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    .line 10
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    .line 14
    throw v1
.end method

.method public q()Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 16
    .line 17
    new-instance v1, Ljava/lang/String;

    .line 18
    .line 19
    sget-object v2, Landroidx/versionedparcelable/VersionedParcelStream;->UTF_16:Ljava/nio/charset/Charset;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-object v1

    .line 24
    :catch_0
    move-exception v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    return-object v0

    .line 28
    .line 29
    :goto_0
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    .line 33
    throw v1
.end method

.method public w(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->a()V

    .line 4
    .line 5
    new-instance v0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mMasterOutput:Ljava/io/DataOutputStream;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p1, v1}, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;-><init>(ILjava/io/DataOutputStream;)V

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldBuffer:Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;

    .line 13
    .line 14
    iget-object p1, v0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mDataStream:Ljava/io/DataOutputStream;

    .line 15
    .line 16
    iput-object p1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    .line 17
    return-void
.end method

.method public x(ZZ)V
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iput-boolean p2, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mIgnoreParcelables:Z

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 8
    .line 9
    const-string p2, "Serialization of this object is not allowed"

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 13
    throw p1
.end method

.method public y(Z)V
    .locals 1

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    .line 9
    new-instance v0, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p1}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    .line 13
    throw v0
.end method
