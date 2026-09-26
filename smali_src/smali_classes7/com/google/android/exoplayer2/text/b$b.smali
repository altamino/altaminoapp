.class public final Lcom/google/android/exoplayer2/text/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private bitmapHeight:F

.field private line:F

.field private lineAnchor:I

.field private lineType:I

.field private multiRowAlignment:Landroid/text/Layout$Alignment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private position:F

.field private positionAnchor:I

.field private shearDegrees:F

.field private size:F

.field private text:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private textAlignment:Landroid/text/Layout$Alignment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private textSize:F

.field private textSizeType:I

.field private verticalType:I

.field private windowColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private windowColorSet:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/b$b;->text:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/b$b;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/b$b;->textAlignment:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/b$b;->multiRowAlignment:Landroid/text/Layout$Alignment;

    const v0, -0x800001

    iput v0, p0, Lcom/google/android/exoplayer2/text/b$b;->line:F

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/google/android/exoplayer2/text/b$b;->lineType:I

    iput v1, p0, Lcom/google/android/exoplayer2/text/b$b;->lineAnchor:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/b$b;->position:F

    iput v1, p0, Lcom/google/android/exoplayer2/text/b$b;->positionAnchor:I

    iput v1, p0, Lcom/google/android/exoplayer2/text/b$b;->textSizeType:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/b$b;->textSize:F

    iput v0, p0, Lcom/google/android/exoplayer2/text/b$b;->size:F

    iput v0, p0, Lcom/google/android/exoplayer2/text/b$b;->bitmapHeight:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/b$b;->windowColorSet:Z

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/exoplayer2/text/b$b;->windowColor:I

    iput v1, p0, Lcom/google/android/exoplayer2/text/b$b;->verticalType:I

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/text/b;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/b;->text:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/b$b;->text:Ljava/lang/CharSequence;

    .line 5
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/b;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/b$b;->bitmap:Landroid/graphics/Bitmap;

    .line 6
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/b;->textAlignment:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/b$b;->textAlignment:Landroid/text/Layout$Alignment;

    .line 7
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/b;->multiRowAlignment:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/b$b;->multiRowAlignment:Landroid/text/Layout$Alignment;

    .line 8
    iget v0, p1, Lcom/google/android/exoplayer2/text/b;->line:F

    iput v0, p0, Lcom/google/android/exoplayer2/text/b$b;->line:F

    .line 9
    iget v0, p1, Lcom/google/android/exoplayer2/text/b;->lineType:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/b$b;->lineType:I

    .line 10
    iget v0, p1, Lcom/google/android/exoplayer2/text/b;->lineAnchor:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/b$b;->lineAnchor:I

    .line 11
    iget v0, p1, Lcom/google/android/exoplayer2/text/b;->position:F

    iput v0, p0, Lcom/google/android/exoplayer2/text/b$b;->position:F

    .line 12
    iget v0, p1, Lcom/google/android/exoplayer2/text/b;->positionAnchor:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/b$b;->positionAnchor:I

    .line 13
    iget v0, p1, Lcom/google/android/exoplayer2/text/b;->textSizeType:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/b$b;->textSizeType:I

    .line 14
    iget v0, p1, Lcom/google/android/exoplayer2/text/b;->textSize:F

    iput v0, p0, Lcom/google/android/exoplayer2/text/b$b;->textSize:F

    .line 15
    iget v0, p1, Lcom/google/android/exoplayer2/text/b;->size:F

    iput v0, p0, Lcom/google/android/exoplayer2/text/b$b;->size:F

    .line 16
    iget v0, p1, Lcom/google/android/exoplayer2/text/b;->bitmapHeight:F

    iput v0, p0, Lcom/google/android/exoplayer2/text/b$b;->bitmapHeight:F

    .line 17
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/text/b;->windowColorSet:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/b$b;->windowColorSet:Z

    .line 18
    iget v0, p1, Lcom/google/android/exoplayer2/text/b;->windowColor:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/b$b;->windowColor:I

    .line 19
    iget v0, p1, Lcom/google/android/exoplayer2/text/b;->verticalType:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/b$b;->verticalType:I

    .line 20
    iget p1, p1, Lcom/google/android/exoplayer2/text/b;->shearDegrees:F

    iput p1, p0, Lcom/google/android/exoplayer2/text/b$b;->shearDegrees:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/text/b;Lcom/google/android/exoplayer2/text/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/b$b;-><init>(Lcom/google/android/exoplayer2/text/b;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/text/b;
    .locals 22

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    new-instance v20, Lcom/google/android/exoplayer2/text/b;

    .line 5
    .line 6
    move-object/from16 v1, v20

    .line 7
    .line 8
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/b$b;->text:Ljava/lang/CharSequence;

    .line 9
    .line 10
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/b$b;->textAlignment:Landroid/text/Layout$Alignment;

    .line 11
    .line 12
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/b$b;->multiRowAlignment:Landroid/text/Layout$Alignment;

    .line 13
    .line 14
    iget-object v5, v0, Lcom/google/android/exoplayer2/text/b$b;->bitmap:Landroid/graphics/Bitmap;

    .line 15
    .line 16
    iget v6, v0, Lcom/google/android/exoplayer2/text/b$b;->line:F

    .line 17
    .line 18
    iget v7, v0, Lcom/google/android/exoplayer2/text/b$b;->lineType:I

    .line 19
    .line 20
    iget v8, v0, Lcom/google/android/exoplayer2/text/b$b;->lineAnchor:I

    .line 21
    .line 22
    iget v9, v0, Lcom/google/android/exoplayer2/text/b$b;->position:F

    .line 23
    .line 24
    iget v10, v0, Lcom/google/android/exoplayer2/text/b$b;->positionAnchor:I

    .line 25
    .line 26
    iget v11, v0, Lcom/google/android/exoplayer2/text/b$b;->textSizeType:I

    .line 27
    .line 28
    iget v12, v0, Lcom/google/android/exoplayer2/text/b$b;->textSize:F

    .line 29
    .line 30
    iget v13, v0, Lcom/google/android/exoplayer2/text/b$b;->size:F

    .line 31
    .line 32
    iget v14, v0, Lcom/google/android/exoplayer2/text/b$b;->bitmapHeight:F

    .line 33
    .line 34
    iget-boolean v15, v0, Lcom/google/android/exoplayer2/text/b$b;->windowColorSet:Z

    .line 35
    .line 36
    move-object/from16 v21, v1

    .line 37
    .line 38
    iget v1, v0, Lcom/google/android/exoplayer2/text/b$b;->windowColor:I

    .line 39
    .line 40
    move/from16 v16, v1

    .line 41
    .line 42
    iget v1, v0, Lcom/google/android/exoplayer2/text/b$b;->verticalType:I

    .line 43
    .line 44
    move/from16 v17, v1

    .line 45
    .line 46
    iget v1, v0, Lcom/google/android/exoplayer2/text/b$b;->shearDegrees:F

    .line 47
    .line 48
    move/from16 v18, v1

    .line 49
    .line 50
    const/16 v19, 0x0

    .line 51
    .line 52
    move-object/from16 v1, v21

    .line 53
    .line 54
    .line 55
    invoke-direct/range {v1 .. v19}, Lcom/google/android/exoplayer2/text/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFLcom/google/android/exoplayer2/text/b$a;)V

    .line 56
    return-object v20
