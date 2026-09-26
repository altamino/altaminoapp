.class final Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->o(JFZLkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.compose.foundation.layout.WindowInsetsNestedScrollConnection"
    f = "WindowInsetsConnection.android.kt"
    l = {
        0x130,
        0x14a,
        0x163
    }
    m = "fling-huYlsQE"
.end annotation


# instance fields
.field F$0:F

.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->this$0:Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->label:I

    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->this$0:Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->f(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;JFZLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
