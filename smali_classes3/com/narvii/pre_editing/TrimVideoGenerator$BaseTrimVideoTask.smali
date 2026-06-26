.class abstract Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask;
.super Landroid/os/AsyncTask;
.source "TrimVideoGenerator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/pre_editing/TrimVideoGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseTrimVideoTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "TT;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask$Companion;

.field public static final RESULT_CANCEL:I = 0x2

.field public static final RESULT_ERROR:I = 0x1

.field public static final RESULT_SUCCESS:I


# instance fields
.field private final callback:Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;

.field private final dstPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask;->Companion:Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;)V
    .locals 1

    const-string v0, "dstPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask;->dstPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask;->callback:Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;

    return-void
.end method


# virtual methods
.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask;->callback:Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;

    invoke-interface {p1}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;->onCancel()V

    goto :goto_2

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    .line 105
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask;->callback:Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;

    iget-object v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask;->dstPath:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    if-nez p1, :cond_4

    goto :goto_2

    .line 106
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask;->callback:Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;

    invoke-interface {p1}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;->onError()V

    :cond_5
    :goto_2
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 93
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
