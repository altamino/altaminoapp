.class public Landroidx/work/impl/OperationImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/Operation;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# instance fields
.field private final mOperationFuture:Landroidx/work/impl/utils/futures/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/impl/utils/futures/SettableFuture<",
            "Landroidx/work/Operation$State$SUCCESS;",
            ">;"
        }
    .end annotation
.end field

.field private final mOperationState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroidx/work/Operation$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/work/impl/OperationImpl;->mOperationState:Landroidx/lifecycle/MutableLiveData;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroidx/work/impl/utils/futures/SettableFuture;->s()Landroidx/work/impl/utils/futures/SettableFuture;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/work/impl/OperationImpl;->mOperationFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 17
    .line 18
    sget-object v0, Landroidx/work/Operation;->IN_PROGRESS:Landroidx/work/Operation$State$IN_PROGRESS;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroidx/work/impl/OperationImpl;->b(Landroidx/work/Operation$State;)V

    .line 22
    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/util/concurrent/k;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/k<",
            "Landroidx/work/Operation$State$SUCCESS;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/OperationImpl;->mOperationFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    return-object v0
.end method

.method public b(Landroidx/work/Operation$State;)V
    .locals 1
    .param p1    # Landroidx/work/Operation$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/work/impl/OperationImpl;->mOperationState:Landroidx/lifecycle/MutableLiveData;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->m(Ljava/lang/Object;)V

    .line 6
    .line 7
    instance-of v0, p1, Landroidx/work/Operation$State$SUCCESS;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/work/impl/OperationImpl;->mOperationFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 12
    .line 13
    check-cast p1, Landroidx/work/Operation$State$SUCCESS;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroidx/work/impl/utils/futures/SettableFuture;->o(Ljava/lang/Object;)Z

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    instance-of v0, p1, Landroidx/work/Operation$State$FAILURE;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    check-cast p1, Landroidx/work/Operation$State$FAILURE;

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/work/impl/OperationImpl;->mOperationFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/work/Operation$State$FAILURE;->a()Ljava/lang/Throwable;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Landroidx/work/impl/utils/futures/SettableFuture;->p(Ljava/lang/Throwable;)Z

    .line 33
    :cond_1
    :goto_0
    return-void
.end method
