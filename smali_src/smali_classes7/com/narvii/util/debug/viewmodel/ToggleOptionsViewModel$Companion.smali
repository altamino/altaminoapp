.class public final Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final factory(Lcom/narvii/util/debug/model/ToggleOptionsRepository;)Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1
    .param p1    # Lcom/narvii/util/debug/model/ToggleOptionsRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "toggleOptionsRepository"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel$Companion$factory$1;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p1}, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel$Companion$factory$1;-><init>(Lcom/narvii/util/debug/model/ToggleOptionsRepository;)V

    .line 12
    return-object v0
.end method
