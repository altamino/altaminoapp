.class final Lcom/narvii/account/MobileSignupFragment$verifyCodeHelper$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MobileSignupFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/MobileSignupFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/narvii/account/VerifyCodeSharedPrefsHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/MobileSignupFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/MobileSignupFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/account/MobileSignupFragment$verifyCodeHelper$2;->this$0:Lcom/narvii/account/MobileSignupFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/account/VerifyCodeSharedPrefsHelper;
    .locals 3

    .line 34
    new-instance v0, Lcom/narvii/account/VerifyCodeSharedPrefsHelper;

    iget-object v1, p0, Lcom/narvii/account/MobileSignupFragment$verifyCodeHelper$2;->this$0:Lcom/narvii/account/MobileSignupFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/narvii/account/VerifyCodeSharedPrefsHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/narvii/account/MobileSignupFragment$verifyCodeHelper$2;->invoke()Lcom/narvii/account/VerifyCodeSharedPrefsHelper;

    move-result-object v0

    return-object v0
.end method
