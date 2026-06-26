.class public Lcom/narvii/paging/source/PagingConfiguration;
.super Ljava/lang/Object;
.source "PagingConfiguration.java"


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

    .line 20
    new-instance v0, Lcom/narvii/paging/source/PagingConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/paging/source/PagingConfiguration;-><init>(I)V

    sput-object v0, Lcom/narvii/paging/source/PagingConfiguration;->TOKEN_CONFIG:Lcom/narvii/paging/source/PagingConfiguration;

    .line 21
    new-instance v0, Lcom/narvii/paging/source/PagingConfiguration;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/narvii/paging/source/PagingConfiguration;-><init>(I)V

    sput-object v0, Lcom/narvii/paging/source/PagingConfiguration;->OFFSET_CONFIG:Lcom/narvii/paging/source/PagingConfiguration;

    .line 22
    new-instance v0, Lcom/narvii/paging/source/PagingConfiguration;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/narvii/paging/source/PagingConfiguration;-><init>(I)V

    sput-object v0, Lcom/narvii/paging/source/PagingConfiguration;->NONE_CONFIG:Lcom/narvii/paging/source/PagingConfiguration;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 34
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

    .line 39
    invoke-direct {p0, p2, v0, p1}, Lcom/narvii/paging/source/PagingConfiguration;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/narvii/paging/source/PagingConfiguration;->pageSize:I

    .line 44
    iput p2, p0, Lcom/narvii/paging/source/PagingConfiguration;->prefetchDistance:I

    .line 45
    iput p3, p0, Lcom/narvii/paging/source/PagingConfiguration;->paginationType:I

    return-void
.end method