.end method

.method public b()Lcom/google/android/exoplayer2/text/b$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/b$b;->windowColorSet:Z

    return-object p0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/text/b$b;->lineAnchor:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/text/b$b;->positionAnchor:I

    return v0
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/b$b;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public f(Landroid/graphics/Bitmap;)Lcom/google/android/exoplayer2/text/b$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/b$b;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public g(F)Lcom/google/android/exoplayer2/text/b$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/text/b$b;->bitmapHeight:F

    return-object p0
.end method

.method public h(FI)Lcom/google/android/exoplayer2/text/b$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/text/b$b;->line:F

    iput p2, p0, Lcom/google/android/exoplayer2/text/b$b;->lineType:I

    return-object p0
.end method

.method public i(I)Lcom/google/android/exoplayer2/text/b$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/text/b$b;->lineAnchor:I

    return-object p0
.end method

.method public j(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/b$b;
    .locals 0
    .param p1    # Landroid/text/Layout$Alignment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/b$b;->multiRowAlignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public k(F)Lcom/google/android/exoplayer2/text/b$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/text/b$b;->position:F

    return-object p0
.end method

.method public l(I)Lcom/google/android/exoplayer2/text/b$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/text/b$b;->positionAnchor:I

    return-object p0
.end method

.method public m(F)Lcom/google/android/exoplayer2/text/b$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/text/b$b;->shearDegrees:F

    return-object p0
.end method

.method public n(F)Lcom/google/android/exoplayer2/text/b$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/text/b$b;->size:F

    return-object p0
.end method

.method public o(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/text/b$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/b$b;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public p(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/b$b;
    .locals 0
    .param p1    # Landroid/text/Layout$Alignment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/b$b;->textAlignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public q(FI)Lcom/google/android/exoplayer2/text/b$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/text/b$b;->textSize:F

    iput p2, p0, Lcom/google/android/exoplayer2/text/b$b;->textSizeType:I

    return-object p0
.end method

.method public r(I)Lcom/google/android/exoplayer2/text/b$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/text/b$b;->verticalType:I

    return-object p0
.end method

.method public s(I)Lcom/google/android/exoplayer2/text/b$b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/text/b$b;->windowColor:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/text/b$b;->windowColorSet:Z

    return-object p0
.end method
