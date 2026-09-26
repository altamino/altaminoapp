.class public Lu9/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private coeffquadratic:[[S

.field private coeffscalar:[S

.field private coeffsingular:[[S

.field private docLength:I


# direct methods
.method public constructor <init>(I[[S[[S[S)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lu9/b;->docLength:I

    iput-object p2, p0, Lu9/b;->coeffquadratic:[[S

    iput-object p3, p0, Lu9/b;->coeffsingular:[[S

    iput-object p4, p0, Lu9/b;->coeffscalar:[S

    return-void
.end method


# virtual methods
.method public a()[[S
    .locals 1

    .line 1
    iget-object v0, p0, Lu9/b;->coeffquadratic:[[S

    return-object v0
.end method

.method public b()[S
    .locals 1

    .line 1
    iget-object v0, p0, Lu9/b;->coeffscalar:[S

    return-object v0
.end method

.method public c()[[S
    .locals 1

    .line 1
    iget-object v0, p0, Lu9/b;->coeffsingular:[[S

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lu9/b;->docLength:I

    return v0
.end method
