.class Landroidx/databinding/ViewDataBinding$LiveDataListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;
.implements Landroidx/databinding/ObservableReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LiveDataListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer;",
        "Landroidx/databinding/ObservableReference<",
        "Landroidx/lifecycle/LiveData<",
        "*>;>;"
    }
.end annotation


# instance fields
.field mLifecycleOwnerRef:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation
.end field

.field final mListener:Landroidx/databinding/WeakListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/WeakListener<",
            "Landroidx/lifecycle/LiveData<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ViewDataBinding;",
            "I",
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroidx/databinding/ViewDataBinding;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$LiveDataListener;->mLifecycleOwnerRef:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    new-instance v0, Landroidx/databinding/WeakListener;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p1, p2, p0, p3}, Landroidx/databinding/WeakListener;-><init>(Landroidx/databinding/ViewDataBinding;ILandroidx/databinding/ObservableReference;Ljava/lang/ref/ReferenceQueue;)V

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$LiveDataListener;->mListener:Landroidx/databinding/WeakListener;

    .line 14
    return-void
.end method

.method private e()Landroidx/lifecycle/LifecycleOwner;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$LiveDataListener;->mLifecycleOwnerRef:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    .line 13
    return-object v0
.end method


# virtual methods
.method public a(Landroidx/lifecycle/LiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/databinding/ViewDataBinding$LiveDataListener;->e()Landroidx/lifecycle/LifecycleOwner;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0, p0}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 10
    :cond_0
    return-void
.end method

.method public b(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/databinding/ViewDataBinding$LiveDataListener;->e()Landroidx/lifecycle/LifecycleOwner;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding$LiveDataListener;->mListener:Landroidx/databinding/WeakListener;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/databinding/WeakListener;->b()Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    check-cast v1, Landroidx/lifecycle/LiveData;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p0}, Landroidx/lifecycle/LiveData;->n(Landroidx/lifecycle/Observer;)V

    .line 20
    .line 21
    :cond_0
    if-eqz p1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1, p0}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 25
    .line 26
    :cond_1
    if-eqz p1, :cond_2

    .line 27
    .line 28
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 32
    .line 33
    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$LiveDataListener;->mLifecycleOwnerRef:Ljava/lang/ref/WeakReference;

    .line 34
    :cond_2
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$LiveDataListener;->g(Landroidx/lifecycle/LiveData;)V

    .line 6
    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$LiveDataListener;->a(Landroidx/lifecycle/LiveData;)V

    .line 6
    return-void
.end method

.method public f()Landroidx/databinding/WeakListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/WeakListener<",
            "Landroidx/lifecycle/LiveData<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$LiveDataListener;->mListener:Landroidx/databinding/WeakListener;

    return-object v0
.end method

.method public g(Landroidx/lifecycle/LiveData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->n(Landroidx/lifecycle/Observer;)V

    .line 4
    return-void
.end method

.method public onChanged(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Landroidx/databinding/ViewDataBinding$LiveDataListener;->mListener:Landroidx/databinding/WeakListener;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/databinding/WeakListener;->a()Landroidx/databinding/ViewDataBinding;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$LiveDataListener;->mListener:Landroidx/databinding/WeakListener;

    .line 11
    .line 12
    iget v1, v0, Landroidx/databinding/WeakListener;->mLocalFieldId:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/databinding/WeakListener;->b()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1, v0, v2}, Landroidx/databinding/ViewDataBinding;->handleFieldChange(ILjava/lang/Object;I)V

    .line 21
    :cond_0
    return-void
.end method
