.class final Landroidx/compose/foundation/text/TextFieldScrollerPosition$Companion$Saver$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/text/TextFieldScrollerPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Landroidx/compose/runtime/saveable/SaverScope;",
        "Landroidx/compose/foundation/text/TextFieldScrollerPosition;",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/text/TextFieldScrollerPosition$Companion$Saver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/text/TextFieldScrollerPosition$Companion$Saver$1;

    invoke-direct {v0}, Landroidx/compose/foundation/text/TextFieldScrollerPosition$Companion$Saver$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/text/TextFieldScrollerPosition$Companion$Saver$1;->INSTANCE:Landroidx/compose/foundation/text/TextFieldScrollerPosition$Companion$Saver$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/foundation/text/TextFieldScrollerPosition;)Ljava/util/List;
    .locals 3
    .param p1    # Landroidx/compose/runtime/saveable/SaverScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/text/TextFieldScrollerPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/saveable/SaverScope;",
            "Landroidx/compose/foundation/text/TextFieldScrollerPosition;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$listSaver"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "it"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const/4 p1, 0x2

    .line 12
    .line 13
    new-array p1, p1, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->d()F

    .line 17
    move-result v0

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    aput-object v0, p1, v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->f()Landroidx/compose/foundation/gestures/Orientation;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 31
    const/4 v2, 0x1

    .line 32
    .line 33
    if-ne p2, v0, :cond_0

    .line 34
    move v1, v2

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    aput-object p2, p1, v2

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lkotlin/collections/t;->p([Ljava/lang/Object;)Ljava/util/List;

    .line 44
    move-result-object p1

    .line 45
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/TextFieldScrollerPosition$Companion$Saver$1;->a(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/foundation/text/TextFieldScrollerPosition;)Ljava/util/List;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
