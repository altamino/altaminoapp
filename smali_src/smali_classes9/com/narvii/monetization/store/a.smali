.class public final synthetic Lcom/narvii/monetization/store/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/WalletBalanceView$OnPreClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/monetization/store/a;->a:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    return-void
.end method


# virtual methods
.method public final onPreClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/monetization/store/a;->a:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    invoke-static {v0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->t(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)V

    return-void
.end method
