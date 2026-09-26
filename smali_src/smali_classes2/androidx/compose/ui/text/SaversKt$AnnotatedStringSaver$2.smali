.class final Landroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$2;
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
        "Landroidx/compose/ui/text/AnnotatedString;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSavers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Savers.kt\nandroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$2\n+ 2 Savers.kt\nandroidx/compose/ui/text/SaversKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,398:1\n70#2:399\n55#2,2:401\n55#2,2:404\n55#2,2:407\n1#3:400\n1#3:403\n1#3:406\n1#3:409\n*S KotlinDebug\n*F\n+ 1 Savers.kt\nandroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$2\n*L\n85#1:399\n86#1:401,2\n87#1:404,2\n88#1:407,2\n85#1:400\n86#1:403\n87#1:406\n88#1:409\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$2;

    invoke-direct {v0}, Landroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$2;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Landroidx/compose/ui/text/AnnotatedString;
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
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString;

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    check-cast v1, Ljava/lang/String;

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v1, v2

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 25
    const/4 v3, 0x1

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    .line 32
    invoke-static {}, Landroidx/compose/ui/text/SaversKt;->a()Landroidx/compose/runtime/saveable/Saver;

    .line 33
    move-result-object v4

    .line 34
    .line 35
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    invoke-static {v3, v5}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    move-result v6

    .line 40
    .line 41
    if-eqz v6, :cond_2

    .line 42
    :cond_1
    move-object v3, v2

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_2
    if-eqz v3, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-interface {v4, v3}, Landroidx/compose/runtime/saveable/Saver;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    check-cast v3, Ljava/util/List;

    .line 52
    .line 53
    .line 54
    :goto_1
    invoke-static {v3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 55
    const/4 v4, 0x2

    .line 56
    .line 57
    .line 58
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object v4

    .line 60
    .line 61
    .line 62
    invoke-static {}, Landroidx/compose/ui/text/SaversKt;->a()Landroidx/compose/runtime/saveable/Saver;

    .line 63
    move-result-object v6

    .line 64
    .line 65
    .line 66
    invoke-static {v4, v5}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    move-result v7

    .line 68
    .line 69
    if-eqz v7, :cond_4

    .line 70
    :cond_3
    move-object v4, v2

    .line 71
    goto :goto_2

    .line 72
    .line 73
    :cond_4
    if-eqz v4, :cond_3

    .line 74
    .line 75
    .line 76
    invoke-interface {v6, v4}, Landroidx/compose/runtime/saveable/Saver;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    move-result-object v4

    .line 78
    .line 79
    check-cast v4, Ljava/util/List;

    .line 80
    .line 81
    .line 82
    :goto_2
    invoke-static {v4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 83
    const/4 v6, 0x3

    .line 84
    .line 85
    .line 86
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    .line 90
    invoke-static {}, Landroidx/compose/ui/text/SaversKt;->a()Landroidx/compose/runtime/saveable/Saver;

    .line 91
    move-result-object v6

    .line 92
    .line 93
    .line 94
    invoke-static {p1, v5}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    move-result v5

    .line 96
    .line 97
    if-eqz v5, :cond_5

    .line 98
    goto :goto_3

    .line 99
    .line 100
    :cond_5
    if-eqz p1, :cond_6

    .line 101
    .line 102
    .line 103
    invoke-interface {v6, p1}, Landroidx/compose/runtime/saveable/Saver;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    move-result-object p1

    .line 105
    move-object v2, p1

    .line 106
    .line 107
    check-cast v2, Ljava/util/List;

    .line 108
    .line 109
    .line 110
    :cond_6
    :goto_3
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    invoke-direct {v0, v1, v3, v4, v2}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 114
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$2;->a(Ljava/lang/Object;)Landroidx/compose/ui/text/AnnotatedString;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
