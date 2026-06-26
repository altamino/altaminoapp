.class public final Lcom/narvii/notice/AggregationNoticeFragmentKt;
.super Ljava/lang/Object;
.source "AggregationNoticeFragment.kt"


# static fields
.field public static final INDEX_ANNOUNCEMENT:I = -0x1

.field private static lastLoggedIn:Z = false

.field private static lastScrollPosition:I = 0x0

.field private static lastScrollTop:I = 0x0

.field private static lastSelectedCid:I = -0x80000000


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getLastLoggedIn()Z
    .locals 1

    .line 32
    sget-boolean v0, Lcom/narvii/notice/AggregationNoticeFragmentKt;->lastLoggedIn:Z

    return v0
.end method

.method public static final getLastScrollPosition()I
    .locals 1

    .line 29
    sget v0, Lcom/narvii/notice/AggregationNoticeFragmentKt;->lastScrollPosition:I

    return v0
.end method

.method public static final getLastScrollTop()I
    .locals 1

    .line 30
    sget v0, Lcom/narvii/notice/AggregationNoticeFragmentKt;->lastScrollTop:I

    return v0
.end method

.method public static final getLastSelectedCid()I
    .locals 1

    .line 31
    sget v0, Lcom/narvii/notice/AggregationNoticeFragmentKt;->lastSelectedCid:I

    return v0
.end method

.method public static final setLastLoggedIn(Z)V
    .locals 0

    .line 32
    sput-boolean p0, Lcom/narvii/notice/AggregationNoticeFragmentKt;->lastLoggedIn:Z

    return-void
.end method

.method public static final setLastScrollPosition(I)V
    .locals 0

    .line 29
    sput p0, Lcom/narvii/notice/AggregationNoticeFragmentKt;->lastScrollPosition:I

    return-void
.end method

.method public static final setLastScrollTop(I)V
    .locals 0

    .line 30
    sput p0, Lcom/narvii/notice/AggregationNoticeFragmentKt;->lastScrollTop:I

    return-void
.end method

.method public static final setLastSelectedCid(I)V
    .locals 0

    .line 31
    sput p0, Lcom/narvii/notice/AggregationNoticeFragmentKt;->lastSelectedCid:I

    return-void
.end method
