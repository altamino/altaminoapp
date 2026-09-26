.class final Landroidx/compose/foundation/layout/ColumnKt$DefaultColumnMeasurePolicy$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/layout/ColumnKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/s<",
        "Ljava/lang/Integer;",
        "[I",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "Landroidx/compose/ui/unit/Density;",
        "[I",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColumn.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Column.kt\nandroidx/compose/foundation/layout/ColumnKt$DefaultColumnMeasurePolicy$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,247:1\n1#2:248\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/layout/ColumnKt$DefaultColumnMeasurePolicy$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/ColumnKt$DefaultColumnMeasurePolicy$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/ColumnKt$DefaultColumnMeasurePolicy$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/ColumnKt$DefaultColumnMeasurePolicy$1;->INSTANCE:Landroidx/compose/foundation/layout/ColumnKt$DefaultColumnMeasurePolicy$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(I[ILandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;[I)V
    .locals 1
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "size"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "<anonymous parameter 2>"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string p3, "density"

    .line 13
    .line 14
    .line 15
    invoke-static {p4, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string p3, "outPosition"

    .line 18
    .line 19
    .line 20
    invoke-static {p5, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    sget-object p3, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3}, Landroidx/compose/foundation/layout/Arrangement;->f()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 26
    move-result-object p3

    .line 27
    .line 28
    .line 29
    invoke-interface {p3, p4, p1, p2, p5}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->c(Landroidx/compose/ui/unit/Density;I[I[I)V

    .line 30
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Number;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 6
    move-result v1

    .line 7
    move-object v2, p2

    .line 8
    .line 9
    check-cast v2, [I

    .line 10
    move-object v3, p3

    .line 11
    .line 12
    check-cast v3, Landroidx/compose/ui/unit/LayoutDirection;

    .line 13
    move-object v4, p4

    .line 14
    .line 15
    check-cast v4, Landroidx/compose/ui/unit/Density;

    .line 16
    move-object v5, p5

    .line 17
    .line 18
    check-cast v5, [I

    .line 19
    move-object v0, p0

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/layout/ColumnKt$DefaultColumnMeasurePolicy$1;->a(I[ILandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;[I)V

    .line 23
    .line 24
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 25
    return-object p1
.end method
