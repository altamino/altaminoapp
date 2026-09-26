.class public final Lcom/narvii/master/viewmodel/MasterViewModel$Companion$factory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/viewmodel/MasterViewModel$Companion;->factory(Lcom/narvii/master/viewmodel/repository/AccountRepository;Landroid/content/SharedPreferences;)Landroidx/lifecycle/ViewModelProvider$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $accountRepository:Lcom/narvii/master/viewmodel/repository/AccountRepository;

.field final synthetic $sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/narvii/master/viewmodel/repository/AccountRepository;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/viewmodel/MasterViewModel$Companion$factory$1;->$accountRepository:Lcom/narvii/master/viewmodel/repository/AccountRepository;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/master/viewmodel/MasterViewModel$Companion$factory$1;->$sharedPreferences:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/narvii/master/viewmodel/MasterViewModel;

    iget-object v0, p0, Lcom/narvii/master/viewmodel/MasterViewModel$Companion$factory$1;->$accountRepository:Lcom/narvii/master/viewmodel/repository/AccountRepository;

    iget-object v1, p0, Lcom/narvii/master/viewmodel/MasterViewModel$Companion$factory$1;->$sharedPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p1, v0, v1}, Lcom/narvii/master/viewmodel/MasterViewModel;-><init>(Lcom/narvii/master/viewmodel/repository/AccountRepository;Landroid/content/SharedPreferences;)V

    return-object p1
.end method

.method public bridge synthetic create(Ljava/lang/Class;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/viewmodel/CreationExtras;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/lifecycle/j;->b(Landroidx/lifecycle/ViewModelProvider$Factory;Ljava/lang/Class;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    return-object p1
.end method
