.class public final Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Loading;
.super Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Loading"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Loading;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Loading;

    invoke-direct {v0}, Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Loading;-><init>()V

    sput-object v0, Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Loading;->INSTANCE:Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Loading;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState;-><init>(Lkotlin/jvm/internal/k;)V

    .line 5
    return-void
.end method
