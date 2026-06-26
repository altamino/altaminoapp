.class final Lcom/narvii/pre_editing/TrimVideoGenerator$startTrimVideo$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TrimVideoGenerator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pre_editing/TrimVideoGenerator;->startTrimVideo(Lkotlin/Pair;Ljava/lang/String;Ljava/lang/String;JJLcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
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

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p1, Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask;

    invoke-virtual {p0, p1}, Lcom/narvii/pre_editing/TrimVideoGenerator$startTrimVideo$1$2;->invoke(Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p1

    sget-object v0, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
