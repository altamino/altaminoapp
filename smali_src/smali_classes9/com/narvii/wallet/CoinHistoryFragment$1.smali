.class Lcom/narvii/wallet/CoinHistoryFragment$1;
.super Lcom/narvii/list/DatePagedAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/CoinHistoryFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/CoinHistoryFragment;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/CoinHistoryFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/CoinHistoryFragment$1;->this$0:Lcom/narvii/wallet/CoinHistoryFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/DatePagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected dateSectionLayoutId()I
    .locals 1

    const v0, 0x7f0d07a2

    return v0
.end method

.method protected newDatePageHelper(Lcom/narvii/list/NVPagedAdapter;)Lcom/narvii/list/DatePageHelper;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/list/DatePageHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/narvii/list/DatePageHelper;-><init>(Lcom/narvii/list/NVPagedAdapter;)V

    .line 6
    return-object v0
.end method
