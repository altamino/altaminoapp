.class public final Landroidx/compose/foundation/text/KeyboardActions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/KeyboardActions$Companion;
    }
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/foundation/text/KeyboardActions$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Default:Landroidx/compose/foundation/text/KeyboardActions;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final onDone:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final onGo:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final onNext:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final onPrevious:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final onSearch:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final onSend:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/foundation/text/KeyboardActions$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/KeyboardActions$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/foundation/text/KeyboardActions;->Companion:Landroidx/compose/foundation/text/KeyboardActions$Companion;

    .line 9
    .line 10
    new-instance v0, Landroidx/compose/foundation/text/KeyboardActions;

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v8, 0x0

    .line 17
    .line 18
    const/16 v9, 0x3f

    .line 19
    const/4 v10, 0x0

    .line 20
    move-object v2, v0

    .line 21
    .line 22
    .line 23
    invoke-direct/range {v2 .. v10}, Landroidx/compose/foundation/text/KeyboardActions;-><init>(Le8/l;Le8/l;Le8/l;Le8/l;Le8/l;Le8/l;ILkotlin/jvm/internal/k;)V

    .line 24
    .line 25
    sput-object v0, Landroidx/compose/foundation/text/KeyboardActions;->Default:Landroidx/compose/foundation/text/KeyboardActions;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/text/KeyboardActions;-><init>(Le8/l;Le8/l;Le8/l;Le8/l;Le8/l;Le8/l;ILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Le8/l;Le8/l;Le8/l;Le8/l;Le8/l;Le8/l;)V
    .locals 0
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lw7/l0;",
            ">;",
            "Le8/l<",
            "-",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lw7/l0;",
            ">;",
            "Le8/l<",
            "-",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lw7/l0;",
            ">;",
            "Le8/l<",
            "-",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lw7/l0;",
            ">;",
            "Le8/l<",
            "-",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lw7/l0;",
            ">;",
            "Le8/l<",
            "-",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/KeyboardActions;->onDone:Le8/l;

    iput-object p2, p0, Landroidx/compose/foundation/text/KeyboardActions;->onGo:Le8/l;

    iput-object p3, p0, Landroidx/compose/foundation/text/KeyboardActions;->onNext:Le8/l;

    iput-object p4, p0, Landroidx/compose/foundation/text/KeyboardActions;->onPrevious:Le8/l;

    iput-object p5, p0, Landroidx/compose/foundation/text/KeyboardActions;->onSearch:Le8/l;

    iput-object p6, p0, Landroidx/compose/foundation/text/KeyboardActions;->onSend:Le8/l;

    return-void
.end method

.method public synthetic constructor <init>(Le8/l;Le8/l;Le8/l;Le8/l;Le8/l;Le8/l;ILkotlin/jvm/internal/k;)V
    .locals 5

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p8, v0

    goto :goto_0

    :cond_0
    move-object p8, p1

    :goto_0
    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, p3

    :goto_2
    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    move-object v3, v0

    goto :goto_3

    :cond_3
    move-object v3, p4

    :goto_3
    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    move-object v4, v0

    goto :goto_4

    :cond_4
    move-object v4, p5

    :goto_4
    and-int/lit8 p1, p7, 0x20

    if-eqz p1, :cond_5

    move-object p7, v0

    goto :goto_5

    :cond_5
    move-object p7, p6

    :goto_5
    move-object p1, p0

    move-object p2, p8

    move-object p3, v1

    move-object p4, v2

    move-object p5, v3

    move-object p6, v4

    .line 3
    invoke-direct/range {p1 .. p7}, Landroidx/compose/foundation/text/KeyboardActions;-><init>(Le8/l;Le8/l;Le8/l;Le8/l;Le8/l;Le8/l;)V

    return-void
.end method

.method public static final synthetic a()Landroidx/compose/foundation/text/KeyboardActions;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/text/KeyboardActions;->Default:Landroidx/compose/foundation/text/KeyboardActions;

    return-object v0
.end method


# virtual methods
.method public final b()Le8/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/l<",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/KeyboardActions;->onDone:Le8/l;

    return-object v0
.end method

.method public final c()Le8/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/l<",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/KeyboardActions;->onGo:Le8/l;

    return-object v0
.end method

.method public final d()Le8/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/l<",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/KeyboardActions;->onNext:Le8/l;

    return-object v0
.end method

.method public final e()Le8/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/l<",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/KeyboardActions;->onPrevious:Le8/l;

    return-object v0
.end method

.method public final f()Le8/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/l<",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/KeyboardActions;->onSearch:Le8/l;

    return-object v0
.end method

.method public final g()Le8/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/l<",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/KeyboardActions;->onSend:Le8/l;

    return-object v0
.end method
