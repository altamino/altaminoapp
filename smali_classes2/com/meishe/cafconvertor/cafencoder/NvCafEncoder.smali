.class public Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;

.field private d:Ljava/nio/channels/FileChannel;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:J

.field private p:I

.field private q:Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;

.field private r:I

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meishe/cafconvertor/cafencoder/NvCafFrameIndexTableEntryV1;",
            ">;"
        }
    .end annotation
.end field

.field private t:I

.field private u:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIILcom/meishe/cafconvertor/NvRational;Lcom/meishe/cafconvertor/NvRational;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NvCafEncoder"

    iput-object v0, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->e:I

    const/16 v1, 0xf

    iput v1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->h:I

    iput v0, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->i:I

    iput v0, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->j:I

    iput v0, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->k:I

    iput v1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->l:I

    iput v0, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->m:I

    const/16 v0, 0x5a

    iput v0, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->n:I

    const-wide/16 v0, 0x1000

    iput-wide v0, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->o:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->s:Ljava/util/List;

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_3

    :cond_0
    iput-object p2, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->b:Ljava/lang/String;

    iput p3, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->f:I

    iput p4, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->g:I

    iput p5, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->e:I

    if-eqz p6, :cond_1

    iget p1, p6, Lcom/meishe/cafconvertor/NvRational;->num:I

    iput p1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->h:I

    iget p1, p6, Lcom/meishe/cafconvertor/NvRational;->den:I

    iput p1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->i:I

    :cond_1
    if-eqz p7, :cond_2

    iget p1, p7, Lcom/meishe/cafconvertor/NvRational;->num:I

    iput p1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->j:I

    iget p1, p7, Lcom/meishe/cafconvertor/NvRational;->den:I

    iput p1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->k:I

    :cond_2
    iput p8, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->m:I

    :try_start_0
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->b:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :goto_0
    new-instance p1, Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;

    iget-object p2, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->b:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->c:Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;

    iget-object p1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->c:Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->d:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const/16 p1, 0x40

    const/16 p2, 0x10

    invoke-static {p1, p2}, Lcom/meishe/cafconvertor/utils/Utils;->NV_UP_ALIGN_PO2(II)I

    move-result p1

    iput p1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->p:I

    iput p2, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->r:I

    :try_start_1
    iget-object p1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->d:Ljava/nio/channels/FileChannel;

    iget p2, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->p:I

    int-to-long p2, p2

    iget-wide p4, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->o:J

    add-long/2addr p2, p4

    invoke-virtual {p1, p2, p3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    new-instance p1, Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;

    invoke-direct {p1}, Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;-><init>()V

    iput-object p1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->q:Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public getFrameCount()I
    .locals 1

    iget v0, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->l:I

    return v0
.end method

.method public writeFrameIndexTable()Z
    .locals 7

    iget-object v0, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->d:Ljava/nio/channels/FileChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->c:Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget v2, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->t:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->s:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meishe/cafconvertor/cafencoder/NvCafFrameIndexTableEntryV1;

    iget-object v4, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->c:Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;

    iget-wide v5, v3, Lcom/meishe/cafconvertor/cafencoder/NvCafFrameIndexTableEntryV1;->a:J

    invoke-virtual {v4, v5, v6}, Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;->writeLong(J)V

    iget-object v4, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->c:Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;

    iget v5, v3, Lcom/meishe/cafconvertor/cafencoder/NvCafFrameIndexTableEntryV1;->b:I

    invoke-virtual {v4, v5}, Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;->writeInt(I)V

    iget-object v4, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->c:Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;

    iget v3, v3, Lcom/meishe/cafconvertor/cafencoder/NvCafFrameIndexTableEntryV1;->c:I

    invoke-virtual {v4, v3}, Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;->writeInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->c:Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    iget-object v0, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->c:Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1

    :cond_2
    :goto_1
    const-string v0, "NvCafEncoder"

    const-string/jumbo v2, "writeFrameIndexTable: m_outStream == null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public writeHeader()Z
    .locals 7

    const/4 v0, 0x0

    iput v0, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->t:I

    iget-object v1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->l:I

    iget v1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->l:I

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->o:J

    iget v5, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->r:I

    int-to-long v5, v5

    div-long/2addr v3, v5

    const/4 v5, 0x1

    cmp-long v6, v1, v3

    if-gtz v6, :cond_0

    iget v1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->p:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meishe/cafconvertor/cafencoder/NvCafFrameIndexTableEntryV1;

    iget-wide v1, v1, Lcom/meishe/cafconvertor/cafencoder/NvCafFrameIndexTableEntryV1;->a:J

    iget-object v3, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->s:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meishe/cafconvertor/cafencoder/NvCafFrameIndexTableEntryV1;

    iget v3, v3, Lcom/meishe/cafconvertor/cafencoder/NvCafFrameIndexTableEntryV1;->b:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    long-to-int v2, v1

    const/16 v1, 0x10

    invoke-static {v2, v1}, Lcom/meishe/cafconvertor/utils/Utils;->NV_UP_ALIGN_PO2(II)I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->t:I

    iget-object v1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->q:Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;

    const-string v2, ".CAF"

    iput-object v2, v1, Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;->a:Ljava/lang/String;

    iput v5, v1, Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;->b:I

    const/16 v2, 0x40

    iput v2, v1, Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;->c:I

    iget v2, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->e:I

    if-nez v2, :cond_1

    const-string v2, "JPEG"

    goto :goto_1

    :cond_1
    const-string v2, "PNG "

    :goto_1
    iput-object v2, v1, Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->q:Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;

    iput v0, v1, Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;->e:I

    iget v2, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->f:I

    iput v2, v1, Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;->f:I

    iget v2, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->g:I

    iput v2, v1, Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;->g:I

    iget v2, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->j:I

    iput v2, v1, Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;->h:I

    iget v2, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->k:I

    iput v2, v1, Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;->i:I

    iget v2, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->h:I

    iput v2, v1, Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;->j:I

    iget v2, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->i:I

    iput v2, v1, Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;->k:I

    iget v2, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->l:I

    iput v2, v1, Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;->l:I

    iget v2, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->m:I

    if-eq v2, v5, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    iput v0, v1, Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;->m:I

    goto :goto_2

    :cond_2
    iput v3, v1, Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;->m:I

    goto :goto_2

    :cond_3
    iput v5, v1, Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;->m:I

    :goto_2
    iget-object v1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->q:Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;

    iput v0, v1, Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;->n:I

    iget v2, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->t:I

    int-to-long v2, v2

    iput-wide v2, v1, Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;->o:J

    iget-object v1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->d:Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->c:Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;

    if-nez v2, :cond_4

    goto/16 :goto_3

    :cond_4
    const-wide/16 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iget-object v1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->c:Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;

    iget-object v2, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->q:Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;

    iget-object v2, v2, Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->c:Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;

    iget-object v2, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->q:Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;

    iget v2, v2, Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;->b:I

    invoke-virtual {v1, v2}, Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;->writeInt(I)V

    iget-object v1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->c:Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;

    iget-object v2, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->q:Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;

    iget v2, v2, Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;->c:I

    invoke-virtual {v1, v2}, Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;->writeInt(I)V

    iget-object v1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->c:Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;

    iget-object v2, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->q:Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;

    iget-object v2, v2, Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->c:Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;

    iget-object v2, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->q:Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;

    iget v2, v2, Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;->e:I

    invoke-virtual {v1, v2}, Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;->writeInt(I)V

    iget-object v1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->c:Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;

    iget-object v2, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->q:Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;

    iget v2, v2, Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;->f:I

    invoke-virtual {v1, v2}, Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;->writeInt(I)V

    iget-object v1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->c:Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;

    iget-object v2, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->q:Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;

    iget v2, v2, Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;->g:I

    invoke-virtual {v1, v2}, Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;->writeInt(I)V

    iget-object v1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->c:Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;

    iget-object v2, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->q:Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;

    iget v2, v2, Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;->h:I

    invoke-virtual {v1, v2}, Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;->writeInt(I)V

    iget-object v1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->c:Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;

    iget-object v2, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->q:Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;

    iget v2, v2, Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;->i:I

    invoke-virtual {v1, v2}, Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;->writeInt(I)V

    iget-object v1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->c:Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;

    iget-object v2, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->q:Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;

    iget v2, v2, Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;->j:I

    invoke-virtual {v1, v2}, Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;->writeInt(I)V

    iget-object v1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->c:Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;

    iget-object v2, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->q:Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;

    iget v2, v2, Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;->k:I

    invoke-virtual {v1, v2}, Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;->writeInt(I)V

    iget-object v1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->c:Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;

    iget-object v2, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->q:Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;

    iget v2, v2, Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;->l:I

    invoke-virtual {v1, v2}, Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;->writeInt(I)V

    iget-object v1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->c:Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;

    iget-object v2, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->q:Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;

    iget v2, v2, Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;->m:I

    invoke-virtual {v1, v2}, Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;->writeInt(I)V

    iget-object v1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->c:Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;

    iget-object v2, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->q:Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;

    iget v2, v2, Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;->n:I

    invoke-virtual {v1, v2}, Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;->writeInt(I)V

    iget-object v1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->c:Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;

    iget-object v2, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->q:Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;

    iget-wide v2, v2, Lcom/meishe/cafconvertor/cafencoder/NvCafHeaderV1;->o:J

    invoke-virtual {v1, v2, v3}, Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;->writeLong(J)V

    iget-object v1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->c:Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :cond_5
    :goto_3
    const-string v1, "NvCafEncoder"

    const-string/jumbo v2, "writeHeader: m_outStream == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public writeOneImage(Landroid/graphics/Bitmap;I)Z
    .locals 8

    const-string v0, "NvCafEncoder"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string/jumbo p1, "writeOneImage: bitmap is null"

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v2, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->d:Ljava/nio/channels/FileChannel;

    if-eqz v2, :cond_7

    iget-object v3, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->c:Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;

    if-nez v3, :cond_1

    goto/16 :goto_4

    :cond_1
    iput p2, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->n:I

    :try_start_0
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    const-wide/16 v4, 0xf

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    long-to-int v0, v2

    const/16 v2, 0x10

    invoke-static {v0, v2}, Lcom/meishe/cafconvertor/utils/Utils;->NV_UP_ALIGN_PO2(II)I

    move-result v0

    int-to-long v2, v0

    iget-object v0, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->d:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->f:I

    if-lez v5, :cond_3

    iget v5, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->g:I

    if-gtz v5, :cond_4

    :cond_3
    iput v0, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->f:I

    iput v4, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->g:I

    :cond_4
    iget v5, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->f:I

    if-ne v0, v5, :cond_6

    iget v0, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->g:I

    if-eq v4, v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    iput-object p1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->u:Landroid/graphics/Bitmap;

    goto :goto_3

    :cond_6
    :goto_2
    iget v0, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->f:I

    iget v4, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->g:I

    invoke-static {p1, v0, v4}, Lcom/meishe/cafconvertor/utils/Utils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    :goto_3
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v0, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->u:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v4, p2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iget-object p2, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->c:Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;

    invoke-virtual {p2, p1}, Ljava/io/FileOutputStream;->write([B)V

    iget-object p2, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->c:Lcom/meishe/cafconvertor/utils/LittleEndianOutputStream;

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    new-instance p2, Lcom/meishe/cafconvertor/cafencoder/NvCafFrameIndexTableEntryV1;

    invoke-direct {p2}, Lcom/meishe/cafconvertor/cafencoder/NvCafFrameIndexTableEntryV1;-><init>()V

    array-length p1, p1

    iput p1, p2, Lcom/meishe/cafconvertor/cafencoder/NvCafFrameIndexTableEntryV1;->b:I

    iput-wide v2, p2, Lcom/meishe/cafconvertor/cafencoder/NvCafFrameIndexTableEntryV1;->a:J

    iput v1, p2, Lcom/meishe/cafconvertor/cafencoder/NvCafFrameIndexTableEntryV1;->c:I

    iget-object p1, p0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->s:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v1

    :cond_7
    :goto_4
    const-string/jumbo p1, "writeOneImage: m_outStream == null"

    goto/16 :goto_0
.end method
