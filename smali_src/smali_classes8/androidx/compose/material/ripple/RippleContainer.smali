.class public final Landroidx/compose/material/ripple/RippleContainer;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRippleContainer.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RippleContainer.android.kt\nandroidx/compose/material/ripple/RippleContainer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,185:1\n1#2:186\n*E\n"
.end annotation


# instance fields
.field private final MaxRippleHosts:I

.field private nextHostIndex:I

.field private final rippleHostMap:Landroidx/compose/material/ripple/RippleHostMap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rippleHosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/material/ripple/RippleHostView;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final unusedRippleHosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/material/ripple/RippleHostView;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 9
    const/4 v0, 0x5

    .line 10
    .line 11
    iput v0, p0, Landroidx/compose/material/ripple/RippleContainer;->MaxRippleHosts:I

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    iput-object v0, p0, Landroidx/compose/material/ripple/RippleContainer;->rippleHosts:Ljava/util/List;

    .line 19
    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    iput-object v1, p0, Landroidx/compose/material/ripple/RippleContainer;->unusedRippleHosts:Ljava/util/List;

    .line 26
    .line 27
    new-instance v2, Landroidx/compose/material/ripple/RippleHostMap;

    .line 28
    .line 29
    .line 30
    invoke-direct {v2}, Landroidx/compose/material/ripple/RippleHostMap;-><init>()V

    .line 31
    .line 32
    iput-object v2, p0, Landroidx/compose/material/ripple/RippleContainer;->rippleHostMap:Landroidx/compose/material/ripple/RippleHostMap;

    .line 33
    const/4 v2, 0x0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 37
    .line 38
    new-instance v2, Landroidx/compose/material/ripple/RippleHostView;

    .line 39
    .line 40
    .line 41
    invoke-direct {v2, p1}, Landroidx/compose/material/ripple/RippleHostView;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    const/4 p1, 0x1

    .line 52
    .line 53
    iput p1, p0, Landroidx/compose/material/ripple/RippleContainer;->nextHostIndex:I

    .line 54
    .line 55
    sget p1, Landroidx/compose/ui/R$id;->hide_in_inspector_tag:I

    .line 56
    .line 57
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 61
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;)V
    .locals 2
    .param p1    # Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->n()V

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/material/ripple/RippleContainer;->rippleHostMap:Landroidx/compose/material/ripple/RippleHostMap;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/compose/material/ripple/RippleHostMap;->b(Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;)Landroidx/compose/material/ripple/RippleHostView;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/compose/material/ripple/RippleHostView;->d()V

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/compose/material/ripple/RippleContainer;->rippleHostMap:Landroidx/compose/material/ripple/RippleHostMap;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Landroidx/compose/material/ripple/RippleHostMap;->c(Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;)V

    .line 25
    .line 26
    iget-object p1, p0, Landroidx/compose/material/ripple/RippleContainer;->unusedRippleHosts:Ljava/util/List;

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_0
    return-void
.end method

.method public final b(Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;)Landroidx/compose/material/ripple/RippleHostView;
    .locals 3
    .param p1    # Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/material/ripple/RippleContainer;->rippleHostMap:Landroidx/compose/material/ripple/RippleHostMap;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/compose/material/ripple/RippleHostMap;->b(Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;)Landroidx/compose/material/ripple/RippleHostView;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    return-object v0

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/compose/material/ripple/RippleContainer;->unusedRippleHosts:Ljava/util/List;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/collections/t;->L(Ljava/util/List;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Landroidx/compose/material/ripple/RippleHostView;

    .line 23
    .line 24
    if-nez v0, :cond_4

    .line 25
    .line 26
    iget v0, p0, Landroidx/compose/material/ripple/RippleContainer;->nextHostIndex:I

    .line 27
    .line 28
    iget-object v1, p0, Landroidx/compose/material/ripple/RippleContainer;->rippleHosts:Ljava/util/List;

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Lkotlin/collections/t;->o(Ljava/util/List;)I

    .line 32
    move-result v1

    .line 33
    .line 34
    if-le v0, v1, :cond_1

    .line 35
    .line 36
    new-instance v0, Landroidx/compose/material/ripple/RippleHostView;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    const-string v2, "context"

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1}, Landroidx/compose/material/ripple/RippleHostView;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 52
    .line 53
    iget-object v1, p0, Landroidx/compose/material/ripple/RippleContainer;->rippleHosts:Ljava/util/List;

    .line 54
    .line 55
    check-cast v1, Ljava/util/Collection;

    .line 56
    .line 57
    .line 58
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_1
    iget-object v0, p0, Landroidx/compose/material/ripple/RippleContainer;->rippleHosts:Ljava/util/List;

    .line 62
    .line 63
    iget v1, p0, Landroidx/compose/material/ripple/RippleContainer;->nextHostIndex:I

    .line 64
    .line 65
    .line 66
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    check-cast v0, Landroidx/compose/material/ripple/RippleHostView;

    .line 70
    .line 71
    iget-object v1, p0, Landroidx/compose/material/ripple/RippleContainer;->rippleHostMap:Landroidx/compose/material/ripple/RippleHostMap;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v0}, Landroidx/compose/material/ripple/RippleHostMap;->a(Landroidx/compose/material/ripple/RippleHostView;)Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->n()V

    .line 81
    .line 82
    iget-object v2, p0, Landroidx/compose/material/ripple/RippleContainer;->rippleHostMap:Landroidx/compose/material/ripple/RippleHostMap;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v1}, Landroidx/compose/material/ripple/RippleHostMap;->c(Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Landroidx/compose/material/ripple/RippleHostView;->d()V

    .line 89
    .line 90
    :cond_2
    :goto_0
    iget v1, p0, Landroidx/compose/material/ripple/RippleContainer;->nextHostIndex:I

    .line 91
    .line 92
    iget v2, p0, Landroidx/compose/material/ripple/RippleContainer;->MaxRippleHosts:I

    .line 93
    .line 94
    add-int/lit8 v2, v2, -0x1

    .line 95
    .line 96
    if-ge v1, v2, :cond_3

    .line 97
    .line 98
    add-int/lit8 v1, v1, 0x1

    .line 99
    .line 100
    iput v1, p0, Landroidx/compose/material/ripple/RippleContainer;->nextHostIndex:I

    .line 101
    goto :goto_1

    .line 102
    :cond_3
    const/4 v1, 0x0

    .line 103
    .line 104
    iput v1, p0, Landroidx/compose/material/ripple/RippleContainer;->nextHostIndex:I

    .line 105
    .line 106
    :cond_4
    :goto_1
    iget-object v1, p0, Landroidx/compose/material/ripple/RippleContainer;->rippleHostMap:Landroidx/compose/material/ripple/RippleHostMap;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, p1, v0}, Landroidx/compose/material/ripple/RippleHostMap;->d(Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;Landroidx/compose/material/ripple/RippleHostView;)V

    .line 110
    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 5
    return-void
.end method
