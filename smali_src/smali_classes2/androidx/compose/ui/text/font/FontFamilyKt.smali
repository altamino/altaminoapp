.class public final Landroidx/compose/ui/text/font/FontFamilyKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final varargs a([Landroidx/compose/ui/text/font/Font;)Landroidx/compose/ui/text/font/FontFamily;
    .locals 1
    .param p0    # [Landroidx/compose/ui/text/font/Font;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "fonts"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/ui/text/font/FontListFontFamily;

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lkotlin/collections/l;->c([Ljava/lang/Object;)Ljava/util/List;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p0}, Landroidx/compose/ui/text/font/FontListFontFamily;-><init>(Ljava/util/List;)V

    .line 15
    return-object v0
.end method
