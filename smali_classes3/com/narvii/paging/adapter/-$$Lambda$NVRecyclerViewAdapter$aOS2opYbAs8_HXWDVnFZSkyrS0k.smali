.class public final synthetic Lcom/narvii/paging/adapter/-$$Lambda$NVRecyclerViewAdapter$aOS2opYbAs8_HXWDVnFZSkyrS0k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/util/Callback;


# static fields
.field public static final synthetic INSTANCE:Lcom/narvii/paging/adapter/-$$Lambda$NVRecyclerViewAdapter$aOS2opYbAs8_HXWDVnFZSkyrS0k;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/paging/adapter/-$$Lambda$NVRecyclerViewAdapter$aOS2opYbAs8_HXWDVnFZSkyrS0k;

    invoke-direct {v0}, Lcom/narvii/paging/adapter/-$$Lambda$NVRecyclerViewAdapter$aOS2opYbAs8_HXWDVnFZSkyrS0k;-><init>()V

    sput-object v0, Lcom/narvii/paging/adapter/-$$Lambda$NVRecyclerViewAdapter$aOS2opYbAs8_HXWDVnFZSkyrS0k;->INSTANCE:Lcom/narvii/paging/adapter/-$$Lambda$NVRecyclerViewAdapter$aOS2opYbAs8_HXWDVnFZSkyrS0k;

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

    invoke-static {p1}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->lambda$onPageListChanged$0(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V

    return-void
.end method
