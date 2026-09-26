.class public final Landroidx/media3/common/text/Cue$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/text/Cue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
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

    iput-object v0, p0, Landroidx/media3/common/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroidx/media3/common/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroidx/media3/common/text/Cue$Builder;->multiRowAlignment:Landroid/text/Layout$Alignment;

    const v0, -0x800001

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->line:F

    const/high16 v1, -0x80000000

    iput v1, p0, Landroidx/media3/common/text/Cue$Builder;->lineType:I

    iput v1, p0, Landroidx/media3/common/text/Cue$Builder;->lineAnchor:I

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->position:F

    iput v1, p0, Landroidx/media3/common/text/Cue$Builder;->positionAnchor:I

    iput v1, p0, Landroidx/media3/common/text/Cue$Builder;->textSizeType:I

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->textSize:F

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->size:F

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->bitmapHeight:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/common/text/Cue$Builder;->windowColorSet:Z

    const/high16 v0, -0x1000000

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->windowColor:I

    iput v1, p0, Landroidx/media3/common/text/Cue$Builder;->verticalType:I

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/text/Cue;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-object v0, p1, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    .line 5
    iget-object v0, p1, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroidx/media3/common/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    .line 6
    iget-object v0, p1, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroidx/media3/common/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    .line 7
    iget-object v0, p1, Landroidx/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroidx/media3/common/text/Cue$Builder;->multiRowAlignment:Landroid/text/Layout$Alignment;

    .line 8
    iget v0, p1, Landroidx/media3/common/text/Cue;->line:F

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->line:F

    .line 9
    iget v0, p1, Landroidx/media3/common/text/Cue;->lineType:I

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->lineType:I

    .line 10
    iget v0, p1, Landroidx/media3/common/text/Cue;->lineAnchor:I

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->lineAnchor:I

    .line 11
    iget v0, p1, Landroidx/media3/common/text/Cue;->position:F

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->position:F

    .line 12
    iget v0, p1, Landroidx/media3/common/text/Cue;->positionAnchor:I

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->positionAnchor:I

    .line 13
    iget v0, p1, Landroidx/media3/common/text/Cue;->textSizeType:I

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->textSizeType:I

    .line 14
    iget v0, p1, Landroidx/media3/common/text/Cue;->textSize:F

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->textSize:F

    .line 15
    iget v0, p1, Landroidx/media3/common/text/Cue;->size:F

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->size:F

    .line 16
    iget v0, p1, Landroidx/media3/common/text/Cue;->bitmapHeight:F

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->bitmapHeight:F

    .line 17
    iget-boolean v0, p1, Landroidx/media3/common/text/Cue;->windowColorSet:Z

    iput-boolean v0, p0, Landroidx/media3/common/text/Cue$Builder;->windowColorSet:Z

    .line 18
    iget v0, p1, Landroidx/media3/common/text/Cue;->windowColor:I

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->windowColor:I

    .line 19
    iget v0, p1, Landroidx/media3/common/text/Cue;->verticalType:I

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->verticalType:I

    .line 20
    iget p1, p1, Landroidx/media3/common/text/Cue;->shearDegrees:F

    iput p1, p0, Landroidx/media3/common/text/Cue$Builder;->shearDegrees:F

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/text/Cue;Landroidx/media3/common/text/Cue$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/common/text/Cue$Builder;-><init>(Landroidx/media3/common/text/Cue;)V

    return-void
.end method


