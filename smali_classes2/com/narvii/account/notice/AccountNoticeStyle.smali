.class public Lcom/narvii/account/notice/AccountNoticeStyle;
.super Ljava/lang/Object;
.source "AccountNoticeStyle.java"


# instance fields
.field public backgroundColor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/narvii/account/notice/AccountNoticeStyle;->backgroundColor:Ljava/lang/String;

    if-nez v0, :cond_0

    const/high16 v0, -0x1000000

    return v0

    .line 17
    :cond_0
    invoke-static {v0}, Lcom/narvii/util/StringUtils;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
