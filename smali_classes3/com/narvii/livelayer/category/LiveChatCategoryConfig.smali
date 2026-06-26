.class public Lcom/narvii/livelayer/category/LiveChatCategoryConfig;
.super Ljava/lang/Object;
.source "LiveChatCategoryConfig.java"

# interfaces
.implements Lcom/narvii/livelayer/category/OnlineCategoryConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public color()I
    .locals 1

    const v0, -0xd733bd

    return v0
.end method

.method public iconId()I
    .locals 1

    const v0, 0x7f080638

    return v0
.end method

.method public listApiName()Ljava/lang/String;
    .locals 1

    const-string v0, "public-live-chats"

    return-object v0
.end method

.method public membersTitleBackgroundColor()I
    .locals 1

    const v0, -0xff3183

    return v0
.end method

.method public membersTitleId()I
    .locals 1

    const v0, 0x7f0f0af6

    return v0
.end method

.method public targetFragment()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;",
            ">;"
        }
    .end annotation

    .line 39
    const-class v0, Lcom/narvii/livelayer/detailview/LiveLayerDetailLiveChattingFragment;

    return-object v0
.end method

.method public titleId()I
    .locals 1

    const v0, 0x7f0f0af2

    return v0
.end method

.method public topicName()Ljava/lang/String;
    .locals 1

    const-string v0, "users-live-chatting"

    return-object v0
.end method
