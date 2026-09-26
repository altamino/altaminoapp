.class Landroidx/versionedparcelable/VersionedParcelParcel;
.super Landroidx/versionedparcelable/VersionedParcel;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "VersionedParcelParcel"


# instance fields
.field private mCurrentField:I

.field private final mEnd:I

.field private mFieldId:I

.field private mNextRead:I

.field private final mOffset:I

.field private final mParcel:Landroid/os/Parcel;

.field private final mPositionLookup:Landroid/util/SparseIntArray;

.field private final mPrefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    const-string v4, ""

    new-instance v5, Landroidx/collection/ArrayMap;

    invoke-direct {v5}, Landroidx/collection/ArrayMap;-><init>()V

    new-instance v6, Landroidx/collection/ArrayMap;

    invoke-direct {v6}, Landroidx/collection/ArrayMap;-><init>()V

    new-instance v7, Landroidx/collection/ArrayMap;

    invoke-direct {v7}, Landroidx/collection/ArrayMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroidx/versionedparcelable/VersionedParcelParcel;-><init>(Landroid/os/Parcel;IILjava/lang/String;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;IILjava/lang/String;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "II",
            "Ljava/lang/String;",
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
    invoke-direct {p0, p5, p6, p7}, Landroidx/versionedparcelable/VersionedParcel;-><init>(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    .line 3
    new-instance p5, Landroid/util/SparseIntArray;

    invoke-direct {p5}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p5, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mPositionLookup:Landroid/util/SparseIntArray;

    const/4 p5, -0x1

    iput p5, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mCurrentField:I

    iput p5, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mFieldId:I

    iput-object p1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    iput p2, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mOffset:I

    iput p3, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mEnd:I

    iput p2, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mNextRead:I

    iput-object p4, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mPrefix:Ljava/lang/String;

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
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    .line 5
    array-length v1, p1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    .line 17
    const/4 v0, -0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    :goto_0
    return-void
.end method

.method protected C(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 7
    return-void
.end method

.method public E(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    return-void
.end method

.method public G(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7
    return-void
.end method

.method public I(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public a()V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mCurrentField:I

    .line 3
    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mPositionLookup:Landroid/util/SparseIntArray;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    .line 10
    move-result v0

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 16
    move-result v1

    .line 17
    .line 18
    sub-int v2, v1, v0

    .line 19
    .line 20
    iget-object v3, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 34
    :cond_0
    return-void
.end method

.method protected b()Landroidx/versionedparcelable/VersionedParcel;
    .locals 9

    .line 1
    .line 2
    new-instance v8, Landroidx/versionedparcelable/VersionedParcelParcel;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 8
    move-result v2

    .line 9
    .line 10
    iget v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mNextRead:I

    .line 11
    .line 12
    iget v3, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mOffset:I

    .line 13
    .line 14
    if-ne v0, v3, :cond_0

    .line 15
    .line 16
    iget v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mEnd:I

    .line 17
    :cond_0
    move v3, v0

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    iget-object v4, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mPrefix:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v4, "  "

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v4

    .line 37
    .line 38
    iget-object v5, p0, Landroidx/versionedparcelable/VersionedParcel;->mReadCache:Landroidx/collection/ArrayMap;

    .line 39
    .line 40
    iget-object v6, p0, Landroidx/versionedparcelable/VersionedParcel;->mWriteCache:Landroidx/collection/ArrayMap;

    .line 41
    .line 42
    iget-object v7, p0, Landroidx/versionedparcelable/VersionedParcel;->mParcelizerCache:Landroidx/collection/ArrayMap;

    .line 43
    move-object v0, v8

    .line 44
    .line 45
    .line 46
    invoke-direct/range {v0 .. v7}, Landroidx/versionedparcelable/VersionedParcelParcel;-><init>(Landroid/os/Parcel;IILjava/lang/String;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    .line 47
    return-object v8
.end method

.method public g()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public i()[B
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-gez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    .line 12
    :cond_0
    new-array v0, v0, [B

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 18
    return-object v0
.end method

.method protected k()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Ljava/lang/CharSequence;

    .line 11
    return-object v0
.end method

.method public m(I)Z
    .locals 4

    .line 1
    .line 2
    :goto_0
    iget v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mNextRead:I

    .line 3
    .line 4
    iget v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mEnd:I

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    .line 8
    if-ge v0, v1, :cond_2

    .line 9
    .line 10
    iget v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mFieldId:I

    .line 11
    .line 12
    if-ne v0, p1, :cond_0

    .line 13
    return v3

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 25
    move-result v0

    .line 26
    .line 27
    if-lez v0, :cond_1

    .line 28
    return v2

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    .line 31
    .line 32
    iget v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mNextRead:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 36
    .line 37
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 41
    move-result v0

    .line 42
    .line 43
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 47
    move-result v1

    .line 48
    .line 49
    iput v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mFieldId:I

    .line 50
    .line 51
    iget v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mNextRead:I

    .line 52
    add-int/2addr v1, v0

    .line 53
    .line 54
    iput v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mNextRead:I

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_2
    iget v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mFieldId:I

    .line 58
    .line 59
    if-ne v0, p1, :cond_3

    .line 60
    move v2, v3

    .line 61
    :cond_3
    return v2
.end method

.method public o()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public q()Landroid/os/Parcelable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public w(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelParcel;->a()V

    .line 4
    .line 5
    iput p1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mCurrentField:I

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mPositionLookup:Landroid/util/SparseIntArray;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 13
    move-result v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelParcel;->E(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcelParcel;->E(I)V

    .line 24
    return-void
.end method

.method public y(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    return-void
.end method
