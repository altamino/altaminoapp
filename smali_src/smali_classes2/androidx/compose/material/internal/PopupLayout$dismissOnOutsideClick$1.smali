.class final Landroidx/compose/material/internal/PopupLayout$dismissOnOutsideClick$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/internal/PopupLayout;-><init>(Le8/a;Ljava/lang/String;Landroid/view/View;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/window/PopupPositionProvider;Ljava/util/UUID;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Landroidx/compose/ui/geometry/Offset;",
        "Landroidx/compose/ui/unit/IntRect;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/material/internal/PopupLayout$dismissOnOutsideClick$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material/internal/PopupLayout$dismissOnOutsideClick$1;

    invoke-direct {v0}, Landroidx/compose/material/internal/PopupLayout$dismissOnOutsideClick$1;-><init>()V

    sput-object v0, Landroidx/compose/material/internal/PopupLayout$dismissOnOutsideClick$1;->INSTANCE:Landroidx/compose/material/internal/PopupLayout$dismissOnOutsideClick$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/geometry/Offset;Landroidx/compose/ui/unit/IntRect;)Ljava/lang/Boolean;
    .locals 3
    .param p1    # Landroidx/compose/ui/geometry/Offset;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/unit/IntRect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "bounds"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset;->u()J

    .line 13
    move-result-wide v1

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 17
    move-result v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroidx/compose/ui/unit/IntRect;->c()I

    .line 21
    move-result v2

    .line 22
    int-to-float v2, v2

    .line 23
    .line 24
    cmpg-float v1, v1, v2

    .line 25
    .line 26
    if-ltz v1, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset;->u()J

    .line 30
    move-result-wide v1

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 34
    move-result v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Landroidx/compose/ui/unit/IntRect;->d()I

    .line 38
    move-result v2

    .line 39
    int-to-float v2, v2

    .line 40
    .line 41
    cmpl-float v1, v1, v2

    .line 42
    .line 43
    if-gtz v1, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset;->u()J

    .line 47
    move-result-wide v1

    .line 48
    .line 49
    .line 50
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 51
    move-result v1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Landroidx/compose/ui/unit/IntRect;->e()I

    .line 55
    move-result v2

    .line 56
    int-to-float v2, v2

    .line 57
    .line 58
    cmpg-float v1, v1, v2

    .line 59
    .line 60
    if-ltz v1, :cond_1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset;->u()J

    .line 64
    move-result-wide v1

    .line 65
    .line 66
    .line 67
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 68
    move-result p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Landroidx/compose/ui/unit/IntRect;->a()I

    .line 72
    move-result p2

    .line 73
    int-to-float p2, p2

    .line 74
    .line 75
    cmpl-float p1, p1, p2

    .line 76
    .line 77
    if-lez p1, :cond_2

    .line 78
    :cond_1
    const/4 v0, 0x1

    .line 79
    .line 80
    .line 81
    :cond_2
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 82
    move-result-object p1

    .line 83
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/ui/unit/IntRect;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/internal/PopupLayout$dismissOnOutsideClick$1;->a(Landroidx/compose/ui/geometry/Offset;Landroidx/compose/ui/unit/IntRect;)Ljava/lang/Boolean;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
