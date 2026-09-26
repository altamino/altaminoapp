.class public final synthetic Lcom/narvii/wallet/optinads/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/app/NVContext;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/wallet/optinads/i;->a:Lcom/narvii/app/NVContext;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/wallet/optinads/i;->a:Lcom/narvii/app/NVContext;

    invoke-static {v0, p1}, Lcom/narvii/wallet/optinads/OptinAdsUtil$1;->c(Lcom/narvii/app/NVContext;Landroid/view/View;)V

    return-void
.end method
