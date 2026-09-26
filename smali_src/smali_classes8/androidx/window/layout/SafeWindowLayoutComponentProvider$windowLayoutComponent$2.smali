.class final Landroidx/window/layout/SafeWindowLayoutComponentProvider$windowLayoutComponent$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/layout/SafeWindowLayoutComponentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Landroidx/window/extensions/layout/WindowLayoutComponent;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/window/layout/SafeWindowLayoutComponentProvider$windowLayoutComponent$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$windowLayoutComponent$2;

    invoke-direct {v0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$windowLayoutComponent$2;-><init>()V

    sput-object v0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$windowLayoutComponent$2;->INSTANCE:Landroidx/window/layout/SafeWindowLayoutComponentProvider$windowLayoutComponent$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Landroidx/window/extensions/layout/WindowLayoutComponent;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-class v0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v2, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->INSTANCE:Landroidx/window/layout/SafeWindowLayoutComponentProvider;

    .line 12
    .line 13
    .line 14
    invoke-static {v2, v0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->a(Landroidx/window/layout/SafeWindowLayoutComponentProvider;Ljava/lang/ClassLoader;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    .line 20
    :try_start_0
    invoke-static {}, Landroidx/window/extensions/WindowExtensionsProvider;->getWindowExtensions()Landroidx/window/extensions/WindowExtensions;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Landroidx/window/extensions/WindowExtensions;->getWindowLayoutComponent()Landroidx/window/extensions/layout/WindowLayoutComponent;

    .line 25
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-object v0, v1

    .line 28
    .line 29
    check-cast v0, Landroidx/window/extensions/layout/WindowLayoutComponent;

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v0, v1

    .line 32
    .line 33
    check-cast v0, Landroidx/window/extensions/layout/WindowLayoutComponent;

    .line 34
    :goto_0
    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$windowLayoutComponent$2;->b()Landroidx/window/extensions/layout/WindowLayoutComponent;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
