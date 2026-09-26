.class public final Lcom/google/firebase/sessions/d0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
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
    invoke-direct {p0}, Lcom/google/firebase/sessions/d0$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/firebase/sessions/d0;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/c;->INSTANCE:Lcom/google/firebase/c;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/firebase/m;->a(Lcom/google/firebase/c;)Lcom/google/firebase/f;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-class v1, Lcom/google/firebase/sessions/d0;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/google/firebase/f;->j(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "Firebase.app[SessionGenerator::class.java]"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    check-cast v0, Lcom/google/firebase/sessions/d0;

    .line 20
    return-object v0
.end method
