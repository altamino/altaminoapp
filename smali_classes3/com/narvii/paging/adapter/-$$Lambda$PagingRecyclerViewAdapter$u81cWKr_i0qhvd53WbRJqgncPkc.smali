.class public final synthetic Lcom/narvii/paging/adapter/-$$Lambda$PagingRecyclerViewAdapter$u81cWKr_i0qhvd53WbRJqgncPkc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/util/Callback;


# static fields
.field public static final synthetic INSTANCE:Lcom/narvii/paging/adapter/-$$Lambda$PagingRecyclerViewAdapter$u81cWKr_i0qhvd53WbRJqgncPkc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/paging/adapter/-$$Lambda$PagingRecyclerViewAdapter$u81cWKr_i0qhvd53WbRJqgncPkc;

    invoke-direct {v0}, Lcom/narvii/paging/adapter/-$$Lambda$PagingRecyclerViewAdapter$u81cWKr_i0qhvd53WbRJqgncPkc;-><init>()V

    sput-object v0, Lcom/narvii/paging/adapter/-$$Lambda$PagingRecyclerViewAdapter$u81cWKr_i0qhvd53WbRJqgncPkc;->INSTANCE:Lcom/narvii/paging/adapter/-$$Lambda$PagingRecyclerViewAdapter$u81cWKr_i0qhvd53WbRJqgncPkc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

    invoke-static {p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->lambda$invalidateAdapter$3(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V

    return-void
.end method
