.class Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$3;
.super Lcom/narvii/list/DividerAdapter;
.source "BubbleManageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$3;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected getDividerLayoutId()I
    .locals 1

    const v0, 0x7f0b04a5

    return v0
.end method
