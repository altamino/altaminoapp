.class public final Landroidx/compose/ui/graphics/PixelMap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final buffer:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final bufferOffset:I

.field private final height:I

.field private final stride:I

.field private final width:I


# direct methods
.method public constructor <init>([IIIII)V
    .locals 1
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "buffer"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/compose/ui/graphics/PixelMap;->buffer:[I

    .line 11
    .line 12
    iput p2, p0, Landroidx/compose/ui/graphics/PixelMap;->width:I

    .line 13
    .line 14
    iput p3, p0, Landroidx/compose/ui/graphics/PixelMap;->height:I

    .line 15
    .line 16
    iput p4, p0, Landroidx/compose/ui/graphics/PixelMap;->bufferOffset:I

    .line 17
    .line 18
    iput p5, p0, Landroidx/compose/ui/graphics/PixelMap;->stride:I

    .line 19
    return-void
.end method
