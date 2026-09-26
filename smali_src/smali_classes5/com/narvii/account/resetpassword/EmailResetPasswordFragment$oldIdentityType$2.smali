.class final Lcom/narvii/account/resetpassword/EmailResetPasswordFragment$oldIdentityType$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment$oldIdentityType$2;->this$0:Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Integer;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment$oldIdentityType$2;->this$0:Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;

    const-string v1, "type"

    .line 2
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment$oldIdentityType$2;->invoke()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
