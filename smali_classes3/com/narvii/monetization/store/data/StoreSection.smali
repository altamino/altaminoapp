.class public Lcom/narvii/monetization/store/data/StoreSection;
.super Lcom/narvii/monetization/store/data/StoreSectionMini;
.source "StoreSection.java"


# static fields
.field public static final GROUP_TYPE_AVATAR_FRAME:Ljava/lang/String; = "avatar-frame"

.field public static final GROUP_TYPE_CHAT_BUBBLE:Ljava/lang/String; = "chat-bubble"

.field public static final GROUP_TYPE_PROP:Ljava/lang/String; = "prop"

.field public static final GROUP_TYPE_STICKER:Ljava/lang/String; = "sticker"


# instance fields
.field public allItemsCount:I

.field public previewStoreItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/monetization/store/data/StoreItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/narvii/monetization/store/data/StoreSectionMini;-><init>()V

    return-void
.end method

.method public static getSectionFragment(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    const-string v0, "avatar-frame"

    .line 32
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 33
    const-class p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    return-object p0

    .line 35
    :cond_0
    const-class p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;

    return-object p0
.end method


# virtual methods
.method public icon()I
    .locals 1

    .line 28
    invoke-super {p0}, Lcom/narvii/monetization/store/data/StoreSectionMini;->icon()I

    move-result v0

    return v0
.end method
