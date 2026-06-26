.class Lcom/narvii/achievements/AllRanksFragment$1;
.super Lcom/narvii/list/DividerAdapter;
.source "AllRanksFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/achievements/AllRanksFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/achievements/AllRanksFragment;


# direct methods
.method constructor <init>(Lcom/narvii/achievements/AllRanksFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/narvii/achievements/AllRanksFragment$1;->this$0:Lcom/narvii/achievements/AllRanksFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected getDividerLayoutId()I
    .locals 1

    const v0, 0x7f0b05aa

    return v0
.end method
