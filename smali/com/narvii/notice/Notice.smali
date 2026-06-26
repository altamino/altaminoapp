.class public Lcom/narvii/notice/Notice;
.super Lcom/narvii/model/NVObject;
.source "Notice.java"


# static fields
.field public static final NOTIFICATION_TYPE_ACTIVITIES_BLOG:I = 0x1a

.field public static final NOTIFICATION_TYPE_ACTIVITIES_CHAT_THREAD:I = 0x1c

.field public static final NOTIFICATION_TYPE_ACTIVITIES_WIKI:I = 0x1b

.field public static final NOTIFICATION_TYPE_ADD_CUSTOM_TITLE:I = 0x24

.field public static final NOTIFICATION_TYPE_COIN_NOT_ENOUGH_RENEW_AVATAR_FRAME:I = 0x48

.field public static final NOTIFICATION_TYPE_COIN_NOT_ENOUGH_RENEW_FAN_CLUB:I = 0x47

.field public static final NOTIFICATION_TYPE_COIN_NOT_ENOUGH_RENEW_MEMBERSHIP:I = 0x46

.field public static final NOTIFICATION_TYPE_COMMUNITY_JOIN_REQUEST_APPROVED:I = 0x45

.field public static final NOTIFICATION_TYPE_CREATE_AUDIO_CHAT:I = 0x1f

.field public static final NOTIFICATION_TYPE_CREATE_AVATAR_CHAT:I = 0x23

.field public static final NOTIFICATION_TYPE_CREATE_SCREENING_ROOM:I = 0x26

.field public static final NOTIFICATION_TYPE_CREATE_VIDEO_CHAT:I = 0x20

.field public static final NOTIFICATION_TYPE_FANS_SUBSCRIBE:I = 0x3c

.field public static final NOTIFICATION_TYPE_FANS_THANKS:I = 0x3d

.field public static final NOTIFICATION_TYPE_INFLUENCER_ACTIVITY_BLOG:I = 0x3e

.field public static final NOTIFICATION_TYPE_INFLUENCER_ACTIVITY_CHAT_THREAD:I = 0x3f

.field public static final NOTIFICATION_TYPE_INFLUENCER_ACTIVITY_ITEM:I = 0x40

.field public static final NOTIFICATION_TYPE_INVITE_AUDIO_CHAT:I = 0x1d

.field public static final NOTIFICATION_TYPE_INVITE_AVATAR_CHAT:I = 0x22

.field public static final NOTIFICATION_TYPE_INVITE_SCREENING_ROOM:I = 0x25

.field public static final NOTIFICATION_TYPE_INVITE_VIDEO_CHAT:I = 0x1e

.field public static final NOTIFICATION_TYPE_NEW_DEDUCTION_COUPON_NOT_USED:I = 0x49

.field public static final NOTIFICATION_TYPE_STORE_PRODUCT_PURCHASED:I = 0x41

.field public static final NOTIFICATION_TYPE_TIPPING_FORWARD:I = 0x37

.field public static final NOTIFICATION_TYPE_TIPPING_THANKS:I = 0x39

.field public static final TYPE_COMMENT:I = 0x3

.field public static final TYPE_COMMENT_QUOTED:I = 0x4

.field public static final TYPE_KNOWLEDGE_BASE_REQUEST_APPROVED:I = 0x18

.field public static final TYPE_POLL_ENDED_CONTESTANT:I = 0x11

.field public static final TYPE_POLL_ENDED_GENERAL:I = 0xf

.field public static final TYPE_POLL_ENDED_OWNER:I = 0x10

.field public static final TYPE_POLL_OPTION_ADDED:I = 0xc

.field public static final TYPE_POLL_OPTION_APPROVED:I = 0xd

.field public static final TYPE_POLL_OPTION_VOTED_UP:I = 0xe

.field public static final TYPE_REPOST:I = 0xb

.field public static final TYPE_SHARED_FILE_UPLOAD:I = 0x21

.field public static final TYPE_USER_MEMBERSHIP:I = 0x1

.field public static final TYPE_USER_MEMBERSHIP_INVITATION:I = 0x2

.field public static final TYPE_VOTE_DOWN:I = 0xa

.field public static final TYPE_VOTE_UP:I = 0x9


# instance fields
.field public contextNdcId:I

.field public contextText:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public contextValue:I

.field public createdTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public ndcId:I

.field public notificationId:Ljava/lang/String;

.field public objectId:Ljava/lang/String;

.field public objectSubtype:I

.field public objectText:Ljava/lang/String;

.field public objectType:I

.field public operator:Lcom/narvii/model/User;

.field public parentId:Ljava/lang/String;

.field public parentSubtype:I

.field public parentText:Ljava/lang/String;

.field public parentType:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/narvii/notice/Notice;->notificationId:Ljava/lang/String;

    return-object v0
.end method

.method public objectType()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/narvii/notice/Notice;->parentId:Ljava/lang/String;

    return-object v0
.end method

.method public status()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/narvii/notice/Notice;->operator:Lcom/narvii/model/User;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    :goto_0
    return-object v0
.end method
