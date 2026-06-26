.class public Lcom/narvii/account/notice/AccountNoticeConfig$NoticeButtonInfo;
.super Ljava/lang/Object;
.source "AccountNoticeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/account/notice/AccountNoticeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoticeButtonInfo"
.end annotation


# static fields
.field public static final NOTICE_ACTION_TYPE_NO:I = 0x2

.field public static final NOTICE_ACTION_TYPE_NONE:I = 0x0

.field public static final NOTICE_ACTION_TYPE_YES:I = 0x1


# instance fields
.field public operationType:I

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSupport()Z
    .locals 2

    .line 25
    iget v0, p0, Lcom/narvii/account/notice/AccountNoticeConfig$NoticeButtonInfo;->operationType:I

    if-lez v0, :cond_0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
