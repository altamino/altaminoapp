.class public final Landroidx/compose/ui/text/platform/extensions/LocaleExtensions_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/compose/ui/text/intl/Locale;)Ljava/util/Locale;
    .locals 1
    .param p0    # Landroidx/compose/ui/text/intl/Locale;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/text/intl/Locale;->a()Landroidx/compose/ui/text/intl/PlatformLocale;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    check-cast p0, Landroidx/compose/ui/text/intl/AndroidLocale;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/ui/text/intl/AndroidLocale;->b()Ljava/util/Locale;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
