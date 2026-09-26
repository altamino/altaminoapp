.class final Landroidx/compose/ui/text/SaversKt$LocaleListSaver$2;
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
        "Landroidx/compose/ui/text/intl/LocaleList;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSavers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Savers.kt\nandroidx/compose/ui/text/SaversKt$LocaleListSaver$2\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 Savers.kt\nandroidx/compose/ui/text/SaversKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,398:1\n126#2,3:399\n32#2,4:402\n129#2:406\n130#2:410\n37#2:411\n131#2:412\n55#3,2:407\n1#4:409\n*S KotlinDebug\n*F\n+ 1 Savers.kt\nandroidx/compose/ui/text/SaversKt$LocaleListSaver$2\n*L\n388#1:399,3\n388#1:402,4\n388#1:406\n388#1:410\n388#1:411\n388#1:412\n388#1:407,2\n388#1:409\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/SaversKt$LocaleListSaver$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/SaversKt$LocaleListSaver$2;

    invoke-direct {v0}, Landroidx/compose/ui/text/SaversKt$LocaleListSaver$2;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/SaversKt$LocaleListSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$LocaleListSaver$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Landroidx/compose/ui/text/intl/LocaleList;
    .locals 7
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
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 13
    move-result v1

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    .line 23
    :goto_0
    if-ge v2, v1, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    sget-object v4, Landroidx/compose/ui/text/intl/Locale;->Companion:Landroidx/compose/ui/text/intl/Locale$Companion;

    .line 30
    .line 31
    .line 32
    invoke-static {v4}, Landroidx/compose/ui/text/SaversKt;->k(Landroidx/compose/ui/text/intl/Locale$Companion;)Landroidx/compose/runtime/saveable/Saver;

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
    move-result v5

    .line 40
    const/4 v6, 0x0

    .line 41
    .line 42
    if-eqz v5, :cond_0

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_0
    if-eqz v3, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-interface {v4, v3}, Landroidx/compose/runtime/saveable/Saver;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object v3

    .line 50
    move-object v6, v3

    .line 51
    .line 52
    check-cast v6, Landroidx/compose/ui/text/intl/Locale;

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_1
    invoke-static {v6}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    add-int/lit8 v2, v2, 0x1

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_2
    new-instance p1, Landroidx/compose/ui/text/intl/LocaleList;

    .line 64
    .line 65
    .line 66
    invoke-direct {p1, v0}, Landroidx/compose/ui/text/intl/LocaleList;-><init>(Ljava/util/List;)V

    .line 67
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/SaversKt$LocaleListSaver$2;->a(Ljava/lang/Object;)Landroidx/compose/ui/text/intl/LocaleList;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
