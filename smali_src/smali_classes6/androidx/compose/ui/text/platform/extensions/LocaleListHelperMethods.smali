.class public final Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocaleExtensions.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocaleExtensions.android.kt\nandroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,50:1\n1547#2:51\n1618#2,3:52\n1547#2:59\n1618#2,3:60\n37#3:55\n36#3,3:56\n37#3:63\n36#3,3:64\n*S KotlinDebug\n*F\n+ 1 LocaleExtensions.android.kt\nandroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods\n*L\n40#1:51\n40#1:52,3\n47#1:59\n47#1:60,3\n40#1:55\n40#1:56,3\n47#1:63\n47#1:64,3\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;

    invoke-direct {v0}, Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;->INSTANCE:Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/text/intl/LocaleList;)Ljava/lang/Object;
    .locals 2
    .param p1    # Landroidx/compose/ui/text/intl/LocaleList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "localeList"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    const/16 v1, 0xa

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v1}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 13
    move-result v1

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    check-cast v1, Landroidx/compose/ui/text/intl/Locale;

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Landroidx/compose/ui/text/platform/extensions/LocaleExtensions_androidKt;->a(Landroidx/compose/ui/text/intl/Locale;)Ljava/util/Locale;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p1, 0x0

    .line 42
    .line 43
    new-array p1, p1, [Ljava/util/Locale;

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    check-cast p1, [Ljava/util/Locale;

    .line 52
    array-length v0, p1

    .line 53
    .line 54
    .line 55
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    check-cast p1, [Ljava/util/Locale;

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Landroidx/compose/ui/text/platform/extensions/b;->a([Ljava/util/Locale;)Landroid/os/LocaleList;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Landroidx/compose/ui/text/platform/extensions/c;->a(Landroid/os/LocaleList;)Landroid/text/style/LocaleSpan;

    .line 66
    move-result-object p1

    .line 67
    return-object p1

    .line 68
    .line 69
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 70
    .line 71
    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 72
    .line 73
    .line 74
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 75
    throw p1
.end method

.method public final b(Landroidx/compose/ui/text/platform/AndroidTextPaint;Landroidx/compose/ui/text/intl/LocaleList;)V
    .locals 2
    .param p1    # Landroidx/compose/ui/text/platform/AndroidTextPaint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/intl/LocaleList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    const-string v0, "textPaint"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "localeList"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    const/16 v1, 0xa

    .line 15
    .line 16
    .line 17
    invoke-static {p2, v1}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v1

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    check-cast v1, Landroidx/compose/ui/text/intl/Locale;

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Landroidx/compose/ui/text/platform/extensions/LocaleExtensions_androidKt;->a(Landroidx/compose/ui/text/intl/Locale;)Ljava/util/Locale;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 p2, 0x0

    .line 47
    .line 48
    new-array p2, p2, [Ljava/util/Locale;

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 52
    move-result-object p2

    .line 53
    .line 54
    if-eqz p2, :cond_1

    .line 55
    .line 56
    check-cast p2, [Ljava/util/Locale;

    .line 57
    array-length v0, p2

    .line 58
    .line 59
    .line 60
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 61
    move-result-object p2

    .line 62
    .line 63
    check-cast p2, [Ljava/util/Locale;

    .line 64
    .line 65
    .line 66
    invoke-static {p2}, Landroidx/compose/ui/text/platform/extensions/b;->a([Ljava/util/Locale;)Landroid/os/LocaleList;

    .line 67
    move-result-object p2

    .line 68
    .line 69
    .line 70
    invoke-static {p1, p2}, Landroidx/compose/ui/text/platform/extensions/a;->a(Landroidx/compose/ui/text/platform/AndroidTextPaint;Landroid/os/LocaleList;)V

    .line 71
    return-void

    .line 72
    .line 73
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 74
    .line 75
    const-string p2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 76
    .line 77
    .line 78
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 79
    throw p1
.end method