# virtual methods
.method public a()Landroidx/media3/common/text/Cue;
    .locals 22

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    new-instance v20, Landroidx/media3/common/text/Cue;

    .line 5
    .line 6
    move-object/from16 v1, v20

    .line 7
    .line 8
    iget-object v2, v0, Landroidx/media3/common/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    .line 9
    .line 10
    iget-object v3, v0, Landroidx/media3/common/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    .line 11
    .line 12
    iget-object v4, v0, Landroidx/media3/common/text/Cue$Builder;->multiRowAlignment:Landroid/text/Layout$Alignment;

    .line 13
    .line 14
    iget-object v5, v0, Landroidx/media3/common/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    .line 15
    .line 16
    iget v6, v0, Landroidx/media3/common/text/Cue$Builder;->line:F

    .line 17
    .line 18
    iget v7, v0, Landroidx/media3/common/text/Cue$Builder;->lineType:I

    .line 19
    .line 20
    iget v8, v0, Landroidx/media3/common/text/Cue$Builder;->lineAnchor:I

    .line 21
    .line 22
    iget v9, v0, Landroidx/media3/common/text/Cue$Builder;->position:F

    .line 23
    .line 24
    iget v10, v0, Landroidx/media3/common/text/Cue$Builder;->positionAnchor:I

    .line 25
    .line 26
    iget v11, v0, Landroidx/media3/common/text/Cue$Builder;->textSizeType:I

    .line 27
    .line 28
    iget v12, v0, Landroidx/media3/common/text/Cue$Builder;->textSize:F

    .line 29
    .line 30
    iget v13, v0, Landroidx/media3/common/text/Cue$Builder;->size:F

    .line 31
    .line 32
    iget v14, v0, Landroidx/media3/common/text/Cue$Builder;->bitmapHeight:F

    .line 33
    .line 34
    iget-boolean v15, v0, Landroidx/media3/common/text/Cue$Builder;->windowColorSet:Z

    .line 35
    .line 36
    move-object/from16 v21, v1

    .line 37
    .line 38
    iget v1, v0, Landroidx/media3/common/text/Cue$Builder;->windowColor:I

    .line 39
    .line 40
    move/from16 v16, v1

    .line 41
    .line 42
    iget v1, v0, Landroidx/media3/common/text/Cue$Builder;->verticalType:I

    .line 43
    .line 44
    move/from16 v17, v1

    .line 45
    .line 46
    iget v1, v0, Landroidx/media3/common/text/Cue$Builder;->shearDegrees:F

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
    invoke-direct/range {v1 .. v19}, Landroidx/media3/common/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFLandroidx/media3/common/text/Cue$1;)V

    .line 56
    return-object v20
.end method

.method public b()Landroidx/media3/common/text/Cue$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/common/text/Cue$Builder;->windowColorSet:Z

    return-object p0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/common/text/Cue$Builder;->lineAnchor:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/common/text/Cue$Builder;->positionAnchor:I

    return v0
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media3/common/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public f(Landroid/graphics/Bitmap;)Landroidx/media3/common/text/Cue$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/common/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public g(F)Landroidx/media3/common/text/Cue$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/text/Cue$Builder;->bitmapHeight:F

    return-object p0
.end method

.method public h(FI)Landroidx/media3/common/text/Cue$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/text/Cue$Builder;->line:F

    iput p2, p0, Landroidx/media3/common/text/Cue$Builder;->lineType:I

    return-object p0
.end method

.method public i(I)Landroidx/media3/common/text/Cue$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/text/Cue$Builder;->lineAnchor:I

    return-object p0
.end method

.method public j(Landroid/text/Layout$Alignment;)Landroidx/media3/common/text/Cue$Builder;
    .locals 0
    .param p1    # Landroid/text/Layout$Alignment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/text/Cue$Builder;->multiRowAlignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public k(F)Landroidx/media3/common/text/Cue$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/text/Cue$Builder;->position:F

    return-object p0
.end method

.method public l(I)Landroidx/media3/common/text/Cue$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/text/Cue$Builder;->positionAnchor:I

    return-object p0
.end method

.method public m(F)Landroidx/media3/common/text/Cue$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/text/Cue$Builder;->shearDegrees:F

    return-object p0
.end method

.method public n(F)Landroidx/media3/common/text/Cue$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/text/Cue$Builder;->size:F

    return-object p0
.end method

.method public o(Ljava/lang/CharSequence;)Landroidx/media3/common/text/Cue$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/common/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public p(Landroid/text/Layout$Alignment;)Landroidx/media3/common/text/Cue$Builder;
    .locals 0
    .param p1    # Landroid/text/Layout$Alignment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public q(FI)Landroidx/media3/common/text/Cue$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/text/Cue$Builder;->textSize:F

    iput p2, p0, Landroidx/media3/common/text/Cue$Builder;->textSizeType:I

    return-object p0
.end method

.method public r(I)Landroidx/media3/common/text/Cue$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/text/Cue$Builder;->verticalType:I

    return-object p0
.end method

.method public s(I)Landroidx/media3/common/text/Cue$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Landroidx/media3/common/text/Cue$Builder;->windowColor:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/common/text/Cue$Builder;->windowColorSet:Z

    return-object p0
.end method
