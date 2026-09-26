.class public Lcom/airbnb/lottie/model/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/d$a;
    }
.end annotation


# instance fields
.field public color:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public fontName:Ljava/lang/String;

.field justification:I

.field lineHeight:D

.field public size:I

.field public strokeColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public strokeOverFill:Z

.field public strokeWidth:I

.field public text:Ljava/lang/String;

.field public tracking:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIDIIIZ)V
    .locals 0
    .param p8    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p9    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/airbnb/lottie/model/d;->text:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/airbnb/lottie/model/d;->fontName:Ljava/lang/String;

    .line 8
    .line 9
    iput p3, p0, Lcom/airbnb/lottie/model/d;->size:I

    .line 10
    .line 11
    iput p4, p0, Lcom/airbnb/lottie/model/d;->justification:I

    .line 12
    .line 13
    iput p5, p0, Lcom/airbnb/lottie/model/d;->tracking:I

    .line 14
    .line 15
    iput-wide p6, p0, Lcom/airbnb/lottie/model/d;->lineHeight:D

    .line 16
    .line 17
    iput p8, p0, Lcom/airbnb/lottie/model/d;->color:I

    .line 18
    .line 19
    iput p9, p0, Lcom/airbnb/lottie/model/d;->strokeColor:I

    .line 20
    .line 21
    iput p10, p0, Lcom/airbnb/lottie/model/d;->strokeWidth:I

    .line 22
    .line 23
    iput-boolean p11, p0, Lcom/airbnb/lottie/model/d;->strokeOverFill:Z

    .line 24
    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/model/d;->text:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    move-result v0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-object v1, p0, Lcom/airbnb/lottie/model/d;->fontName:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget v1, p0, Lcom/airbnb/lottie/model/d;->size:I

    .line 20
    add-int/2addr v0, v1

    .line 21
    .line 22
    mul-int/lit8 v0, v0, 0x1f

    .line 23
    .line 24
    iget v1, p0, Lcom/airbnb/lottie/model/d;->justification:I

    .line 25
    add-int/2addr v0, v1

    .line 26
    .line 27
    mul-int/lit8 v0, v0, 0x1f

    .line 28
    .line 29
    iget v1, p0, Lcom/airbnb/lottie/model/d;->tracking:I

    .line 30
    add-int/2addr v0, v1

    .line 31
    .line 32
    iget-wide v1, p0, Lcom/airbnb/lottie/model/d;->lineHeight:D

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 36
    move-result-wide v1

    .line 37
    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    const/16 v3, 0x20

    .line 41
    .line 42
    ushr-long v3, v1, v3

    .line 43
    xor-long/2addr v1, v3

    .line 44
    long-to-int v1, v1

    .line 45
    add-int/2addr v0, v1

    .line 46
    .line 47
    mul-int/lit8 v0, v0, 0x1f

    .line 48
    .line 49
    iget v1, p0, Lcom/airbnb/lottie/model/d;->color:I

    .line 50
    add-int/2addr v0, v1

    .line 51
    return v0
.end method
