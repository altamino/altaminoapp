.class Lcom/bumptech/glide/load/resource/bitmap/l$d;
.super Lcom/bumptech/glide/load/resource/bitmap/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/l;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a(IIII)Lcom/bumptech/glide/load/resource/bitmap/l$g;
    .locals 0

    .line 1
    .line 2
    sget-object p1, Lcom/bumptech/glide/load/resource/bitmap/l$g;->QUALITY:Lcom/bumptech/glide/load/resource/bitmap/l$g;

    .line 3
    return-object p1
.end method

.method public b(IIII)F
    .locals 0

    .line 1
    int-to-float p3, p3

    .line 2
    int-to-float p1, p1

    .line 3
    div-float/2addr p3, p1

    .line 4
    int-to-float p1, p4

    .line 5
    int-to-float p2, p2

    .line 6
    div-float/2addr p1, p2

    .line 7
    .line 8
    .line 9
    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    .line 10
    move-result p1

    .line 11
    return p1
.end method
