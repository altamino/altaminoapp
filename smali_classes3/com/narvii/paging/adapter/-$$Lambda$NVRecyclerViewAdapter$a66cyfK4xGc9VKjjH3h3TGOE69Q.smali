.class public final synthetic Lcom/narvii/paging/adapter/-$$Lambda$NVRecyclerViewAdapter$a66cyfK4xGc9VKjjH3h3TGOE69Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/util/Callback;


# static fields
.field public static final synthetic INSTANCE:Lcom/narvii/paging/adapter/-$$Lambda$NVRecyclerViewAdapter$a66cyfK4xGc9VKjjH3h3TGOE69Q;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/paging/adapter/-$$Lambda$NVRecyclerViewAdapter$a66cyfK4xGc9VKjjH3h3TGOE69Q;

    invoke-direct {v0}, Lcom/narvii/paging/adapter/-$$Lambda$NVRecyclerViewAdapter$a66cyfK4xGc9VKjjH3h3TGOE69Q;-><init>()V

    sput-object v0, Lcom/narvii/paging/adapter/-$$Lambda$NVRecyclerViewAdapter$a66cyfK4xGc9VKjjH3h3TGOE69Q;->INSTANCE:Lcom/narvii/paging/adapter/-$$Lambda$NVRecyclerViewAdapter$a66cyfK4xGc9VKjjH3h3TGOE69Q;

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

    invoke-static {p1}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->lambda$onPageLoadStatusChanged$1(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V

    return-void
.end method
