.class Landroidx/databinding/ViewDataBinding$WeakListListener;
.super Landroidx/databinding/ObservableList$OnListChangedCallback;
.source "SourceFile"

# interfaces
.implements Landroidx/databinding/ObservableReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakListListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/databinding/ObservableList$OnListChangedCallback;",
        "Landroidx/databinding/ObservableReference<",
        "Landroidx/databinding/ObservableList;",
        ">;"
    }
.end annotation


# instance fields
.field final mListener:Landroidx/databinding/WeakListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/WeakListener<",
            "Landroidx/databinding/ObservableList;",
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
    invoke-direct {p0}, Landroidx/databinding/ObservableList$OnListChangedCallback;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/databinding/WeakListener;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1, p2, p0, p3}, Landroidx/databinding/WeakListener;-><init>(Landroidx/databinding/ViewDataBinding;ILandroidx/databinding/ObservableReference;Ljava/lang/ref/ReferenceQueue;)V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$WeakListListener;->mListener:Landroidx/databinding/WeakListener;

    .line 11
    return-void
.end method


# virtual methods
.method public a(Landroidx/databinding/ObservableList;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$WeakListListener;->mListener:Landroidx/databinding/WeakListener;

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
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding$WeakListListener;->mListener:Landroidx/databinding/WeakListener;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/databinding/WeakListener;->b()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    check-cast v1, Landroidx/databinding/ObservableList;

    .line 18
    .line 19
    if-eq v1, p1, :cond_1

    .line 20
    return-void

    .line 21
    .line 22
    :cond_1
    iget-object p1, p0, Landroidx/databinding/ViewDataBinding$WeakListListener;->mListener:Landroidx/databinding/WeakListener;

    .line 23
    .line 24
    iget p1, p1, Landroidx/databinding/WeakListener;->mLocalFieldId:I

    .line 25
    const/4 v2, 0x0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1, v1, v2}, Landroidx/databinding/ViewDataBinding;->handleFieldChange(ILjava/lang/Object;I)V

    .line 29
    return-void
.end method

.method public b(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/databinding/ObservableList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$WeakListListener;->k(Landroidx/databinding/ObservableList;)V

    .line 6
    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/databinding/ObservableList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$WeakListListener;->i(Landroidx/databinding/ObservableList;)V

    .line 6
    return-void
.end method

.method public e(Landroidx/databinding/ObservableList;II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$WeakListListener;->a(Landroidx/databinding/ObservableList;)V

    .line 4
    return-void
.end method

.method public f(Landroidx/databinding/ObservableList;II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$WeakListListener;->a(Landroidx/databinding/ObservableList;)V

    .line 4
    return-void
.end method

.method public g(Landroidx/databinding/ObservableList;III)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$WeakListListener;->a(Landroidx/databinding/ObservableList;)V

    .line 4
    return-void
.end method

.method public h(Landroidx/databinding/ObservableList;II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$WeakListListener;->a(Landroidx/databinding/ObservableList;)V

    .line 4
    return-void
.end method

.method public i(Landroidx/databinding/ObservableList;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Landroidx/databinding/ObservableList;->k(Landroidx/databinding/ObservableList$OnListChangedCallback;)V

    .line 4
    return-void
.end method

.method public j()Landroidx/databinding/WeakListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/WeakListener<",
            "Landroidx/databinding/ObservableList;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$WeakListListener;->mListener:Landroidx/databinding/WeakListener;

    return-object v0
.end method

.method public k(Landroidx/databinding/ObservableList;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Landroidx/databinding/ObservableList;->l(Landroidx/databinding/ObservableList$OnListChangedCallback;)V

    .line 4
    return-void
.end method
