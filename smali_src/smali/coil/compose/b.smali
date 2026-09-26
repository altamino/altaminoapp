.class public final Lcoil/compose/b;
.super Landroidx/compose/ui/graphics/painter/Painter;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/RememberObserver;


# annotations
.annotation build Landroidx/compose/runtime/Stable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/compose/b$c;,
        Lcoil/compose/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsyncImagePainter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncImagePainter.kt\ncoil/compose/AsyncImagePainter\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ImageRequest.kt\ncoil/request/ImageRequest$Builder\n*L\n1#1,414:1\n76#2:415\n102#2,2:416\n76#2:418\n102#2,2:419\n76#2:421\n102#2,2:422\n76#2:424\n102#2,2:425\n76#2:427\n102#2,2:428\n76#2:430\n102#2,2:431\n1#3:433\n844#4,9:434\n*S KotlinDebug\n*F\n+ 1 AsyncImagePainter.kt\ncoil/compose/AsyncImagePainter\n*L\n167#1:415\n167#1:416,2\n168#1:418\n168#1:419,2\n169#1:421\n169#1:422,2\n191#1:424\n191#1:425,2\n195#1:427\n195#1:428,2\n199#1:430\n199#1:431,2\n268#1:434,9\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcoil/compose/b$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DefaultTransform:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Lcoil/compose/b$c;",
            "Lcoil/compose/b$c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private _painter:Landroidx/compose/ui/graphics/painter/Painter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _state:Lcoil/compose/b$c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final alpha$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final colorFilter$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private contentScale:Landroidx/compose/ui/layout/ContentScale;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final drawSize:Lkotlinx/coroutines/flow/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/x<",
            "Landroidx/compose/ui/geometry/Size;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private filterQuality:I

.field private final imageLoader$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isPreview:Z

.field private onState:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "-",
            "Lcoil/compose/b$c;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final painter$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private rememberScope:Lkotlinx/coroutines/o0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final request$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final state$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private transform:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "-",
            "Lcoil/compose/b$c;",
            "+",
            "Lcoil/compose/b$c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil/compose/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/compose/b$b;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcoil/compose/b;->Companion:Lcoil/compose/b$b;

    sget-object v0, Lcoil/compose/b$a;->INSTANCE:Lcoil/compose/b$a;

    sput-object v0, Lcoil/compose/b;->DefaultTransform:Le8/l;

    return-void
.end method

