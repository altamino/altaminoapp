.class public Lcom/narvii/account/notice/AccountNoticeConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/account/notice/AccountNoticeConfig$NoticeButtonInfo;
    }
.end annotation


# instance fields
.field public allowQuickOperation:Z

.field public operationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/account/notice/AccountNoticeConfig$NoticeButtonInfo;",
            ">;"
        }
    .end annotation
.end field

.field public showCommunity:Z

.field public showOperator:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method
