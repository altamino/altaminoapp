.class Lcom/narvii/monetization/sticker/StickerDetailFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/StickerDetailFragment;->checkCommunityJoined()Z
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment$3;->this$0:Lcom/narvii/monetization/sticker/StickerDetailFragment;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment$3;->val$ndcId:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 2

    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment$3;->this$0:Lcom/narvii/monetization/sticker/StickerDetailFragment;

    .line 2
    invoke-static {p1}, Lcom/narvii/monetization/sticker/StickerDetailFragment;->n(Lcom/narvii/monetization/sticker/StickerDetailFragment;)Lcom/narvii/chat/global/GlobalChatHelper;

    move-result-object p1

    iget v0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment$3;->val$ndcId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/narvii/chat/global/GlobalChatHelper;->communityDetailIntent(Ljava/lang/Integer;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment$3;->this$0:Lcom/narvii/monetization/sticker/StickerDetailFragment;

    const/16 v1, 0x67

    .line 3
    invoke-static {v0, p1, v1}, Lcom/narvii/monetization/sticker/StickerDetailFragment$3;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/StickerDetailFragment$3;->call(Ljava/lang/Boolean;)V

    return-void
.end method
