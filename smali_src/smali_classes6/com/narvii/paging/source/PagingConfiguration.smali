.class public Lcom/narvii/paging/source/PagingConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_PAGE_SIZE_DEV:I = 0x5

.field public static final DEFAULT_PAGE_SIZE_PRO:I = 0x14

.field public static final DEFAULT_PREFETCH_DISTANCE:I = 0x3

.field public static final NONE_CONFIG:Lcom/narvii/paging/source/PagingConfiguration;

.field public static final OFFSET_CONFIG:Lcom/narvii/paging/source/PagingConfiguration;

.field public static final PAGINATION_TYPE_NONE:I = 0x2

.field public static final PAGINATION_TYPE_OFFSET:I = 0x1

.field public static final PAGINATION_TYPE_TOKEN:I

.field public static final TOKEN_CONFIG:Lcom/narvii/paging/source/PagingConfiguration;


# instance fields
.field public offsetStartKey:Ljava/lang/String;

.field public offsetStepKey:Ljava/lang/String;

.field public pageSize:I

.field public paginationType:I

.field public prefetchDistance:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/paging/source/PagingConfiguration;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/narvii/paging/source/PagingConfiguration;-><init>(I)V

    .line 7
    .line 8
    sput-object v0, Lcom/narvii/paging/source/PagingConfiguration;->TOKEN_CONFIG:Lcom/narvii/paging/source/PagingConfiguration;

    .line 9
    .line 10
    new-instance v0, Lcom/narvii/paging/source/PagingConfiguration;

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/narvii/paging/source/PagingConfiguration;-><init>(I)V

    .line 15
    .line 16
    sput-object v0, Lcom/narvii/paging/source/PagingConfiguration;->OFFSET_CONFIG:Lcom/narvii/paging/source/PagingConfiguration;

    .line 17
    .line 18
    new-instance v0, Lcom/narvii/paging/source/PagingConfiguration;

    .line 19
    const/4 v1, 0x2

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Lcom/narvii/paging/source/PagingConfiguration;-><init>(I)V

    .line 23
    .line 24
    sput-object v0, Lcom/narvii/paging/source/PagingConfiguration;->NONE_CONFIG:Lcom/narvii/paging/source/PagingConfiguration;

    .line 25
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    :goto_0
    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, p1}, Lcom/narvii/paging/source/PagingConfiguration;-><init>(III)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, p2, v0, p1}, Lcom/narvii/paging/source/PagingConfiguration;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/narvii/paging/source/PagingConfiguration;->pageSize:I

    iput p2, p0, Lcom/narvii/paging/source/PagingConfiguration;->prefetchDistance:I

    iput p3, p0, Lcom/narvii/paging/source/PagingConfiguration;->paginationType:I

    return-void
.end method
