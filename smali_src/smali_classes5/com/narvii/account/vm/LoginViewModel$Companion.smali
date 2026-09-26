.class public final Lcom/narvii/account/vm/LoginViewModel$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/account/vm/LoginViewModel;
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
    invoke-direct {p0}, Lcom/narvii/account/vm/LoginViewModel$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final factory(Lcom/narvii/security/KeyStoreService;)Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1
    .param p1    # Lcom/narvii/security/KeyStoreService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "keyStoreService"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/account/vm/LoginViewModel$Companion$factory$1;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p1}, Lcom/narvii/account/vm/LoginViewModel$Companion$factory$1;-><init>(Lcom/narvii/security/KeyStoreService;)V

    .line 11
    return-object v0
.end method
