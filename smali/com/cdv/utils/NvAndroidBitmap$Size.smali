.class public Lcom/cdv/utils/NvAndroidBitmap$Size;
.super Ljava/lang/Object;
.source "NvAndroidBitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cdv/utils/NvAndroidBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Size"
.end annotation


# instance fields
.field private m_height:I

.field private m_width:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/cdv/utils/NvAndroidBitmap$Size;->m_width:I

    .line 54
    iput p2, p0, Lcom/cdv/utils/NvAndroidBitmap$Size;->m_height:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 74
    :cond_1
    instance-of v2, p1, Lcom/cdv/utils/NvAndroidBitmap$Size;

    if-eqz v2, :cond_2

    .line 75
    check-cast p1, Lcom/cdv/utils/NvAndroidBitmap$Size;

    .line 76
    iget v2, p0, Lcom/cdv/utils/NvAndroidBitmap$Size;->m_width:I

    iget v3, p1, Lcom/cdv/utils/NvAndroidBitmap$Size;->m_width:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/cdv/utils/NvAndroidBitmap$Size;->m_height:I

    iget p1, p1, Lcom/cdv/utils/NvAndroidBitmap$Size;->m_height:I

    if-ne v2, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/cdv/utils/NvAndroidBitmap$Size;->m_height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/cdv/utils/NvAndroidBitmap$Size;->m_width:I

    return v0
.end method
