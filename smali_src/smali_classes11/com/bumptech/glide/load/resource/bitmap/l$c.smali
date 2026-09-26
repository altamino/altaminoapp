.class Lcom/bumptech/glide/load/resource/bitmap/l$c;
.super Lcom/bumptech/glide/load/resource/bitmap/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
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
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/bitmap/l$c;->b(IIII)F

    .line 4
    move-result v0

    .line 5
    .line 6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    cmpl-float v0, v0, v1

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object p1, Lcom/bumptech/glide/load/resource/bitmap/l$g;->QUALITY:Lcom/bumptech/glide/load/resource/bitmap/l$g;

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/l;->FIT_CENTER:Lcom/bumptech/glide/load/resource/bitmap/l;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/bitmap/l;->a(IIII)Lcom/bumptech/glide/load/resource/bitmap/l$g;

    .line 19
    move-result-object p1

    .line 20
    :goto_0
    return-object p1
.end method

.method public b(IIII)F
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/l;->FIT_CENTER:Lcom/bumptech/glide/load/resource/bitmap/l;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/bitmap/l;->b(IIII)F

    .line 6
    move-result p1

    .line 7
    .line 8
    const/high16 p2, 0x3f800000    # 1.0f

    .line 9
    .line 10
    .line 11
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    .line 12
    move-result p1

    .line 13
    return p1
.end method
