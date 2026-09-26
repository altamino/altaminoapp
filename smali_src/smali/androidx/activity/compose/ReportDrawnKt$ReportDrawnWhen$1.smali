.class final Landroidx/activity/compose/ReportDrawnKt$ReportDrawnWhen$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/compose/ReportDrawnKt;->c(Le8/a;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/runtime/DisposableEffectScope;",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReportDrawn.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReportDrawn.kt\nandroidx/activity/compose/ReportDrawnKt$ReportDrawnWhen$1\n+ 2 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope\n*L\n1#1,176:1\n62#2,5:177\n62#2,5:182\n*S KotlinDebug\n*F\n+ 1 ReportDrawn.kt\nandroidx/activity/compose/ReportDrawnKt$ReportDrawnWhen$1\n*L\n135#1:177,5\n138#1:182,5\n*E\n"
.end annotation


# instance fields
.field final synthetic $fullyDrawnReporter:Landroidx/activity/FullyDrawnReporter;

.field final synthetic $predicate:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/activity/FullyDrawnReporter;Le8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/FullyDrawnReporter;",
            "Le8/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/activity/compose/ReportDrawnKt$ReportDrawnWhen$1;->$fullyDrawnReporter:Landroidx/activity/FullyDrawnReporter;

    iput-object p2, p0, Landroidx/activity/compose/ReportDrawnKt$ReportDrawnWhen$1;->$predicate:Le8/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 2
    .param p1    # Landroidx/compose/runtime/DisposableEffectScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$DisposableEffect"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/activity/compose/ReportDrawnKt$ReportDrawnWhen$1;->$fullyDrawnReporter:Landroidx/activity/FullyDrawnReporter;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/activity/FullyDrawnReporter;->e()Z

    .line 11
    move-result p1

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    new-instance p1, Landroidx/activity/compose/ReportDrawnKt$ReportDrawnWhen$1$invoke$$inlined$onDispose$1;

    .line 16
    .line 17
    .line 18
    invoke-direct {p1}, Landroidx/activity/compose/ReportDrawnKt$ReportDrawnWhen$1$invoke$$inlined$onDispose$1;-><init>()V

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance p1, Landroidx/activity/compose/ReportDrawnComposition;

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/activity/compose/ReportDrawnKt$ReportDrawnWhen$1;->$fullyDrawnReporter:Landroidx/activity/FullyDrawnReporter;

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/activity/compose/ReportDrawnKt$ReportDrawnWhen$1;->$predicate:Le8/a;

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, v0, v1}, Landroidx/activity/compose/ReportDrawnComposition;-><init>(Landroidx/activity/FullyDrawnReporter;Le8/a;)V

    .line 29
    .line 30
    new-instance v0, Landroidx/activity/compose/ReportDrawnKt$ReportDrawnWhen$1$invoke$$inlined$onDispose$2;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, p1}, Landroidx/activity/compose/ReportDrawnKt$ReportDrawnWhen$1$invoke$$inlined$onDispose$2;-><init>(Landroidx/activity/compose/ReportDrawnComposition;)V

    .line 34
    move-object p1, v0

    .line 35
    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/activity/compose/ReportDrawnKt$ReportDrawnWhen$1;->a(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
