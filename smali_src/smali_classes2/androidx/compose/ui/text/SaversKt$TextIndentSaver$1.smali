.class final Landroidx/compose/ui/text/SaversKt$TextIndentSaver$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/SaversKt;
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
        "Landroidx/compose/ui/text/style/TextIndent;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/SaversKt$TextIndentSaver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/SaversKt$TextIndentSaver$1;

    invoke-direct {v0}, Landroidx/compose/ui/text/SaversKt$TextIndentSaver$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/SaversKt$TextIndentSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$TextIndentSaver$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/ui/text/style/TextIndent;)Ljava/lang/Object;
    .locals 5
    .param p1    # Landroidx/compose/runtime/saveable/SaverScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/style/TextIndent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$Saver"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "it"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x2

    .line 12
    .line 13
    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Landroidx/compose/ui/text/style/TextIndent;->b()J

    .line 17
    move-result-wide v1

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnit;->b(J)Landroidx/compose/ui/unit/TextUnit;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    sget-object v2, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    .line 24
    .line 25
    .line 26
    invoke-static {v2}, Landroidx/compose/ui/text/SaversKt;->q(Landroidx/compose/ui/unit/TextUnit$Companion;)Landroidx/compose/runtime/saveable/Saver;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v3, p1}, Landroidx/compose/ui/text/SaversKt;->t(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    const/4 v3, 0x0

    .line 33
    .line 34
    aput-object v1, v0, v3

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Landroidx/compose/ui/text/style/TextIndent;->c()J

    .line 38
    move-result-wide v3

    .line 39
    .line 40
    .line 41
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnit;->b(J)Landroidx/compose/ui/unit/TextUnit;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    .line 45
    invoke-static {v2}, Landroidx/compose/ui/text/SaversKt;->q(Landroidx/compose/ui/unit/TextUnit$Companion;)Landroidx/compose/runtime/saveable/Saver;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-static {p2, v1, p1}, Landroidx/compose/ui/text/SaversKt;->t(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 50
    move-result-object p1

    .line 51
    const/4 p2, 0x1

    .line 52
    .line 53
    aput-object p1, v0, p2

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lkotlin/collections/t;->g([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 57
    move-result-object p1

    .line 58
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/ui/text/style/TextIndent;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/SaversKt$TextIndentSaver$1;->a(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/ui/text/style/TextIndent;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
