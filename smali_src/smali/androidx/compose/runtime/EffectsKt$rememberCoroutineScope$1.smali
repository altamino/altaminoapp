.class public final Landroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lkotlin/coroutines/h;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEffects.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n*L\n1#1,483:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1;

    invoke-direct {v0}, Landroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1;-><init>()V

    sput-object v0, Landroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1;->INSTANCE:Landroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Lkotlin/coroutines/h;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    .line 3
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1;->b()Lkotlin/coroutines/h;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
