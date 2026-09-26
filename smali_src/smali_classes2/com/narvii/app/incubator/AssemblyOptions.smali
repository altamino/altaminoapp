.class public final Lcom/narvii/app/incubator/AssemblyOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final setHeaders(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "applicationContext"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    new-instance v0, Lai/medialab/medialabads2/ui/sdk/options/DebugOptionsDelegate;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p1}, Lai/medialab/medialabads2/ui/sdk/options/DebugOptionsDelegate;-><init>(Landroid/content/SharedPreferences;)V

    .line 18
    const/4 p1, 0x1

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, p1}, Lai/medialab/medialabads2/ui/sdk/options/DebugOptionsController;->setLoggingEnable(Z)V

    .line 22
    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    const-string v1, "X-Whisper-Testyoself:"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, p1}, Lai/medialab/medialabads2/ui/sdk/options/DebugOptionsController;->setTestHeaders(Ljava/lang/String;)V

    .line 42
    return-void
.end method
