.class public abstract Landroidx/compose/ui/text/font/FontFamily;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/font/FontFamily$Resolver;,
        Landroidx/compose/ui/text/font/FontFamily$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/text/font/FontFamily$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Cursive:Landroidx/compose/ui/text/font/GenericFontFamily;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Default:Landroidx/compose/ui/text/font/SystemFontFamily;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Monospace:Landroidx/compose/ui/text/font/GenericFontFamily;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SansSerif:Landroidx/compose/ui/text/font/GenericFontFamily;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Serif:Landroidx/compose/ui/text/font/GenericFontFamily;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final canLoadSynchronously:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/text/font/FontFamily$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/compose/ui/text/font/FontFamily$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/text/font/FontFamily;->Companion:Landroidx/compose/ui/text/font/FontFamily$Companion;

    .line 9
    .line 10
    new-instance v0, Landroidx/compose/ui/text/font/DefaultFontFamily;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/compose/ui/text/font/DefaultFontFamily;-><init>()V

    .line 14
    .line 15
    sput-object v0, Landroidx/compose/ui/text/font/FontFamily;->Default:Landroidx/compose/ui/text/font/SystemFontFamily;

    .line 16
    .line 17
    new-instance v0, Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 18
    .line 19
    const-string v1, "sans-serif"

    .line 20
    .line 21
    const-string v2, "FontFamily.SansSerif"

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/text/font/GenericFontFamily;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    sput-object v0, Landroidx/compose/ui/text/font/FontFamily;->SansSerif:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 27
    .line 28
    new-instance v0, Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 29
    .line 30
    const-string v1, "serif"

    .line 31
    .line 32
    const-string v2, "FontFamily.Serif"

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/text/font/GenericFontFamily;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    sput-object v0, Landroidx/compose/ui/text/font/FontFamily;->Serif:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 38
    .line 39
    new-instance v0, Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 40
    .line 41
    const-string v1, "monospace"

    .line 42
    .line 43
    const-string v2, "FontFamily.Monospace"

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/text/font/GenericFontFamily;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    sput-object v0, Landroidx/compose/ui/text/font/FontFamily;->Monospace:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 49
    .line 50
    new-instance v0, Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 51
    .line 52
    const-string v1, "cursive"

    .line 53
    .line 54
    const-string v2, "FontFamily.Cursive"

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/text/font/GenericFontFamily;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    sput-object v0, Landroidx/compose/ui/text/font/FontFamily;->Cursive:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 60
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/ui/text/font/FontFamily;->canLoadSynchronously:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/font/FontFamily;-><init>(Z)V

    return-void
.end method

.method public static final synthetic c()Landroidx/compose/ui/text/font/GenericFontFamily;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/text/font/FontFamily;->Cursive:Landroidx/compose/ui/text/font/GenericFontFamily;

    return-object v0
.end method

.method public static final synthetic e()Landroidx/compose/ui/text/font/SystemFontFamily;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/text/font/FontFamily;->Default:Landroidx/compose/ui/text/font/SystemFontFamily;

    return-object v0
.end method

.method public static final synthetic f()Landroidx/compose/ui/text/font/GenericFontFamily;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/text/font/FontFamily;->Monospace:Landroidx/compose/ui/text/font/GenericFontFamily;

    return-object v0
.end method

.method public static final synthetic g()Landroidx/compose/ui/text/font/GenericFontFamily;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/text/font/FontFamily;->SansSerif:Landroidx/compose/ui/text/font/GenericFontFamily;

    return-object v0
.end method

.method public static final synthetic j()Landroidx/compose/ui/text/font/GenericFontFamily;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/text/font/FontFamily;->Serif:Landroidx/compose/ui/text/font/GenericFontFamily;

    return-object v0
.end method