.method public constructor <init>(Lcoil/request/h;Lcoil/e;)V
    .locals 4
    .param p1    # Lcoil/request/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;-><init>()V

    .line 4
    .line 5
    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size$Companion;->b()J

    .line 9
    move-result-wide v0

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->c(J)Landroidx/compose/ui/geometry/Size;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lkotlinx/coroutines/flow/n0;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/x;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iput-object v0, p0, Lcoil/compose/b;->drawSize:Lkotlinx/coroutines/flow/x;

    .line 20
    const/4 v0, 0x0

    .line 21
    const/4 v1, 0x2

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    iput-object v2, p0, Lcoil/compose/b;->painter$delegate:Landroidx/compose/runtime/MutableState;

    .line 28
    .line 29
    const/high16 v2, 0x3f800000    # 1.0f

    .line 30
    .line 31
    .line 32
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    iput-object v2, p0, Lcoil/compose/b;->alpha$delegate:Landroidx/compose/runtime/MutableState;

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    iput-object v2, p0, Lcoil/compose/b;->colorFilter$delegate:Landroidx/compose/runtime/MutableState;

    .line 46
    .line 47
    sget-object v2, Lcoil/compose/b$c$a;->INSTANCE:Lcoil/compose/b$c$a;

    .line 48
    .line 49
    iput-object v2, p0, Lcoil/compose/b;->_state:Lcoil/compose/b$c;

    .line 50
    .line 51
    sget-object v3, Lcoil/compose/b;->DefaultTransform:Le8/l;

    .line 52
    .line 53
    iput-object v3, p0, Lcoil/compose/b;->transform:Le8/l;

    .line 54
    .line 55
    sget-object v3, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Landroidx/compose/ui/layout/ContentScale$Companion;->b()Landroidx/compose/ui/layout/ContentScale;

    .line 59
    move-result-object v3

    .line 60
    .line 61
    iput-object v3, p0, Lcoil/compose/b;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 62
    .line 63
    sget-object v3, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->b()I

    .line 67
    move-result v3

    .line 68
    .line 69
    iput v3, p0, Lcoil/compose/b;->filterQuality:I

    .line 70
    .line 71
    .line 72
    invoke-static {v2, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    iput-object v2, p0, Lcoil/compose/b;->state$delegate:Landroidx/compose/runtime/MutableState;

    .line 76
    .line 77
    .line 78
    invoke-static {p1, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    iput-object p1, p0, Lcoil/compose/b;->request$delegate:Landroidx/compose/runtime/MutableState;

    .line 82
    .line 83
    .line 84
    invoke-static {p2, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    iput-object p1, p0, Lcoil/compose/b;->imageLoader$delegate:Landroidx/compose/runtime/MutableState;

    .line 88
    return-void
.end method

.method private final A(F)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/compose/b;->alpha$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 10
    return-void
.end method

.method private final B(Landroidx/compose/ui/graphics/ColorFilter;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/compose/b;->colorFilter$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method private final G(Landroidx/compose/ui/graphics/painter/Painter;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/compose/b;->painter$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method private final J(Lcoil/compose/b$c;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/compose/b;->state$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method private final L(Landroidx/compose/ui/graphics/painter/Painter;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcoil/compose/b;->_painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcoil/compose/b;->G(Landroidx/compose/ui/graphics/painter/Painter;)V

    .line 6
    return-void
.end method

.method private final M(Lcoil/compose/b$c;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcoil/compose/b;->_state:Lcoil/compose/b$c;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcoil/compose/b;->J(Lcoil/compose/b$c;)V

    .line 6
    return-void
.end method

.method private final N(Landroid/graphics/drawable/Drawable;)Landroidx/compose/ui/graphics/painter/Painter;
    .locals 8

    .line 1
    .line 2
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidImageBitmap_androidKt;->c(Landroid/graphics/Bitmap;)Landroidx/compose/ui/graphics/ImageBitmap;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-wide/16 v1, 0x0

    .line 17
    .line 18
    const-wide/16 v3, 0x0

    .line 19
    .line 20
    iget v5, p0, Lcoil/compose/b;->filterQuality:I

    .line 21
    const/4 v6, 0x6

    .line 22
    const/4 v7, 0x0

    .line 23
    .line 24
    .line 25
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/graphics/painter/BitmapPainterKt;->b(Landroidx/compose/ui/graphics/ImageBitmap;JJIILjava/lang/Object;)Landroidx/compose/ui/graphics/painter/BitmapPainter;

    .line 26
    move-result-object p1

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    new-instance v0, Landroidx/compose/ui/graphics/painter/ColorPainter;

    .line 34
    .line 35
    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 39
    move-result p1

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Landroidx/compose/ui/graphics/ColorKt;->b(I)J

    .line 43
    move-result-wide v1

    .line 44
    const/4 p1, 0x0

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, v1, v2, p1}, Landroidx/compose/ui/graphics/painter/ColorPainter;-><init>(JLkotlin/jvm/internal/k;)V

    .line 48
    :goto_0
    move-object p1, v0

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_1
    new-instance v0, Lcom/google/accompanist/drawablepainter/a;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, p1}, Lcom/google/accompanist/drawablepainter/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 59
    goto :goto_0

    .line 60
    :goto_1
    return-object p1
.end method

.method private final O(Lcoil/request/i;)Lcoil/compose/b$c;
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Lcoil/request/p;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcoil/compose/b$c$d;

    .line 7
    .line 8
    check-cast p1, Lcoil/request/p;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcoil/request/p;->a()Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v1}, Lcoil/compose/b;->N(Landroid/graphics/drawable/Drawable;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1, p1}, Lcoil/compose/b$c$d;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Lcoil/request/p;)V

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_0
    instance-of v0, p1, Lcoil/request/e;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    new-instance v0, Lcoil/compose/b$c$b;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcoil/request/i;->a()Landroid/graphics/drawable/Drawable;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v1}, Lcoil/compose/b;->N(Landroid/graphics/drawable/Drawable;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 36
    move-result-object v1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v1, 0x0

    .line 39
    .line 40
    :goto_0
    check-cast p1, Lcoil/request/e;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v1, p1}, Lcoil/compose/b$c$b;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Lcoil/request/e;)V

    .line 44
    :goto_1
    return-object v0

    .line 45
    .line 46
    :cond_2
    new-instance p1, Lw7/s;

    .line 47
    .line 48
    .line 49
    invoke-direct {p1}, Lw7/s;-><init>()V

    .line 50
    throw p1
.end method

.method private final P(Lcoil/request/h;)Lcoil/request/h;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0, v1, v0}, Lcoil/request/h;->R(Lcoil/request/h;Landroid/content/Context;ILjava/lang/Object;)Lcoil/request/h$a;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    new-instance v1, Lcoil/compose/b$e;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcoil/compose/b$e;-><init>(Lcoil/compose/b;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcoil/request/h$a;->l(Lf0/a;)Lcoil/request/h$a;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcoil/request/h;->q()Lcoil/request/c;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcoil/request/c;->m()Lcoil/size/j;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    new-instance v1, Lcoil/compose/b$f;

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcoil/compose/b$f;-><init>(Lcoil/compose/b;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcoil/request/h$a;->k(Lcoil/size/j;)Lcoil/request/h$a;

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p1}, Lcoil/request/h;->q()Lcoil/request/c;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcoil/request/c;->l()Lcoil/size/h;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    iget-object v1, p0, Lcoil/compose/b;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Lcoil/compose/j;->f(Landroidx/compose/ui/layout/ContentScale;)Lcoil/size/h;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcoil/request/h$a;->j(Lcoil/size/h;)Lcoil/request/h$a;

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {p1}, Lcoil/request/h;->q()Lcoil/request/c;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcoil/request/c;->k()Lcoil/size/e;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    sget-object v1, Lcoil/size/e;->EXACT:Lcoil/size/e;

    .line 63
    .line 64
    if-eq p1, v1, :cond_2

    .line 65
    .line 66
    sget-object p1, Lcoil/size/e;->INEXACT:Lcoil/size/e;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Lcoil/request/h$a;->d(Lcoil/size/e;)Lcoil/request/h$a;

    .line 70
    .line 71
    .line 72
    :cond_2
    invoke-virtual {v0}, Lcoil/request/h$a;->a()Lcoil/request/h;

    .line 73
    move-result-object p1

    .line 74
    return-object p1
.end method

.method private final Q(Lcoil/compose/b$c;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/compose/b;->_state:Lcoil/compose/b$c;

    .line 3
    .line 4
    iget-object v1, p0, Lcoil/compose/b;->transform:Le8/l;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Lcoil/compose/b$c;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcoil/compose/b;->M(Lcoil/compose/b$c;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p1}, Lcoil/compose/b;->z(Lcoil/compose/b$c;Lcoil/compose/b$c;)Lcoil/compose/f;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p1}, Lcoil/compose/b$c;->a()Landroidx/compose/ui/graphics/painter/Painter;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-direct {p0, v1}, Lcoil/compose/b;->L(Landroidx/compose/ui/graphics/painter/Painter;)V

    .line 28
    .line 29
    iget-object v1, p0, Lcoil/compose/b;->rememberScope:Lkotlinx/coroutines/o0;

    .line 30
    .line 31
    if-eqz v1, :cond_4

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcoil/compose/b$c;->a()Landroidx/compose/ui/graphics/painter/Painter;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcoil/compose/b$c;->a()Landroidx/compose/ui/graphics/painter/Painter;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    if-eq v1, v2, :cond_4

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcoil/compose/b$c;->a()Landroidx/compose/ui/graphics/painter/Painter;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    instance-of v1, v0, Landroidx/compose/runtime/RememberObserver;

    .line 48
    const/4 v2, 0x0

    .line 49
    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    check-cast v0, Landroidx/compose/runtime/RememberObserver;

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    move-object v0, v2

    .line 55
    .line 56
    :goto_1
    if-eqz v0, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-interface {v0}, Landroidx/compose/runtime/RememberObserver;->d()V

    .line 60
    .line 61
    .line 62
    :cond_2
    invoke-virtual {p1}, Lcoil/compose/b$c;->a()Landroidx/compose/ui/graphics/painter/Painter;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    instance-of v1, v0, Landroidx/compose/runtime/RememberObserver;

    .line 66
    .line 67
    if-eqz v1, :cond_3

    .line 68
    move-object v2, v0

    .line 69
    .line 70
    check-cast v2, Landroidx/compose/runtime/RememberObserver;

    .line 71
    .line 72
    :cond_3
    if-eqz v2, :cond_4

    .line 73
    .line 74
    .line 75
    invoke-interface {v2}, Landroidx/compose/runtime/RememberObserver;->b()V

    .line 76
    .line 77
    :cond_4
    iget-object v0, p0, Lcoil/compose/b;->onState:Le8/l;

    .line 78
    .line 79
    if-eqz v0, :cond_5

    .line 80
    .line 81
    .line 82
    invoke-interface {v0, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_5
    return-void
.end method

.method public static final synthetic n()Le8/l;
    .locals 1

    .line 1
    sget-object v0, Lcoil/compose/b;->DefaultTransform:Le8/l;

    return-object v0
.end method

.method public static final synthetic o(Lcoil/compose/b;)Lkotlinx/coroutines/flow/x;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcoil/compose/b;->drawSize:Lkotlinx/coroutines/flow/x;

    .line 3
    return-object p0
.end method

.method public static final synthetic p(Lcoil/compose/b;Landroid/graphics/drawable/Drawable;)Landroidx/compose/ui/graphics/painter/Painter;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcoil/compose/b;->N(Landroid/graphics/drawable/Drawable;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic q(Lcoil/compose/b;Lcoil/request/i;)Lcoil/compose/b$c;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcoil/compose/b;->O(Lcoil/request/i;)Lcoil/compose/b$c;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic r(Lcoil/compose/b;Lcoil/request/h;)Lcoil/request/h;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcoil/compose/b;->P(Lcoil/request/h;)Lcoil/request/h;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic s(Lcoil/compose/b;Lcoil/compose/b$c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcoil/compose/b;->Q(Lcoil/compose/b$c;)V

    .line 4
    return-void
.end method

.method private final t()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/compose/b;->rememberScope:Lkotlinx/coroutines/o0;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/p0;->e(Lkotlinx/coroutines/o0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 10
    .line 11
    :cond_0
    iput-object v1, p0, Lcoil/compose/b;->rememberScope:Lkotlinx/coroutines/o0;

    .line 12
    return-void
.end method

.method private final u()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/compose/b;->alpha$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Number;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private final v()Landroidx/compose/ui/graphics/ColorFilter;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/compose/b;->colorFilter$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/ui/graphics/ColorFilter;

    .line 9
    return-object v0
.end method

.method private final x()Landroidx/compose/ui/graphics/painter/Painter;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/compose/b;->painter$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/ui/graphics/painter/Painter;

    .line 9
    return-object v0
.end method

.method private final z(Lcoil/compose/b$c;Lcoil/compose/b$c;)Lcoil/compose/f;
    .locals 11

    .line 1
    .line 2
    instance-of v0, p2, Lcoil/compose/b$c$d;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    move-object v0, p2

    .line 7
    .line 8
    check-cast v0, Lcoil/compose/b$c$d;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcoil/compose/b$c$d;->b()Lcoil/request/p;

    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    instance-of v0, p2, Lcoil/compose/b$c$b;

    .line 16
    .line 17
    if-eqz v0, :cond_4

    .line 18
    move-object v0, p2

    .line 19
    .line 20
    check-cast v0, Lcoil/compose/b$c$b;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcoil/compose/b$c$b;->b()Lcoil/request/e;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {v0}, Lcoil/request/i;->b()Lcoil/request/h;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcoil/request/h;->P()Lcoil/transition/c$a;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcoil/compose/c;->a()Lcoil/compose/c$a;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    .line 39
    invoke-interface {v2, v3, v0}, Lcoil/transition/c$a;->a(Lcoil/transition/d;Lcoil/request/i;)Lcoil/transition/c;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    instance-of v3, v2, Lcoil/transition/a;

    .line 43
    .line 44
    if-eqz v3, :cond_4

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcoil/compose/b$c;->a()Landroidx/compose/ui/graphics/painter/Painter;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    instance-of p1, p1, Lcoil/compose/b$c$c;

    .line 51
    .line 52
    if-eqz p1, :cond_1

    .line 53
    move-object v5, v3

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move-object v5, v1

    .line 56
    .line 57
    .line 58
    :goto_1
    invoke-virtual {p2}, Lcoil/compose/b$c;->a()Landroidx/compose/ui/graphics/painter/Painter;

    .line 59
    move-result-object v6

    .line 60
    .line 61
    iget-object v7, p0, Lcoil/compose/b;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 62
    .line 63
    check-cast v2, Lcoil/transition/a;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Lcoil/transition/a;->b()I

    .line 67
    move-result v8

    .line 68
    .line 69
    instance-of p1, v0, Lcoil/request/p;

    .line 70
    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    check-cast v0, Lcoil/request/p;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcoil/request/p;->d()Z

    .line 77
    move-result p1

    .line 78
    .line 79
    if-nez p1, :cond_2

    .line 80
    goto :goto_3

    .line 81
    :cond_2
    const/4 p1, 0x0

    .line 82
    :goto_2
    move v9, p1

    .line 83
    goto :goto_4

    .line 84
    :cond_3
    :goto_3
    const/4 p1, 0x1

    .line 85
    goto :goto_2

    .line 86
    .line 87
    .line 88
    :goto_4
    invoke-virtual {v2}, Lcoil/transition/a;->c()Z

    .line 89
    move-result v10

    .line 90
    .line 91
    new-instance p1, Lcoil/compose/f;

    .line 92
    move-object v4, p1

    .line 93
    .line 94
    .line 95
    invoke-direct/range {v4 .. v10}, Lcoil/compose/f;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/layout/ContentScale;IZZ)V

    .line 96
    return-object p1

    .line 97
    :cond_4
    return-object v1
.end method


# virtual methods
.method public final C(Landroidx/compose/ui/layout/ContentScale;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/layout/ContentScale;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcoil/compose/b;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    return-void
.end method

.method public final D(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcoil/compose/b;->filterQuality:I

    return-void
.end method

.method public final E(Lcoil/e;)V
    .locals 1
    .param p1    # Lcoil/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/compose/b;->imageLoader$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public final F(Le8/l;)V
    .locals 0
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Lcoil/compose/b$c;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcoil/compose/b;->onState:Le8/l;

    return-void
.end method

.method public final H(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcoil/compose/b;->isPreview:Z

    return-void
.end method

.method public final I(Lcoil/request/h;)V
    .locals 1
    .param p1    # Lcoil/request/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/compose/b;->request$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public final K(Le8/l;)V
    .locals 0
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Lcoil/compose/b$c;",
            "+",
            "Lcoil/compose/b$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcoil/compose/b;->transform:Le8/l;

    return-void
.end method

.method protected a(F)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcoil/compose/b;->A(F)V

    .line 4
    const/4 p1, 0x1

    .line 5
    return p1
.end method

.method public b()V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/compose/b;->rememberScope:Lkotlinx/coroutines/o0;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/y2;->b(Lkotlinx/coroutines/b2;ILjava/lang/Object;)Lkotlinx/coroutines/a0;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lkotlinx/coroutines/e1;->c()Lkotlinx/coroutines/n2;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3}, Lkotlinx/coroutines/n2;->getImmediate()Lkotlinx/coroutines/n2;

    .line 19
    move-result-object v3

    .line 20
    .line 21
    .line 22
    invoke-interface {v2, v3}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-static {v2}, Lkotlinx/coroutines/p0;->a(Lkotlin/coroutines/g;)Lkotlinx/coroutines/o0;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    iput-object v3, p0, Lcoil/compose/b;->rememberScope:Lkotlinx/coroutines/o0;

    .line 30
    .line 31
    iget-object v2, p0, Lcoil/compose/b;->_painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 32
    .line 33
    instance-of v4, v2, Landroidx/compose/runtime/RememberObserver;

    .line 34
    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    check-cast v2, Landroidx/compose/runtime/RememberObserver;

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move-object v2, v0

    .line 40
    .line 41
    :goto_0
    if-eqz v2, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-interface {v2}, Landroidx/compose/runtime/RememberObserver;->b()V

    .line 45
    .line 46
    :cond_2
    iget-boolean v2, p0, Lcoil/compose/b;->isPreview:Z

    .line 47
    .line 48
    if-eqz v2, :cond_4

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcoil/compose/b;->y()Lcoil/request/h;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    .line 55
    invoke-static {v2, v0, v1, v0}, Lcoil/request/h;->R(Lcoil/request/h;Landroid/content/Context;ILjava/lang/Object;)Lcoil/request/h$a;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcoil/compose/b;->w()Lcoil/e;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    .line 63
    invoke-interface {v2}, Lcoil/e;->a()Lcoil/request/b;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lcoil/request/h$a;->c(Lcoil/request/b;)Lcoil/request/h$a;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Lcoil/request/h$a;->a()Lcoil/request/h;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    new-instance v2, Lcoil/compose/b$c$c;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Lcoil/request/h;->F()Landroid/graphics/drawable/Drawable;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, v1}, Lcoil/compose/b;->N(Landroid/graphics/drawable/Drawable;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    .line 87
    :cond_3
    invoke-direct {v2, v0}, Lcoil/compose/b$c$c;-><init>(Landroidx/compose/ui/graphics/painter/Painter;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0, v2}, Lcoil/compose/b;->Q(Lcoil/compose/b$c;)V

    .line 91
    return-void

    .line 92
    :cond_4
    const/4 v4, 0x0

    .line 93
    const/4 v5, 0x0

    .line 94
    .line 95
    new-instance v6, Lcoil/compose/b$d;

    .line 96
    .line 97
    .line 98
    invoke-direct {v6, p0, v0}, Lcoil/compose/b$d;-><init>(Lcoil/compose/b;Lkotlin/coroutines/d;)V

    .line 99
    const/4 v7, 0x3

    .line 100
    const/4 v8, 0x0

    .line 101
    .line 102
    .line 103
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 104
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcoil/compose/b;->t()V

    .line 4
    .line 5
    iget-object v0, p0, Lcoil/compose/b;->_painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 6
    .line 7
    instance-of v1, v0, Landroidx/compose/runtime/RememberObserver;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Landroidx/compose/runtime/RememberObserver;

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Landroidx/compose/runtime/RememberObserver;->c()V

    .line 19
    :cond_1
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcoil/compose/b;->t()V

    .line 4
    .line 5
    iget-object v0, p0, Lcoil/compose/b;->_painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 6
    .line 7
    instance-of v1, v0, Landroidx/compose/runtime/RememberObserver;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Landroidx/compose/runtime/RememberObserver;

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Landroidx/compose/runtime/RememberObserver;->d()V

    .line 19
    :cond_1
    return-void
.end method

.method protected e(Landroidx/compose/ui/graphics/ColorFilter;)Z
    .locals 0
    .param p1    # Landroidx/compose/ui/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcoil/compose/b;->B(Landroidx/compose/ui/graphics/ColorFilter;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    return p1
.end method

.method public k()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcoil/compose/b;->x()Landroidx/compose/ui/graphics/painter/Painter;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/painter/Painter;->k()J

    .line 10
    move-result-wide v0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size$Companion;->a()J

    .line 17
    move-result-wide v0

    .line 18
    :goto_0
    return-wide v0
.end method

.method protected m(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 8
    .param p1    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/compose/b;->drawSize:Lkotlinx/coroutines/flow/x;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 6
    move-result-wide v1

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->c(J)Landroidx/compose/ui/geometry/Size;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/x;->setValue(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcoil/compose/b;->x()Landroidx/compose/ui/graphics/painter/Painter;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 23
    move-result-wide v4

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcoil/compose/b;->u()F

    .line 27
    move-result v6

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcoil/compose/b;->v()Landroidx/compose/ui/graphics/ColorFilter;

    .line 31
    move-result-object v7

    .line 32
    move-object v3, p1

    .line 33
    .line 34
    .line 35
    invoke-virtual/range {v2 .. v7}, Landroidx/compose/ui/graphics/painter/Painter;->j(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFLandroidx/compose/ui/graphics/ColorFilter;)V

    .line 36
    :cond_0
    return-void
.end method

.method public final w()Lcoil/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/compose/b;->imageLoader$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcoil/e;

    .line 9
    return-object v0
.end method

.method public final y()Lcoil/request/h;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/compose/b;->request$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcoil/request/h;

    .line 9
    return-object v0
.end method
