.class public Lu9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private A1inv:[[S

.field private A2inv:[[S

.field private b1:[S

.field private b2:[S

.field private layers:[Li9/a;

.field private vi:[I


# direct methods
.method public constructor <init>([[S[S[[S[S[I[Li9/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu9/a;->A1inv:[[S

    iput-object p2, p0, Lu9/a;->b1:[S

    iput-object p3, p0, Lu9/a;->A2inv:[[S

    iput-object p4, p0, Lu9/a;->b2:[S

    iput-object p5, p0, Lu9/a;->vi:[I

    iput-object p6, p0, Lu9/a;->layers:[Li9/a;

    return-void
.end method


# virtual methods
.method public a()[S
    .locals 1

    .line 1
    iget-object v0, p0, Lu9/a;->b1:[S

    return-object v0
.end method

.method public b()[S
    .locals 1

    .line 1
    iget-object v0, p0, Lu9/a;->b2:[S

    return-object v0
.end method

.method public c()[[S
    .locals 1

    .line 1
    iget-object v0, p0, Lu9/a;->A1inv:[[S

    return-object v0
.end method

.method public d()[[S
    .locals 1

    .line 1
    iget-object v0, p0, Lu9/a;->A2inv:[[S

    return-object v0
.end method

.method public e()[Li9/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lu9/a;->layers:[Li9/a;

    return-object v0
.end method

.method public f()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lu9/a;->vi:[I

    return-object v0
.end method
