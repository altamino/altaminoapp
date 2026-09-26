.class public Li9/e;
.super Li9/b;
.source "SourceFile"


# instance fields
.field private coeffquadratic:[[S

.field private coeffscalar:[S

.field private coeffsingular:[[S


# direct methods
.method public constructor <init>(I[[S[[S[S)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Li9/b;-><init>(ZI)V

    iput-object p2, p0, Li9/e;->coeffquadratic:[[S

    iput-object p3, p0, Li9/e;->coeffsingular:[[S

    iput-object p4, p0, Li9/e;->coeffscalar:[S

    return-void
.end method


# virtual methods
.method public b()[[S
    .locals 1

    .line 1
    iget-object v0, p0, Li9/e;->coeffquadratic:[[S

    return-object v0
.end method

.method public c()[S
    .locals 1

    .line 1
    iget-object v0, p0, Li9/e;->coeffscalar:[S

    return-object v0
.end method

.method public d()[[S
    .locals 1

    .line 1
    iget-object v0, p0, Li9/e;->coeffsingular:[[S

    return-object v0
.end method
