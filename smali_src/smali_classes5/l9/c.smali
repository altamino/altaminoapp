.class Ll9/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private finished:Z

.field private height:I

.field private final initialHeight:I

.field private initialized:Z

.field private nextIndex:I

.field private tailNode:Ll9/u;


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ll9/c;->initialHeight:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Ll9/c;->initialized:Z

    iput-boolean p1, p0, Ll9/c;->finished:Z

    return-void
.end method


# virtual methods
.method protected b()Ll9/c;
    .locals 2

    .line 1
    new-instance v0, Ll9/c;

    iget v1, p0, Ll9/c;->initialHeight:I

    invoke-direct {v0, v1}, Ll9/c;-><init>(I)V

    iget-object v1, p0, Ll9/c;->tailNode:Ll9/u;

    iput-object v1, v0, Ll9/c;->tailNode:Ll9/u;

    iget v1, p0, Ll9/c;->height:I

    iput v1, v0, Ll9/c;->height:I

    iget v1, p0, Ll9/c;->nextIndex:I

    iput v1, v0, Ll9/c;->nextIndex:I

    iget-boolean v1, p0, Ll9/c;->initialized:Z

    iput-boolean v1, v0, Ll9/c;->initialized:Z

    iget-boolean v1, p0, Ll9/c;->finished:Z

    iput-boolean v1, v0, Ll9/c;->finished:Z

    return-object v0
.end method

.method c()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Ll9/c;->initialized:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ll9/c;->finished:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Ll9/c;->height:I

    return v0

    :cond_1
    :goto_0
    const v0, 0x7fffffff

    return v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ll9/c;->b()Ll9/c;

    move-result-object v0

    return-object v0
.end method

.method e()I
    .locals 1

    .line 1
    iget v0, p0, Ll9/c;->nextIndex:I

    return v0
.end method

.method public f()Ll9/u;
    .locals 1

    .line 1
    iget-object v0, p0, Ll9/c;->tailNode:Ll9/u;

    return-object v0
.end method

