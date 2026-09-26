.class public abstract Lcom/google/android/exoplayer2/source/j1;
.super Lcom/google/android/exoplayer2/source/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/source/g<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final CHILD_SOURCE_ID:Ljava/lang/Void;


# instance fields
.field protected final mediaSource:Lcom/google/android/exoplayer2/source/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/exoplayer2/source/b0;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/g;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/j1;->mediaSource:Lcom/google/android/exoplayer2/source/b0;

    .line 6
    return-void
.end method


# virtual methods
.method protected bridge synthetic A(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/source/b0$b;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Void;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/j1;->H(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/source/b0$b;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected bridge synthetic B(Ljava/lang/Object;J)J
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Void;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/j1;->J(Ljava/lang/Void;J)J

    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method protected bridge synthetic C(Ljava/lang/Object;I)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Void;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/j1;->L(Ljava/lang/Void;I)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method protected bridge synthetic E(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/b0;Lcom/google/android/exoplayer2/z3;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Void;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/j1;->N(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/b0;Lcom/google/android/exoplayer2/z3;)V

    .line 6
    return-void
.end method

.method protected G(Lcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/source/b0$b;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    return-object p1
.end method

.method protected final H(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/source/b0$b;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/source/j1;->G(Lcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/source/b0$b;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method protected I(J)J
    .locals 0

    .line 1
    return-wide p1
.end method

.method protected final J(Ljava/lang/Void;J)J
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer2/source/j1;->I(J)J

    .line 4
    move-result-wide p1

    .line 5
    return-wide p1
.end method

.method protected K(I)I
    .locals 0

    .line 1
    return p1
.end method

.method protected final L(Ljava/lang/Void;I)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/source/j1;->K(I)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method protected M(Lcom/google/android/exoplayer2/z3;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->x(Lcom/google/android/exoplayer2/z3;)V

    .line 4
    return-void
.end method

.method protected final N(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/b0;Lcom/google/android/exoplayer2/z3;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/source/j1;->M(Lcom/google/android/exoplayer2/z3;)V

    .line 4
    return-void
.end method

.method protected final O()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/google/android/exoplayer2/source/j1;->CHILD_SOURCE_ID:Ljava/lang/Void;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/j1;->mediaSource:Lcom/google/android/exoplayer2/source/b0;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/g;->F(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/b0;)V

    .line 8
    return-void
.end method

.method protected P()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/j1;->O()V

    .line 4
    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/y;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j1;->mediaSource:Lcom/google/android/exoplayer2/source/b0;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/b0;->c(Lcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/y;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public f(Lcom/google/android/exoplayer2/source/y;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j1;->mediaSource:Lcom/google/android/exoplayer2/source/b0;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/b0;->f(Lcom/google/android/exoplayer2/source/y;)V

    .line 6
    return-void
.end method

.method public j()Lcom/google/android/exoplayer2/i2;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j1;->mediaSource:Lcom/google/android/exoplayer2/source/b0;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/b0;->j()Lcom/google/android/exoplayer2/i2;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public o()Lcom/google/android/exoplayer2/z3;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j1;->mediaSource:Lcom/google/android/exoplayer2/source/b0;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/b0;->o()Lcom/google/android/exoplayer2/z3;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public r()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j1;->mediaSource:Lcom/google/android/exoplayer2/source/b0;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/b0;->r()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected final w(Lcom/google/android/exoplayer2/upstream/m0;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/upstream/m0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/g;->w(Lcom/google/android/exoplayer2/upstream/m0;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/j1;->P()V

    .line 7
    return-void
.end method
