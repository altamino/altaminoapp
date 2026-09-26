.class final Landroidx/compose/ui/text/SaversKt$ParagraphStyleSaver$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


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
        "Le8/l<",
        "Ljava/lang/Object;",
        "Landroidx/compose/ui/text/ParagraphStyle;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSavers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Savers.kt\nandroidx/compose/ui/text/SaversKt$ParagraphStyleSaver$2\n+ 2 Savers.kt\nandroidx/compose/ui/text/SaversKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,398:1\n70#2:399\n70#2:401\n55#2,2:403\n55#2,2:406\n1#3:400\n1#3:402\n1#3:405\n1#3:408\n*S KotlinDebug\n*F\n+ 1 Savers.kt\nandroidx/compose/ui/text/SaversKt$ParagraphStyleSaver$2\n*L\n190#1:399\n191#1:401\n192#1:403,2\n193#1:406,2\n190#1:400\n191#1:402\n192#1:405\n193#1:408\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/SaversKt$ParagraphStyleSaver$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/SaversKt$ParagraphStyleSaver$2;

    invoke-direct {v0}, Landroidx/compose/ui/text/SaversKt$ParagraphStyleSaver$2;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/SaversKt$ParagraphStyleSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$ParagraphStyleSaver$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Landroidx/compose/ui/text/ParagraphStyle;
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "it"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    check-cast p1, Ljava/util/List;

    .line 8
    .line 9
    new-instance v7, Landroidx/compose/ui/text/ParagraphStyle;

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    check-cast v0, Landroidx/compose/ui/text/style/TextAlign;

    .line 20
    move-object v2, v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v2, v1

    .line 23
    :goto_0
    const/4 v0, 0x1

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    check-cast v0, Landroidx/compose/ui/text/style/TextDirection;

    .line 32
    move-object v3, v0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move-object v3, v1

    .line 35
    :goto_1
    const/4 v0, 0x2

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    sget-object v4, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    .line 42
    .line 43
    .line 44
    invoke-static {v4}, Landroidx/compose/ui/text/SaversKt;->q(Landroidx/compose/ui/unit/TextUnit$Companion;)Landroidx/compose/runtime/saveable/Saver;

    .line 45
    move-result-object v4

    .line 46
    .line 47
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v5}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    move-result v6

    .line 52
    .line 53
    if-eqz v6, :cond_3

    .line 54
    :cond_2
    move-object v0, v1

    .line 55
    goto :goto_2

    .line 56
    .line 57
    :cond_3
    if-eqz v0, :cond_2

    .line 58
    .line 59
    .line 60
    invoke-interface {v4, v0}, Landroidx/compose/runtime/saveable/Saver;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    check-cast v0, Landroidx/compose/ui/unit/TextUnit;

    .line 64
    .line 65
    .line 66
    :goto_2
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Landroidx/compose/ui/unit/TextUnit;->k()J

    .line 70
    move-result-wide v8

    .line 71
    const/4 v0, 0x3

    .line 72
    .line 73
    .line 74
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    sget-object v0, Landroidx/compose/ui/text/style/TextIndent;->Companion:Landroidx/compose/ui/text/style/TextIndent$Companion;

    .line 78
    .line 79
    .line 80
    invoke-static {v0}, Landroidx/compose/ui/text/SaversKt;->p(Landroidx/compose/ui/text/style/TextIndent$Companion;)Landroidx/compose/runtime/saveable/Saver;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    .line 84
    invoke-static {p1, v5}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    move-result v4

    .line 86
    .line 87
    if-eqz v4, :cond_5

    .line 88
    :cond_4
    move-object v5, v1

    .line 89
    goto :goto_3

    .line 90
    .line 91
    :cond_5
    if-eqz p1, :cond_4

    .line 92
    .line 93
    .line 94
    invoke-interface {v0, p1}, Landroidx/compose/runtime/saveable/Saver;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    move-result-object p1

    .line 96
    .line 97
    check-cast p1, Landroidx/compose/ui/text/style/TextIndent;

    .line 98
    move-object v5, p1

    .line 99
    :goto_3
    const/4 v6, 0x0

    .line 100
    move-object v0, v7

    .line 101
    move-object v1, v2

    .line 102
    move-object v2, v3

    .line 103
    move-wide v3, v8

    .line 104
    .line 105
    .line 106
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/ParagraphStyle;-><init>(Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Lkotlin/jvm/internal/k;)V

    .line 107
    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/SaversKt$ParagraphStyleSaver$2;->a(Ljava/lang/Object;)Landroidx/compose/ui/text/ParagraphStyle;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
