.class public Lcom/narvii/monetization/store/data/StoreSection;
.super Lcom/narvii/monetization/store/data/StoreSectionMini;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/store/data/StoreSectionMini;-><init>()V

    .line 4
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
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "avatar-frame"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    move-result p0

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const-class p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    .line 11
    return-object p0

    .line 12
    .line 13
    :cond_0
    const-class p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;

    .line 14
    return-object p0
.end method


# virtual methods
.method public icon()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/monetization/store/data/StoreSectionMini;->icon()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method
