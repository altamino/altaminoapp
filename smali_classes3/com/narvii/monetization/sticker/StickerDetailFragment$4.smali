.class Lcom/narvii/monetization/sticker/StickerDetailFragment$4;
.super Ljava/lang/Object;
.source "StickerDetailFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/StickerDetailFragment;->checkAminoPlus()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/StickerDetailFragment;

.field final synthetic val$ndcId:I


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/StickerDetailFragment;I)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment$4;->this$0:Lcom/narvii/monetization/sticker/StickerDetailFragment;

    iput p2, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment$4;->val$ndcId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 2

    .line 305
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment$4;->this$0:Lcom/narvii/monetization/sticker/StickerDetailFragment;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/StickerDetailFragment;->access$200(Lcom/narvii/monetization/sticker/StickerDetailFragment;)Lcom/narvii/chat/global/GlobalChatHelper;

    move-result-object p1

    iget v0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment$4;->val$ndcId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/narvii/chat/global/GlobalChatHelper;->communityDetailIntent(Ljava/lang/Integer;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 306
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment$4;->this$0:Lcom/narvii/monetization/sticker/StickerDetailFragment;

    const/16 v1, 0x67

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 302
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/StickerDetailFragment$4;->call(Ljava/lang/Boolean;)V

    return-void
.end method
