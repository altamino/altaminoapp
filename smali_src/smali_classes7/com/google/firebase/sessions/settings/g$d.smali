.class final Lcom/google/firebase/sessions/settings/g$d;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/sessions/settings/g;->h(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/p<",
        "Landroidx/datastore/preferences/core/MutablePreferences;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.google.firebase.sessions.settings.SettingsCache$updateConfigValue$2"
    f = "SettingsCache.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $key:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/google/firebase/sessions/settings/g;


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroidx/datastore/preferences/core/Preferences$Key;Lcom/google/firebase/sessions/settings/g;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "TT;>;",
            "Lcom/google/firebase/sessions/settings/g;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/google/firebase/sessions/settings/g$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/firebase/sessions/settings/g$d;->$value:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/firebase/sessions/settings/g$d;->$key:Landroidx/datastore/preferences/core/Preferences$Key;

    iput-object p3, p0, Lcom/google/firebase/sessions/settings/g$d;->this$0:Lcom/google/firebase/sessions/settings/g;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 4
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

    new-instance v0, Lcom/google/firebase/sessions/settings/g$d;

    iget-object v1, p0, Lcom/google/firebase/sessions/settings/g$d;->$value:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/firebase/sessions/settings/g$d;->$key:Landroidx/datastore/preferences/core/Preferences$Key;

    iget-object v3, p0, Lcom/google/firebase/sessions/settings/g$d;->this$0:Lcom/google/firebase/sessions/settings/g;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/google/firebase/sessions/settings/g$d;-><init>(Ljava/lang/Object;Landroidx/datastore/preferences/core/Preferences$Key;Lcom/google/firebase/sessions/settings/g;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lcom/google/firebase/sessions/settings/g$d;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final f(Landroidx/datastore/preferences/core/MutablePreferences;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroidx/datastore/preferences/core/MutablePreferences;
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
            "Landroidx/datastore/preferences/core/MutablePreferences;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/settings/g$d;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/sessions/settings/g$d;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Lcom/google/firebase/sessions/settings/g$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/settings/g$d;->f(Landroidx/datastore/preferences/core/MutablePreferences;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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
    .line 5
    iget v0, p0, Lcom/google/firebase/sessions/settings/g$d;->label:I

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/firebase/sessions/settings/g$d;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/g$d;->$value:Ljava/lang/Object;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/firebase/sessions/settings/g$d;->$key:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1, v0}, Landroidx/datastore/preferences/core/MutablePreferences;->i(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/g$d;->$key:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/core/MutablePreferences;->h(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    .line 30
    .line 31
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/g$d;->this$0:Lcom/google/firebase/sessions/settings/g;

    .line 32
    .line 33
    .line 34
    invoke-static {v0, p1}, Lcom/google/firebase/sessions/settings/g;->c(Lcom/google/firebase/sessions/settings/g;Landroidx/datastore/preferences/core/Preferences;)V

    .line 35
    .line 36
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 37
    return-object p1

    .line 38
    .line 39
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p1
.end method
