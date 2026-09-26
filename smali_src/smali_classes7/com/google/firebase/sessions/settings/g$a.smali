.class final Lcom/google/firebase/sessions/settings/g$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/sessions/settings/g;-><init>(Landroidx/datastore/core/DataStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/p<",
        "Lkotlinx/coroutines/o0;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.google.firebase.sessions.settings.SettingsCache$1"
    f = "SettingsCache.kt"
    l = {
        0x2e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/google/firebase/sessions/settings/g;


# direct methods
.method constructor <init>(Lcom/google/firebase/sessions/settings/g;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/sessions/settings/g;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/google/firebase/sessions/settings/g$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/firebase/sessions/settings/g$a;->this$0:Lcom/google/firebase/sessions/settings/g;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d<",
            "*>;)",
            "Lkotlin/coroutines/d<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, Lcom/google/firebase/sessions/settings/g$a;

    iget-object v0, p0, Lcom/google/firebase/sessions/settings/g$a;->this$0:Lcom/google/firebase/sessions/settings/g;

    invoke-direct {p1, v0, p2}, Lcom/google/firebase/sessions/settings/g$a;-><init>(Lcom/google/firebase/sessions/settings/g;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/settings/g$a;->invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/o0;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/settings/g$a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/sessions/settings/g$a;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Lcom/google/firebase/sessions/settings/g$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget v1, p0, Lcom/google/firebase/sessions/settings/g$a;->label:I

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/g$a;->L$0:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lcom/google/firebase/sessions/settings/g;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p1

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    iget-object p1, p0, Lcom/google/firebase/sessions/settings/g$a;->this$0:Lcom/google/firebase/sessions/settings/g;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lcom/google/firebase/sessions/settings/g;->a(Lcom/google/firebase/sessions/settings/g;)Landroidx/datastore/core/DataStore;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-interface {v1}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/g;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    iput-object p1, p0, Lcom/google/firebase/sessions/settings/g$a;->L$0:Ljava/lang/Object;

    .line 43
    .line 44
    iput v2, p0, Lcom/google/firebase/sessions/settings/g$a;->label:I

    .line 45
    .line 46
    .line 47
    invoke-static {v1, p0}, Lkotlinx/coroutines/flow/i;->v(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    if-ne v1, v0, :cond_2

    .line 51
    return-object v0

    .line 52
    :cond_2
    move-object v0, p1

    .line 53
    move-object p1, v1

    .line 54
    .line 55
    :goto_0
    check-cast p1, Landroidx/datastore/preferences/core/Preferences;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroidx/datastore/preferences/core/Preferences;->d()Landroidx/datastore/preferences/core/Preferences;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    invoke-static {v0, p1}, Lcom/google/firebase/sessions/settings/g;->c(Lcom/google/firebase/sessions/settings/g;Landroidx/datastore/preferences/core/Preferences;)V

    .line 63
    .line 64
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 65
    return-object p1
.end method
