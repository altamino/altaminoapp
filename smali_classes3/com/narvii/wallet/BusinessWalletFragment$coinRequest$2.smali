.class final Lcom/narvii/wallet/BusinessWalletFragment$coinRequest$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BusinessWalletFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/BusinessWalletFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/narvii/util/http/ApiRequest;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/wallet/BusinessWalletFragment$coinRequest$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/wallet/BusinessWalletFragment$coinRequest$2;

    invoke-direct {v0}, Lcom/narvii/wallet/BusinessWalletFragment$coinRequest$2;-><init>()V

    sput-object v0, Lcom/narvii/wallet/BusinessWalletFragment$coinRequest$2;->INSTANCE:Lcom/narvii/wallet/BusinessWalletFragment$coinRequest$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 45
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/wallet/business-coin/stats"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-static {}, Lcom/narvii/util/Utils;->getTimeZoneInMin()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "timezone"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/narvii/wallet/BusinessWalletFragment$coinRequest$2;->invoke()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0
.end method
