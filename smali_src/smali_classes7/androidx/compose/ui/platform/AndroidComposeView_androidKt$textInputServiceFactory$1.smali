.class final Landroidx/compose/ui/platform/AndroidComposeView_androidKt$textInputServiceFactory$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/AndroidComposeView_androidKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/ui/text/input/PlatformTextInputService;",
        "Landroidx/compose/ui/text/input/TextInputService;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/platform/AndroidComposeView_androidKt$textInputServiceFactory$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeView_androidKt$textInputServiceFactory$1;

    invoke-direct {v0}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt$textInputServiceFactory$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/AndroidComposeView_androidKt$textInputServiceFactory$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeView_androidKt$textInputServiceFactory$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/text/input/PlatformTextInputService;)Landroidx/compose/ui/text/input/TextInputService;
    .locals 1
    .param p1    # Landroidx/compose/ui/text/input/PlatformTextInputService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "it"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/ui/text/input/TextInputService;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p1}, Landroidx/compose/ui/text/input/TextInputService;-><init>(Landroidx/compose/ui/text/input/PlatformTextInputService;)V

    .line 11
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/text/input/PlatformTextInputService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt$textInputServiceFactory$1;->a(Landroidx/compose/ui/text/input/PlatformTextInputService;)Landroidx/compose/ui/text/input/TextInputService;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
