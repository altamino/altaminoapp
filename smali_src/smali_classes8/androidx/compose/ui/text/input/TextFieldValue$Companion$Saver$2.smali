.class final Landroidx/compose/ui/text/input/TextFieldValue$Companion$Saver$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/input/TextFieldValue;
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
        "Landroidx/compose/ui/text/input/TextFieldValue;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldValue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldValue.kt\nandroidx/compose/ui/text/input/TextFieldValue$Companion$Saver$2\n+ 2 Savers.kt\nandroidx/compose/ui/text/SaversKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,201:1\n55#2,2:202\n55#2,2:205\n1#3:204\n1#3:207\n*S KotlinDebug\n*F\n+ 1 TextFieldValue.kt\nandroidx/compose/ui/text/input/TextFieldValue$Companion$Saver$2\n*L\n168#1:202,2\n169#1:205,2\n168#1:204\n169#1:207\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/input/TextFieldValue$Companion$Saver$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/input/TextFieldValue$Companion$Saver$2;

    invoke-direct {v0}, Landroidx/compose/ui/text/input/TextFieldValue$Companion$Saver$2;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/input/TextFieldValue$Companion$Saver$2;->INSTANCE:Landroidx/compose/ui/text/input/TextFieldValue$Companion$Saver$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Landroidx/compose/ui/text/input/TextFieldValue;
    .locals 8
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
    new-instance v7, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroidx/compose/ui/text/SaversKt;->d()Landroidx/compose/runtime/saveable/Saver;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result v3

    .line 25
    const/4 v4, 0x0

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    :cond_0
    move-object v1, v4

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_1
    if-eqz v0, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-interface {v1, v0}, Landroidx/compose/runtime/saveable/Saver;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    check-cast v0, Landroidx/compose/ui/text/AnnotatedString;

    .line 38
    move-object v1, v0

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 42
    const/4 v0, 0x1

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    sget-object v0, Landroidx/compose/ui/text/TextRange;->Companion:Landroidx/compose/ui/text/TextRange$Companion;

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Landroidx/compose/ui/text/SaversKt;->i(Landroidx/compose/ui/text/TextRange$Companion;)Landroidx/compose/runtime/saveable/Saver;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    move-result v2

    .line 57
    .line 58
    if-eqz v2, :cond_2

    .line 59
    goto :goto_1

    .line 60
    .line 61
    :cond_2
    if-eqz p1, :cond_3

    .line 62
    .line 63
    .line 64
    invoke-interface {v0, p1}, Landroidx/compose/runtime/saveable/Saver;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    move-result-object p1

    .line 66
    move-object v4, p1

    .line 67
    .line 68
    check-cast v4, Landroidx/compose/ui/text/TextRange;

    .line 69
    .line 70
    .line 71
    :cond_3
    :goto_1
    invoke-static {v4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Landroidx/compose/ui/text/TextRange;->r()J

    .line 75
    move-result-wide v2

    .line 76
    const/4 v4, 0x0

    .line 77
    const/4 v5, 0x4

    .line 78
    const/4 v6, 0x0

    .line 79
    move-object v0, v7

    .line 80
    .line 81
    .line 82
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextRange;ILkotlin/jvm/internal/k;)V

    .line 83
    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/input/TextFieldValue$Companion$Saver$2;->a(Ljava/lang/Object;)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
