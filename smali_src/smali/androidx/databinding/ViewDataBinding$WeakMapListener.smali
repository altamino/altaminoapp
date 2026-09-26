.class Landroidx/databinding/ViewDataBinding$WeakMapListener;
.super Landroidx/databinding/ObservableMap$OnMapChangedCallback;
.source "SourceFile"

# interfaces
.implements Landroidx/databinding/ObservableReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakMapListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/databinding/ObservableMap$OnMapChangedCallback;",
        "Landroidx/databinding/ObservableReference<",
        "Landroidx/databinding/ObservableMap;",
        ">;"
    }
.end annotation


# instance fields
.field final mListener:Landroidx/databinding/WeakListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/WeakListener<",
            "Landroidx/databinding/ObservableMap;",
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
    invoke-direct {p0}, Landroidx/databinding/ObservableMap$OnMapChangedCallback;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/databinding/WeakListener;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1, p2, p0, p3}, Landroidx/databinding/WeakListener;-><init>(Landroidx/databinding/ViewDataBinding;ILandroidx/databinding/ObservableReference;Ljava/lang/ref/ReferenceQueue;)V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$WeakMapListener;->mListener:Landroidx/databinding/WeakListener;

    .line 11
    return-void
.end method


# virtual methods
.method public a(Landroidx/databinding/ObservableMap;Ljava/lang/Object;)V
    .locals 2

    .line 1
    .line 2
    iget-object p2, p0, Landroidx/databinding/ViewDataBinding$WeakMapListener;->mListener:Landroidx/databinding/WeakListener;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroidx/databinding/WeakListener;->a()Landroidx/databinding/ViewDataBinding;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$WeakMapListener;->mListener:Landroidx/databinding/WeakListener;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/databinding/WeakListener;->b()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$WeakMapListener;->mListener:Landroidx/databinding/WeakListener;

    .line 20
    .line 21
    iget v0, v0, Landroidx/databinding/WeakListener;->mLocalFieldId:I

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0, p1, v1}, Landroidx/databinding/ViewDataBinding;->handleFieldChange(ILjava/lang/Object;I)V

    .line 26
    :cond_1
    :goto_0
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
    check-cast p1, Landroidx/databinding/ObservableMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$WeakMapListener;->g(Landroidx/databinding/ObservableMap;)V

    .line 6
    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/databinding/ObservableMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$WeakMapListener;->e(Landroidx/databinding/ObservableMap;)V

    .line 6
    return-void
.end method

.method public e(Landroidx/databinding/ObservableMap;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Landroidx/databinding/ObservableMap;->b(Landroidx/databinding/ObservableMap$OnMapChangedCallback;)V

    .line 4
    return-void
.end method

.method public f()Landroidx/databinding/WeakListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/WeakListener<",
            "Landroidx/databinding/ObservableMap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$WeakMapListener;->mListener:Landroidx/databinding/WeakListener;

    return-object v0
.end method

.method public g(Landroidx/databinding/ObservableMap;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Landroidx/databinding/ObservableMap;->c(Landroidx/databinding/ObservableMap$OnMapChangedCallback;)V

    .line 4
    return-void
.end method
