.class Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$3;
.super Ljava/lang/Object;
.source "MonetizationStoreSectionDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->configRightButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$3;->this$0:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 168
    const-class p1, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 169
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$3;->this$0:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;

    const-string v1, "Source"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$3;->this$0:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
