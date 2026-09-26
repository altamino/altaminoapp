.class public final Lcom/narvii/master/viewmodel/MasterViewModel$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/viewmodel/MasterViewModel;
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
    invoke-direct {p0}, Lcom/narvii/master/viewmodel/MasterViewModel$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final factory(Lcom/narvii/master/viewmodel/repository/AccountRepository;Landroid/content/SharedPreferences;)Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1
    .param p1    # Lcom/narvii/master/viewmodel/repository/AccountRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/SharedPreferences;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "accountRepository"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "sharedPreferences"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/master/viewmodel/MasterViewModel$Companion$factory$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p1, p2}, Lcom/narvii/master/viewmodel/MasterViewModel$Companion$factory$1;-><init>(Lcom/narvii/master/viewmodel/repository/AccountRepository;Landroid/content/SharedPreferences;)V

    .line 16
    return-object v0
.end method
