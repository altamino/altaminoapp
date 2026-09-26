.class final Landroidx/compose/ui/text/font/FontFamilyResolverImpl$resolve$result$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->h(Landroidx/compose/ui/text/font/TypefaceRequest;)Landroidx/compose/runtime/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Le8/l<",
        "-",
        "Landroidx/compose/ui/text/font/TypefaceResult;",
        "+",
        "Lw7/l0;",
        ">;",
        "Landroidx/compose/ui/text/font/TypefaceResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $typefaceRequest:Landroidx/compose/ui/text/font/TypefaceRequest;

.field final synthetic this$0:Landroidx/compose/ui/text/font/FontFamilyResolverImpl;


# direct methods
.method constructor <init>(Landroidx/compose/ui/text/font/FontFamilyResolverImpl;Landroidx/compose/ui/text/font/TypefaceRequest;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$resolve$result$1;->this$0:Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    iput-object p2, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$resolve$result$1;->$typefaceRequest:Landroidx/compose/ui/text/font/TypefaceRequest;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Le8/l;)Landroidx/compose/ui/text/font/TypefaceResult;
    .locals 4
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/text/font/TypefaceResult;",
            "Lw7/l0;",
            ">;)",
            "Landroidx/compose/ui/text/font/TypefaceResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "onAsyncCompletion"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$resolve$result$1;->this$0:Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->c(Landroidx/compose/ui/text/font/FontFamilyResolverImpl;)Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$resolve$result$1;->$typefaceRequest:Landroidx/compose/ui/text/font/TypefaceRequest;

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$resolve$result$1;->this$0:Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->f()Landroidx/compose/ui/text/font/PlatformFontLoader;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    iget-object v3, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$resolve$result$1;->this$0:Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    .line 22
    .line 23
    .line 24
    invoke-static {v3}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->b(Landroidx/compose/ui/text/font/FontFamilyResolverImpl;)Le8/l;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2, p1, v3}, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;->c(Landroidx/compose/ui/text/font/TypefaceRequest;Landroidx/compose/ui/text/font/PlatformFontLoader;Le8/l;Le8/l;)Landroidx/compose/ui/text/font/TypefaceResult;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$resolve$result$1;->this$0:Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->d(Landroidx/compose/ui/text/font/FontFamilyResolverImpl;)Landroidx/compose/ui/text/font/PlatformFontFamilyTypefaceAdapter;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    iget-object v1, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$resolve$result$1;->$typefaceRequest:Landroidx/compose/ui/text/font/TypefaceRequest;

    .line 40
    .line 41
    iget-object v2, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$resolve$result$1;->this$0:Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->f()Landroidx/compose/ui/text/font/PlatformFontLoader;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    iget-object v3, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$resolve$result$1;->this$0:Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    .line 48
    .line 49
    .line 50
    invoke-static {v3}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->b(Landroidx/compose/ui/text/font/FontFamilyResolverImpl;)Le8/l;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1, v2, p1, v3}, Landroidx/compose/ui/text/font/PlatformFontFamilyTypefaceAdapter;->a(Landroidx/compose/ui/text/font/TypefaceRequest;Landroidx/compose/ui/text/font/PlatformFontLoader;Le8/l;Le8/l;)Landroidx/compose/ui/text/font/TypefaceResult;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    if-eqz v0, :cond_0

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    const-string v0, "Could not load font"

    .line 63
    .line 64
    .line 65
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    throw p1

    .line 67
    :cond_1
    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Le8/l;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$resolve$result$1;->a(Le8/l;)Landroidx/compose/ui/text/font/TypefaceResult;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