.method g(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Ll9/c;->tailNode:Ll9/u;

    iget v0, p0, Ll9/c;->initialHeight:I

    iput v0, p0, Ll9/c;->height:I

    iput p1, p0, Ll9/c;->nextIndex:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Ll9/c;->initialized:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Ll9/c;->finished:Z

    return-void
.end method

.method i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ll9/c;->finished:Z

    return v0
.end method

.method j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ll9/c;->initialized:Z

    return v0
.end method

.method k(Ll9/u;)V
    .locals 1

    .line 1
    iput-object p1, p0, Ll9/c;->tailNode:Ll9/u;

    invoke-virtual {p1}, Ll9/u;->a()I

    move-result p1

    iput p1, p0, Ll9/c;->height:I

    iget v0, p0, Ll9/c;->initialHeight:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Ll9/c;->finished:Z

    :cond_0
    return-void
.end method

.method l(Ljava/util/Stack;Ll9/k;[B[BLl9/j;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Ll9/u;",
            ">;",
            "Ll9/k;",
            "[B[B",
            "Ll9/j;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p5, :cond_5

    iget-boolean v0, p0, Ll9/c;->finished:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Ll9/c;->initialized:Z

    if-eqz v0, :cond_4

    new-instance v0, Ll9/j$b;

    invoke-direct {v0}, Ll9/j$b;-><init>()V

    invoke-virtual {p5}, Ll9/o;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ll9/o$a;->g(I)Ll9/o$a;

    move-result-object v0

    check-cast v0, Ll9/j$b;

    invoke-virtual {p5}, Ll9/o;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ll9/o$a;->h(J)Ll9/o$a;

    move-result-object v0

    check-cast v0, Ll9/j$b;

    iget v1, p0, Ll9/c;->nextIndex:I

    invoke-virtual {v0, v1}, Ll9/j$b;->p(I)Ll9/j$b;

    move-result-object v0

    invoke-virtual {p5}, Ll9/j;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ll9/j$b;->n(I)Ll9/j$b;

    move-result-object v0

    invoke-virtual {p5}, Ll9/j;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ll9/j$b;->o(I)Ll9/j$b;

    move-result-object v0

    invoke-virtual {p5}, Ll9/o;->a()I

    move-result p5

    invoke-virtual {v0, p5}, Ll9/o$a;->f(I)Ll9/o$a;

    move-result-object p5

    check-cast p5, Ll9/j$b;

    invoke-virtual {p5}, Ll9/j$b;->l()Ll9/o;

    move-result-object p5

    check-cast p5, Ll9/j;

    new-instance v0, Ll9/i$b;

    invoke-direct {v0}, Ll9/i$b;-><init>()V

    invoke-virtual {p5}, Ll9/o;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ll9/o$a;->g(I)Ll9/o$a;

    move-result-object v0

    check-cast v0, Ll9/i$b;

    invoke-virtual {p5}, Ll9/o;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ll9/o$a;->h(J)Ll9/o$a;

    move-result-object v0

    check-cast v0, Ll9/i$b;

    iget v1, p0, Ll9/c;->nextIndex:I

    invoke-virtual {v0, v1}, Ll9/i$b;->n(I)Ll9/i$b;

    move-result-object v0

    invoke-virtual {v0}, Ll9/i$b;->l()Ll9/o;

    move-result-object v0

    check-cast v0, Ll9/i;

    new-instance v1, Ll9/g$b;

    invoke-direct {v1}, Ll9/g$b;-><init>()V

    invoke-virtual {p5}, Ll9/o;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ll9/o$a;->g(I)Ll9/o$a;

    move-result-object v1

    check-cast v1, Ll9/g$b;

    invoke-virtual {p5}, Ll9/o;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ll9/o$a;->h(J)Ll9/o$a;

    move-result-object v1

    check-cast v1, Ll9/g$b;

    iget v2, p0, Ll9/c;->nextIndex:I

    invoke-virtual {v1, v2}, Ll9/g$b;->n(I)Ll9/g$b;

    move-result-object v1

    invoke-virtual {v1}, Ll9/g$b;->k()Ll9/o;

    move-result-object v1

    check-cast v1, Ll9/g;

    invoke-virtual {p2, p4, p5}, Ll9/k;->g([BLl9/j;)[B

    move-result-object p4

    invoke-virtual {p2, p4, p3}, Ll9/k;->h([B[B)V

    invoke-virtual {p2, p5}, Ll9/k;->e(Ll9/j;)Ll9/n;

    move-result-object p3

    invoke-static {p2, p3, v0}, Ll9/v;->a(Ll9/k;Ll9/n;Ll9/i;)Ll9/u;

    move-result-object p3

    :goto_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p4

    const/4 p5, 0x1

    if-nez p4, :cond_0

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ll9/u;

    invoke-virtual {p4}, Ll9/u;->a()I

    move-result p4

    invoke-virtual {p3}, Ll9/u;->a()I

    move-result v0

    if-ne p4, v0, :cond_0

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ll9/u;

    invoke-virtual {p4}, Ll9/u;->a()I

    move-result p4

    iget v0, p0, Ll9/c;->initialHeight:I

    if-eq p4, v0, :cond_0

    new-instance p4, Ll9/g$b;

    invoke-direct {p4}, Ll9/g$b;-><init>()V

    invoke-virtual {v1}, Ll9/o;->b()I

    move-result v0

    invoke-virtual {p4, v0}, Ll9/o$a;->g(I)Ll9/o$a;

    move-result-object p4

    check-cast p4, Ll9/g$b;

    invoke-virtual {v1}, Ll9/o;->c()J

    move-result-wide v2

    invoke-virtual {p4, v2, v3}, Ll9/o$a;->h(J)Ll9/o$a;

    move-result-object p4

    check-cast p4, Ll9/g$b;

    invoke-virtual {v1}, Ll9/g;->e()I

    move-result v0

    invoke-virtual {p4, v0}, Ll9/g$b;->m(I)Ll9/g$b;

    move-result-object p4

    invoke-virtual {v1}, Ll9/g;->f()I

    move-result v0

    sub-int/2addr v0, p5

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p4, v0}, Ll9/g$b;->n(I)Ll9/g$b;

    move-result-object p4

    invoke-virtual {v1}, Ll9/o;->a()I

    move-result v0

    invoke-virtual {p4, v0}, Ll9/o$a;->f(I)Ll9/o$a;

    move-result-object p4

    check-cast p4, Ll9/g$b;

    invoke-virtual {p4}, Ll9/g$b;->k()Ll9/o;

    move-result-object p4

    check-cast p4, Ll9/g;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll9/u;

    invoke-static {p2, v0, p3, p4}, Ll9/v;->b(Ll9/k;Ll9/u;Ll9/u;Ll9/o;)Ll9/u;

    move-result-object p3

    new-instance v0, Ll9/u;

    invoke-virtual {p3}, Ll9/u;->a()I

    move-result v1

    add-int/2addr v1, p5

    invoke-virtual {p3}, Ll9/u;->b()[B

    move-result-object p3

    invoke-direct {v0, v1, p3}, Ll9/u;-><init>(I[B)V

    new-instance p3, Ll9/g$b;

    invoke-direct {p3}, Ll9/g$b;-><init>()V

    invoke-virtual {p4}, Ll9/o;->b()I

    move-result v1

    invoke-virtual {p3, v1}, Ll9/o$a;->g(I)Ll9/o$a;

    move-result-object p3

    check-cast p3, Ll9/g$b;

    invoke-virtual {p4}, Ll9/o;->c()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Ll9/o$a;->h(J)Ll9/o$a;

    move-result-object p3

    check-cast p3, Ll9/g$b;

    invoke-virtual {p4}, Ll9/g;->e()I

    move-result v1

    add-int/2addr v1, p5

    invoke-virtual {p3, v1}, Ll9/g$b;->m(I)Ll9/g$b;

    move-result-object p3

    invoke-virtual {p4}, Ll9/g;->f()I

    move-result p5

    invoke-virtual {p3, p5}, Ll9/g$b;->n(I)Ll9/g$b;

    move-result-object p3

    invoke-virtual {p4}, Ll9/o;->a()I

    move-result p4

    invoke-virtual {p3, p4}, Ll9/o$a;->f(I)Ll9/o$a;

    move-result-object p3

    check-cast p3, Ll9/g$b;

    invoke-virtual {p3}, Ll9/g$b;->k()Ll9/o;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Ll9/g;

    move-object p3, v0

    goto/16 :goto_0

    :cond_0
    iget-object p4, p0, Ll9/c;->tailNode:Ll9/u;

    if-nez p4, :cond_1

    iput-object p3, p0, Ll9/c;->tailNode:Ll9/u;

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p4}, Ll9/u;->a()I

    move-result p4

    invoke-virtual {p3}, Ll9/u;->a()I

    move-result v0

    if-ne p4, v0, :cond_2

    new-instance p1, Ll9/g$b;

    invoke-direct {p1}, Ll9/g$b;-><init>()V

    invoke-virtual {v1}, Ll9/o;->b()I

    move-result p4

    invoke-virtual {p1, p4}, Ll9/o$a;->g(I)Ll9/o$a;

    move-result-object p1

    check-cast p1, Ll9/g$b;

    invoke-virtual {v1}, Ll9/o;->c()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ll9/o$a;->h(J)Ll9/o$a;

    move-result-object p1

    check-cast p1, Ll9/g$b;

    invoke-virtual {v1}, Ll9/g;->e()I

    move-result p4

    invoke-virtual {p1, p4}, Ll9/g$b;->m(I)Ll9/g$b;

    move-result-object p1

    invoke-virtual {v1}, Ll9/g;->f()I

    move-result p4

    sub-int/2addr p4, p5

    div-int/lit8 p4, p4, 0x2

    invoke-virtual {p1, p4}, Ll9/g$b;->n(I)Ll9/g$b;

    move-result-object p1

    invoke-virtual {v1}, Ll9/o;->a()I

    move-result p4

    invoke-virtual {p1, p4}, Ll9/o$a;->f(I)Ll9/o$a;

    move-result-object p1

    check-cast p1, Ll9/g$b;

    invoke-virtual {p1}, Ll9/g$b;->k()Ll9/o;

    move-result-object p1

    check-cast p1, Ll9/g;

    iget-object p4, p0, Ll9/c;->tailNode:Ll9/u;

    invoke-static {p2, p4, p3, p1}, Ll9/v;->b(Ll9/k;Ll9/u;Ll9/u;Ll9/o;)Ll9/u;

    move-result-object p2

    new-instance p3, Ll9/u;

    iget-object p4, p0, Ll9/c;->tailNode:Ll9/u;

    invoke-virtual {p4}, Ll9/u;->a()I

    move-result p4

    add-int/2addr p4, p5

    invoke-virtual {p2}, Ll9/u;->b()[B

    move-result-object p2

    invoke-direct {p3, p4, p2}, Ll9/u;-><init>(I[B)V

    iput-object p3, p0, Ll9/c;->tailNode:Ll9/u;

    new-instance p2, Ll9/g$b;

    invoke-direct {p2}, Ll9/g$b;-><init>()V

    invoke-virtual {p1}, Ll9/o;->b()I

    move-result p4

    invoke-virtual {p2, p4}, Ll9/o$a;->g(I)Ll9/o$a;

    move-result-object p2

    check-cast p2, Ll9/g$b;

    invoke-virtual {p1}, Ll9/o;->c()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ll9/o$a;->h(J)Ll9/o$a;

    move-result-object p2

    check-cast p2, Ll9/g$b;

    invoke-virtual {p1}, Ll9/g;->e()I

    move-result p4

    add-int/2addr p4, p5

    invoke-virtual {p2, p4}, Ll9/g$b;->m(I)Ll9/g$b;

    move-result-object p2

    invoke-virtual {p1}, Ll9/g;->f()I

    move-result p4

    invoke-virtual {p2, p4}, Ll9/g$b;->n(I)Ll9/g$b;

    move-result-object p2

    invoke-virtual {p1}, Ll9/o;->a()I

    move-result p1

    invoke-virtual {p2, p1}, Ll9/o$a;->f(I)Ll9/o$a;

    move-result-object p1

    check-cast p1, Ll9/g$b;

    invoke-virtual {p1}, Ll9/g$b;->k()Ll9/o;

    move-result-object p1

    check-cast p1, Ll9/g;

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object p1, p0, Ll9/c;->tailNode:Ll9/u;

    invoke-virtual {p1}, Ll9/u;->a()I

    move-result p1

    iget p2, p0, Ll9/c;->initialHeight:I

    if-ne p1, p2, :cond_3

    iput-boolean p5, p0, Ll9/c;->finished:Z

    goto :goto_2

    :cond_3
    invoke-virtual {p3}, Ll9/u;->a()I

    move-result p1

    iput p1, p0, Ll9/c;->height:I

    iget p1, p0, Ll9/c;->nextIndex:I

    add-int/2addr p1, p5

    iput p1, p0, Ll9/c;->nextIndex:I

    :goto_2
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "finished or not initialized"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "otsHashAddress == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
