.class public abstract Lcom/google/common/collect/b;
.super Lcom/google/common/collect/l1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/l1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private state:Lcom/google/common/collect/b$b;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/common/collect/l1;-><init>()V

    .line 4
    .line 5
    sget-object v0, Lcom/google/common/collect/b$b;->NOT_READY:Lcom/google/common/collect/b$b;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/google/common/collect/b;->state:Lcom/google/common/collect/b$b;

    .line 8
    return-void
.end method

.method private c()Z
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/google/common/collect/b$b;->FAILED:Lcom/google/common/collect/b$b;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/google/common/collect/b;->state:Lcom/google/common/collect/b$b;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/common/collect/b;->a()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/common/collect/b;->next:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/common/collect/b;->state:Lcom/google/common/collect/b$b;

    .line 13
    .line 14
    sget-object v1, Lcom/google/common/collect/b$b;->DONE:Lcom/google/common/collect/b$b;

    .line 15
    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    sget-object v0, Lcom/google/common/collect/b$b;->READY:Lcom/google/common/collect/b$b;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/google/common/collect/b;->state:Lcom/google/common/collect/b$b;

    .line 21
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    return v0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected final b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/google/common/collect/b$b;->DONE:Lcom/google/common/collect/b$b;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/google/common/collect/b;->state:Lcom/google/common/collect/b$b;

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0
.end method

.method public final hasNext()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/common/collect/b;->state:Lcom/google/common/collect/b$b;

    .line 3
    .line 4
    sget-object v1, Lcom/google/common/collect/b$b;->FAILED:Lcom/google/common/collect/b$b;

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    move v0, v3

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v2

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/o;->p(Z)V

    .line 15
    .line 16
    sget-object v0, Lcom/google/common/collect/b$a;->$SwitchMap$com$google$common$collect$AbstractIterator$State:[I

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/common/collect/b;->state:Lcom/google/common/collect/b$b;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 22
    move-result v1

    .line 23
    .line 24
    aget v0, v0, v1

    .line 25
    .line 26
    if-eq v0, v3, :cond_2

    .line 27
    const/4 v1, 0x2

    .line 28
    .line 29
    if-eq v0, v1, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/google/common/collect/b;->c()Z

    .line 33
    move-result v0

    .line 34
    return v0

    .line 35
    :cond_1
    return v3

    .line 36
    :cond_2
    return v2
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/b;->hasNext()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/google/common/collect/b$b;->NOT_READY:Lcom/google/common/collect/b$b;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/common/collect/b;->state:Lcom/google/common/collect/b$b;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/common/collect/b;->next:Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/google/common/collect/r0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    iput-object v1, p0, Lcom/google/common/collect/b;->next:Ljava/lang/Object;

    .line 20
    return-object v0

    .line 21
    .line 22
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 26
    throw v0
.end method
