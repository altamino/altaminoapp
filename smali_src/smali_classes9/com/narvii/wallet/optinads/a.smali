.class public final synthetic Lcom/narvii/wallet/optinads/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/narvii/wallet/optinads/OptinAdsManageFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/wallet/optinads/OptinAdsManageFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/wallet/optinads/a;->a:Lcom/narvii/wallet/optinads/OptinAdsManageFragment;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/wallet/optinads/a;->a:Lcom/narvii/wallet/optinads/OptinAdsManageFragment;

    invoke-static {v0, p1, p2}, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->p(Lcom/narvii/wallet/optinads/OptinAdsManageFragment;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
