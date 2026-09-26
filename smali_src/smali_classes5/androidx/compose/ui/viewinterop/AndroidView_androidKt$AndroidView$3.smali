.class final Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->a(Le8/l;Landroidx/compose/ui/Modifier;Le8/l;Landroidx/compose/runtime/Composer;II)V
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
    value = "SMAP\nAndroidView.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidView.android.kt\nandroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3\n+ 2 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope\n*L\n1#1,185:1\n62#2,5:186\n*S KotlinDebug\n*F\n+ 1 AndroidView.android.kt\nandroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3\n*L\n148#1:186,5\n*E\n"
.end annotation


# instance fields
.field final synthetic $stateKey:Ljava/lang/String;

.field final synthetic $stateRegistry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

.field final synthetic $viewFactoryHolderRef:Landroidx/compose/ui/node/Ref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/node/Ref<",
            "Landroidx/compose/ui/viewinterop/ViewFactoryHolder<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/lang/String;Landroidx/compose/ui/node/Ref;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/saveable/SaveableStateRegistry;",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/node/Ref<",
            "Landroidx/compose/ui/viewinterop/ViewFactoryHolder<",
            "TT;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3;->$stateRegistry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    iput-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3;->$stateKey:Ljava/lang/String;

    iput-object p3, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3;->$viewFactoryHolderRef:Landroidx/compose/ui/node/Ref;

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
    new-instance p1, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$valueProvider$1;

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3;->$viewFactoryHolderRef:Landroidx/compose/ui/node/Ref;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$valueProvider$1;-><init>(Landroidx/compose/ui/node/Ref;)V

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3;->$stateRegistry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3;->$stateKey:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1, p1}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->d(Ljava/lang/String;Le8/a;)Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    new-instance v0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$invoke$$inlined$onDispose$1;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p1}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$invoke$$inlined$onDispose$1;-><init>(Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;)V

    .line 26
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3;->a(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
