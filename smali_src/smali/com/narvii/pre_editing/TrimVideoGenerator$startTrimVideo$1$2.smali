.class final Lcom/narvii/pre_editing/TrimVideoGenerator$startTrimVideo$1$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pre_editing/TrimVideoGenerator;->startTrimVideo(Lw7/u;Ljava/lang/String;Ljava/lang/String;JJLcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask<",
        "*>;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/pre_editing/TrimVideoGenerator$startTrimVideo$1$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/pre_editing/TrimVideoGenerator$startTrimVideo$1$2;

    invoke-direct {v0}, Lcom/narvii/pre_editing/TrimVideoGenerator$startTrimVideo$1$2;-><init>()V

    sput-object v0, Lcom/narvii/pre_editing/TrimVideoGenerator$startTrimVideo$1$2;->INSTANCE:Lcom/narvii/pre_editing/TrimVideoGenerator$startTrimVideo$1$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask;)Ljava/lang/Boolean;
    .locals 1
    .param p1    # Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask<",
            "*>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p1

    sget-object v0, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask;

    invoke-virtual {p0, p1}, Lcom/narvii/pre_editing/TrimVideoGenerator$startTrimVideo$1$2;->invoke(Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
