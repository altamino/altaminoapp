.class final Lcom/google/android/exoplayer2/k1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/video/y;
.implements Lcom/google/android/exoplayer2/audio/t;
.implements Lcom/google/android/exoplayer2/text/p;
.implements Lr2/e;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/google/android/exoplayer2/video/spherical/l$b;
.implements Lcom/google/android/exoplayer2/d$b;
.implements Lcom/google/android/exoplayer2/b$b;
.implements Lcom/google/android/exoplayer2/u3$b;
.implements Lcom/google/android/exoplayer2/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/k1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/k1;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/k1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/k1$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/k1$c;-><init>(Lcom/google/android/exoplayer2/k1;)V

    return-void
.end method

.method public static synthetic D(Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/k1$c;->O(Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/d3$d;)V

    return-void
.end method

.method public static synthetic E(Lcom/google/android/exoplayer2/video/a0;Lcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/k1$c;->S(Lcom/google/android/exoplayer2/video/a0;Lcom/google/android/exoplayer2/d3$d;)V

    return-void
.end method

.method public static synthetic F(IZLcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/k1$c;->R(IZLcom/google/android/exoplayer2/d3$d;)V

    return-void
.end method

.method public static synthetic G(Lcom/google/android/exoplayer2/text/f;Lcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/k1$c;->M(Lcom/google/android/exoplayer2/text/f;Lcom/google/android/exoplayer2/d3$d;)V

    return-void
.end method

.method public static synthetic H(Ljava/util/List;Lcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/k1$c;->L(Ljava/util/List;Lcom/google/android/exoplayer2/d3$d;)V

    return-void
.end method

.method public static synthetic I(Lcom/google/android/exoplayer2/k1$c;Lcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/k1$c;->N(Lcom/google/android/exoplayer2/d3$d;)V

    return-void
.end method

.method public static synthetic J(Lcom/google/android/exoplayer2/o;Lcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/k1$c;->Q(Lcom/google/android/exoplayer2/o;Lcom/google/android/exoplayer2/d3$d;)V

    return-void
.end method

.method public static synthetic K(ZLcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/k1$c;->P(ZLcom/google/android/exoplayer2/d3$d;)V

    return-void
.end method

.method private static synthetic L(Ljava/util/List;Lcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/d3$d;->onCues(Ljava/util/List;)V

    .line 4
    return-void
.end method

.method private static synthetic M(Lcom/google/android/exoplayer2/text/f;Lcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/d3$d;->x(Lcom/google/android/exoplayer2/text/f;)V

    .line 4
    return-void
.end method

.method private synthetic N(Lcom/google/android/exoplayer2/d3$d;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/k1;->w0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/n2;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/d3$d;->B(Lcom/google/android/exoplayer2/n2;)V

    .line 10
    return-void
.end method

.method private static synthetic O(Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/d3$d;->n(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 4
    return-void
.end method

.method private static synthetic P(ZLcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/d3$d;->onSkipSilenceEnabledChanged(Z)V

    .line 4
    return-void
.end method

.method private static synthetic Q(Lcom/google/android/exoplayer2/o;Lcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/d3$d;->J(Lcom/google/android/exoplayer2/o;)V

    .line 4
    return-void
.end method

.method private static synthetic R(IZLcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/d3$d;->onDeviceVolumeChanged(IZ)V

    .line 4
    return-void
.end method

.method private static synthetic S(Lcom/google/android/exoplayer2/video/a0;Lcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/d3$d;->k(Lcom/google/android/exoplayer2/video/a0;)V

    .line 4
    return-void
.end method


# virtual methods
.method public A(Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/k1;->K0(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/decoder/e;)Lcom/google/android/exoplayer2/decoder/e;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/exoplayer2/k1;->L0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/analytics/a;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/a;->A(Lcom/google/android/exoplayer2/decoder/e;)V

    .line 15
    return-void
.end method

.method public synthetic B(Lcom/google/android/exoplayer2/a2;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/video/n;->a(Lcom/google/android/exoplayer2/video/y;Lcom/google/android/exoplayer2/a2;)V

    return-void
.end method

.method public synthetic C(Lcom/google/android/exoplayer2/a2;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/audio/i;->a(Lcom/google/android/exoplayer2/audio/t;Lcom/google/android/exoplayer2/a2;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/k1;->L0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/analytics/a;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/a;->a(Ljava/lang/Exception;)V

    .line 10
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/k1;->L0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/analytics/a;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/a;->b(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/k1;->L0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/analytics/a;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/a;->c(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public d(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/k1;->L0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/analytics/a;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/a;->d(Ljava/lang/Exception;)V

    .line 10
    return-void
.end method

.method public e(JI)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/k1;->L0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/analytics/a;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/a;->e(JI)V

    .line 10
    return-void
.end method

.method public f(J)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/k1;->L0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/analytics/a;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/a;->f(J)V

    .line 10
    return-void
.end method

.method public g(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/k1;->L0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/analytics/a;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/a;->g(Ljava/lang/Exception;)V

    .line 10
    return-void
.end method

.method public h(Ljava/lang/Object;J)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/k1;->L0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/analytics/a;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/a;->h(Ljava/lang/Object;J)V

    .line 10
    .line 11
    iget-object p2, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 12
    .line 13
    .line 14
    invoke-static {p2}, Lcom/google/android/exoplayer2/k1;->P0(Lcom/google/android/exoplayer2/k1;)Ljava/lang/Object;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    if-ne p2, p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1;->O0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/util/s;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    new-instance p2, Lcom/google/android/exoplayer2/r1;

    .line 26
    .line 27
    .line 28
    invoke-direct {p2}, Lcom/google/android/exoplayer2/r1;-><init>()V

    .line 29
    .line 30
    const/16 p3, 0x1a

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p3, p2}, Lcom/google/android/exoplayer2/util/s;->l(ILcom/google/android/exoplayer2/util/s$a;)V

    .line 34
    :cond_0
    return-void
.end method

.method public i(IJJ)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/k1;->L0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/analytics/a;

    .line 6
    move-result-object v1

    .line 7
    move v2, p1

    .line 8
    move-wide v3, p2

    .line 9
    move-wide v5, p4

    .line 10
    .line 11
    .line 12
    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/analytics/a;->i(IJJ)V

    .line 13
    return-void
.end method

.method public j()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x0

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v3, v1, v2}, Lcom/google/android/exoplayer2/k1;->E0(Lcom/google/android/exoplayer2/k1;ZII)V

    .line 9
    return-void
.end method

.method public k(Lcom/google/android/exoplayer2/video/a0;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/k1;->N0(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/video/a0;)Lcom/google/android/exoplayer2/video/a0;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/exoplayer2/k1;->O0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/util/s;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    new-instance v1, Lcom/google/android/exoplayer2/s1;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/s1;-><init>(Lcom/google/android/exoplayer2/video/a0;)V

    .line 17
    .line 18
    const/16 p1, 0x19

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/s;->l(ILcom/google/android/exoplayer2/util/s$a;)V

    .line 22
    return-void
.end method

.method public l(Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/decoder/i;)V
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/decoder/i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/k1;->p0(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/a2;)Lcom/google/android/exoplayer2/a2;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/exoplayer2/k1;->L0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/analytics/a;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/a;->l(Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/decoder/i;)V

    .line 15
    return-void
.end method

.method public m(Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/k1;->Q0(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/decoder/e;)Lcom/google/android/exoplayer2/decoder/e;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/exoplayer2/k1;->L0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/analytics/a;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/a;->m(Lcom/google/android/exoplayer2/decoder/e;)V

    .line 15
    return-void
.end method

.method public n(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/k1;->t0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/n2;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/n2;->b()Lcom/google/android/exoplayer2/n2$b;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/n2$b;->I(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/n2$b;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/n2$b;->F()Lcom/google/android/exoplayer2/n2;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/k1;->u0(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/n2;)Lcom/google/android/exoplayer2/n2;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/google/android/exoplayer2/k1;->v0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/n2;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Lcom/google/android/exoplayer2/k1;->w0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/n2;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/n2;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v1

    .line 38
    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    iget-object v1, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/k1;->x0(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/n2;)Lcom/google/android/exoplayer2/n2;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lcom/google/android/exoplayer2/k1;->O0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/util/s;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    new-instance v1, Lcom/google/android/exoplayer2/l1;

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/l1;-><init>(Lcom/google/android/exoplayer2/k1$c;)V

    .line 56
    .line 57
    const/16 v2, 0xe

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/util/s;->i(ILcom/google/android/exoplayer2/util/s$a;)V

    .line 61
    .line 62
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lcom/google/android/exoplayer2/k1;->O0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/util/s;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    new-instance v1, Lcom/google/android/exoplayer2/m1;

    .line 69
    .line 70
    .line 71
    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/m1;-><init>(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 72
    .line 73
    const/16 p1, 0x1c

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/s;->i(ILcom/google/android/exoplayer2/util/s$a;)V

    .line 77
    .line 78
    iget-object p1, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 79
    .line 80
    .line 81
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1;->O0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/util/s;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/s;->f()V

    .line 86
    return-void
.end method

.method public o(Z)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1;->J0(Lcom/google/android/exoplayer2/k1;)V

    .line 6
    return-void
.end method

.method public onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/k1;->L0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/analytics/a;

    .line 6
    move-result-object v1

    .line 7
    move-object v2, p1

    .line 8
    move-wide v3, p2

    .line 9
    move-wide v5, p4

    .line 10
    .line 11
    .line 12
    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/analytics/a;->onAudioDecoderInitialized(Ljava/lang/String;JJ)V

    .line 13
    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/k1;->O0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/util/s;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    new-instance v1, Lcom/google/android/exoplayer2/n1;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/n1;-><init>(Ljava/util/List;)V

    .line 12
    .line 13
    const/16 p1, 0x1b

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/s;->l(ILcom/google/android/exoplayer2/util/s$a;)V

    .line 17
    return-void
.end method

.method public onDroppedFrames(IJ)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/k1;->L0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/analytics/a;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/a;->onDroppedFrames(IJ)V

    .line 10
    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/k1;->q0(Lcom/google/android/exoplayer2/k1;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-ne v0, p1, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/k1;->r0(Lcom/google/android/exoplayer2/k1;Z)Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/google/android/exoplayer2/k1;->O0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/util/s;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    new-instance v1, Lcom/google/android/exoplayer2/t1;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/t1;-><init>(Z)V

    .line 26
    .line 27
    const/16 p1, 0x17

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/s;->l(ILcom/google/android/exoplayer2/util/s$a;)V

    .line 31
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/k1;->B0(Lcom/google/android/exoplayer2/k1;Landroid/graphics/SurfaceTexture;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/k1;->A0(Lcom/google/android/exoplayer2/k1;II)V

    .line 11
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/k1;->z0(Lcom/google/android/exoplayer2/k1;Ljava/lang/Object;)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0, v0}, Lcom/google/android/exoplayer2/k1;->A0(Lcom/google/android/exoplayer2/k1;II)V

    .line 13
    const/4 p1, 0x1

    .line 14
    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/k1;->A0(Lcom/google/android/exoplayer2/k1;II)V

    .line 6
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/k1;->L0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/analytics/a;

    .line 6
    move-result-object v1

    .line 7
    move-object v2, p1

    .line 8
    move-wide v3, p2

    .line 9
    move-wide v5, p4

    .line 10
    .line 11
    .line 12
    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/analytics/a;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    .line 13
    return-void
.end method

.method public p(I)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1;->F0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/u3;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1;->G0(Lcom/google/android/exoplayer2/u3;)Lcom/google/android/exoplayer2/o;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/google/android/exoplayer2/k1;->H0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/o;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/o;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/k1;->I0(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/o;)Lcom/google/android/exoplayer2/o;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lcom/google/android/exoplayer2/k1;->O0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/util/s;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    new-instance v1, Lcom/google/android/exoplayer2/p1;

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/p1;-><init>(Lcom/google/android/exoplayer2/o;)V

    .line 39
    .line 40
    const/16 p1, 0x1d

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/s;->l(ILcom/google/android/exoplayer2/util/s$a;)V

    .line 44
    :cond_0
    return-void
.end method

.method public q(Landroid/view/Surface;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/k1;->z0(Lcom/google/android/exoplayer2/k1;Ljava/lang/Object;)V

    .line 7
    return-void
.end method

.method public r(Landroid/view/Surface;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/k1;->z0(Lcom/google/android/exoplayer2/k1;Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public s(IZ)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/k1;->O0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/util/s;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    new-instance v1, Lcom/google/android/exoplayer2/q1;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/q1;-><init>(IZ)V

    .line 12
    .line 13
    const/16 p1, 0x1e

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/s;->l(ILcom/google/android/exoplayer2/util/s$a;)V

    .line 17
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3, p4}, Lcom/google/android/exoplayer2/k1;->A0(Lcom/google/android/exoplayer2/k1;II)V

    .line 6
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/k1;->y0(Lcom/google/android/exoplayer2/k1;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/k1;->z0(Lcom/google/android/exoplayer2/k1;Ljava/lang/Object;)V

    .line 18
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1;->y0(Lcom/google/android/exoplayer2/k1;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/k1;->z0(Lcom/google/android/exoplayer2/k1;Ljava/lang/Object;)V

    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0, v0}, Lcom/google/android/exoplayer2/k1;->A0(Lcom/google/android/exoplayer2/k1;II)V

    .line 21
    return-void
.end method

.method public t(Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/decoder/i;)V
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/decoder/i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/k1;->M0(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/a2;)Lcom/google/android/exoplayer2/a2;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/exoplayer2/k1;->L0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/analytics/a;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/a;->t(Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/decoder/i;)V

    .line 15
    return-void
.end method

.method public u(Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/k1;->L0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/analytics/a;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/a;->u(Lcom/google/android/exoplayer2/decoder/e;)V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/k1;->M0(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/a2;)Lcom/google/android/exoplayer2/a2;

    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/k1;->K0(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/decoder/e;)Lcom/google/android/exoplayer2/decoder/e;

    .line 21
    return-void
.end method

.method public synthetic v(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r;->a(Lcom/google/android/exoplayer2/s$a;Z)V

    return-void
.end method

.method public w(Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/k1;->L0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/analytics/a;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/a;->w(Lcom/google/android/exoplayer2/decoder/e;)V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/k1;->p0(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/a2;)Lcom/google/android/exoplayer2/a2;

    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/k1;->Q0(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/decoder/e;)Lcom/google/android/exoplayer2/decoder/e;

    .line 21
    return-void
.end method

.method public x(Lcom/google/android/exoplayer2/text/f;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/k1;->s0(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/text/f;)Lcom/google/android/exoplayer2/text/f;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/exoplayer2/k1;->O0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/util/s;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    new-instance v1, Lcom/google/android/exoplayer2/o1;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/o1;-><init>(Lcom/google/android/exoplayer2/text/f;)V

    .line 17
    .line 18
    const/16 p1, 0x1b

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/s;->l(ILcom/google/android/exoplayer2/util/s$a;)V

    .line 22
    return-void
.end method

.method public y(F)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1;->C0(Lcom/google/android/exoplayer2/k1;)V

    .line 6
    return-void
.end method

.method public z(I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k1;->getPlayWhenReady()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/exoplayer2/k1$c;->this$0:Lcom/google/android/exoplayer2/k1;

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/k1;->D0(ZI)I

    .line 12
    move-result v2

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v0, p1, v2}, Lcom/google/android/exoplayer2/k1;->E0(Lcom/google/android/exoplayer2/k1;ZII)V

    .line 16
    return-void
.end method
