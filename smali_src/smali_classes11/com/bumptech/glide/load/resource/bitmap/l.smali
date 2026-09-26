.class public abstract Lcom/bumptech/glide/load/resource/bitmap/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/l$g;,
        Lcom/bumptech/glide/load/resource/bitmap/l$c;,
        Lcom/bumptech/glide/load/resource/bitmap/l$f;,
        Lcom/bumptech/glide/load/resource/bitmap/l$b;,
        Lcom/bumptech/glide/load/resource/bitmap/l$a;,
        Lcom/bumptech/glide/load/resource/bitmap/l$d;,
        Lcom/bumptech/glide/load/resource/bitmap/l$e;
    }
.end annotation


# static fields
.field public static final AT_LEAST:Lcom/bumptech/glide/load/resource/bitmap/l;

.field public static final AT_MOST:Lcom/bumptech/glide/load/resource/bitmap/l;

.field public static final CENTER_INSIDE:Lcom/bumptech/glide/load/resource/bitmap/l;

.field public static final CENTER_OUTSIDE:Lcom/bumptech/glide/load/resource/bitmap/l;

.field public static final DEFAULT:Lcom/bumptech/glide/load/resource/bitmap/l;

.field public static final FIT_CENTER:Lcom/bumptech/glide/load/resource/bitmap/l;

.field static final IS_BITMAP_FACTORY_SCALING_SUPPORTED:Z

.field public static final NONE:Lcom/bumptech/glide/load/resource/bitmap/l;

.field public static final OPTION:Lcom/bumptech/glide/load/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/h<",
            "Lcom/bumptech/glide/load/resource/bitmap/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/l$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/l$a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/l;->AT_LEAST:Lcom/bumptech/glide/load/resource/bitmap/l;

    .line 8
    .line 9
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/l$b;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/l$b;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/l;->AT_MOST:Lcom/bumptech/glide/load/resource/bitmap/l;

    .line 15
    .line 16
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/l$e;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/l$e;-><init>()V

    .line 20
    .line 21
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/l;->FIT_CENTER:Lcom/bumptech/glide/load/resource/bitmap/l;

    .line 22
    .line 23
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/l$c;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/l$c;-><init>()V

    .line 27
    .line 28
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/l;->CENTER_INSIDE:Lcom/bumptech/glide/load/resource/bitmap/l;

    .line 29
    .line 30
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/l$d;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/l$d;-><init>()V

    .line 34
    .line 35
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/l;->CENTER_OUTSIDE:Lcom/bumptech/glide/load/resource/bitmap/l;

    .line 36
    .line 37
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/l$f;

    .line 38
    .line 39
    .line 40
    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/l$f;-><init>()V

    .line 41
    .line 42
    sput-object v1, Lcom/bumptech/glide/load/resource/bitmap/l;->NONE:Lcom/bumptech/glide/load/resource/bitmap/l;

    .line 43
    .line 44
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/l;->DEFAULT:Lcom/bumptech/glide/load/resource/bitmap/l;

    .line 45
    .line 46
    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy"

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v0}, Lcom/bumptech/glide/load/h;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/h;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/l;->OPTION:Lcom/bumptech/glide/load/h;

    .line 53
    const/4 v0, 0x1

    .line 54
    .line 55
    sput-boolean v0, Lcom/bumptech/glide/load/resource/bitmap/l;->IS_BITMAP_FACTORY_SCALING_SUPPORTED:Z

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public abstract a(IIII)Lcom/bumptech/glide/load/resource/bitmap/l$g;
.end method

.method public abstract b(IIII)F
.end method
