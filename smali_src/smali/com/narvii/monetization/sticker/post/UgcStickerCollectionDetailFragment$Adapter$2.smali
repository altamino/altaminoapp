.class Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter$2;->this$1:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter$2;->val$fromOtherCommunity:Z

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter$2;->val$finalUser:Lcom/narvii/model/User;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter$2;->val$fromOtherCommunity:Z

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter$2;->this$1:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter$2;->val$finalUser:Lcom/narvii/model/User;

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    const-string v0, "Source"

    .line 22
    .line 23
    const-string v1, "Shared Sticker Pack Detail Page"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter$2;->this$1:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    .line 29
    .line 30
    .line 31
    invoke-static {v0, p1}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter$2;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 32
    :cond_1
    return-void
.end method
