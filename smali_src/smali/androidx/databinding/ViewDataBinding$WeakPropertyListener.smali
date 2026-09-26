.class Landroidx/databinding/ViewDataBinding$WeakPropertyListener;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "SourceFile"

# interfaces
.implements Landroidx/databinding/ObservableReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakPropertyListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/databinding/Observable$OnPropertyChangedCallback;",
        "Landroidx/databinding/ObservableReference<",
        "Landroidx/databinding/Observable;",
        ">;"
    }
.end annotation


# instance fields
.field final mListener:Landroidx/databinding/WeakListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/WeakListener<",
            "Landroidx/databinding/Observable;",
            ">;"
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
    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/databinding/WeakListener;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1, p2, p0, p3}, Landroidx/databinding/WeakListener;-><init>(Landroidx/databinding/ViewDataBinding;ILandroidx/databinding/ObservableReference;Ljava/lang/ref/ReferenceQueue;)V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$WeakPropertyListener;->mListener:Landroidx/databinding/WeakListener;

    .line 11
    return-void
.end method


# virtual methods
.method public b(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/databinding/Observable;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$WeakPropertyListener;->h(Landroidx/databinding/Observable;)V

    .line 6
    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/databinding/Observable;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$WeakPropertyListener;->f(Landroidx/databinding/Observable;)V

    .line 6
    return-void
.end method

.method public e(Landroidx/databinding/Observable;I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$WeakPropertyListener;->mListener:Landroidx/databinding/WeakListener;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/databinding/WeakListener;->a()Landroidx/databinding/ViewDataBinding;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding$WeakPropertyListener;->mListener:Landroidx/databinding/WeakListener;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/databinding/WeakListener;->b()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    check-cast v1, Landroidx/databinding/Observable;

    .line 18
    .line 19
    if-eq v1, p1, :cond_1

    .line 20
    return-void

    .line 21
    .line 22
    :cond_1
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding$WeakPropertyListener;->mListener:Landroidx/databinding/WeakListener;

    .line 23
    .line 24
    iget v1, v1, Landroidx/databinding/WeakListener;->mLocalFieldId:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, p1, p2}, Landroidx/databinding/ViewDataBinding;->handleFieldChange(ILjava/lang/Object;I)V

    .line 28
    return-void
.end method

.method public f(Landroidx/databinding/Observable;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Landroidx/databinding/Observable;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 4
    return-void
.end method

.method public g()Landroidx/databinding/WeakListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/WeakListener<",
            "Landroidx/databinding/Observable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$WeakPropertyListener;->mListener:Landroidx/databinding/WeakListener;

    return-object v0
.end method

.method public h(Landroidx/databinding/Observable;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Landroidx/databinding/Observable;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 4
    return-void
.end method
