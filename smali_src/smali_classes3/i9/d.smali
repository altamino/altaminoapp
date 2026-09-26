.class public Li9/d;
.super Li9/b;
.source "SourceFile"


# instance fields
.field private A1inv:[[S

.field private A2inv:[[S

.field private b1:[S

.field private b2:[S

.field private layers:[Li9/a;

.field private vi:[I


# direct methods
.method public constructor <init>([[S[S[[S[S[I[Li9/a;)V
    .locals 3

    .line 1
    array-length v0, p5

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget v0, p5, v0

    const/4 v2, 0x0

    aget v2, p5, v2

    sub-int/2addr v0, v2

    invoke-direct {p0, v1, v0}, Li9/b;-><init>(ZI)V

    iput-object p1, p0, Li9/d;->A1inv:[[S

    iput-object p2, p0, Li9/d;->b1:[S

    iput-object p3, p0, Li9/d;->A2inv:[[S

    iput-object p4, p0, Li9/d;->b2:[S

    iput-object p5, p0, Li9/d;->vi:[I

    iput-object p6, p0, Li9/d;->layers:[Li9/a;

    return-void
.end method


# virtual methods
.method public b()[S
    .locals 1

    .line 1
    iget-object v0, p0, Li9/d;->b1:[S

    return-object v0
.end method

.method public c()[S
    .locals 1

    .line 1
    iget-object v0, p0, Li9/d;->b2:[S

    return-object v0
.end method

.method public d()[[S
    .locals 1

    .line 1
    iget-object v0, p0, Li9/d;->A1inv:[[S

    return-object v0
.end method

.method public e()[[S
    .locals 1

    .line 1
    iget-object v0, p0, Li9/d;->A2inv:[[S

    return-object v0
.end method

.method public f()[Li9/a;
    .locals 1

    .line 1
    iget-object v0, p0, Li9/d;->layers:[Li9/a;

    return-object v0
.end method

.method public g()[I
    .locals 1

    .line 1
    iget-object v0, p0, Li9/d;->vi:[I

    return-object v0
.end method
