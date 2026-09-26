.class Landroidx/databinding/ListChangeRegistry$1;
.super Landroidx/databinding/CallbackRegistry$NotifierCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ListChangeRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/databinding/CallbackRegistry$NotifierCallback<",
        "Landroidx/databinding/ObservableList$OnListChangedCallback;",
        "Landroidx/databinding/ObservableList;",
        "Landroidx/databinding/ListChangeRegistry$ListChanges;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/databinding/CallbackRegistry$NotifierCallback;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/databinding/ObservableList$OnListChangedCallback;

    .line 3
    .line 4
    check-cast p2, Landroidx/databinding/ObservableList;

    .line 5
    .line 6
    check-cast p4, Landroidx/databinding/ListChangeRegistry$ListChanges;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/databinding/ListChangeRegistry$1;->b(Landroidx/databinding/ObservableList$OnListChangedCallback;Landroidx/databinding/ObservableList;ILandroidx/databinding/ListChangeRegistry$ListChanges;)V

    .line 10
    return-void
.end method

.method public b(Landroidx/databinding/ObservableList$OnListChangedCallback;Landroidx/databinding/ObservableList;ILandroidx/databinding/ListChangeRegistry$ListChanges;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-eq p3, v0, :cond_3

    .line 4
    const/4 v0, 0x2

    .line 5
    .line 6
    if-eq p3, v0, :cond_2

    .line 7
    const/4 v0, 0x3

    .line 8
    .line 9
    if-eq p3, v0, :cond_1

    .line 10
    const/4 v0, 0x4

    .line 11
    .line 12
    if-eq p3, v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroidx/databinding/ObservableList$OnListChangedCallback;->a(Landroidx/databinding/ObservableList;)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget p3, p4, Landroidx/databinding/ListChangeRegistry$ListChanges;->start:I

    .line 19
    .line 20
    iget p4, p4, Landroidx/databinding/ListChangeRegistry$ListChanges;->count:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2, p3, p4}, Landroidx/databinding/ObservableList$OnListChangedCallback;->h(Landroidx/databinding/ObservableList;II)V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    iget p3, p4, Landroidx/databinding/ListChangeRegistry$ListChanges;->start:I

    .line 27
    .line 28
    iget v0, p4, Landroidx/databinding/ListChangeRegistry$ListChanges;->to:I

    .line 29
    .line 30
    iget p4, p4, Landroidx/databinding/ListChangeRegistry$ListChanges;->count:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2, p3, v0, p4}, Landroidx/databinding/ObservableList$OnListChangedCallback;->g(Landroidx/databinding/ObservableList;III)V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_2
    iget p3, p4, Landroidx/databinding/ListChangeRegistry$ListChanges;->start:I

    .line 37
    .line 38
    iget p4, p4, Landroidx/databinding/ListChangeRegistry$ListChanges;->count:I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2, p3, p4}, Landroidx/databinding/ObservableList$OnListChangedCallback;->f(Landroidx/databinding/ObservableList;II)V

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_3
    iget p3, p4, Landroidx/databinding/ListChangeRegistry$ListChanges;->start:I

    .line 45
    .line 46
    iget p4, p4, Landroidx/databinding/ListChangeRegistry$ListChanges;->count:I

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2, p3, p4}, Landroidx/databinding/ObservableList$OnListChangedCallback;->e(Landroidx/databinding/ObservableList;II)V

    .line 50
    :goto_0
    return-void
.end method
