.class public final Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/font/PlatformResolveInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;

.field private static final Default:Landroidx/compose/ui/text/font/PlatformResolveInterceptor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;->$$INSTANCE:Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;

    .line 8
    .line 9
    new-instance v0, Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion$Default$1;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion$Default$1;-><init>()V

    .line 13
    .line 14
    sput-object v0, Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;->Default:Landroidx/compose/ui/text/font/PlatformResolveInterceptor;

    .line 15
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
.method public final a()Landroidx/compose/ui/text/font/PlatformResolveInterceptor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;->Default:Landroidx/compose/ui/text/font/PlatformResolveInterceptor;

    return-object v0
.end method
