.class final Lcom/narvii/account/SetIdentityFragment$verifyCodeHelper$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/SetIdentityFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/SetIdentityFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/SetIdentityFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/account/SetIdentityFragment$verifyCodeHelper$2;->this$0:Lcom/narvii/account/SetIdentityFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;

    iget-object v1, p0, Lcom/narvii/account/SetIdentityFragment$verifyCodeHelper$2;->this$0:Lcom/narvii/account/SetIdentityFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/account/SetIdentityFragment$verifyCodeHelper$2;->invoke()Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;

    move-result-object v0

    return-object v0
.end method
