.class Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$1;
.super Ljava/lang/Object;
.source "SharedStickerCollectionListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$1;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 114
    const-class p1, Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 115
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$1;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
