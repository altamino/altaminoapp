.class public Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;
.super Ljava/io/FileOutputStream;


# instance fields
.field protected a:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public writeInt(I)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/FileOutputStream;->write(I)V

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/FileOutputStream;->write(I)V

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/FileOutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write(I)V

    iget p1, p0, Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;->a:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;->a:I

    return-void
.end method

.method public writeLong(J)V
    .locals 3

    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/FileOutputStream;->write(I)V

    const/16 v0, 0x8

    ushr-long v1, p1, v0

    long-to-int v2, v1

    and-int/lit16 v1, v2, 0xff

    invoke-virtual {p0, v1}, Ljava/io/FileOutputStream;->write(I)V

    const/16 v1, 0x10

    ushr-long v1, p1, v1

    long-to-int v2, v1

    and-int/lit16 v1, v2, 0xff

    invoke-virtual {p0, v1}, Ljava/io/FileOutputStream;->write(I)V

    const/16 v1, 0x18

    ushr-long v1, p1, v1

    long-to-int v2, v1

    and-int/lit16 v1, v2, 0xff

    invoke-virtual {p0, v1}, Ljava/io/FileOutputStream;->write(I)V

    const/16 v1, 0x20

    ushr-long v1, p1, v1

    long-to-int v2, v1

    and-int/lit16 v1, v2, 0xff

    invoke-virtual {p0, v1}, Ljava/io/FileOutputStream;->write(I)V

    const/16 v1, 0x28

    ushr-long v1, p1, v1

    long-to-int v2, v1

    and-int/lit16 v1, v2, 0xff

    invoke-virtual {p0, v1}, Ljava/io/FileOutputStream;->write(I)V

    const/16 v1, 0x30

    ushr-long v1, p1, v1

    long-to-int v2, v1

    and-int/lit16 v1, v2, 0xff

    invoke-virtual {p0, v1}, Ljava/io/FileOutputStream;->write(I)V

    const/16 v1, 0x38

    ushr-long/2addr p1, v1

    long-to-int p2, p1

    and-int/lit16 p1, p2, 0xff

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write(I)V

    iget p1, p0, Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;->a:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;->a:I

    return-void
.end method
