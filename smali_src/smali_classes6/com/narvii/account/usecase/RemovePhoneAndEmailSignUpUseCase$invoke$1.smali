.class final Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase$invoke$1;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase;->invoke(Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.narvii.account.usecase.RemovePhoneAndEmailSignUpUseCase"
    f = "RemovePhoneAndEmailSignUpUseCase.kt"
    l = {
        0x19
    }
    m = "invoke"
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase;


# direct methods
.method constructor <init>(Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase$invoke$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase$invoke$1;->this$0:Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput-object p1, p0, Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase$invoke$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase$invoke$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase$invoke$1;->label:I

    iget-object p1, p0, Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase$invoke$1;->this$0:Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase;

    invoke-virtual {p1, p0}, Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase;->invoke(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
