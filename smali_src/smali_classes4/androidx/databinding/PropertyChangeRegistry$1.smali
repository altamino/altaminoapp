.class Landroidx/databinding/PropertyChangeRegistry$1;
.super Landroidx/databinding/CallbackRegistry$NotifierCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/PropertyChangeRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/databinding/CallbackRegistry$NotifierCallback<",
        "Landroidx/databinding/Observable$OnPropertyChangedCallback;",
        "Landroidx/databinding/Observable;",
        "Ljava/lang/Void;",
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
    check-cast p1, Landroidx/databinding/Observable$OnPropertyChangedCallback;

    .line 3
    .line 4
    check-cast p2, Landroidx/databinding/Observable;

    .line 5
    .line 6
    check-cast p4, Ljava/lang/Void;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/databinding/PropertyChangeRegistry$1;->b(Landroidx/databinding/Observable$OnPropertyChangedCallback;Landroidx/databinding/Observable;ILjava/lang/Void;)V

    .line 10
    return-void
.end method

.method public b(Landroidx/databinding/Observable$OnPropertyChangedCallback;Landroidx/databinding/Observable;ILjava/lang/Void;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2, p3}, Landroidx/databinding/Observable$OnPropertyChangedCallback;->e(Landroidx/databinding/Observable;I)V

    .line 4
    return-void
.end method
