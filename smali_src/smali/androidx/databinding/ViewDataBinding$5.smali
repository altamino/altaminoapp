.class Landroidx/databinding/ViewDataBinding$5;
.super Landroidx/databinding/CallbackRegistry$NotifierCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/databinding/CallbackRegistry$NotifierCallback<",
        "Landroidx/databinding/OnRebindCallback;",
        "Landroidx/databinding/ViewDataBinding;",
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
    check-cast p1, Landroidx/databinding/OnRebindCallback;

    .line 3
    .line 4
    check-cast p2, Landroidx/databinding/ViewDataBinding;

    .line 5
    .line 6
    check-cast p4, Ljava/lang/Void;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/databinding/ViewDataBinding$5;->b(Landroidx/databinding/OnRebindCallback;Landroidx/databinding/ViewDataBinding;ILjava/lang/Void;)V

    .line 10
    return-void
.end method

.method public b(Landroidx/databinding/OnRebindCallback;Landroidx/databinding/ViewDataBinding;ILjava/lang/Void;)V
    .locals 0

    .line 1
    const/4 p4, 0x1

    .line 2
    .line 3
    if-eq p3, p4, :cond_2

    .line 4
    const/4 p4, 0x2

    .line 5
    .line 6
    if-eq p3, p4, :cond_1

    .line 7
    const/4 p4, 0x3

    .line 8
    .line 9
    if-eq p3, p4, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/databinding/OnRebindCallback;->a(Landroidx/databinding/ViewDataBinding;)V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-virtual {p1, p2}, Landroidx/databinding/OnRebindCallback;->b(Landroidx/databinding/ViewDataBinding;)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_2
    invoke-virtual {p1, p2}, Landroidx/databinding/OnRebindCallback;->c(Landroidx/databinding/ViewDataBinding;)Z

    .line 22
    move-result p1

    .line 23
    .line 24
    if-nez p1, :cond_3

    .line 25
    .line 26
    .line 27
    invoke-static {p2, p4}, Landroidx/databinding/ViewDataBinding;->access$002(Landroidx/databinding/ViewDataBinding;Z)Z

    .line 28
    :cond_3
    :goto_0
    return-void
.end method
