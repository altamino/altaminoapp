.class public final synthetic Lcom/narvii/account/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/account/ThirdPartyAccountBaseFragment$SaveImageCallBack;


# instance fields
.field public final synthetic a:Lcom/narvii/account/GoogleLoginFragment;

.field public final synthetic b:Lcom/narvii/account/ThirdPartyAccountBaseFragment$QueryThirdPartyInfoCallBack;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/account/GoogleLoginFragment;Lcom/narvii/account/ThirdPartyAccountBaseFragment$QueryThirdPartyInfoCallBack;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/r;->a:Lcom/narvii/account/GoogleLoginFragment;

    iput-object p2, p0, Lcom/narvii/account/r;->b:Lcom/narvii/account/ThirdPartyAccountBaseFragment$QueryThirdPartyInfoCallBack;

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/account/r;->a:Lcom/narvii/account/GoogleLoginFragment;

    iget-object v1, p0, Lcom/narvii/account/r;->b:Lcom/narvii/account/ThirdPartyAccountBaseFragment$QueryThirdPartyInfoCallBack;

    invoke-static {v0, v1, p1}, Lcom/narvii/account/GoogleLoginFragment;->u(Lcom/narvii/account/GoogleLoginFragment;Lcom/narvii/account/ThirdPartyAccountBaseFragment$QueryThirdPartyInfoCallBack;Ljava/lang/String;)V

    return-void
.end method
