.class public Lcom/google/android/exoplayer2/analytics/o1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/analytics/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/analytics/o1$a;
    }
.end annotation


# instance fields
.field private final clock:Lcom/google/android/exoplayer2/util/d;

.field private final eventTimes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/analytics/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lcom/google/android/exoplayer2/util/p;

.field private isSeeking:Z

.field private listeners:Lcom/google/android/exoplayer2/util/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/s<",
            "Lcom/google/android/exoplayer2/analytics/c;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/o1$a;

.field private final period:Lcom/google/android/exoplayer2/z3$b;

.field private player:Lcom/google/android/exoplayer2/d3;

.field private final window:Lcom/google/android/exoplayer2/z3$d;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/d;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lcom/google/android/exoplayer2/util/d;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/o1;->clock:Lcom/google/android/exoplayer2/util/d;

    .line 12
    .line 13
    new-instance v0, Lcom/google/android/exoplayer2/util/s;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/exoplayer2/util/o0;->K()Landroid/os/Looper;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    new-instance v2, Lcom/google/android/exoplayer2/analytics/g0;

    .line 20
    .line 21
    .line 22
    invoke-direct {v2}, Lcom/google/android/exoplayer2/analytics/g0;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/util/s;-><init>(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/d;Lcom/google/android/exoplayer2/util/s$b;)V

    .line 26
    .line 27
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/o1;->listeners:Lcom/google/android/exoplayer2/util/s;

    .line 28
    .line 29
    new-instance p1, Lcom/google/android/exoplayer2/z3$b;

    .line 30
    .line 31
    .line 32
    invoke-direct {p1}, Lcom/google/android/exoplayer2/z3$b;-><init>()V

    .line 33
    .line 34
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/o1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 35
    .line 36
    new-instance v0, Lcom/google/android/exoplayer2/z3$d;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0}, Lcom/google/android/exoplayer2/z3$d;-><init>()V

    .line 40
    .line 41
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/o1;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 42
    .line 43
    new-instance v0, Lcom/google/android/exoplayer2/analytics/o1$a;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/analytics/o1$a;-><init>(Lcom/google/android/exoplayer2/z3$b;)V

    .line 47
    .line 48
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/o1;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/o1$a;

    .line 49
    .line 50
    new-instance p1, Landroid/util/SparseArray;

    .line 51
    .line 52
    .line 53
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 54
    .line 55
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/o1;->eventTimes:Landroid/util/SparseArray;

    .line 56
    return-void
.end method

.method public static synthetic A0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;Ljava/io/IOException;ZLcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplayer2/analytics/o1;->Q1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;Ljava/io/IOException;ZLcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic A1(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/util/List;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/c;->p(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/util/List;)V

    .line 4
    return-void
.end method

.method public static synthetic B0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/text/f;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->B1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/text/f;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic B1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/text/f;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/c;->g0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/text/f;)V

    .line 4
    return-void
.end method

.method public static synthetic C0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/n2;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->T1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/n2;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic C1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/o;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/c;->K(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/o;)V

    .line 4
    return-void
.end method

