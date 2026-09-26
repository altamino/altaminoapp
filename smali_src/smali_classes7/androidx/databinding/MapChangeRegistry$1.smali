.class Landroidx/databinding/MapChangeRegistry$1;
.super Landroidx/databinding/CallbackRegistry$NotifierCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/MapChangeRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/databinding/CallbackRegistry$NotifierCallback<",
        "Landroidx/databinding/ObservableMap$OnMapChangedCallback;",
        "Landroidx/databinding/ObservableMap;",
        "Ljava/lang/Object;",
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
    check-cast p1, Landroidx/databinding/ObservableMap$OnMapChangedCallback;

    .line 3
    .line 4
    check-cast p2, Landroidx/databinding/ObservableMap;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/databinding/MapChangeRegistry$1;->b(Landroidx/databinding/ObservableMap$OnMapChangedCallback;Landroidx/databinding/ObservableMap;ILjava/lang/Object;)V

    .line 8
    return-void
.end method

.method public b(Landroidx/databinding/ObservableMap$OnMapChangedCallback;Landroidx/databinding/ObservableMap;ILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2, p4}, Landroidx/databinding/ObservableMap$OnMapChangedCallback;->a(Landroidx/databinding/ObservableMap;Ljava/lang/Object;)V

    .line 4
    return-void
.end method
