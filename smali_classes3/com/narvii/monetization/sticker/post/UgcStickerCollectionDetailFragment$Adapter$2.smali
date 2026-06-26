.class Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter$2;
.super Ljava/lang/Object;
.source "UgcStickerCollectionDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

.field final synthetic val$finalUser:Lcom/narvii/model/User;

.field final synthetic val$fromOtherCommunity:Z


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;ZLcom/narvii/model/User;)V
    .locals 0

    .line 586
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter$2;->this$1:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    iput-boolean p2, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter$2;->val$fromOtherCommunity:Z

    iput-object p3, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter$2;->val$finalUser:Lcom/narvii/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 589
    iget-boolean p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter$2;->val$fromOtherCommunity:Z

    if-eqz p1, :cond_0

    return-void

    .line 593
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter$2;->this$1:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter$2;->val$finalUser:Lcom/narvii/model/User;

    invoke-static {p1, v0}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "Source"

    const-string v1, "Shared Sticker Pack Detail Page"

    .line 595
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter$2;->this$1:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    invoke-virtual {v0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
