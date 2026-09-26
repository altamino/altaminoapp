.class final Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3$2$1;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/p<",
        "Lkotlinx/coroutines/o0;",
        "Lkotlin/coroutines/d<",
        "-",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.compose.ui.text.font.FontListFontFamilyTypefaceAdapter$preload$3$2$1"
    f = "FontListFontFamilyTypefaceAdapter.kt"
    l = {
        0x69
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $font:Landroidx/compose/ui/text/font/Font;

.field final synthetic $resourceLoader:Landroidx/compose/ui/text/font/PlatformFontLoader;

.field label:I

.field final synthetic this$0:Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;


# direct methods
.method constructor <init>(Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/PlatformFontLoader;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;",
            "Landroidx/compose/ui/text/font/Font;",
            "Landroidx/compose/ui/text/font/PlatformFontLoader;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3$2$1;->this$0:Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;

    iput-object p2, p0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3$2$1;->$font:Landroidx/compose/ui/text/font/Font;

    iput-object p3, p0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3$2$1;->$resourceLoader:Landroidx/compose/ui/text/font/PlatformFontLoader;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d<",
            "*>;)",
            "Lkotlin/coroutines/d<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3$2$1;

    iget-object v0, p0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3$2$1;->this$0:Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;

    iget-object v1, p0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3$2$1;->$font:Landroidx/compose/ui/text/font/Font;

    iget-object v2, p0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3$2$1;->$resourceLoader:Landroidx/compose/ui/text/font/PlatformFontLoader;

    invoke-direct {p1, v0, v1, v2, p2}, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3$2$1;-><init>(Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/PlatformFontLoader;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3$2$1;->invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/o0;",
            "Lkotlin/coroutines/d<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3$2$1;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget v1, p0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3$2$1;->label:I

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p1

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    iget-object p1, p0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3$2$1;->this$0:Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;->a(Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;)Landroidx/compose/ui/text/font/AsyncTypefaceCache;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    iget-object v4, p0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3$2$1;->$font:Landroidx/compose/ui/text/font/Font;

    .line 35
    .line 36
    iget-object v5, p0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3$2$1;->$resourceLoader:Landroidx/compose/ui/text/font/PlatformFontLoader;

    .line 37
    const/4 v6, 0x1

    .line 38
    .line 39
    new-instance v7, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3$2$1$1;

    .line 40
    const/4 p1, 0x0

    .line 41
    .line 42
    .line 43
    invoke-direct {v7, v4, v5, p1}, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3$2$1$1;-><init>(Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/PlatformFontLoader;Lkotlin/coroutines/d;)V

    .line 44
    .line 45
    iput v2, p0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3$2$1;->label:I

    .line 46
    move-object v8, p0

    .line 47
    .line 48
    .line 49
    invoke-virtual/range {v3 .. v8}, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->g(Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/PlatformFontLoader;ZLe8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    if-ne p1, v0, :cond_2

    .line 53
    return-object v0

    .line 54
    :cond_2
    :goto_0
    return-object p1
.end method