.method public static synthetic D0(Lcom/google/android/exoplayer2/analytics/c$a;IJLcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/o1;->L1(Lcom/google/android/exoplayer2/analytics/c$a;IJLcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic D1(Lcom/google/android/exoplayer2/analytics/c$a;IZLcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/c;->c0(Lcom/google/android/exoplayer2/analytics/c$a;IZ)V

    .line 4
    return-void
.end method

.method public static synthetic E0(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Exception;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->w1(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Exception;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic E1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/x;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/c;->F(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/x;)V

    .line 4
    return-void
.end method

.method public static synthetic F0(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;JJLcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/analytics/o1;->q1(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;JJLcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic F1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/analytics/c;->q0(Lcom/google/android/exoplayer2/analytics/c$a;)V

    .line 4
    return-void
.end method

.method public static synthetic G0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/d3$b;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->y1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/d3$b;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic G1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/analytics/c;->a0(Lcom/google/android/exoplayer2/analytics/c$a;)V

    .line 4
    return-void
.end method

.method public static synthetic H0(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->o2(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic H1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/analytics/c;->b(Lcom/google/android/exoplayer2/analytics/c$a;)V

    .line 4
    return-void
.end method

.method public static synthetic I0(Lcom/google/android/exoplayer2/analytics/c$a;IJJLcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/analytics/o1;->x1(Lcom/google/android/exoplayer2/analytics/c$a;IJJLcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic I1(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0}, Lcom/google/android/exoplayer2/analytics/c;->Z(Lcom/google/android/exoplayer2/analytics/c$a;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/c;->M(Lcom/google/android/exoplayer2/analytics/c$a;I)V

    .line 7
    return-void
.end method

.method public static synthetic J0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/o1;->G1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic J1(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Exception;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/c;->N(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Exception;)V

    .line 4
    return-void
.end method

.method public static synthetic K0(Lcom/google/android/exoplayer2/analytics/c$a;ZILcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/o1;->V1(Lcom/google/android/exoplayer2/analytics/c$a;ZILcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic K1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/analytics/c;->z(Lcom/google/android/exoplayer2/analytics/c$a;)V

    .line 4
    return-void
.end method

.method public static synthetic L0(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->X1(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic L1(Lcom/google/android/exoplayer2/analytics/c$a;IJLcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p4, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/c;->m(Lcom/google/android/exoplayer2/analytics/c$a;IJ)V

    .line 4
    return-void
.end method

.method public static synthetic M0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/e4;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->l2(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/e4;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic M1(Lcom/google/android/exoplayer2/analytics/c$a;ZLcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/c;->O(Lcom/google/android/exoplayer2/analytics/c$a;Z)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/c;->x0(Lcom/google/android/exoplayer2/analytics/c$a;Z)V

    .line 7
    return-void
.end method

.method public static synthetic N0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/decoder/e;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->s1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/decoder/e;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic N1(Lcom/google/android/exoplayer2/analytics/c$a;ZLcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/c;->D(Lcom/google/android/exoplayer2/analytics/c$a;Z)V

    .line 4
    return-void
.end method

.method public static synthetic O0(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->Y1(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic O1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/c;->C(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V

    .line 4
    return-void
.end method

.method public static synthetic P0(Lcom/google/android/exoplayer2/analytics/c$a;ZILcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/o1;->b2(Lcom/google/android/exoplayer2/analytics/c$a;ZILcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic P1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/c;->s0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V

    .line 4
    return-void
.end method

.method public static synthetic Q0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/o1;->R1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic Q1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;Ljava/io/IOException;ZLcom/google/android/exoplayer2/analytics/c;)V
    .locals 6

    .line 1
    move-object v0, p5

    .line 2
    move-object v1, p0

    .line 3
    move-object v2, p1

    .line 4
    move-object v3, p2

    .line 5
    move-object v4, p3

    .line 6
    move v5, p4

    .line 7
    .line 8
    .line 9
    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/analytics/c;->e(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;Ljava/io/IOException;Z)V

    .line 10
    return-void
.end method

.method public static synthetic R0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/decoder/e;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->t1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/decoder/e;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic R1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/c;->x(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V

    .line 4
    return-void
.end method

.method public static synthetic S0(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->j2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic S1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/i2;ILcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/c;->s(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/i2;I)V

    .line 4
    return-void
.end method

.method public static synthetic T0(Lcom/google/android/exoplayer2/analytics/c$a;ZLcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->M1(Lcom/google/android/exoplayer2/analytics/c$a;ZLcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic T1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/n2;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/c;->P(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/n2;)V

    .line 4
    return-void
.end method

.method public static synthetic U(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Exception;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->p1(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Exception;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method public static synthetic U0(Lcom/google/android/exoplayer2/analytics/o1;Lcom/google/android/exoplayer2/d3;Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/util/m;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/o1;->w2(Lcom/google/android/exoplayer2/d3;Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/util/m;)V

    return-void
.end method

.method private static synthetic U1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/c;->g(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 4
    return-void
.end method

.method public static synthetic V(Lcom/google/android/exoplayer2/analytics/c$a;IZLcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/o1;->D1(Lcom/google/android/exoplayer2/analytics/c$a;IZLcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method public static synthetic V0(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/util/m;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/o1;->n1(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/util/m;)V

    return-void
.end method

.method private static synthetic V1(Lcom/google/android/exoplayer2/analytics/c$a;ZILcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/c;->U(Lcom/google/android/exoplayer2/analytics/c$a;ZI)V

    .line 4
    return-void
.end method

.method public static synthetic W(Lcom/google/android/exoplayer2/analytics/c$a;ZLcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->N1(Lcom/google/android/exoplayer2/analytics/c$a;ZLcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method public static synthetic W0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/o1;->H1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic W1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/c3;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/c;->h0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/c3;)V

    .line 4
    return-void
.end method

.method public static synthetic X(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/decoder/i;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/o1;->s2(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/decoder/i;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method public static synthetic X0(Lcom/google/android/exoplayer2/analytics/c$a;JLcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/o1;->v1(Lcom/google/android/exoplayer2/analytics/c$a;JLcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic X1(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/c;->i(Lcom/google/android/exoplayer2/analytics/c$a;I)V

    .line 4
    return-void
.end method

.method public static synthetic Y(Lcom/google/android/exoplayer2/analytics/o1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/o1;->x2()V

    return-void
.end method

.method public static synthetic Y0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/decoder/e;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->q2(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/decoder/e;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic Y1(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/c;->c(Lcom/google/android/exoplayer2/analytics/c$a;I)V

    .line 4
    return-void
.end method

.method public static synthetic Z(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/trackselection/z;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->k2(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/trackselection/z;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method public static synthetic Z0(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->r1(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic Z1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/z2;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/c;->y(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/z2;)V

    .line 4
    return-void
.end method

.method public static synthetic a0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/video/a0;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->t2(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/video/a0;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method public static synthetic a1(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Object;JLcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/o1;->d2(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Object;JLcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic a2(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/z2;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/c;->Q(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/z2;)V

    .line 4
    return-void
.end method

.method public static synthetic b0(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->e2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method public static synthetic b1(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Exception;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->J1(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Exception;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic b2(Lcom/google/android/exoplayer2/analytics/c$a;ZILcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/c;->h(Lcom/google/android/exoplayer2/analytics/c$a;ZI)V

    .line 4
    return-void
.end method

.method public static synthetic c0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/x;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->E1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/x;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method public static synthetic c1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/o1;->o1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic c2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/d3$e;Lcom/google/android/exoplayer2/d3$e;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p4, p0, p1}, Lcom/google/android/exoplayer2/analytics/c;->f0(Lcom/google/android/exoplayer2/analytics/c$a;I)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p4, p0, p2, p3, p1}, Lcom/google/android/exoplayer2/analytics/c;->G(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/d3$e;Lcom/google/android/exoplayer2/d3$e;I)V

    .line 7
    return-void
.end method

.method public static synthetic d0(Lcom/google/android/exoplayer2/analytics/c$a;JILcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/o1;->r2(Lcom/google/android/exoplayer2/analytics/c$a;JILcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method public static synthetic d1(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;JJLcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/analytics/o1;->n2(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;JJLcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic d2(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Object;JLcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p4, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/c;->I(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Object;J)V

    .line 4
    return-void
.end method

.method public static synthetic e0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/decoder/e;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->p2(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/decoder/e;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method public static synthetic e1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/z2;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->a2(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/z2;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic e2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/c;->k0(Lcom/google/android/exoplayer2/analytics/c$a;I)V

    .line 4
    return-void
.end method

.method public static synthetic f0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/o;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->C1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/o;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic f2(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/analytics/c;->w(Lcom/google/android/exoplayer2/analytics/c$a;)V

    .line 4
    return-void
.end method

.method public static synthetic g0(Lcom/google/android/exoplayer2/analytics/c$a;ZLcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->g2(Lcom/google/android/exoplayer2/analytics/c$a;ZLcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic g2(Lcom/google/android/exoplayer2/analytics/c$a;ZLcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/c;->l(Lcom/google/android/exoplayer2/analytics/c$a;Z)V

    .line 4
    return-void
.end method

.method public static synthetic h0(Lcom/google/android/exoplayer2/analytics/c$a;FLcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->u2(Lcom/google/android/exoplayer2/analytics/c$a;FLcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private h1(Lcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/analytics/c$a;
    .locals 3
    .param p1    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/o1;->player:Lcom/google/android/exoplayer2/d3;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    move-object v1, v0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/o1;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/o1$a;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/analytics/o1$a;->f(Lcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/z3;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    :goto_0
    if-eqz p1, :cond_2

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/o1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iget v0, v0, Lcom/google/android/exoplayer2/z3$b;->windowIndex:I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/o1;->g1(Lcom/google/android/exoplayer2/z3;ILcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/analytics/c$a;

    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    .line 38
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/o1;->player:Lcom/google/android/exoplayer2/d3;

    .line 39
    .line 40
    .line 41
    invoke-interface {p1}, Lcom/google/android/exoplayer2/d3;->x()I

    .line 42
    move-result p1

    .line 43
    .line 44
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/o1;->player:Lcom/google/android/exoplayer2/d3;

    .line 45
    .line 46
    .line 47
    invoke-interface {v1}, Lcom/google/android/exoplayer2/d3;->getCurrentTimeline()Lcom/google/android/exoplayer2/z3;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/z3;->t()I

    .line 52
    move-result v2

    .line 53
    .line 54
    if-ge p1, v2, :cond_3

    .line 55
    goto :goto_2

    .line 56
    .line 57
    :cond_3
    sget-object v1, Lcom/google/android/exoplayer2/z3;->EMPTY:Lcom/google/android/exoplayer2/z3;

    .line 58
    .line 59
    .line 60
    :goto_2
    invoke-virtual {p0, v1, p1, v0}, Lcom/google/android/exoplayer2/analytics/o1;->g1(Lcom/google/android/exoplayer2/z3;ILcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/analytics/c$a;

    .line 61
    move-result-object p1

    .line 62
    return-object p1
.end method

.method private static synthetic h2(Lcom/google/android/exoplayer2/analytics/c$a;ZLcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/c;->o(Lcom/google/android/exoplayer2/analytics/c$a;Z)V

    .line 4
    return-void
.end method

.method public static synthetic i0(Lcom/google/android/exoplayer2/analytics/c$a;ZLcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->h2(Lcom/google/android/exoplayer2/analytics/c$a;ZLcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private i1()Lcom/google/android/exoplayer2/analytics/c$a;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/o1;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/o1$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/analytics/o1$a;->e()Lcom/google/android/exoplayer2/source/b0$b;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/analytics/o1;->h1(Lcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/analytics/c$a;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private static synthetic i2(Lcom/google/android/exoplayer2/analytics/c$a;IILcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/c;->T(Lcom/google/android/exoplayer2/analytics/c$a;II)V

    .line 4
    return-void
.end method

.method public static synthetic j0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/o1;->K1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private j1(ILcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/analytics/c$a;
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/o1;->player:Lcom/google/android/exoplayer2/d3;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/o1;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/o1$a;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/analytics/o1$a;->f(Lcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/z3;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/analytics/o1;->h1(Lcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/analytics/c$a;

    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/z3;->EMPTY:Lcom/google/android/exoplayer2/z3;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->g1(Lcom/google/android/exoplayer2/z3;ILcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/analytics/c$a;

    .line 26
    move-result-object p1

    .line 27
    :goto_0
    return-object p1

    .line 28
    .line 29
    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/analytics/o1;->player:Lcom/google/android/exoplayer2/d3;

    .line 30
    .line 31
    .line 32
    invoke-interface {p2}, Lcom/google/android/exoplayer2/d3;->getCurrentTimeline()Lcom/google/android/exoplayer2/z3;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/z3;->t()I

    .line 37
    move-result v0

    .line 38
    .line 39
    if-ge p1, v0, :cond_2

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_2
    sget-object p2, Lcom/google/android/exoplayer2/z3;->EMPTY:Lcom/google/android/exoplayer2/z3;

    .line 43
    :goto_1
    const/4 v0, 0x0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p2, p1, v0}, Lcom/google/android/exoplayer2/analytics/o1;->g1(Lcom/google/android/exoplayer2/z3;ILcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/analytics/c$a;

    .line 47
    move-result-object p1

    .line 48
    return-object p1
.end method

.method private static synthetic j2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/c;->W(Lcom/google/android/exoplayer2/analytics/c$a;I)V

    .line 4
    return-void
.end method

.method public static synthetic k0(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/util/List;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->A1(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/util/List;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private k1()Lcom/google/android/exoplayer2/analytics/c$a;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/o1;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/o1$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/analytics/o1$a;->g()Lcom/google/android/exoplayer2/source/b0$b;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/analytics/o1;->h1(Lcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/analytics/c$a;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private static synthetic k2(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/trackselection/z;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/c;->t(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/trackselection/z;)V

    .line 4
    return-void
.end method

.method public static synthetic l0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/c3;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->W1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/c3;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private l1()Lcom/google/android/exoplayer2/analytics/c$a;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/o1;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/o1$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/analytics/o1$a;->h()Lcom/google/android/exoplayer2/source/b0$b;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/analytics/o1;->h1(Lcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/analytics/c$a;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private static synthetic l2(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/e4;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/c;->Y(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/e4;)V

    .line 4
    return-void
.end method

.method public static synthetic m0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/i2;ILcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/o1;->S1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/i2;ILcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private m1(Lcom/google/android/exoplayer2/z2;)Lcom/google/android/exoplayer2/analytics/c$a;
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/z2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p1, Lcom/google/android/exoplayer2/q;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/google/android/exoplayer2/q;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/google/android/exoplayer2/q;->mediaPeriodId:Lcom/google/android/exoplayer2/source/z;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/exoplayer2/source/b0$b;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/b0$b;-><init>(Lcom/google/android/exoplayer2/source/z;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/analytics/o1;->h1(Lcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/analytics/c$a;

    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/o1;->f1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method private static synthetic m2(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Exception;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/c;->r(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Exception;)V

    .line 4
    return-void
.end method

.method public static synthetic n0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/z2;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->Z1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/z2;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic n1(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/util/m;)V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic n2(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;JJLcom/google/android/exoplayer2/analytics/c;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-interface {p6, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/c;->v0(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;J)V

    .line 4
    move-object v0, p6

    .line 5
    move-object v1, p0

    .line 6
    move-object v2, p1

    .line 7
    move-wide v3, p4

    .line 8
    move-wide v5, p2

    .line 9
    .line 10
    .line 11
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/c;->q(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;JJ)V

    .line 12
    const/4 v3, 0x2

    .line 13
    move-object v1, p6

    .line 14
    move-object v2, p0

    .line 15
    move-object v4, p1

    .line 16
    .line 17
    .line 18
    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/analytics/c;->e0(Lcom/google/android/exoplayer2/analytics/c$a;ILjava/lang/String;J)V

    .line 19
    return-void
.end method

.method public static synthetic o0(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Exception;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->m2(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Exception;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic o1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/analytics/c;->X(Lcom/google/android/exoplayer2/analytics/c$a;)V

    .line 4
    return-void
.end method

.method private static synthetic o2(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/c;->L(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic p0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/o1;->P1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic p1(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Exception;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/c;->E(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Exception;)V

    .line 4
    return-void
.end method

.method private static synthetic p2(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/decoder/e;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/c;->u(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/decoder/e;)V

    .line 4
    const/4 v0, 0x2

    .line 5
    .line 6
    .line 7
    invoke-interface {p2, p0, v0, p1}, Lcom/google/android/exoplayer2/analytics/c;->J(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/decoder/e;)V

    .line 8
    return-void
.end method

.method public static synthetic q0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/o1;->v2(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic q1(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;JJLcom/google/android/exoplayer2/analytics/c;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-interface {p6, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/c;->R(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;J)V

    .line 4
    move-object v0, p6

    .line 5
    move-object v1, p0

    .line 6
    move-object v2, p1

    .line 7
    move-wide v3, p4

    .line 8
    move-wide v5, p2

    .line 9
    .line 10
    .line 11
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/c;->B(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;JJ)V

    .line 12
    const/4 v3, 0x1

    .line 13
    move-object v1, p6

    .line 14
    move-object v2, p0

    .line 15
    move-object v4, p1

    .line 16
    .line 17
    .line 18
    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/analytics/c;->e0(Lcom/google/android/exoplayer2/analytics/c$a;ILjava/lang/String;J)V

    .line 19
    return-void
.end method

.method private static synthetic q2(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/decoder/e;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/c;->j0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/decoder/e;)V

    .line 4
    const/4 v0, 0x2

    .line 5
    .line 6
    .line 7
    invoke-interface {p2, p0, v0, p1}, Lcom/google/android/exoplayer2/analytics/c;->f(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/decoder/e;)V

    .line 8
    return-void
.end method

.method public static synthetic r0(Lcom/google/android/exoplayer2/analytics/c$a;IILcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/o1;->i2(Lcom/google/android/exoplayer2/analytics/c$a;IILcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic r1(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/c;->t0(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method private static synthetic r2(Lcom/google/android/exoplayer2/analytics/c$a;JILcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p4, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/c;->a(Lcom/google/android/exoplayer2/analytics/c$a;JI)V

    .line 4
    return-void
.end method

.method public static synthetic s0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->U1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic s1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/decoder/e;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/c;->i0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/decoder/e;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    .line 7
    invoke-interface {p2, p0, v0, p1}, Lcom/google/android/exoplayer2/analytics/c;->J(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/decoder/e;)V

    .line 8
    return-void
.end method

.method private static synthetic s2(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/decoder/i;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p3, p0, p1}, Lcom/google/android/exoplayer2/analytics/c;->j(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/a2;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/c;->V(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/decoder/i;)V

    .line 7
    const/4 p2, 0x2

    .line 8
    .line 9
    .line 10
    invoke-interface {p3, p0, p2, p1}, Lcom/google/android/exoplayer2/analytics/c;->v(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/a2;)V

    .line 11
    return-void
.end method

.method public static synthetic t0(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->I1(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic t1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/decoder/e;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/c;->d(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/decoder/e;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    .line 7
    invoke-interface {p2, p0, v0, p1}, Lcom/google/android/exoplayer2/analytics/c;->f(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/decoder/e;)V

    .line 8
    return-void
.end method

.method private static synthetic t2(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/video/a0;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/c;->m0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/video/a0;)V

    .line 4
    .line 5
    iget v2, p1, Lcom/google/android/exoplayer2/video/a0;->width:I

    .line 6
    .line 7
    iget v3, p1, Lcom/google/android/exoplayer2/video/a0;->height:I

    .line 8
    .line 9
    iget v4, p1, Lcom/google/android/exoplayer2/video/a0;->unappliedRotationDegrees:I

    .line 10
    .line 11
    iget v5, p1, Lcom/google/android/exoplayer2/video/a0;->pixelWidthHeightRatio:F

    .line 12
    move-object v0, p2

    .line 13
    move-object v1, p0

    .line 14
    .line 15
    .line 16
    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/analytics/c;->d0(Lcom/google/android/exoplayer2/analytics/c$a;IIIF)V

    .line 17
    return-void
.end method

.method public static synthetic u0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/decoder/i;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/o1;->u1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/decoder/i;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic u1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/decoder/i;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p3, p0, p1}, Lcom/google/android/exoplayer2/analytics/c;->p0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/a2;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/c;->w0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/decoder/i;)V

    .line 7
    const/4 p2, 0x1

    .line 8
    .line 9
    .line 10
    invoke-interface {p3, p0, p2, p1}, Lcom/google/android/exoplayer2/analytics/c;->v(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/a2;)V

    .line 11
    return-void
.end method

.method private static synthetic u2(Lcom/google/android/exoplayer2/analytics/c$a;FLcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/c;->r0(Lcom/google/android/exoplayer2/analytics/c$a;F)V

    .line 4
    return-void
.end method

.method public static synthetic v0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/o1;->F1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic v1(Lcom/google/android/exoplayer2/analytics/c$a;JLcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/c;->k(Lcom/google/android/exoplayer2/analytics/c$a;J)V

    .line 4
    return-void
.end method

.method private static synthetic v2(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/analytics/c;->l0(Lcom/google/android/exoplayer2/analytics/c$a;)V

    .line 4
    return-void
.end method

.method public static synthetic w0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/o1;->f2(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic w1(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Exception;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/c;->n(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Exception;)V

    .line 4
    return-void
.end method

.method private synthetic w2(Lcom/google/android/exoplayer2/d3;Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/util/m;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/analytics/c$b;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/o1;->eventTimes:Landroid/util/SparseArray;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p3, v1}, Lcom/google/android/exoplayer2/analytics/c$b;-><init>(Lcom/google/android/exoplayer2/util/m;Landroid/util/SparseArray;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p2, p1, v0}, Lcom/google/android/exoplayer2/analytics/c;->S(Lcom/google/android/exoplayer2/d3;Lcom/google/android/exoplayer2/analytics/c$b;)V

    .line 11
    return-void
.end method

.method public static synthetic x0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/o1;->O1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic x1(Lcom/google/android/exoplayer2/analytics/c$a;IJJLcom/google/android/exoplayer2/analytics/c;)V
    .locals 7

    .line 1
    move-object v0, p6

    .line 2
    move-object v1, p0

    .line 3
    move v2, p1

    .line 4
    move-wide v3, p2

    .line 5
    move-wide v5, p4

    .line 6
    .line 7
    .line 8
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/c;->A(Lcom/google/android/exoplayer2/analytics/c$a;IJJ)V

    .line 9
    return-void
.end method

.method private x2()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/o1;->f1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/x0;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/analytics/x0;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;)V

    .line 10
    .line 11
    const/16 v2, 0x404

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/o1;->listeners:Lcom/google/android/exoplayer2/util/s;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/s;->j()V

    .line 20
    return-void
.end method

.method public static synthetic y0(Lcom/google/android/exoplayer2/analytics/c$a;IJJLcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/analytics/o1;->z1(Lcom/google/android/exoplayer2/analytics/c$a;IJJLcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic y1(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/d3$b;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/c;->H(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/d3$b;)V

    .line 4
    return-void
.end method

.method public static synthetic z0(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/d3$e;Lcom/google/android/exoplayer2/d3$e;Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/o1;->c2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/d3$e;Lcom/google/android/exoplayer2/d3$e;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method

.method private static synthetic z1(Lcom/google/android/exoplayer2/analytics/c$a;IJJLcom/google/android/exoplayer2/analytics/c;)V
    .locals 7

    .line 1
    move-object v0, p6

    .line 2
    move-object v1, p0

    .line 3
    move v2, p1

    .line 4
    move-wide v3, p2

    .line 5
    move-wide v5, p4

    .line 6
    .line 7
    .line 8
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/c;->b0(Lcom/google/android/exoplayer2/analytics/c$a;IJJ)V

    .line 9
    return-void
.end method


# virtual methods
.method public final A(Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/o1;->l1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/j;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/j;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/decoder/e;)V

    .line 10
    .line 11
    const/16 p1, 0x3f7

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public B(Lcom/google/android/exoplayer2/n2;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/o1;->f1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/g1;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/g1;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/n2;)V

    .line 10
    .line 11
    const/16 p1, 0xe

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public C(Lcom/google/android/exoplayer2/d3;Landroid/os/Looper;)V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/o1;->player:Lcom/google/android/exoplayer2/d3;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/o1;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/o1$a;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/o1$a;->a(Lcom/google/android/exoplayer2/analytics/o1$a;)Lcom/google/common/collect/a0;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    .line 22
    .line 23
    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    check-cast v0, Lcom/google/android/exoplayer2/d3;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/o1;->player:Lcom/google/android/exoplayer2/d3;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/o1;->clock:Lcom/google/android/exoplayer2/util/d;

    .line 34
    const/4 v1, 0x0

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, p2, v1}, Lcom/google/android/exoplayer2/util/d;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/p;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/o1;->handler:Lcom/google/android/exoplayer2/util/p;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/o1;->listeners:Lcom/google/android/exoplayer2/util/s;

    .line 43
    .line 44
    new-instance v1, Lcom/google/android/exoplayer2/analytics/n;

    .line 45
    .line 46
    .line 47
    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/analytics/n;-><init>(Lcom/google/android/exoplayer2/analytics/o1;Lcom/google/android/exoplayer2/d3;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p2, v1}, Lcom/google/android/exoplayer2/util/s;->e(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/s$b;)Lcom/google/android/exoplayer2/util/s;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/o1;->listeners:Lcom/google/android/exoplayer2/util/s;

    .line 54
    return-void
.end method

.method public D(Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/o1;->listeners:Lcom/google/android/exoplayer2/util/s;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/s;->c(Ljava/lang/Object;)V

    .line 9
    return-void
.end method

.method public E(Lcom/google/android/exoplayer2/z2;)V
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/z2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/analytics/o1;->m1(Lcom/google/android/exoplayer2/z2;)Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/f;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/f;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/z2;)V

    .line 10
    .line 11
    const/16 p1, 0xa

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public final F(Lcom/google/android/exoplayer2/z2;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/analytics/o1;->m1(Lcom/google/android/exoplayer2/z2;)Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/l;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/l;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/z2;)V

    .line 10
    .line 11
    const/16 p1, 0xa

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public final G(ILcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/source/x;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->j1(ILcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    new-instance p2, Lcom/google/android/exoplayer2/analytics/y0;

    .line 7
    .line 8
    .line 9
    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplayer2/analytics/y0;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/x;)V

    .line 10
    .line 11
    const/16 p3, 0x3ec

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public H(Lcom/google/android/exoplayer2/d3$b;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/o1;->f1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/c0;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/c0;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/d3$b;)V

    .line 10
    .line 11
    const/16 p1, 0xd

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public final I(ILcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->j1(ILcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    new-instance p2, Lcom/google/android/exoplayer2/analytics/c1;

    .line 7
    .line 8
    .line 9
    invoke-direct {p2, p1, p3, p4}, Lcom/google/android/exoplayer2/analytics/c1;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V

    .line 10
    .line 11
    const/16 p3, 0x3e8

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public J(Lcom/google/android/exoplayer2/o;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/o1;->f1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/o;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/o;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/o;)V

    .line 10
    .line 11
    const/16 p1, 0x1d

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public final K(ILcom/google/android/exoplayer2/source/b0$b;)V
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->j1(ILcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    new-instance p2, Lcom/google/android/exoplayer2/analytics/i1;

    .line 7
    .line 8
    .line 9
    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/analytics/i1;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;)V

    .line 10
    .line 11
    const/16 v0, 0x402

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public synthetic L(ILcom/google/android/exoplayer2/source/b0$b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/o;->a(Lcom/google/android/exoplayer2/drm/v;ILcom/google/android/exoplayer2/source/b0$b;)V

    return-void
.end method

.method public M(Lcom/google/android/exoplayer2/trackselection/z;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/o1;->f1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/n1;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/n1;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/trackselection/z;)V

    .line 10
    .line 11
    const/16 p1, 0x13

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public N(Lcom/google/android/exoplayer2/e4;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/o1;->f1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/r;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/r;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/e4;)V

    .line 10
    const/4 p1, 0x2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 14
    return-void
.end method

.method public final O(ILcom/google/android/exoplayer2/source/b0$b;Ljava/lang/Exception;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->j1(ILcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    new-instance p2, Lcom/google/android/exoplayer2/analytics/d1;

    .line 7
    .line 8
    .line 9
    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplayer2/analytics/d1;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Exception;)V

    .line 10
    .line 11
    const/16 p3, 0x400

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public P(Lcom/google/android/exoplayer2/d3;Lcom/google/android/exoplayer2/d3$c;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final Q(Ljava/util/List;Lcom/google/android/exoplayer2/source/b0$b;)V
    .locals 2
    .param p2    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/b0$b;",
            ">;",
            "Lcom/google/android/exoplayer2/source/b0$b;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/o1;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/o1$a;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/o1;->player:Lcom/google/android/exoplayer2/d3;

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    check-cast v1, Lcom/google/android/exoplayer2/d3;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/analytics/o1$a;->k(Ljava/util/List;Lcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/d3;)V

    .line 14
    return-void
.end method

.method public final R(Lcom/google/android/exoplayer2/i2;I)V
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/i2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/o1;->f1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/z;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/z;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/i2;I)V

    .line 10
    const/4 p1, 0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 14
    return-void
.end method

.method public final S(ILcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->j1(ILcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    new-instance p2, Lcom/google/android/exoplayer2/analytics/e1;

    .line 7
    .line 8
    .line 9
    invoke-direct {p2, p1, p3, p4}, Lcom/google/android/exoplayer2/analytics/e1;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V

    .line 10
    .line 11
    const/16 p3, 0x3e9

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public final T(ILcom/google/android/exoplayer2/source/b0$b;)V
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->j1(ILcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    new-instance p2, Lcom/google/android/exoplayer2/analytics/u0;

    .line 7
    .line 8
    .line 9
    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/analytics/u0;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;)V

    .line 10
    .line 11
    const/16 v0, 0x403

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/o1;->l1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/t;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/t;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Exception;)V

    .line 10
    .line 11
    const/16 p1, 0x3f6

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/o1;->l1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/g;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/g;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;)V

    .line 10
    .line 11
    const/16 p1, 0x3fb

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/o1;->l1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/p;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/p;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;)V

    .line 10
    .line 11
    const/16 p1, 0x3f4

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public final d(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/o1;->l1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/h0;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/h0;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Exception;)V

    .line 10
    .line 11
    const/16 p1, 0x405

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public final e(JI)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/o1;->k1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/l1;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/l1;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;JI)V

    .line 10
    .line 11
    const/16 p1, 0x3fd

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public final f(J)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/o1;->l1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/q;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/q;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;J)V

    .line 10
    .line 11
    const/16 p1, 0x3f2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method protected final f1()Lcom/google/android/exoplayer2/analytics/c$a;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/o1;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/o1$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/analytics/o1$a;->d()Lcom/google/android/exoplayer2/source/b0$b;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/analytics/o1;->h1(Lcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/analytics/c$a;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final g(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/o1;->l1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/k1;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/k1;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Exception;)V

    .line 10
    .line 11
    const/16 p1, 0x406

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method protected final g1(Lcom/google/android/exoplayer2/z3;ILcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/analytics/c$a;
    .locals 17
    .param p3    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v4, p1

    .line 5
    .line 6
    move/from16 v5, p2

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    const/4 v1, 0x0

    .line 14
    move-object v6, v1

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    move-object/from16 v6, p3

    .line 18
    .line 19
    :goto_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/o1;->clock:Lcom/google/android/exoplayer2/util/d;

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Lcom/google/android/exoplayer2/util/d;->elapsedRealtime()J

    .line 23
    move-result-wide v2

    .line 24
    .line 25
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/o1;->player:Lcom/google/android/exoplayer2/d3;

    .line 26
    .line 27
    .line 28
    invoke-interface {v1}, Lcom/google/android/exoplayer2/d3;->getCurrentTimeline()Lcom/google/android/exoplayer2/z3;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/z3;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v1

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/o1;->player:Lcom/google/android/exoplayer2/d3;

    .line 38
    .line 39
    .line 40
    invoke-interface {v1}, Lcom/google/android/exoplayer2/d3;->x()I

    .line 41
    move-result v1

    .line 42
    .line 43
    if-ne v5, v1, :cond_1

    .line 44
    const/4 v1, 0x1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 v1, 0x0

    .line 47
    .line 48
    :goto_1
    const-wide/16 v7, 0x0

    .line 49
    .line 50
    if-eqz v6, :cond_2

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/z;->b()Z

    .line 54
    move-result v9

    .line 55
    .line 56
    if-eqz v9, :cond_2

    .line 57
    .line 58
    if-eqz v1, :cond_5

    .line 59
    .line 60
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/o1;->player:Lcom/google/android/exoplayer2/d3;

    .line 61
    .line 62
    .line 63
    invoke-interface {v1}, Lcom/google/android/exoplayer2/d3;->getCurrentAdGroupIndex()I

    .line 64
    move-result v1

    .line 65
    .line 66
    iget v9, v6, Lcom/google/android/exoplayer2/source/z;->adGroupIndex:I

    .line 67
    .line 68
    if-ne v1, v9, :cond_5

    .line 69
    .line 70
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/o1;->player:Lcom/google/android/exoplayer2/d3;

    .line 71
    .line 72
    .line 73
    invoke-interface {v1}, Lcom/google/android/exoplayer2/d3;->getCurrentAdIndexInAdGroup()I

    .line 74
    move-result v1

    .line 75
    .line 76
    iget v9, v6, Lcom/google/android/exoplayer2/source/z;->adIndexInAdGroup:I

    .line 77
    .line 78
    if-ne v1, v9, :cond_5

    .line 79
    .line 80
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/o1;->player:Lcom/google/android/exoplayer2/d3;

    .line 81
    .line 82
    .line 83
    invoke-interface {v1}, Lcom/google/android/exoplayer2/d3;->getCurrentPosition()J

    .line 84
    move-result-wide v7

    .line 85
    goto :goto_2

    .line 86
    .line 87
    :cond_2
    if-eqz v1, :cond_3

    .line 88
    .line 89
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/o1;->player:Lcom/google/android/exoplayer2/d3;

    .line 90
    .line 91
    .line 92
    invoke-interface {v1}, Lcom/google/android/exoplayer2/d3;->getContentPosition()J

    .line 93
    move-result-wide v7

    .line 94
    goto :goto_2

    .line 95
    .line 96
    .line 97
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 98
    move-result v1

    .line 99
    .line 100
    if-eqz v1, :cond_4

    .line 101
    goto :goto_2

    .line 102
    .line 103
    :cond_4
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/o1;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v5, v1}, Lcom/google/android/exoplayer2/z3;->r(ILcom/google/android/exoplayer2/z3$d;)Lcom/google/android/exoplayer2/z3$d;

    .line 107
    move-result-object v1

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/z3$d;->e()J

    .line 111
    move-result-wide v7

    .line 112
    .line 113
    :cond_5
    :goto_2
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/o1;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/o1$a;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/analytics/o1$a;->d()Lcom/google/android/exoplayer2/source/b0$b;

    .line 117
    move-result-object v11

    .line 118
    .line 119
    new-instance v16, Lcom/google/android/exoplayer2/analytics/c$a;

    .line 120
    .line 121
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/o1;->player:Lcom/google/android/exoplayer2/d3;

    .line 122
    .line 123
    .line 124
    invoke-interface {v1}, Lcom/google/android/exoplayer2/d3;->getCurrentTimeline()Lcom/google/android/exoplayer2/z3;

    .line 125
    move-result-object v9

    .line 126
    .line 127
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/o1;->player:Lcom/google/android/exoplayer2/d3;

    .line 128
    .line 129
    .line 130
    invoke-interface {v1}, Lcom/google/android/exoplayer2/d3;->x()I

    .line 131
    move-result v10

    .line 132
    .line 133
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/o1;->player:Lcom/google/android/exoplayer2/d3;

    .line 134
    .line 135
    .line 136
    invoke-interface {v1}, Lcom/google/android/exoplayer2/d3;->getCurrentPosition()J

    .line 137
    move-result-wide v12

    .line 138
    .line 139
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/o1;->player:Lcom/google/android/exoplayer2/d3;

    .line 140
    .line 141
    .line 142
    invoke-interface {v1}, Lcom/google/android/exoplayer2/d3;->c()J

    .line 143
    move-result-wide v14

    .line 144
    .line 145
    move-object/from16 v1, v16

    .line 146
    .line 147
    move-object/from16 v4, p1

    .line 148
    .line 149
    move/from16 v5, p2

    .line 150
    .line 151
    .line 152
    invoke-direct/range {v1 .. v15}, Lcom/google/android/exoplayer2/analytics/c$a;-><init>(JLcom/google/android/exoplayer2/z3;ILcom/google/android/exoplayer2/source/b0$b;JLcom/google/android/exoplayer2/z3;ILcom/google/android/exoplayer2/source/b0$b;JJ)V

    .line 153
    return-object v16
.end method

.method public final h(Ljava/lang/Object;J)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/o1;->l1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/s0;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/s0;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Object;J)V

    .line 10
    .line 11
    const/16 p1, 0x1a

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public final i(IJJ)V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/o1;->l1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v7

    .line 5
    .line 6
    new-instance v8, Lcom/google/android/exoplayer2/analytics/r0;

    .line 7
    move-object v0, v8

    .line 8
    move-object v1, v7

    .line 9
    move v2, p1

    .line 10
    move-wide v3, p2

    .line 11
    move-wide v5, p4

    .line 12
    .line 13
    .line 14
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/r0;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;IJJ)V

    .line 15
    .line 16
    const/16 p1, 0x3f3

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v7, p1, v8}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 20
    return-void
.end method

.method public final j(ILcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->j1(ILcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    new-instance p2, Lcom/google/android/exoplayer2/analytics/t0;

    .line 7
    .line 8
    .line 9
    invoke-direct {p2, p1, p3, p4}, Lcom/google/android/exoplayer2/analytics/t0;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V

    .line 10
    .line 11
    const/16 p3, 0x3ea

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public final k(Lcom/google/android/exoplayer2/video/a0;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/o1;->l1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/w0;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/w0;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/video/a0;)V

    .line 10
    .line 11
    const/16 p1, 0x19

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public final l(Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/decoder/i;)V
    .locals 2
    .param p2    # Lcom/google/android/exoplayer2/decoder/i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/o1;->l1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/y;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/y;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/decoder/i;)V

    .line 10
    .line 11
    const/16 p1, 0x3f1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public final m(Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/o1;->l1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/a0;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/a0;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/decoder/e;)V

    .line 10
    .line 11
    const/16 p1, 0x3ef

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public final n(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/o1;->f1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/d;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/d;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 10
    .line 11
    const/16 p1, 0x1c

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public final o(Lcom/google/android/exoplayer2/c3;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/o1;->f1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/m0;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/m0;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/c3;)V

    .line 10
    .line 11
    const/16 p1, 0xc

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public final onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/o1;->l1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v7

    .line 5
    .line 6
    new-instance v8, Lcom/google/android/exoplayer2/analytics/m;

    .line 7
    move-object v0, v8

    .line 8
    move-object v1, v7

    .line 9
    move-object v2, p1

    .line 10
    move-wide v3, p4

    .line 11
    move-wide v5, p2

    .line 12
    .line 13
    .line 14
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/m;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;JJ)V

    .line 15
    .line 16
    const/16 p1, 0x3f0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v7, p1, v8}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 20
    return-void
.end method

.method public final onBandwidthSample(IJJ)V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/o1;->i1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v7

    .line 5
    .line 6
    new-instance v8, Lcom/google/android/exoplayer2/analytics/a1;

    .line 7
    move-object v0, v8

    .line 8
    move-object v1, v7

    .line 9
    move v2, p1

    .line 10
    move-wide v3, p2

    .line 11
    move-wide v5, p4

    .line 12
    .line 13
    .line 14
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/a1;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;IJJ)V

    .line 15
    .line 16
    const/16 p1, 0x3ee

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v7, p1, v8}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 20
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
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/o1;->f1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/p0;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/p0;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/util/List;)V

    .line 10
    .line 11
    const/16 p1, 0x1b

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public onDeviceVolumeChanged(IZ)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/o1;->f1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/i;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/i;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;IZ)V

    .line 10
    .line 11
    const/16 p1, 0x1e

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public final onDroppedFrames(IJ)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/o1;->k1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/w;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/w;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;IJ)V

    .line 10
    .line 11
    const/16 p1, 0x3fa

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public final onIsLoadingChanged(Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/o1;->f1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/l0;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/l0;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;Z)V

    .line 10
    const/4 p1, 0x3

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 14
    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/o1;->f1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/s;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/s;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;Z)V

    .line 10
    const/4 p1, 0x7

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 14
    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    return-void
.end method

.method public final onPlayWhenReadyChanged(ZI)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/o1;->f1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/e0;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/e0;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;ZI)V

    .line 10
    const/4 p1, 0x5

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 14
    return-void
.end method

.method public final onPlaybackStateChanged(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/o1;->f1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/v0;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/v0;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;I)V

    .line 10
    const/4 p1, 0x4

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 14
    return-void
.end method

.method public final onPlaybackSuppressionReasonChanged(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/o1;->f1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/u;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/u;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;I)V

    .line 10
    const/4 p1, 0x6

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 14
    return-void
.end method

.method public final onPlayerStateChanged(ZI)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/o1;->f1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/v;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/v;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;ZI)V

    .line 10
    const/4 p1, -0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 14
    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 0

    return-void
.end method

.method public final onRepeatModeChanged(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/o1;->f1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/b0;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/b0;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;I)V

    .line 10
    .line 11
    const/16 p1, 0x8

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public final onSeekProcessed()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/o1;->f1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/o0;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/analytics/o0;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;)V

    .line 10
    const/4 v2, -0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 14
    return-void
.end method

.method public final onShuffleModeEnabledChanged(Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/o1;->f1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/h;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/h;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;Z)V

    .line 10
    .line 11
    const/16 p1, 0x9

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public final onSkipSilenceEnabledChanged(Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/o1;->l1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/f1;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/f1;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;Z)V

    .line 10
    .line 11
    const/16 p1, 0x17

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public final onSurfaceSizeChanged(II)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/o1;->l1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/d0;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/d0;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;II)V

    .line 10
    .line 11
    const/16 p1, 0x18

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public final onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/o1;->l1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v7

    .line 5
    .line 6
    new-instance v8, Lcom/google/android/exoplayer2/analytics/e;

    .line 7
    move-object v0, v8

    .line 8
    move-object v1, v7

    .line 9
    move-object v2, p1

    .line 10
    move-wide v3, p4

    .line 11
    move-wide v5, p2

    .line 12
    .line 13
    .line 14
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/e;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;JJ)V

    .line 15
    .line 16
    const/16 p1, 0x3f8

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v7, p1, v8}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 20
    return-void
.end method

.method public final onVolumeChanged(F)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/o1;->l1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/k0;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/k0;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;F)V

    .line 10
    .line 11
    const/16 p1, 0x16

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public final p()V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/o1;->isSeeking:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/o1;->f1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/o1;->isSeeking:Z

    .line 12
    .line 13
    new-instance v1, Lcom/google/android/exoplayer2/analytics/m1;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/analytics/m1;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;)V

    .line 17
    const/4 v2, -0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 21
    :cond_0
    return-void
.end method

.method public final q(ILcom/google/android/exoplayer2/source/b0$b;)V
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->j1(ILcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    new-instance p2, Lcom/google/android/exoplayer2/analytics/h1;

    .line 7
    .line 8
    .line 9
    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/analytics/h1;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;)V

    .line 10
    .line 11
    const/16 v0, 0x3ff

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public final r(ILcom/google/android/exoplayer2/source/b0$b;I)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->j1(ILcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    new-instance p2, Lcom/google/android/exoplayer2/analytics/b1;

    .line 7
    .line 8
    .line 9
    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplayer2/analytics/b1;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;I)V

    .line 10
    .line 11
    const/16 p3, 0x3fe

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public release()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/o1;->handler:Lcom/google/android/exoplayer2/util/p;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/util/p;

    .line 9
    .line 10
    new-instance v1, Lcom/google/android/exoplayer2/analytics/k;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/analytics/k;-><init>(Lcom/google/android/exoplayer2/analytics/o1;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/p;->post(Ljava/lang/Runnable;)Z

    .line 17
    return-void
.end method

.method public final s(ILcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;Ljava/io/IOException;Z)V
    .locals 6
    .param p2    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->j1(ILcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    new-instance p2, Lcom/google/android/exoplayer2/analytics/z0;

    .line 7
    move-object v0, p2

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p3

    .line 10
    move-object v3, p4

    .line 11
    move-object v4, p5

    .line 12
    move v5, p6

    .line 13
    .line 14
    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/analytics/z0;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;Ljava/io/IOException;Z)V

    .line 16
    .line 17
    const/16 p3, 0x3eb

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 21
    return-void
.end method

.method public final t(Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/decoder/i;)V
    .locals 2
    .param p2    # Lcom/google/android/exoplayer2/decoder/i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/o1;->l1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/j0;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/j0;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/decoder/i;)V

    .line 10
    .line 11
    const/16 p1, 0x3f9

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public final u(Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/o1;->k1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/x;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/x;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/decoder/e;)V

    .line 10
    .line 11
    const/16 p1, 0x3fc

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public final v(ILcom/google/android/exoplayer2/source/b0$b;)V
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->j1(ILcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    new-instance p2, Lcom/google/android/exoplayer2/analytics/j1;

    .line 7
    .line 8
    .line 9
    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/analytics/j1;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;)V

    .line 10
    .line 11
    const/16 v0, 0x401

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public final w(Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/o1;->k1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/i0;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/i0;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/decoder/e;)V

    .line 10
    .line 11
    const/16 p1, 0x3f5

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public x(Lcom/google/android/exoplayer2/text/f;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/o1;->f1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/analytics/f0;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/f0;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/text/f;)V

    .line 10
    .line 11
    const/16 p1, 0x1b

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    return-void
.end method

.method public final y(Lcom/google/android/exoplayer2/d3$e;Lcom/google/android/exoplayer2/d3$e;I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p3, v0, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/o1;->isSeeking:Z

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/o1;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/o1$a;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/o1;->player:Lcom/google/android/exoplayer2/d3;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lcom/google/android/exoplayer2/d3;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/analytics/o1$a;->j(Lcom/google/android/exoplayer2/d3;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/o1;->f1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    new-instance v1, Lcom/google/android/exoplayer2/analytics/q0;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v0, p3, p1, p2}, Lcom/google/android/exoplayer2/analytics/q0;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/d3$e;Lcom/google/android/exoplayer2/d3$e;)V

    .line 29
    .line 30
    const/16 p1, 0xb

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 34
    return-void
.end method

.method protected final y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/analytics/c$a;",
            "I",
            "Lcom/google/android/exoplayer2/util/s$a<",
            "Lcom/google/android/exoplayer2/analytics/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/o1;->eventTimes:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/o1;->listeners:Lcom/google/android/exoplayer2/util/s;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/util/s;->l(ILcom/google/android/exoplayer2/util/s$a;)V

    .line 11
    return-void
.end method

.method public final z(Lcom/google/android/exoplayer2/z3;I)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/o1;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/o1$a;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/o1;->player:Lcom/google/android/exoplayer2/d3;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/google/android/exoplayer2/d3;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/analytics/o1$a;->l(Lcom/google/android/exoplayer2/d3;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/o1;->f1()Lcom/google/android/exoplayer2/analytics/c$a;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    new-instance v0, Lcom/google/android/exoplayer2/analytics/n0;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/n0;-><init>(Lcom/google/android/exoplayer2/analytics/c$a;I)V

    .line 23
    const/4 p2, 0x0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/analytics/o1;->y2(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 27
    return-void
.end method
