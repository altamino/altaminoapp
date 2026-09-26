.class public final Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/intl/PlatformLocale;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/text/intl/AndroidLocale;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    const-string v2, "getDefault()"

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Landroidx/compose/ui/text/intl/AndroidLocale;-><init>(Ljava/util/Locale;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/collections/t;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public b(Ljava/lang/String;)Landroidx/compose/ui/text/intl/PlatformLocale;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "languageTag"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/ui/text/intl/AndroidLocale;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    const-string v1, "forLanguageTag(languageTag)"

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p1}, Landroidx/compose/ui/text/intl/AndroidLocale;-><init>(Ljava/util/Locale;)V

    .line 20
    return-object v0
.end method
