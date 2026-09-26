.class Lcom/narvii/wallet/WalletActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/navigator/Navigator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/WalletActivity;->initServiceManager(Lcom/narvii/services/ServiceManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/WalletActivity;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/WalletActivity;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/WalletActivity$1;->this$0:Lcom/narvii/wallet/WalletActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public intentMapping(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    return-object p1
.end method
