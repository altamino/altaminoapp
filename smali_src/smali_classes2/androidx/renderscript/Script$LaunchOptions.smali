.class public final Landroidx/renderscript/Script$LaunchOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/renderscript/Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LaunchOptions"
.end annotation


# instance fields
.field private strategy:I

.field private xend:I

.field private xstart:I

.field private yend:I

.field private ystart:I

.field private zend:I

.field private zstart:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Landroidx/renderscript/Script$LaunchOptions;->xstart:I

    .line 7
    .line 8
    iput v0, p0, Landroidx/renderscript/Script$LaunchOptions;->ystart:I

    .line 9
    .line 10
    iput v0, p0, Landroidx/renderscript/Script$LaunchOptions;->xend:I

    .line 11
    .line 12
    iput v0, p0, Landroidx/renderscript/Script$LaunchOptions;->yend:I

    .line 13
    .line 14
    iput v0, p0, Landroidx/renderscript/Script$LaunchOptions;->zstart:I

    .line 15
    .line 16
    iput v0, p0, Landroidx/renderscript/Script$LaunchOptions;->zend:I

    .line 17
    return-void
.end method

.method static synthetic access$000(Landroidx/renderscript/Script$LaunchOptions;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/renderscript/Script$LaunchOptions;->xstart:I

    .line 3
    return p0
.end method

.method static synthetic access$100(Landroidx/renderscript/Script$LaunchOptions;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/renderscript/Script$LaunchOptions;->xend:I

    .line 3
    return p0
.end method

.method static synthetic access$200(Landroidx/renderscript/Script$LaunchOptions;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/renderscript/Script$LaunchOptions;->ystart:I

    .line 3
    return p0
.end method

.method static synthetic access$300(Landroidx/renderscript/Script$LaunchOptions;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/renderscript/Script$LaunchOptions;->yend:I

    .line 3
    return p0
.end method

.method static synthetic access$400(Landroidx/renderscript/Script$LaunchOptions;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/renderscript/Script$LaunchOptions;->zstart:I

    .line 3
    return p0
.end method

.method static synthetic access$500(Landroidx/renderscript/Script$LaunchOptions;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/renderscript/Script$LaunchOptions;->zend:I

    .line 3
    return p0
.end method


# virtual methods
.method public getXEnd()I
    .locals 1

    iget v0, p0, Landroidx/renderscript/Script$LaunchOptions;->xend:I

    return v0
.end method

.method public getXStart()I
    .locals 1

    iget v0, p0, Landroidx/renderscript/Script$LaunchOptions;->xstart:I

    return v0
.end method

.method public getYEnd()I
    .locals 1

    iget v0, p0, Landroidx/renderscript/Script$LaunchOptions;->yend:I

    return v0
.end method

.method public getYStart()I
    .locals 1

    iget v0, p0, Landroidx/renderscript/Script$LaunchOptions;->ystart:I

    return v0
.end method

.method public getZEnd()I
    .locals 1

    iget v0, p0, Landroidx/renderscript/Script$LaunchOptions;->zend:I

    return v0
.end method

.method public getZStart()I
    .locals 1

    iget v0, p0, Landroidx/renderscript/Script$LaunchOptions;->zstart:I

    return v0
.end method

.method public setX(II)Landroidx/renderscript/Script$LaunchOptions;
    .locals 0

    .line 1
    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    if-le p2, p1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Landroidx/renderscript/Script$LaunchOptions;->xstart:I

    .line 7
    .line 8
    iput p2, p0, Landroidx/renderscript/Script$LaunchOptions;->xend:I

    .line 9
    return-object p0

    .line 10
    .line 11
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 12
    .line 13
    const-string p2, "Invalid dimensions"

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    throw p1
.end method

.method public setY(II)Landroidx/renderscript/Script$LaunchOptions;
    .locals 0

    .line 1
    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    if-le p2, p1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Landroidx/renderscript/Script$LaunchOptions;->ystart:I

    .line 7
    .line 8
    iput p2, p0, Landroidx/renderscript/Script$LaunchOptions;->yend:I

    .line 9
    return-object p0

    .line 10
    .line 11
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 12
    .line 13
    const-string p2, "Invalid dimensions"

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    throw p1
.end method

.method public setZ(II)Landroidx/renderscript/Script$LaunchOptions;
    .locals 0

    .line 1
    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    if-le p2, p1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Landroidx/renderscript/Script$LaunchOptions;->zstart:I

    .line 7
    .line 8
    iput p2, p0, Landroidx/renderscript/Script$LaunchOptions;->zend:I

    .line 9
    return-object p0

    .line 10
    .line 11
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 12
    .line 13
    const-string p2, "Invalid dimensions"

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    throw p1
.end method
