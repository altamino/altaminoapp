.class final Landroidx/compose/ui/text/android/HorizontalPositionCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cachedKey:I

.field private cachedValue:F

.field private final layout:Landroidx/compose/ui/text/android/TextLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/android/TextLayout;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/text/android/TextLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "layout"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/compose/ui/text/android/HorizontalPositionCache;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 11
    const/4 p1, -0x1

    .line 12
    .line 13
    iput p1, p0, Landroidx/compose/ui/text/android/HorizontalPositionCache;->cachedKey:I

    .line 14
    return-void
.end method
