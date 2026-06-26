.class Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$6;
.super Ljava/lang/Object;
.source "MonetizationStoreAvatarFrameFragment.java"

# interfaces
.implements Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->loadAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$6;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 374
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$6;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->access$700(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/monetization/avatarframe/AvatarFrame;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->getFrameId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 375
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$6;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->access$800(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/widget/SpinningView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 376
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$6;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->access$1000(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onPostExecute(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;Ljava/lang/String;)V
    .locals 1

    .line 366
    iget-object p2, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$6;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    invoke-static {p2}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->access$700(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/monetization/avatarframe/AvatarFrame;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->getFrameId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->id:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 367
    iget-object p2, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$6;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    invoke-static {p2}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->access$800(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/widget/SpinningView;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 368
    iget-object p2, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$6;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0, v0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->access$900(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;ZZ)V

    :cond_0
    return-void
.end method

.method public onProgressUpdate(IILjava/lang/String;)V
    .locals 0

    return-void
.end method
